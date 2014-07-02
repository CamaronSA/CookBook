unit TarjetasDeCredito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  EUsada = Class (exception);
  EcampoBlanco = Class (exception);
  TFormtarjetasDeCredito = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    comprobarTarjetas: TADOQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormtarjetasDeCredito: TFormtarjetasDeCredito;

implementation

uses Unit1;

{$R *.dfm}

procedure TFormtarjetasDeCredito.Edit1Change(Sender: TObject);
begin
  label3.Visible:=false;
  label1.Font.Color:=clblack;
end;

procedure TFormtarjetasDeCredito.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormtarjetasDeCredito.Edit2Change(Sender: TObject);
begin
  label3.Visible:=false;
  label2.Font.Color:=clblack;
end;

procedure TFormtarjetasDeCredito.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormtarjetasDeCredito.FormActivate(Sender: TObject);
begin
  if (speedbutton1.Visible = false) and (speedbutton2.Visible = false) then
  begin
    edit1.ReadOnly:=true;
    edit2.ReadOnly:=true;
  end
  else begin
    edit1.ReadOnly:=false;
    edit2.ReadOnly:=false;
  end;
end;

procedure TFormtarjetasDeCredito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  label1.Font.Color:= clblack;
  label2.Font.Color:= clblack;
  label3.Visible:=false;
end;

procedure TFormtarjetasDeCredito.SpeedButton1Click(Sender: TObject);
var
  buttonSelected:integer;
begin
{ buttonSelected:=messageDlg('¿Realmente desea Agregar esta Editorial?',mtWarning,mbOkCancel,0);
  if buttonSelected= mrOk then
     Begin
       try   //No tocar anda de pedo la mierda esta, si tira error de parametro, piense que otras careras tamb son buenas opciones.
       datamodule1.comprobarTarjetas.Close;
       comprobarTarjetas.Parameters.ParamByName('Dato').Value:=edit1.Text;
       comprobarTarjetas.Parameters.ParamByName('Dato2').Value:=edit2.Text;
       datamodule1.comprobarTarjetas.Open;
       datamodule1.ADOtarjetas.Append;

       if (edit2.Text = '') then
          raise ECampoBlanco.Create('Complete todos los campos')
       else
          if (edit2.Text = '') then
            raise ECampoBlanco.Create('Complete todos los campos')
          else
            if not (Datamodule1.ComprobarTarjetas.IsEmpty) then
              raise EUsada.Create('Ya esta en la lista no puede agregar esta editorial')
            else
            begin
                datamodule1.ADOtarjetas.FieldByName('Nombre').AsString:=edit1.Text;
                datamodule1.ADOtarjetas.FieldByName('Banco').AsString:=edit2.Text;
                datamodule1.ADOEditorial.Post;
                showmessage('Se agrego correctamente la editorial');
                edit2.Text:='';
                edit1.Text:='';
            end;

       except

        on E:ECampoBlanco do
        begin
        if edit1.Text='' then
        begin
            showmessage(e.Message);
            Label1.font.Color:=clred;
            label3.Visible:=true;
            edit1.Text:='';
            datamodule1.ADOtarjetas.Cancel;
          end;

        if edit2.Text='' then
        begin
            showmessage(e.Message);
            Label2.font.Color:=clred;
            label3.Visible:=true;
            edit2.Text:='';
            datamodule1.ADOtarjetas.Cancel;
          end;

         on E:EUsada do
            begin
              showmessage(e.Message);
              Label1.font.Color:=clred;
              Label2.font.Color:=clred;
              label3.Visible:=true;
              edit2.Text:='';
              edit1.Text:='';
              datamodule1.ADOEditorial.Cancel
            end;
       end;
     End
  else
    begin
    datamodule1.ADOtarjetas.Cancel;
    edit2.Text:='';
    edit1.Text:='';
    end;
end;       }

end;


procedure TFormtarjetasDeCredito.SpeedButton2Click(Sender: TObject);
var buttonselected:integer;
begin
{   buttonSelected:=messageDlg('¿Realmente desea eliminar esta tarjeta?',mtWarning,mbOkCancel,0);
    if buttonSelected= mrOk then
    begin
      DataModule1.ADOtarjetas.delete;
      ShowMessage('La tarjeta se borró exitosamente');
    end
    else
      if buttonSelected = mrCancel then
        DataModule1.ADOEtarjetas.Cancel;
                  }
end;

end.
