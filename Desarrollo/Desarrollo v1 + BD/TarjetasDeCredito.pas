unit TarjetasDeCredito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  EtablaVacia = Class (exception);
  EUsada = Class (exception);
  EcampoBlanco = Class (exception);
  TFormtarjetasDeCredito = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
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
    procedure SpeedButton3Click(Sender: TObject);
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
if ( StrScan(' qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormtarjetasDeCredito.Edit2Change(Sender: TObject);
begin
  label3.Visible:=false;

end;

procedure TFormtarjetasDeCredito.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan(' qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormtarjetasDeCredito.FormActivate(Sender: TObject);
begin
  DataModule1.ADOTarjetas.Active:=True;

  if (speedbutton1.Visible = false) and (speedbutton2.Visible = false) then
  begin
    edit1.ReadOnly:=true;

  end
  else begin
    edit1.ReadOnly:=false;

  end;
end;

procedure TFormtarjetasDeCredito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  label1.Font.Color:= clblack;
  label3.Visible:=false;
end;

procedure TFormtarjetasDeCredito.SpeedButton1Click(Sender: TObject);
var
  buttonSelected:integer;
begin
 buttonSelected:=messageDlg('¿Realmente desea Agregar esta tarjeta?',mtWarning,mbOkCancel,0);
  if buttonSelected= mrOk then
     Begin
       try   //No tocar anda de pedo la mierda esta, si tira error de parametro, piense que otras careras tamb son buenas opciones.
       comprobarTarjetas.Close;
       comprobarTarjetas.Parameters.ParamByName('Dato').Value:=edit1.Text;
       comprobarTarjetas.Open;

       datamodule1.ADOtarjetas.Append;

       if not (ComprobarTarjetas.IsEmpty) then
         raise EUsada.Create('Ya esta en la lista no puede agregar esta tarjeta')
       else

        if (edit1.Text = '') then
          raise ECampoBlanco.Create('Complete todos los campos')
        else begin
          datamodule1.ADOtarjetas.FieldByName('Nombre').AsString:=edit1.Text;
          datamodule1.ADOtarjetas.Post;
          showmessage('Se agrego correctamente la editorial');
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


          end;

         on E:EUsada do
            begin
              showmessage(e.Message);
              Label1.font.Color:=clred;
              label3.Visible:=true;
              edit1.Text:='';
              datamodule1.ADOEditorial.Cancel
            end;
       end;
     End
  else
    begin
    datamodule1.ADOtarjetas.Cancel;
    edit1.Text:='';
    end;
end;



procedure TFormtarjetasDeCredito.SpeedButton2Click(Sender: TObject);
var buttonselected:integer;
begin
  try
   buttonSelected:=messageDlg('¿Realmente desea eliminar esta tarjeta?',mtWarning,mbOkCancel,0);
    if buttonSelected= mrOk then
    if datamodule1.ADOTarjetas.IsEmpty then
      raise EtablaVacia.Create('No se puede eliminar de la tabla por que no hay datos')
      else
      begin
        DataModule1.ADOtarjetas.delete;
        ShowMessage('La tarjeta se borró exitosamente');
      end
      else
        if buttonSelected = mrCancel then
          DataModule1.ADOtarjetas.Cancel;

    except

    on E : EtablaVacia do
    begin
      Showmessage (E.Message);
      DataModule1.ADOTarjetas.Cancel;
    end;


  end;

end;

procedure TFormtarjetasDeCredito.SpeedButton3Click(Sender: TObject);
begin
  SpeedButton1.Visible:=true;
  SpeedButton1.Enabled:=true;
  SpeedButton2.Visible:=true;
  SpeedButton2.Enabled:=true;
  edit1.Text:='';

  unit1.DataModule1.adoTarjetas.close;

  Formtarjetasdecredito.close;

end;

end.
