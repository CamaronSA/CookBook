unit Usuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, ComCtrls, ExtDlgs;

type
  EcampoBlanco = Class(exception);
  TFormUsuarios = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit14: TEdit;
    Edit16: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    RadioButton4: TRadioButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit12: TEdit;
    Label11: TLabel;
    Label15: TLabel;
    Edit13: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    SpeedButton4: TSpeedButton;
    DBGrid2: TDBGrid;
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure GroupBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuarios: TFormUsuarios;

implementation

uses Unit1;

{$R *.dfm}

procedure TFormUsuarios.DBGrid1CellClick(Column: TColumn);
begin
  formusuarios.edit2.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('dni').asinteger);
  formusuarios.edit3.Text:= unit1.DataModule1.ADOCliente.FieldByName('nombre').asstring;
  formusuarios.edit4.Text:= unit1.DataModule1.ADOCliente.FieldByName('apellido').asstring;
  formusuarios.edit5.Text:= unit1.DataModule1.ADOCliente.FieldByName('usuario').asstring;
  formusuarios.edit6.Text:= unit1.DataModule1.ADOCliente.FieldByName('clave').asstring;
  formusuarios.edit7.Text:= unit1.DataModule1.ADOCliente.FieldByName('calle').asstring;
  formusuarios.edit8.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('nro').AsInteger);
  formusuarios.edit9.Text:= unit1.DataModule1.ADOCliente.FieldByName('localidad').asstring;
  formusuarios.edit10.Text:= unit1.DataModule1.ADOCliente.FieldByName('provincia').asstring;
  formusuarios.edit11.Text:= unit1.DataModule1.ADOCliente.FieldByName('pais').asstring;
  formusuarios.edit12.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fecha Nacimiento').AsDateTime);
  formusuarios.edit13.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fechadeiniciocliente').asdatetime);
  formusuarios.edit14.Text:= unit1.DataModule1.ADOCliente.FieldByName('mail').asstring;
  formusuarios.edit16.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('telefono').Asinteger);
end;

procedure TFormUsuarios.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  formusuarios.edit2.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('dni').asinteger);
  formusuarios.edit3.Text:= unit1.DataModule1.ADOCliente.FieldByName('nombre').asstring;
  formusuarios.edit4.Text:= unit1.DataModule1.ADOCliente.FieldByName('apellido').asstring;
  formusuarios.edit5.Text:= unit1.DataModule1.ADOCliente.FieldByName('usuario').asstring;
  formusuarios.edit6.Text:= unit1.DataModule1.ADOCliente.FieldByName('clave').asstring;
  formusuarios.edit7.Text:= unit1.DataModule1.ADOCliente.FieldByName('calle').asstring;
  formusuarios.edit8.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('nro').AsInteger);
  formusuarios.edit9.Text:= unit1.DataModule1.ADOCliente.FieldByName('localidad').asstring;
  formusuarios.edit10.Text:= unit1.DataModule1.ADOCliente.FieldByName('provincia').asstring;
  formusuarios.edit11.Text:= unit1.DataModule1.ADOCliente.FieldByName('pais').asstring;
  formusuarios.edit12.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fecha Nacimiento').AsDateTime);
  formusuarios.edit13.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fechadeiniciocliente').asdatetime);
  formusuarios.edit14.Text:= unit1.DataModule1.ADOCliente.FieldByName('mail').asstring;
  formusuarios.edit16.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('telefono').Asinteger);
end;

