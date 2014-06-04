unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFormLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
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

procedure TFormLogin.SpeedButton1Click(Sender: TObject);
begin
  FormLogin.Close;
end;

procedure TFormLogin.SpeedButton2Click(Sender: TObject);
begin
   FormPrincipal.showmodal;
   FormLogin.Close;

end;

end.
