unit OperacionesEditorial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, Unit1;

type
  EUsada = class (Exception);
  EEliminarVacio = class (Exception);
  TFormOperacionesEditorial = class(TForm)
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOperacionesEditorial: TFormOperacionesEditorial;

implementation

{$R *.dfm}

procedure TFormOperacionesEditorial.DBGrid1CellClick(Column: TColumn);
begin
  if (speedbutton1.Visible = false) then
    edit2.Text:=datamodule1.ADOEditorial.FieldByName('NombreEditorial').AsString;

end;

procedure TFormOperacionesEditorial.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (speedbutton1.Visible = false) then
      edit2.Text:=datamodule1.ADOEditorial.FieldByName('NombreEditorial').AsString;
end;

procedure TFormOperacionesEditorial.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (speedbutton1.Visible = false) then
      edit2.Text:=datamodule1.ADOEditorial.FieldByName('NombreEditorial').AsString;
end;

procedure TFormOperacionesEditorial.Edit1Change(Sender: TObject);
var filtro : string;

begin
 filtro := TRIM (edit1.text);
 if filtro<>'' then
  begin
    DataModule1.ADOEditorial.Filter := 'NombreEditorial LIKE ''%'+filtro+'%'''; // (*)
    DataModule1.ADOEditorial.Filtered := true;
  end
 else
  DataModule1.ADOEditorial.Filtered := false;
end;

procedure TFormOperacionesEditorial.FormActivate(Sender: TObject);
begin
if (speedbutton1.Visible = false) and (speedbutton1.Visible = false)  then
  edit2.ReadOnly:=true;

end;

procedure TFormOperacionesEditorial.SpeedButton3Click(Sender: TObject);
begin
close;
end;
//********Neg******///
procedure TFormOperacionesEditorial.SpeedButton4Click(Sender: TObject);
var buttonSelected:integer;
begin
try
  DataModule1.EditorialNoEstaEnLibro.close;
  DataModule1.EditorialNoEstaEnLibro.Parameters.ParamByName('Dato').value:=edit2.Text;
  DataModule1.EditorialNoEstaEnLibro.open;
  buttonSelected:=messageDlg('�Realmente desea eliminar esta Editorial?',mtWarning,mbOkCancel,0);
  if buttonSelected= mrOk then
    begin
     if datamodule1.ADOEditorial.IsEmpty then
       raise EEliminarVacio.Create('No se puede eliminar de la tabla por que no hay datos')
     else
      if not (Datamodule1.EditorialNoEstaEnLibro.IsEmpty) then
          raise EUsada.Create('Actualmente la editorial esta siendo usada por un libro')
      else
        begin
          DataModule1.AdoEditorial.Delete;
          ShowMessage('La editorial se borr� exitosamente');
        end;
    end;
  if buttonSelected = mrCancel then
    DataModule1.ADOEditorial.Cancel;
except
 on E:EEliminarVacio do
  begin
    showmessage (E.Message);
  end;
  on E:EUsada do
    showmessage (E.Message);
end;
end;

end.