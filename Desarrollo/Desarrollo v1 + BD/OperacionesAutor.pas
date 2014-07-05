unit OperacionesAutor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, DB, ADODB;

type
  EcampoBlanco = Class(exception);
  EdniDuplicado = Class(exception);
  EtablaVacia = Class(exception);
  EdniEnUso = class(exception);
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Label7: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    ComprobarAutorEnUso: TADOQuery;
    ComprobarAutor: TADOQuery;
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit4Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  dniAux: integer;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
if speedbutton3.Visible=false then
begin
    edit2.Text:=datamodule1.adoautor.FieldByName('Nombre').AsString;
    edit3.Text:=datamodule1.adoautor.FieldByName('Apellido').AsString;
    edit1.Text:=inttostr(datamodule1.ADOAutor.FieldByName('dni').AsInteger);
    dniAux:= strtoint(edit1.Text);
end;
end;

procedure TForm3.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if speedbutton3.Visible=false then
begin
    edit2.Text:=datamodule1.adoautor.FieldByName('Nombre').AsString;
    edit3.Text:=datamodule1.adoautor.FieldByName('Apellido').AsString;
    edit1.Text:=inttostr(datamodule1.ADOAutor.FieldByName('dni').AsInteger);
    dniAux:= strtoint(edit1.Text);
end;
end;
procedure TForm3.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if speedbutton3.Visible=false then
begin
    edit2.Text:=datamodule1.adoautor.FieldByName('Nombre').AsString;
    edit3.Text:=datamodule1.adoautor.FieldByName('Apellido').AsString;
    edit1.Text:=inttostr(datamodule1.ADOAutor.FieldByName('dni').AsInteger);
    dniAux:= strtoint(edit1.Text);
end;
end;




procedure TForm3.Edit1Change(Sender: TObject);
begin
  label1.Font.Color:= clblack;
  label13.Visible:=False;
end;

