unit Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, FormConsulta, Vcl.Menus,
  Vcl.WinXPanels, Vcl.Mask, Vcl.DBCtrls, System.Actions, Vcl.ActnList;

type
  TEmpresaCons = class(TConsultaForm)
    editNome: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    editCNPJ: TDBEdit;
    Label4: TLabel;
    editInscricao: TDBEdit;
    Label5: TLabel;
    editTelefone: TDBEdit;
    Label6: TLabel;
    editCelular: TDBEdit;
    Label7: TLabel;
    editEmail: TDBEdit;
    Label8: TLabel;
    editObs: TDBEdit;
    dsEnderecos: TDataSource;
    pnlEndereco: TPanel;
    Label1: TLabel;
    gridEndereco: TDBGrid;
    Menu: TPopupMenu;
    Rastrearfornecedores1: TMenuItem;
    ActionList: TActionList;
    FuncionarioAction: TAction;
    procedure btnEditarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure editFiltroChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FuncionarioActionExecute(Sender: TObject);
  private
    procedure verificarEnderecoAtivos;
  public
    { Public declarations }
  end;

var
  EmpresaCons: TEmpresaCons;

implementation

{$R *.dfm}

uses DM, Funcionario;

procedure TEmpresaCons.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if Conexao.SQLEmpresa.State in [dsEdit, dsInsert] then
    Conexao.SQLEmpresa.Cancel;
end;

procedure TEmpresaCons.btnEditarClick(Sender: TObject);
begin
  inherited;
  CardPanelLista.ActiveCard := CardCadastro;
  Conexao.SQLEmpresa.Edit;
  //Carregar grade de endere�os
  Conexao.getEnderecoEmpresa(DataSource.DataSet.FieldByName('IDEMPRESA').AsInteger);
end;

procedure TEmpresaCons.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if (DataSource.DataSet.RecordCount > 0) and (MessageDlg('Confirma exclus�o da empresa ' + DataSource.DataSet.FieldByName('NMEMPRESA').AsString + '?', mtConfirmation, [mbYes, mbNo],0) = mrYes) then
  begin
    DataSource.DataSet.Edit;
    DataSource.DataSet.FieldByName('STEXCLUIDO').AsString := 'S';
    DataSource.DataSet.FieldByName('DTEXCLUIDO').AsDateTime := Now;
    DataSource.DataSet.Post;
    DataSource.DataSet.Refresh;
    Messagedlg('Dados salvos com sucesso!',mtinformation,[mbok],0);
  end;
end;

procedure TEmpresaCons.btNovoClick(Sender: TObject);
begin
  inherited;
  CardPanelLista.ActiveCard := CardCadastro;
  dsEnderecos.DataSet.Close;
  DataSource.DataSet.Insert;
end;

procedure TEmpresaCons.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if dsEnderecos.DataSet.RecordCount > 0 then
    Self.verificarEnderecoAtivos();
  if DataSource.DataSet.State in [dsEdit, dsInsert] then
  begin
    if DataSource.DataSet.FieldByName('NMEMPRESA').IsNull then
    begin
      messagedlg('Nome n�o informado!',mterror,[mbok],0);
      Abort;
    end;
    if DataSource.DataSet.FieldByName('NUCNPJ').IsNull then
    begin
      messagedlg('CNPJ n�o informado!',mterror,[mbok],0);
      Abort;
    end;

    DataSource.DataSet.FieldByName('STATIVO').AsString := 'S';
    DataSource.DataSet.FieldByName('STEXCLUIDO').AsString := 'N';
    DataSource.DataSet.FieldByName('DTCADASTRO').AsDateTime := Now;
    DataSource.DataSet.Post;

    Messagedlg('Dados salvos com sucesso!',mtinformation,[mbok],0);
    CardPanelLista.ActiveCard := CardLista;
  end;
end;

procedure TEmpresaCons.editFiltroChange(Sender: TObject);
begin
  inherited;
  DataSource.DataSet.Filtered := False;
  DataSource.DataSet.Filter := 'UPPER(NMEMPRESA) like ' + QuotedStr('%'+UpperCase(editFiltro.Text) + '%');
  DataSource.DataSet.Filtered := True;
end;

procedure TEmpresaCons.FormCreate(Sender: TObject);
begin
  inherited;
  DataSource.DataSet := Conexao.SQLEmpresa;
  dsEnderecos.DataSet := Conexao.SQLEnderecos;
end;

procedure TEmpresaCons.FuncionarioActionExecute(Sender: TObject);
begin
  inherited;
  FuncionarioCons := TFuncionarioCons.Create(Self);
  try
    Conexao.SQLFuncionarios.Close;
    Conexao.SQLFuncionarios.SQL.Clear;
    Conexao.SQLFuncionarios.SQL.Add('SELECT * FROM CADFUNCIONARIOS WHERE IDEMPRESA = :IDEMPRESA ORDER BY IDFUNCIONARIO');
    Conexao.SQLFuncionarios.Params[0].AsInteger := DataSource.DataSet.FieldByName('IDEMPRESA').AsInteger;
    Conexao.SQLFuncionarios.Open();
    FuncionarioCons.ShowModal;
  finally
    FuncionarioCons.Free;
  end;
end;

procedure TEmpresaCons.verificarEnderecoAtivos;
var
  count : Integer;
begin
  count := 0;
  dsEnderecos.DataSet.First;
  while not dsEnderecos.DataSet.Eof do
  begin
    if UpperCase(dsEnderecos.DataSet.FieldByName('STATIVO').AsString) = 'S' then
      count := count + 1;
    if count > 1 then
    begin
      messagedlg('N�o � poss�vel salvar empresa com mais de 1 endere�o Ativo!',mterror,[mbok],0);
      dsEnderecos.DataSet.Cancel;
      Abort;
    end;
    dsEnderecos.DataSet.Next;
  end;
end;

end.
