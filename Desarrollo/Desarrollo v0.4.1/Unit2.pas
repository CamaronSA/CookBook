unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, EASendMailObjLib_TLB, Buttons; // add EASendMail unit

type
  TForm2 = class(TForm)
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  oSmtp : TMail;
begin
  oSmtp := TMail.Create(Application);
  oSmtp.LicenseCode := 'TryIt';

  // Your Gmail email address
  oSmtp.FromAddr := 'cabanehb@gmail.com';

  // Add recipient email address
  oSmtp.AddRecipientEx( 'neg90.ng@gmail.com', 0);

  // Set email subject
  oSmtp.Subject := 'EMAIL DE EJEMPLO';

  // Set email body
  oSmtp.BodyText := 'TE MANDO UN MENSAJIRIJILLO NED';

  // Gmail SMTP server address
  oSmtp.ServerAddr := 'smtp.gmail.com';

  // set direct SSL 465 port,
  oSmtp.ServerPort := 465;

  // detect SSL/TLS automatically
  oSmtp.SSL_init();

  // Gmail user authentication should use your
  // Gmail email address as the user name.
  // For example: your email is "gmailid@gmail.com", then the user should be "gmailid@gmail.com"
  oSmtp.UserName := 'cabanehb@gmail.com';
  oSmtp.Password := 'Ch3ckTh1s';

  ShowMessage( 'Enviando email ...' );

  if oSmtp.SendMail() = 0 then
    ShowMessage( 'el Email fue enviado!' )
  else
    ShowMessage( 'failed to send email with the following error: '
    + oSmtp.GetLastErrDescription());

end;

end.
