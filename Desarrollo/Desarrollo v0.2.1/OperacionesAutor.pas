unit OperacionesAutor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls;

type
  EcampoBlanco = Class(exception);
  TFormOperacionesAutor = class(TForm)
    Label7: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOperacionesAutor: TFormOperacionesAutor;

implementation

uses Unit1;

{$R *.dfm}

// ******** POWERED BY NICO MENNA ********* //  proceso de que filtra los autores en la lista

procedure TFormOperacionesAutor.DBGrid1CellClick(Column: TColumn);
begin
    edit1.Text:=inttostr(datamodule1.adoautor.FieldByName('IDAutor').AsInteger);
    edit2.Text:=datamodule1.adoautor.FieldByName('Nombre').AsString;
    edit3.Text:=datamodule1.adoautor.FieldByName('Apellido').AsString;
end;

procedure TFormOperacionesAutor.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    edit1.Text:=inttostr(datamodule1.adoautor.FieldByName('IDAutor').AsInteger);
    edit2.Text:=datamodule1.adoautor.FieldByName('Nombre').AsString;
    edit3.Text:=datamodule1.adoautor.FieldByName('Apellido').AsString;
end;

procedure TFormOperacionesAutor.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    edit1.Text:=inttostr(datamodule1.adoautor.FieldByName('IDAutor').AsInteger);
    edit2.Text:=datamodule1.adoautor.FieldByName('Nombre').AsString;
    edit3.Text:=datamodule1.adoautor.FieldByName('Apellido').AsString;
end;

procedure TFormOperacionesAutor.Edit2Change(Sender: TObject);
begin
  label5.Font.Color:= clblack;
end;

procedure TFormOperacionesAutor.Edit3Change(Sender: TObject);
begin
  label2.Font.Color:= clblack;
end;

procedure TFormOperacionesAutor.Edit4Change(Sender: TObject);
var filtro : string;
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

// ******** POWERED BY NICO MENNA ********* // proceso que agrega un autor

procedure TFormOperacionesAutor.FormActivate(Sender: TObject);
begin

  if (speedbutton3.Visible = false) and (speedbutton4.Visible = false) and
  (speedbutton1.Visible = false) then
  begin
    edit1.ReadOnly:= true;
    edit2.ReadOnly:= true;
    edit3.ReadOnly:= true;
  end
  else
  if (speedbutton3.Visible= false) and (speedbutton4.Visible = false) then
  begin
    edit1.Text:=inttostr(datamodule1.adoautor.FieldByName('IDAutor').AsInteger);
    edit2.Text:=datamodule1.adoautor.FieldByName('Nombre').AsString;
    edit3.Text:=datamodule1.adoautor.FieldByName('Apellido').AsString;
    edit4.Text:='';
  end;

end;

procedure TFormOperacionesAutor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  label2.Font.Color:=clblack;
  label5.Font.Color:=clblack;
end;

// ******** POWERED BY NICO MENNA ********* // proceso de modificacion

procedure TFormOperacionesAutor.SpeedButton1Click(Sender: TObject);
var buttonSelected:integer;
begin
  buttonSelected:=messageDlg('¿Realmente desea modificar el Autor?',mtConfirmation,mbOkCancel,0);
  if buttonSelected= mrOk then
    try
      DataModule1.ADOAutor.edit;
      if (edit2.Text = '') then
        raise EcampoBlanco.Create('COMPLETE EL CAMPO NOMBRE!!')
      else
        datamodule1.adoautor.FieldByName('Nombre').AsString:= edit1.Text;
      if (edit3.Text = '') then
        raise EcampoBlanco.Create('COMPLETE EL CAMPO APELLIDO!!')
      else
        datamodule1.adoautor.FieldByName('Nombre').AsString:= edit2.Text;
      DataModule1.ADOAutor.post;
    except
      on E : EcampoBlanco do
      begin
      ShowMessage(E.message);
      if (edit2.Text = '') then
        label5.Font.color:= clred;
      if (edit3.Text = '') then
        label2.Font.Color:= clred;
      datamodule1.ADOAutor.Cancel;
    end
    else
    ShowMessage('Error desconocido')
  end;
  if buttonSelected= mrCancel then
    FormoperacionesAutor.Close;
end;

// ******** POWERED BY NICO MENNA ********* // proceso que cierra el formulario

procedure TFormOperacionesAutor.SpeedButton2Click(Sender: TObject);
begin
  edit1.ReadOnly:= false;
  edit2.ReadOnly:= false;
  edit3.ReadOnly:= false;
  label2.Font.Color:= clblack;
  label5.Font.Color:= clblack;
  datamodule1.ADOAutor.Cancel;
  formOperacionesAutor.Close;
end;

// ******** POWERED BY NICO MENNA ********* // proceso que agrega un autor

procedure TFormOperacionesAutor.SpeedButton3Click(Sender: TObject);
begin
  try
    DataModule1.ADOAutor.append;
    if (edit2.Text = '') then
      raise EcampoBlanco.Create('COMPLETE EL CAMPO NOMBRE!!')
    else
      datamodule1.adoautor.FieldByName('Nombre').AsString:= edit1.Text;
    if (edit3.Text = '') then
      raise EcampoBlanco.Create('COMPLETE EL CAMPO APELLIDO!!')
    else
      datamodule1.adoautor.FieldByName('Nombre').AsString:= edit2.Text;
    DataModule1.ADOAutor.post;
  except
  on E : EcampoBlanco do
  begin
    ShowMessage(E.message);
    if (edit2.Text = '') then
      label5.Font.color:= clred;
    if (edit3.text = '')then
      label2.Font.Color:=clred;
    datamodule1.ADOAutor.Cancel;
  end
  else
    ShowMessage('Error desconocido')
  end;
end;

// ******** POWERED BY NICO MENNA ********* // proceso de eliminacion de autor

procedure TFormOperacionesAutor.SpeedButton4Click(Sender: TObject);
begin
  if MessageDlg('¿Realmente desea eliminar el Autor?', mtConfirmation,[mbOk,mbCancel], 0)= mrOk then
    DataModule1.ADOAutor.delete;
end;

end.