procedure TFormUsuarios.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  formusuarios.edit2.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('dni').asinteger);
  formusuarios.edit3.Text:= unit1.DataModule1.ADOCliente.FieldByName('nombre').asstring;
  formusuarios.edit4.Text:= unit1.DataModule1.ADOCliente.FieldByName('apellido').asstring;
  formusuarios.edit5.Text:= unit1.DataModule1.ADOCliente.FieldByName('usuario').asstring;
  formusuarios.edit6.Text:= unit1.DataModule1.ADOCliente.FieldByName('clave').asstring;
  formusuarios.edit7.Text:= unit1.DataModule1.ADOCliente.FieldByName('calle').asstring;
  formusuarios.edit8.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('nro').AsInteger);
  formusuarios.edit9.Text:= unit1.DataModule1.ADOCliente.FieldByName('localidad').asstring;
  formusuarios.edit10.Text:= unit1.DataModule1.ADOCliente.FieldByName('provincia').asstring;
  formusuarios.edit11.Text:= unit1.DataModule1.ADOCliente.FieldByName('pais').asstring;
  formusuarios.edit12.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fecha Nacimiento').AsDateTime);
  formusuarios.edit13.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fechadeiniciocliente').asdatetime);
  formusuarios.edit14.Text:= unit1.DataModule1.ADOCliente.FieldByName('mail').asstring;
  formusuarios.edit16.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('telefono').Asinteger);
end;

