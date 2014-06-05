unit ModifAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit1, StdCtrls, ExtCtrls, Mask, DBCtrls, Buttons, dblookup, Grids,
  DBGrids;

type
  TFormModifAdmin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label8: TLabel;
    Edit10: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormModifAdmin: TFormModifAdmin;

implementation

{$R *.dfm}

  //*******// Powered by Yisus, root de nacimiento. //*******//
procedure TFormModifAdmin.DBGrid1CellClick(Column: TColumn);
begin
    Edit2.Text:=DataModule1.ADOAdministrador.FieldByName('Nombre').AsString;
    Edit3.Text:=DataModule1.ADOAdministrador.FieldByName('Apellido').AsString;
    Edit4.Text:=InttoStr(DataModule1.ADOAdministrador.FieldByName('DNI').AsInteger);
    Edit5.Text:=DataModule1.ADOAdministrador.FieldByName('Usuario').AsString;
    Edit6.Text:=DataModule1.ADOAdministrador.FieldByName('Clave').AsString;
    Edit7.Text:=InttoStr(DataModule1.ADOAdministrador.FieldByName('Dia').AsInteger);
    Edit8.Text:=InttoStr(DataModule1.ADOAdministrador.FieldByName('Mes').AsInteger);
    Edit9.Text:=InttoStr(DataModule1.ADOAdministrador.FieldByName('Anio').AsInteger);
    Edit10.Text:=DataModule1.ADOAdministrador.FieldByName('Mail').AsString;
end;

  //*******// Powered by Yisus, root de nacimiento. //*******//
procedure TFormModifAdmin.Edit1Change(Sender: TObject);
var filtro : string;
begin
  filtro := TRIM (edit1.text);
 if filtro<>'' then
  begin
    if RadioButton1.Checked=True then begin

    DataModule1.ADOAdministrador.Filter := 'Apellido LIKE ''%'+filtro+'%'''; // (*)
    DataModule1.ADOAdministrador.Filtered := true;

    end;

    if RadioButton2.Checked=True then begin
          DataModule1.ADOAdministrador.Filter := 'Nombre LIKE ''%'+filtro+'%'''; // (*)
    DataModule1.ADOAdministrador.Filtered := true;
    end;
   end
 else
  DataModule1.ADOAdministrador.Filtered := false;
end;


  //*******// Powered by Yisus, root de nacimiento. //*******//
procedure TFormModifAdmin.FormActivate(Sender: TObject);
begin
  if SpeedButton1.Visible=True then begin
    Edit2.Text:=DataModule1.ADOAdministrador.FieldByName('Nombre').AsString;
    Edit3.Text:=DataModule1.ADOAdministrador.FieldByName('Apellido').AsString;
    Edit4.Text:=InttoStr(DataModule1.ADOAdministrador.FieldByName('DNI').AsInteger);
    Edit5.Text:=DataModule1.ADOAdministrador.FieldByName('Usuario').AsString;
    Edit6.Text:=DataModule1.ADOAdministrador.FieldByName('Clave').AsString;
    Edit7.Text:=InttoStr(DataModule1.ADOAdministrador.FieldByName('Dia').AsInteger);
    Edit8.Text:=InttoStr(DataModule1.ADOAdministrador.FieldByName('Mes').AsInteger);
    Edit9.Text:=InttoStr(DataModule1.ADOAdministrador.FieldByName('Anio').AsInteger);
    Edit10.Text:=DataModule1.ADOAdministrador.FieldByName('Mail').AsString;
  end
    else begin
    Edit2.Text:='';
    Edit3.Text:='';
    Edit4.Text:='';
    Edit5.Text:='';
    Edit6.Text:='';
    Edit7.Text:='';
    Edit8.Text:='';
    Edit9.Text:='';
    Edit10.Text:='';

  end;
  if (SpeedButton1.Visible=False) and (SpeedButton3.Visible=False) and (SpeedButton4.Visible=False) then begin
    Edit2.ReadOnly:=True;
    Edit3.ReadOnly:=True;
    Edit4.ReadOnly:=True;
    Edit5.ReadOnly:=True;
    Edit6.ReadOnly:=True;
    Edit7.ReadOnly:=True;
    Edit8.ReadOnly:=True;
    Edit9.ReadOnly:=True;
    Edit10.ReadOnly:=True;
    Edit2.Text:=DataModule1.ADOAdministrador.FieldByName('Nombre').AsString;
    Edit3.Text:=DataModule1.ADOAdministrador.FieldByName('Apellido').AsString;
    Edit4.Text:=InttoStr(DataModule1.ADOAdministrador.FieldByName('DNI').AsInteger);
    Edit5.Text:=DataModule1.ADOAdministrador.FieldByName('Usuario').AsString;
    Edit6.Text:=DataModule1.ADOAdministrador.FieldByName('Clave').AsString;
    Edit7.Text:=InttoStr(DataModule1.ADOAdministrador.FieldByName('Dia').AsInteger);
    Edit8.Text:=InttoStr(DataModule1.ADOAdministrador.FieldByName('Mes').AsInteger);
    Edit9.Text:=InttoStr(DataModule1.ADOAdministrador.FieldByName('Anio').AsInteger);
    Edit10.Text:=DataModule1.ADOAdministrador.FieldByName('Mail').AsString;
  end;
