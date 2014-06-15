unit Contacto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, EASendMailObjLib_TLB, Buttons;

type
  EEspacioEnBlanco = class(Exception);
  ESinArroba = class(Exception);
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Label11: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

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


procedure TForm2.Button1Click(Sender: TObject);
var
  oSmtp : TMail;
begin
  try
  oSmtp := TMail.Create(Application);
  oSmtp.LicenseCode := 'TryIt';

  if Edit1.Text='' then
    raise EEspacioEnBlanco.Create('Complete los campos en rojo')
  else
    if EncontrarArroba(Edit1.Text)=False then
      raise ESinArroba.Create('Ingrese un email v�lido')
      else
      // Su cuenta de GMAIL
      oSmtp.FromAddr := Edit1.Text;

  // Destinatario del email
  oSmtp.AddRecipientEx( 'cabanehb@gmail.com', 0);

  if Edit3.Text = '' then
    raise EEspacioEnBlanco.Create('Complete los campos en rojo')
    else
      // ASUNTO
      oSmtp.Subject := Edit3.Text;

  // MENSAJE
  if Memo1.Lines.GetText='' then
    raise EEspacioEnBlanco.Create('Complete los campos en rojo')
    else
      oSmtp.BodyText := Memo1.Lines.GetText;

  // SMTP DE GMAIL
  oSmtp.ServerAddr := 'smtp.gmail.com';

  // PUERTO SSL
  oSmtp.ServerPort := 465;

  // DETECTAR SSL/TLS AUTOMATICAMENTE
  oSmtp.SSL_init();

  // Usuario de gmail
  // Contrase�a de Gmail
  oSmtp.UserName := Edit1.Text;
  if Edit2.Text='' then
    raise EEspacioEnBlanco.Create('Complete los campos en rojo')
    else
       oSmtp.Password := Edit2.Text;

  if oSmtp.SendMail() = 0 then
    ShowMessage( 'El Email fue enviado!' )
  else
    ShowMessage( 'El env�o del email fall�, dando los siguientes errores: '
    + oSmtp.GetLastErrDescription());
  Form2.Close;
  except
   on E:EEspacioEnBlanco do begin
     ShowMessage(E.Message);
     if Edit1.Text='' then begin label1.Font.Color:=clred; Label5.Visible:=True; end;
     if Edit2.Text='' then begin label3.Font.Color:=clred; Label5.Visible:=True; end;
     if Edit3.Text='' then begin label4.Font.Color:=clred; Label5.Visible:=True; end;
     if Memo1.Lines.GetText='' then begin label2.Font.Color:=clred; Label5.Visible:=True; end;

   end;
   on E:ESinArroba do begin
      ShowMessage(E.Message);
      label1.Font.Color:=clred;
      Label5.Visible:=True;
   end;
  end;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
Label1.Font.Color:=clBlack;
Label5.Visible:=False;
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin
Label3.Font.Color:=clBlack;
Label5.Visible:=False;
end;

procedure TForm2.Edit3Change(Sender: TObject);
begin
Label4.Font.Color:=clBlack;
Label5.Visible:=False;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Memo1.Lines.Clear;
Label1.Font.Color:=clBlack;
Label2.Font.Color:=clBlack;
Label3.Font.Color:=clBlack;
Label4.Font.Color:=clBlack;
end;

procedure TForm2.Memo1Change(Sender: TObject);
begin
Label2.Font.Color:=clBlack;
Label5.Visible:=False;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
Form2.Close;
end;

end.