procedure TFormUsuarios.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormUsuarios.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormUsuarios.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('0123456789-@_.qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormUsuarios.Edit1Change(Sender: TObject);
var
  filtro : string;
begin
    filtro := TRIM (edit1.text);
    if filtro<>'' then
    begin
        if RadioButton1.Checked=True then begin
          DataModule1.ADOCliente.Filter := 'Nombre LIKE ''%'+filtro+'%'''; // (*)
          DataModule1.ADOCliente.Filtered := true;
        end;

        if RadioButton2.Checked=True then begin
          DataModule1.ADOCliente.Filter := 'Apellido LIKE ''%'+filtro+'%'''; // (*)
          DataModule1.ADOCliente.Filtered := true;
        end;

        if RadioButton3.Checked=True then begin
          DataModule1.ADOCliente.Filter := 'Localidad LIKE ''%'+filtro+'%'''; // (*)
          DataModule1.ADOCliente.Filtered := true;
        end;
   end
   else
     DataModule1.ADOCliente.Filtered := false;
   end;

procedure TFormUsuarios.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormUsuarios.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormUsuarios.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  formusuarios.speedbutton1.Enabled:=true;
  formusuarios.speedbutton1.Visible:=true;
  formusuarios.speedbutton2.Enabled:=true;
  formusuarios.speedbutton2.Visible:=true;

  speedbutton1.Enabled:=true;
  speedbutton1.Visible:=true;
  edit2.ReadOnly:=false;
  edit3.ReadOnly:=false;
  edit4.ReadOnly:=false;
  edit5.ReadOnly:=false;
  edit6.ReadOnly:=false;
  edit7.ReadOnly:=false;
  edit8.ReadOnly:=false;
  edit9.ReadOnly:=false;
  edit10.ReadOnly:=false;
  edit11.ReadOnly:=false;
  edit12.ReadOnly:=false;
  edit13.ReadOnly:=false;
  edit14.ReadOnly:=false;
  edit16.ReadOnly:=false;

  label2.Font.Color:=clblack;
  label3.Font.Color:=clblack;
  label4.Font.Color:=clblack;
  label5.Font.Color:=clblack;
  label13.Font.Color:=clblack;
  label9.Font.Color:=clblack;
  label10.Font.Color:=clblack;
  label6.Font.Color:=clblack;
  label7.Font.Color:=clblack;
  label8.Font.Color:=clblack;
  label14.Font.Color:=clblack;
  label12.Font.Color:=clblack;
  label16.Font.Color:=clblack;
  label17.Font.Color:=clblack;
end;

procedure TFormUsuarios.GroupBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  If radiobutton4.Checked=false then
  begin
    dbgrid1.Enabled:=true;
    dbgrid1.Visible:=true;
  end;
end;

procedure TFormUsuarios.RadioButton1Click(Sender: TObject);
begin
  speedbutton4.Enabled:=false;
  speedbutton4.Visible:=false;

  dbgrid1.Enabled:=true;
  dbgrid1.Visible:=true;
end;

procedure TFormUsuarios.RadioButton2Click(Sender: TObject);
begin
  speedbutton4.Enabled:=false;
  speedbutton4.Visible:=false;
  dbgrid1.Enabled:=true;
  dbgrid1.Visible:=true;

end;

procedure TFormUsuarios.RadioButton3Click(Sender: TObject);
begin
  speedbutton4.Enabled:=false;
  speedbutton4.Visible:=false;
  dbgrid1.Enabled:=true;
  dbgrid1.Visible:=true;
end;

procedure TFormUsuarios.RadioButton4Click(Sender: TObject);
begin
  speedbutton4.Enabled:=true;
  speedbutton4.Visible:=true;
  dbgrid1.Enabled:=false;
  dbgrid1.Visible:=false;
end;

procedure TFormUsuarios.SpeedButton1Click(Sender: TObject);
var buttonSelected:integer;
begin
  buttonSelected:=messageDlg('�Realmente desea modificar el Autor?',mtConfirmation,mbOkCancel,0);
  if buttonSelected= mrOk then Begin
    try
      DataModule1.ADOCliente.edit;
      if (edit2.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('dni').Asinteger:= strtoint(edit2.Text);
      if (edit3.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('nombre').AsString:= edit3.Text;
      if (edit4.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('Apellido').AsString:= edit4.Text;
      if (edit5.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('usuario').AsString:= edit5.Text;
      if (edit6.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('clave').AsString:= edit6.Text;
      if (edit7.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('calle').AsString:= edit7.Text;
      if (edit8.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('nro').Asinteger:= strtoint(edit8.Text);
      if (edit9.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('localidad').AsString:= edit9.Text;
      if (edit10.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('provincia').AsString:= edit10.Text;
      if (edit11.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('pais').AsString:= edit11.Text;
      if (edit12.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('fecha Nacimiento').AsDateTime:= strtodate(edit12.Text);
      if (edit16.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('telefono').Asinteger:= strtoint(edit16.Text);
      if (edit14.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('mail').AsString:= edit14.Text;
      if (edit13.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('fechadeiniciocliente').Asdatetime:= strtodate(edit13.Text);

    except

      on E : EcampoBlanco do
      begin
      if (edit2.Text = '') then begin
        label2.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit3.Text = '') then begin
        label3.color:= clred;
        label18.visible:=True;
      end;
      if (edit4.Text = '') then begin
        label4.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit5.Text = '') then begin
        label5.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit6.Text = '') then begin
        label13.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit7.Text = '') then begin
        label9.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit8.Text = '') then begin
        label10.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit9.Text = '') then begin
        label6.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit10.Text = '') then begin
        label7.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit11.Text = '') then begin
        label8.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit12.Text = '') then begin
        label14.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit16.Text = '') then begin
        label12.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit14.Text = '') then begin
        label16.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit13.Text = '') then begin
        label7.Font.color:= clred;
        label18.Visible:=True;
      end;
      datamodule1.ADOcliente.Cancel
    end
    else
      ShowMessage('Error desconocido')
    end;
    end;
    if buttonSelected= mrCancel then
    begin
      datamodule1.ADOcliente.Cancel;
      edit2.Text:='';
      edit3.Text:='';
      edit4.Text:='';
      edit5.Text:='';
      edit6.Text:='';
      edit7.Text:='';
      edit8.Text:='';
      edit9.Text:='';
      edit10.Text:='';
      edit11.Text:='';
      edit12.Text:='';
      edit13.Text:='';
      edit14.Text:='';
      edit16.Text:='';
    end;

  end;


procedure TFormUsuarios.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('�Realmente desea eliminar al usuario?', mtConfirmation,[mbOk,mbCancel], 0)= mrOk then
    DataModule1.ADOcliente.delete;
end;

procedure TFormUsuarios.SpeedButton3Click(Sender: TObject);
begin



  formusuarios.Close;


end;

procedure TFormUsuarios.SpeedButton4Click(Sender: TObject);
begin
  unit1.DataModule1.ADOQueryUsuarios.Close;
  unit1.DataModule1.ADOQueryUsuarios.Parameters.ParamByName('fechaini').Value:= datetostr(datetimepicker1.Date);
  unit1.DataModule1.ADOQueryUsuarios.Parameters.ParamByName('fechafin').Value:= datetostr(datetimepicker2.Date);
  unit1.DataModule1.ADOQueryUsuarios.Open;
end;

end.