unit CambioClave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  EclavesDistintas = Class (exception);
  EClavesEnBlanco = Class (exception);
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
{  if edit2.Text <> '' then
     edit3.Enabled:=true
     else
      edit3.Enabled:=false;     }
end;

procedure TFormCambioClave.Edit3Change(Sender: TObject);
begin
{  if edit2.Text = edit3.Text then
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
      edit2.Enabled:= true;  }
end;

procedure TFormCambioClave.FormActivate(Sender: TObject);
begin
  edit1.Text:= unit1.DataModule1.ADOCliente.FieldByName('clave').asstring;
  edit2.Text:='';
  edit3.Text:='';
end;

procedure TFormCambioClave.SpeedButton1Click(Sender: TObject);
begin
try

  //verificacion de clave, que no haya campos en blanco y que coincidan
  if ((edit2.Text = '') or (edit3.Text = '')) then
    raise EclavesEnBlanco.Create('No se puede modificar las claves si hay campos en blanco')
    else if (edit2.Text <> edit3.Text) then
      raise EclavesDistintas.Create('Las claves no coinciden, verificar nuevamente los datos')
      else begin
        formusuarios.edit6.text:=edit2.Text;
        formCambioClave.Close;
      end;

  except
  on E: EclavesDistintas do
    showmessage(E.Message);

  on E : EClavesEnBlanco do
    showmessage(E.message);

end;
end;

procedure TFormCambioClave.SpeedButton2Click(Sender: TObject);
begin
  formCambioClave.Close;
end;

end.
