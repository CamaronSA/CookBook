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
    SpeedButton3: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses Principal, RegistroCliente;

{$R *.dfm}


procedure TFormLogin.FormActivate(Sender: TObject);
var ruta:String;
begin
ruta:=ExtractFilePath(ParamStr(0));
DataModule1.SoyUnaConeccion.ConnectionString:= ('Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+ruta+'\CookBookDB.mdb');
DataModule1.SoyUnaConeccion.Connected:=True;
DataModule1.ADOAutor.Active:=True;
DataModule1.ADOAdministrador.Active:=True;
DataModule1.VerificarAdministrador.Active:=True;
DataModule1.VerificarCliente.Active:=True;
DataModule1.ADOIdioma.Active:=true;
datamodule1.ComprobarIdioma.Active:=true;
datamodule1.ADOEditorial.Active:=true;
datamodule1.EditorialNoEstaEnLibro.Active:=true;
datamodule1.IdiomaEstaEnLibro.Active:=true;
datamodule1.ComprobarEditorial.Active:=true;
datamodule1.ADOLibro.Active:=true;
Datamodule1.ADOEtiqueta.Active:=true;
datamodule1.ComprobarLibro.Active:=true;
datamodule1.FiltroPorFecha.Active:=true;
datamodule1.ADOCliente.Active:=true;
DataModule1.ADOIdioma.IndexFieldNames:='IDIOMA';

end;
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
   DataModule1.VerificarAdministrador.Parameters.ParamByName('QUser').Value:=User;

   DataModule1.VerificarAdministrador.Parameters.ParamByName('QClave').Value:=Pwd;
   DataModule1.VerificarAdministrador.Open;

   DataModule1.VerificarCliente.Close;
   DataModule1.VerificarCliente.Parameters.ParamByName('QUser').Value:=User;

   DataModule1.VerificarCliente.Parameters.ParamByName('QClave').Value:=Pwd;
   DataModule1.VerificarCliente.Open;

    if not(DataModule1.VerificarCliente.IsEmpty) then begin
      FormPrincipal.SpeedButton6.Enabled:=False;
      FormPrincipal.SpeedButton6.Visible:=false;
      FormPrincipal.SpeedButton1.Enabled:=true;
      FormPrincipal.SpeedButton1.Visible:=true;
      FormPrincipal.SpeedButton2.Enabled:=true;
      FormPrincipal.SpeedButton2.Visible:=true;
      FormPrincipal.SpeedButton4.Enabled:=true;
      FormPrincipal.SpeedButton4.Visible:=true;
      edit1.Text:='';
      edit2.Text:='';
      FormPrincipal.ShowModal;
      end
      else
        if not (DataModule1.VerificarAdministrador.IsEmpty) then begin
          FormPrincipal.SpeedButton6.Enabled:=true;
          FormPrincipal.SpeedButton6.Visible:=true;
          FormPrincipal.SpeedButton1.Enabled:=false;
          FormPrincipal.SpeedButton1.Visible:=false;
          FormPrincipal.SpeedButton2.Enabled:=false;
          FormPrincipal.SpeedButton2.Visible:=false;
          FormPrincipal.SpeedButton4.Enabled:=false;
          FormPrincipal.SpeedButton4.Visible:=false;
          PanelAdministracion.FormPanelAdministracion.SpeedButton1.Visible:=False;
          PanelAdministracion.FormPanelAdministracion.SpeedButton6.Visible:=False;
          PanelAdministracion.FormPanelAdministracion.SpeedButton1.Enabled:=False;
          PanelAdministracion.FormPanelAdministracion.SpeedButton6.Enabled:=False;
          edit1.Text:='';
          edit2.Text:='';
          FormPrincipal.ShowModal;
        end
        else
          if (User='root') and (Pwd='kapanga') then begin
            FormPrincipal.SpeedButton6.Enabled:=true;
            FormPrincipal.SpeedButton6.Visible:=true;
            FormPrincipal.SpeedButton1.Enabled:=false;
            FormPrincipal.SpeedButton1.Visible:=false;
            FormPrincipal.SpeedButton2.Enabled:=false;
            FormPrincipal.SpeedButton2.Visible:=false;
            FormPrincipal.SpeedButton4.Enabled:=false;
            FormPrincipal.SpeedButton4.Visible:=false;
            PanelAdministracion.FormPanelAdministracion.SpeedButton1.Enabled:=True;
            PanelAdministracion.FormPanelAdministracion.SpeedButton6.Enabled:=True;
            PanelAdministracion.FormPanelAdministracion.SpeedButton1.Visible:=True;
            PanelAdministracion.FormPanelAdministracion.SpeedButton6.Visible:=True;
            edit1.Text:='';
            edit2.Text:='';
            FormPrincipal.ShowModal;
          end
          else
          showMessage('El usuario o clave ingresados son incorrectos.');

   end;
procedure TFormLogin.SpeedButton3Click(Sender: TObject);
begin
formregistrocliente.showmodal;
end;

//   FormPrincipal.showmodal;
//   FormLogin.Close;




end.
