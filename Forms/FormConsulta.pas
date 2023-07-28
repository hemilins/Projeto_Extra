unit FormConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Form, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels;

type
  TConsultaForm = class(TBaseForm)
    Panel1: TPanel;
    pnlGrid: TPanel;
    gridConsulta: TDBGrid;
    DataSource: TDataSource;
    CardPanelLista: TCardPanel;
    CardLista: TCard;
    CardCadastro: TCard;
    btnExcluir: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnEditar: TSpeedButton;
    btNovo: TSpeedButton;
    pnlFiltro: TPanel;
    editFiltro: TEdit;
    lblFiltro: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaForm: TConsultaForm;

implementation

{$R *.dfm}

procedure TConsultaForm.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if CardPanelLista.ActiveCard = CardCadastro then
    CardPanelLista.ActiveCard := CardLista
  else
    Self.Close;
end;

procedure TConsultaForm.FormShow(Sender: TObject);
begin
  inherited;
  CardPanelLista.ActiveCard := CardLista;
end;

end.
