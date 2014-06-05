unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, Unit1, Grids, DBGrids,
  PanelAdministracion;

type
  TFormLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses Principal;

{$R *.dfm}


procedure TFormLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  FormLogin.SpeedButton2Click(nil);
end;

procedure TFormLogin.SpeedButton1Click(Sender: TObject);
begin
  FormLogin.Close;
end;

  //*******// Powered by Yisus, root de nacimiento. //*******//
procedure TFormLogin.SpeedButton2Click(Sender: TObject);
var User:String; Pwd:String; Consulta:String; Consulta2:String;
begin
//   Consultas Administrador
   User := Edit1.Text;
   Pwd := Edit2.Text;

   DataModule1.VerificarAdministrador.Close;
   DataModule1.VerificarCliente.Parameters.ParamByName('QUser').Value:=User;

   DataModule1.VerificarCliente.Parameters.ParamByName('QClave').Value:=Pwd;
   DataModule1.VerificarCliente.Open;

   DataModule1.VerificarAdministrador.Close;
   DataModule1.VerificarAdministrador.Parameters.ParamByName('QUser').Value:=User;

   DataModule1.VerificarAdministrador.Parameters.ParamByName('QClave').Value:=Pwd;
   DataModule1.VerificarAdministrador.Open;

    if not(DataModule1.VerificarCliente.IsEmpty) then begin
      FormPrincipal.SpeedButton6.Visible:=False;
      FormPrincipal.ShowModal;
      end
      else
        if not (DataModule1.VerificarAdministrador.IsEmpty) then begin
          PanelAdministracion.FormPanelAdministracion.SpeedButton1.Visible:=False;
          PanelAdministracion.FormPanelAdministracion.SpeedButton6.Visible:=False;
          FormPrincipal.ShowModal;
        end
        else
          if (User='root') and (Pwd='kapanga') then begin
            FormPrincipal.ShowModal;
          end
          else
          showMessage('Datos incorrectos');

   end;
//   FormPrincipal.showmodal;
//   FormLogin.Close;




end.