end;


//*******// Powered by Yisus, root de nacimiento. //*******//
procedure TFormModifAdmin.SpeedButton1Click(Sender: TObject);
var buttonSelected:integer;
begin
  buttonSelected:=messageDlg('�Realmente desea modificar el administrador?',mtWarning,mbOkCancel,0);
  if buttonSelected= mrOk then
    begin
      DataModule1.ADOAdministrador.Edit;
      DataModule1.ADOAdministrador.FieldByName('Nombre').AsString:=Edit2.Text;
      DataModule1.ADOAdministrador.FieldByName('Apellido').AsString:=Edit3.Text;
      DataModule1.ADOAdministrador.FieldByName('DNI').AsInteger:=StrToInt(Edit4.Text);
      DataModule1.ADOAdministrador.FieldByName('Usuario').AsString:=Edit5.Text;
      DataModule1.ADOAdministrador.FieldByName('Clave').AsString:=Edit6.Text;
      DataModule1.ADOAdministrador.FieldByName('Dia').AsInteger:=StrToInt(Edit7.Text);
      DataModule1.ADOAdministrador.FieldByName('Mes').AsInteger:=StrToInt(Edit8.Text);
      DataModule1.ADOAdministrador.FieldByName('Anio').AsInteger:=StrToInt(Edit9.Text);
      DataModule1.ADOAdministrador.FieldByName('Mail').AsString:=Edit10.Text;
      DataModule1.ADOAdministrador.Post;
      ShowMessage('El Administrador se modific� exitosamente');
    end;
  if buttonSelected= mrCancel then
    DataModule1.ADOAdministrador.Cancel;
end;



  //*******// Powered by Yisus, root de nacimiento. //*******//
procedure TFormModifAdmin.SpeedButton4Click(Sender: TObject);
var buttonSelected:integer;
begin
  buttonSelected:=messageDlg('�Realmente desea eliminar el administrador?',mtWarning,mbOkCancel,0);
  if buttonSelected= mrOk then
    begin
      DataModule1.ADOAdministrador.Delete;
      ShowMessage('El Administrador se borr� exitosamente');
    end;
  if buttonSelected= mrCancel then
    DataModule1.ADOAdministrador.Cancel;
end;


  //*******// Powered by Yisus, root de nacimiento. //*******//
procedure TFormModifAdmin.SpeedButton3Click(Sender: TObject);
var buttonSelected:integer;
begin
  buttonSelected:=messageDlg('�Realmente desea agregar un administrador?',mtWarning,mbOkCancel,0);
  if buttonSelected= mrOk then
    begin
      DataModule1.ADOAdministrador.Append;
      DataModule1.ADOAdministrador.FieldByName('Nombre').AsString:=Edit2.Text;
      DataModule1.ADOAdministrador.FieldByName('Apellido').AsString:=Edit3.Text;
      DataModule1.ADOAdministrador.FieldByName('DNI').AsInteger:=StrToInt(Edit4.Text);
      DataModule1.ADOAdministrador.FieldByName('Usuario').AsString:=Edit5.Text;
      DataModule1.ADOAdministrador.FieldByName('Clave').AsString:=Edit6.Text;
      DataModule1.ADOAdministrador.FieldByName('Dia').AsInteger:=StrToInt(Edit7.Text);
      DataModule1.ADOAdministrador.FieldByName('Mes').AsInteger:=StrToInt(Edit8.Text);
      DataModule1.ADOAdministrador.FieldByName('Anio').AsInteger:=StrToInt(Edit9.Text);
      DataModule1.ADOAdministrador.FieldByName('Mail').AsString:=Edit10.Text;
      DataModule1.ADOAdministrador.Post;
      ShowMessage('El Administrador se agreg� exitosamente');
    end;
  if buttonSelected= mrCancel then
    DataModule1.ADOAdministrador.Cancel;
end;



  //*******// Powered by Yisus, root de nacimiento. //*******//
procedure TFormModifAdmin.SpeedButton2Click(Sender: TObject);
begin
    Edit2.ReadOnly:=False;
    Edit3.ReadOnly:=False;
    Edit4.ReadOnly:=False;
    Edit5.ReadOnly:=False;
    Edit6.ReadOnly:=False;
    Edit7.ReadOnly:=False;
    Edit8.ReadOnly:=False;
    Edit9.ReadOnly:=False;
    Edit10.ReadOnly:=False;
FormModifAdmin.Close;
end;


end.
