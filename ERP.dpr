program ERP;

uses
  Vcl.Forms,
  DM in 'DM\DM.pas' {Conexao: TDataModule},
  FormPrincipal in 'Forms\FormPrincipal.pas' {PrincipalForm},
  Form in 'Forms\Form.pas' {BaseForm},
  Empresa in 'Forms\Empresa.pas' {EmpresaCons},
  FormConsulta in 'Forms\FormConsulta.pas' {ConsultaForm},
  Funcionario in 'Forms\Funcionario.pas' {FuncionarioCons};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TConexao, Conexao);
  Application.CreateForm(TPrincipalForm, PrincipalForm);
  Application.CreateForm(TBaseForm, BaseForm);
  Application.CreateForm(TEmpresaCons, EmpresaCons);
  Application.CreateForm(TConsultaForm, ConsultaForm);
  Application.CreateForm(TFuncionarioCons, FuncionarioCons);
  Application.Run;
end.
