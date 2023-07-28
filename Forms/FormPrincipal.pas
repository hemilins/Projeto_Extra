unit FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TPrincipalForm = class(TForm)
    Menu: TMainMenu;
    Consultas1: TMenuItem;
    EmpresaMenu: TMenuItem;
    Label1: TLabel;
    procedure EmpresaMenuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrincipalForm: TPrincipalForm;

implementation

{$R *.dfm}

uses Empresa, Funcionario;

procedure TPrincipalForm.EmpresaMenuClick(Sender: TObject);
begin
  EmpresaCons := TEmpresaCons.Create(Self);
  try
    EmpresaCons.ShowModal;
  finally
    EmpresaCons.Free;
  end;
end;

end.