procedure TForm3.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('0123456789'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
  label5.Font.Color:= clblack;
  label13.Visible:=False;
end;

procedure TForm3.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TForm3.Edit3Change(Sender: TObject);
begin
  label2.Font.Color:= clblack;
  label13.Visible:=False;
end;

procedure TForm3.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TForm3.Edit4Change(Sender: TObject);
var
  filtro : string;
begin
  filtro := TRIM (edit4.text);
 if filtro<>'' then
  begin
    if RadioButton1.Checked=True then begin

    DataModule1.ADOAutor.Filter := 'Nombre LIKE ''%'+filtro+'%'''; // (*)
    DataModule1.ADOAutor.Filtered := true;

    end;

    if RadioButton2.Checked=True then begin
          DataModule1.ADOAutor.Filter := 'Apellido LIKE ''%'+filtro+'%'''; // (*)
    DataModule1.ADOAutor.Filtered := true;
    end;
   end
 else
  DataModule1.ADOAutor.Filtered := false;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  if (speedbutton3.Visible = true) and (speedbutton1.Visible = true)
  then
  begin
    edit1.ReadOnly:= false;
    edit2.ReadOnly:= false;
    edit3.ReadOnly:= false;
    edit2.Text:='';
    edit3.Text:='';
    edit1.Text:='';
    edit4.Text:='';
  end
  else
  if (speedbutton4.Visible = true) then
  begin
    edit1.ReadOnly:= true;
    edit2.ReadOnly:= true;
    edit3.ReadOnly:= true;
    edit2.Text:=datamodule1.adoautor.FieldByName('Nombre').AsString;
    edit3.Text:=datamodule1.adoautor.FieldByName('Apellido').AsString;
    edit1.Text:=inttostr(datamodule1.ADOAutor.FieldByName('dni').AsInteger);
    edit4.Text:='';
  end;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  label2.Font.Color:=clblack;
  label5.Font.Color:=clblack;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
var buttonSelected:integer;
begin

  buttonSelected:=messageDlg('¿Realmente desea modificar el Autor?',mtConfirmation,mbOkCancel,0);
  if buttonSelected= mrOk then Begin
    try



      DataModule1.ADOAutor.edit;

      if (edit2.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adoautor.FieldByName('Nombre').AsString:= edit2.Text;

      if (edit3.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adoautor.FieldByName('Apellido').AsString:= edit3.Text;

      if (edit1.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else begin
        if (strtoint(edit1.Text) <> dniAux) then
        begin
          // consulta para verificar que el DNI no este duplicado
          ComprobarAutor.Close;
          ComprobarAutor.Parameters.ParamByName('dato').Value:= edit1.Text;
          ComprobarAutor.Open;
        end;

        // verifico que el dni no este duplicado osea q no lo este usando otro
        if not (ComprobarAutor.IsEmpty) then
          raise EdniDuplicado.Create('El DNI del autor coincide con el de otro. Verifique los datos y vuelva a intentar')
        else
          unit1.datamodule1.adoautor.FieldByName('dni').Asinteger:= strtoint(edit1.Text);
      end;
      DataModule1.ADOAutor.post;
      DataModule1.ADOLibro.Refresh;
    except
      on E : EcampoBlanco do
      begin

      ShowMessage(E.message);

      if (edit2.Text = '') then begin
        label5.Font.color:= clred;
        label13.Visible:=True;
      end;

      if (edit3.Text = '') then begin
        label2.Font.Color:= clred;
        label13.Visible:=True;
      end;

      if (edit1.Text = '') then begin
        label1.Font.color:= clred;
        label13.Visible:=True;
      end;

      datamodule1.ADOAutor.Cancel;

    end;
    on E : EdniDuplicado do
    begin
      ShowMessage(E.message);
      edit1.Text:='';
      label1.Font.color:= clred;
      label13.Visible:=True;
      unit1.datamodule1.ADOAutor.Cancel;
    end
    else
      ShowMessage('Error desconocido')
  end;
  end;
  if buttonSelected= mrCancel then begin
    datamodule1.ADOAutor.Cancel;
    edit1.Text:='';
    edit2.Text:='';
    edit3.Text:='';
  end;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
  edit2.ReadOnly:= false;
  edit3.ReadOnly:= false;
  edit1.ReadOnly:=false;
  edit1.text:='';
  edit2.text:= '';
  edit3.text:= '';
  edit4.Text:='';
  label2.Font.Color:= clblack;
  label5.Font.Color:= clblack;
  datamodule1.ADOAutor.Cancel;
  label13.Visible:=False;
  Close;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
var buttonSelected:integer;
begin

  try
    // consulta para verificar que el DNI no este duplicado
    ComprobarAutor.Close;
    ComprobarAutor.Parameters.ParamByName('dato').Value:= edit1.Text;
    ComprobarAutor.Open;
    unit1.DataModule1.ADOAutor.append;
    if (edit2.Text = '') then
      raise EcampoBlanco.Create('Complete los campos en rojo')
    else
      unit1.datamodule1.adoautor.FieldByName('Nombre').AsString:= edit2.Text;
    if (edit3.Text = '') then
      raise EcampoBlanco.Create('Complete los campos en rojo')
    else
      unit1.datamodule1.adoautor.FieldByName('Apellido').AsString:= edit3.Text;
   // verifico que el campo dni no este en blanco
    if (edit1.Text = '') then
      raise EcampoBlanco.Create('Complete los campos en rojo')
    else
    // verifico que el dni no este duplicado
      if not (ComprobarAutor.IsEmpty) then
        raise EdniDuplicado.Create('El DNI del autor coincide con el de otro. Verifique los datos y vuelva a intentar')
          else
            unit1.datamodule1.adoautor.FieldByName('dni').Asinteger:= strtoint(edit1.Text);

    unit1.DataModule1.ADOAutor.post;

    edit1.Text:='';
    edit2.Text:='';
    edit3.Text:='';

  except
  on E : EcampoBlanco do
  begin
    ShowMessage(E.message);
    if (edit2.Text = '') then begin
      label13.Visible:=True;
      label5.Font.color:= clred;
    end;
    if (edit3.text = '')then  begin
      label2.Font.Color:=clred;
      label13.Visible:=True;
    end;
    if (edit1.Text = '') then begin
        label1.Font.color:= clred;
        label13.Visible:=True;
    end;
    unit1.datamodule1.ADOAutor.Cancel;
  end;

  on E : EdniDuplicado do
  begin
    ShowMessage(E.message);
    edit1.Text:='';
    label1.Font.color:= clred;
    label13.Visible:=True;
    unit1.datamodule1.ADOAutor.Cancel;
  end
  else
    ShowMessage('Error desconocido')
  end;


  if buttonSelected= mrCancel then begin
    datamodule1.ADOAutor.Cancel;
    edit1.Text:='';
    edit2.Text:='';
    edit3.Text:='';
  end;
end;



procedure TForm3.SpeedButton4Click(Sender: TObject);
var buttonselected: integer;
begin
  try


    buttonSelected:=messageDlg('¿Realmente desea eliminar este Autor?',mtWarning,mbOkCancel,0);
    if buttonSelected= mrOk then
    begin
    // verifico antes de eliminar que la tabla no este vacia
      if datamodule1.ADOAutor.IsEmpty then
         raise EtablaVacia.Create('No se puede eliminar de la tabla por que no hay datos')
      else
        // consulta para ver si se esta usando el autor
        ComprobarAutorEnUso.close;
        ComprobarAutorEnUso.Parameters.ParamByName('dato').value:=edit1.Text;
        ComprobarAutorEnUso.open;
        // verifico que el autor no tenga libro
        if not (ComprobarAutorEnUso.IsEmpty) then
          raise EdniEnUso.Create('Actualmente el Autor tiene algun Libro')
        else begin
        // si todo lo anterior se cumple elimino
          DataModule1.ADOAutor.delete;
          ShowMessage('El Autor se borró exitosamente');
        end;
    end;

    // si aprieto boton cancelar no hago nada y cancelo la tabla para que no se
    // apliquen cambios
    if buttonSelected = mrCancel then
      DataModule1.ADOAutor.Cancel;

  except

    on E : EtablaVacia do
    begin
      Showmessage (E.Message);
      DataModule1.ADOAutor.Cancel;
    end;

    on E : EdniEnUso do
    begin
      ShowMessage (E.Message);
      DataModule1.ADOAutor.Cancel;
    end;

  end;

  edit1.Text:='';
  edit2.Text:='';
  edit3.Text:='';
  edit4.Text:='';
end;

end.
