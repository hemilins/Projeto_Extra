unit DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TConexao = class(TDataModule)
    Conexao: TFDConnection;
    SQLEmpresa: TFDQuery;
    SQLEmpresaIDEMPRESA: TIntegerField;
    SQLEmpresaNMEMPRESA: TStringField;
    SQLEmpresaNUCNPJ: TStringField;
    SQLEmpresaNUINSCRICAO: TStringField;
    SQLEmpresaSTATIVO: TStringField;
    SQLEmpresaDTCADASTRO: TDateField;
    SQLEmpresaDTABERTURA: TDateField;
    SQLEmpresaTLCOMERCIAL: TStringField;
    SQLEmpresaTLCELULAR: TStringField;
    SQLEmpresaTXOBS: TIntegerField;
    SQLEmpresaTXEMAIL: TStringField;
    SQLEmpresaSTEXCLUIDO: TStringField;
    SQLEmpresaDTEXCLUIDO: TDateField;
    SQLFuncionarios: TFDQuery;
    SQLFuncionariosIDFUNCIONARIO: TIntegerField;
    SQLFuncionariosIDEMPRESA: TIntegerField;
    SQLFuncionariosNMFUNCIONARIO: TStringField;
    SQLFuncionariosNUCPF: TStringField;
    SQLFuncionariosNURG: TStringField;
    SQLFuncionariosDTNASCIMENTO: TDateField;
    SQLFuncionariosTXEMAIL: TStringField;
    SQLFuncionariosNUCARTEIRATRAB: TStringField;
    SQLFuncionariosNUTITULOELEITOR: TStringField;
    SQLFuncionariosNUCARTEIRAMOTORISTA: TStringField;
    SQLFuncionariosTPCATERORIA: TStringField;
    SQLFuncionariosDTVALIDADECARTEIRAMOT: TDateField;
    SQLFuncionariosTLRESIDENCIAL: TStringField;
    SQLFuncionariosTLCELULAR: TStringField;
    SQLFuncionariosTLCONTATO: TStringField;
    SQLFuncionariosNMCONTATO: TStringField;
    SQLFuncionariosDTCONTRATACAO: TDateField;
    SQLFuncionariosDTDEMISSAO: TDateField;
    SQLFuncionariosDTCADASTRO: TDateField;
    SQLFuncionariosSTATIVO: TStringField;
    SQLFuncionariosTXOBS: TStringField;
    SQLFuncionariosNMENDERECO: TStringField;
    SQLFuncionariosNUENDERECO: TStringField;
    SQLFuncionariosNMBAIRRO: TStringField;
    SQLFuncionariosIDCIDADE: TIntegerField;
    SQLFuncionariosIDUF: TIntegerField;
    SQLFuncionariosNUCEP: TStringField;
    SQLFuncionariosSTEXCLUIDO: TStringField;
    SQLFuncionariosDTEXCLUIDO: TDateField;
    SQLEnderecos: TFDQuery;
    SQLEnderecosIDENDERECO: TIntegerField;
    SQLEnderecosIDTITULAR: TIntegerField;
    SQLEnderecosIDEMPRESA: TIntegerField;
    SQLEnderecosNMENDERECO: TStringField;
    SQLEnderecosNUENDERECO: TStringField;
    SQLEnderecosNMBAIRRO: TStringField;
    SQLEnderecosIDCIDADE: TIntegerField;
    SQLEnderecosIDUF: TIntegerField;
    SQLEnderecosNUCEP: TStringField;
    SQLEnderecosSTATIVO: TStringField;
    SQLEnderecosSTEXCLUIDO: TStringField;
    SQLEnderecosDTEXCLUIDO: TDateField;
    SQLEnderecosTPCADASTRO: TStringField;
  private
    { Private declarations }
  public
    procedure getEnderecoEmpresa(idEmpresa: Integer);
  end;

var
  Conexao: TConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}

procedure TConexao.getEnderecoEmpresa(idEmpresa: Integer);
begin
  SQLEnderecos.Close;
  SQLEnderecos.SQL.Clear;
  SQLEnderecos.SQL.Add('SELECT * FROM CADENDERECOS WHERE IDEMPRESA = :IDEMPRESA ORDER BY IDENDERECO');
  SQLEnderecos.Params[0].AsInteger := idEmpresa;
  SQLEnderecos.Open();
end;

end.
