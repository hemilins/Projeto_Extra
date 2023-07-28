unit Funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormConsulta, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFuncionarioCons = class(TConsultaForm)
    procedure editFiltroChange(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  FuncionarioCons: TFuncionarioCons;

implementation

{$R *.dfm}

uses DM;

{ TFuncionarioCons }


procedure TFuncionarioCons.editFiltroChange(Sender: TObject);
begin
  inherited;
  DataSource.DataSet.Filtered := False;
  DataSource.DataSet.Filter := 'UPPER(NMFUNCIONARIO) like ' + QuotedStr('%'+ UpperCase(editFiltro.Text) + '%');
  DataSource.DataSet.Filtered := True;
end;

end.
