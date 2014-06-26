unit RecuperarClave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, EASendMailObjLib_TLB;

type
  EEspacioEnBlanco = class(Exception);
  ESinArroba = class(Exception);
  EDatosInvalidos=class(Exception);
  TFormRecuperarClave = class(TForm)
    Label11: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure LetrasNumnerosETC(Sender: TObject; var Key: Char);
    procedure LetrasYEspacio(Sender: TObject; var Key: Char);
    procedure Letras(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecuperarClave: TFormRecuperarClave;

implementation

uses Unit1;

{$R *.dfm}

//*******// Powered by Yisus, root de nacimiento. //*******//
                       //&&&&&&&&&//                       // Encontrar ARROBA @
//*******// Powered by NEG, lider autoprogramado //*******//
function EncontrarArroba (Palabra: String):Boolean;
var Aux:Boolean; Max:Integer;
begin
Max:=Length(Palabra);
Aux:=False;
while (Max>-1) and (Aux<>True) do begin
  if (Palabra[Max] = '@') then
    Aux:=True;
  Max:=Max-1;
end;
Result:=Aux;
end;

//*******// Powered by Yisus, root de nacimiento. //*******//
//Solo Letras
procedure TFormRecuperarClave.Edit1Change(Sender: TObject);
begin
  Label5.Visible:=False;
  label1.Font.Color:=ClBlack;
end;

procedure TFormRecuperarClave.Edit2Change(Sender: TObject);
begin
  Label5.Visible:=False;
  label3.Font.Color:=ClBlack;
end;

procedure TFormRecuperarClave.Edit3Change(Sender: TObject);
begin
  Label5.Visible:=False;
  label6.Font.Color:=ClBlack;
end;

procedure TFormRecuperarClave.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
end;

procedure TFormRecuperarClave.Letras(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8]) then
    key := #0;
end;

//Solo Letras y ESPACIO
procedure TFormRecuperarClave.LetrasYEspacio(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8,' ']) then
    key := #0;
end;

procedure TFormRecuperarClave.SpeedButton1Click(Sender: TObject);
var
  oSmtp : TMail;
  Usuario:String;
  Contrasenia:String;
  DNI:Integer;
  Email:String;
begin
  try

  if Edit3.Text = '' then
      raise EEspacioEnBlanco.Create('Complete los campos en rojo')
      else Usuario:=Edit3.Text;
  if Edit2.Text='' then
      raise EEspacioEnBlanco.Create('Complete los campos en rojo')
      else DNI:=StrToInt(Edit2.Text);
  if Edit1.Text = '' then
      raise EEspacioEnBlanco.Create('Complete los campos en rojo')
      else Email:=Edit1.Text;
  //Paso los datos a la consulta
  DataModule1.RecuClaveUsuario.Close;
  DataModule1.RecuClaveUsuario.Parameters.ParamByName('User').Value:=Usuario;
  DataModule1.RecuClaveUsuario.Parameters.ParamByName('EmailUsuario').Value:=Email;
  DataModule1.RecuClaveUsuario.Parameters.ParamByName('DNIUsuario').Value:=DNI;
  DataModule1.RecuClaveUsuario.Open;
  if DataModule1.RecuClaveUsuario.IsEmpty then
    raise EDatosInvalidos.Create('Los datos ingresados son inválidos')
  else
    Contrasenia:=DataModule1.RecuClaveUsuario.FieldByName('Clave').asString;
  oSmtp := TMail.Create(Application);
  oSmtp.LicenseCode := 'TryIt';

  if Edit1.Text='' then
    raise EEspacioEnBlanco.Create('Complete los campos en rojo')
  else
    if EncontrarArroba(Edit1.Text)=False then
      raise ESinArroba.Create('Ingrese un email válido')
      else
      // Su cuenta de GMAIL
      oSmtp.FromAddr := Edit1.Text;

  // Destinatario del email
  oSmtp.AddRecipientEx( Edit1.Text, 0);

  // ASUNTO DEL EMAIL
  oSmtp.Subject := 'Su clave de CookBook';

  // MENSAJE
  oSmtp.BodyText := 'Su usuario es: '+Usuario+#13+'Su contraseña es: '+Contrasenia;

  // SMTP DE GMAIL
  oSmtp.ServerAddr := 'smtp.gmail.com';

  // PUERTO SSL
  oSmtp.ServerPort := 465;

  // DETECTAR SSL/TLS AUTOMATICAMENTE
  oSmtp.SSL_init();

  // Usuario de gmail
  // Contraseña de Gmail
  oSmtp.UserName := 'contacto.cookbook@gmail.com';
  oSmtp.Password := 'kapanga123456789';

  if oSmtp.SendMail() = 0 then
    ShowMessage( 'La contraseña fue enviada a su email' )
  else
    ShowMessage( 'No pudimos recuperar su clave por el siguiente motivo: '
    + oSmtp.GetLastErrDescription());
  FormRecuperarClave.Close;
  except
   on E:EEspacioEnBlanco do begin
     ShowMessage(E.Message);
     if Edit1.Text='' then begin label1.Font.Color:=clred; Label5.Visible:=True; end; //Email
     if Edit2.Text='' then begin label3.Font.Color:=clred; Label5.Visible:=True; end; //DNI
     if Edit3.Text='' then begin label6.Font.Color:=clred; Label5.Visible:=True; end; //Usuario

   end;
   on E:ESinArroba do begin
      ShowMessage(E.Message);
      label1.Font.Color:=clred;
      Label5.Visible:=True;
   end;
   on E:EDatosInvalidos do begin
     ShowMessage(E.Message);
   end;
  end;

end;

procedure TFormRecuperarClave.SpeedButton2Click(Sender: TObject);
begin
FormRecuperarClave.Close;
end;

//Letras, numeros, @ , - , _ y .
procedure TFormRecuperarClave.LetrasNumnerosETC(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8,'_','-','@','0'..'9','.']) then
    key := #0;
end;


end.
