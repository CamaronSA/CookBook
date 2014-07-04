unit CambioClave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TFormCambioClave = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCambioClave: TFormCambioClave;

implementation

uses Unit1, Usuarios;

{$R *.dfm}

procedure TFormCambioClave.Edit2Change(Sender: TObject);
begin
  if edit2.Text <> '' then
     edit3.Enabled:=true
     else
      edit3.Enabled:=false;
end;

procedure TFormCambioClave.Edit3Change(Sender: TObject);
begin
  if edit2.Text = edit3.Text then
  begin
    speedbutton1.Enabled:=true;
    label4.Visible:=false;
  end
    else
    begin
      speedbutton1.Enabled:=false;
      label4.Visible:=true;
    end;

   if edit3.Text <> '' then
     edit2.Enabled:= false
   else
      edit2.Enabled:= true;
end;

procedure TFormCambioClave.FormActivate(Sender: TObject);
begin
  edit1.Text:= unit1.DataModule1.ADOCliente.FieldByName('clave').asstring;
  edit2.Text:='';
  edit3.Text:='';
end;

procedure TFormCambioClave.SpeedButton1Click(Sender: TObject);
begin
  formusuarios.edit6.text:=edit2.Text;
  formCambioClave.Close;
end;

procedure TFormCambioClave.SpeedButton2Click(Sender: TObject);
begin
  formCambioClave.Close;
end;

end.
