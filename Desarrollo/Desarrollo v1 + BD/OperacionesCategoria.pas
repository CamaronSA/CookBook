unit OperacionesCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  EUsado = Class (Exception);
  EEliminarVacio = Class (Exception);
  EYaHayCategoria = Class (Exception);
  EspacioBlanco = Class (Exception);
  TFormOperacionesCategoria = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    SpeedButton4: TSpeedButton;
    Label4: TLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOperacionesCategoria: TFormOperacionesCategoria;

implementation

uses Unit1;

{$R *.dfm}

procedure TFormOperacionesCategoria.DBGrid1CellClick(Column: TColumn);
begin
  if (SpeedButton2.Visible = false) then
         Edit2.Text:= DataModule1.ADOEtiqueta.FieldByName('NombreEtiqueta').AsString;
end;

procedure TFormOperacionesCategoria.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if (SpeedButton2.Visible = false) then
         Edit2.Text:= DataModule1.ADOEtiqueta.FieldByName('NombreEtiqueta').AsString;
end;

procedure TFormOperacionesCategoria.DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if (SpeedButton2.Visible = false) then
        edit2.Text:= DataModule1.ADOEtiqueta.FieldByName('NombreEtiqueta').AsString;
end;

procedure TFormOperacionesCategoria.Edit1Change(Sender: TObject);
var filtro : string;
begin
 filtro := TRIM (Edit1.Text);
 if filtro <> '' then
     begin
       DataModule1.ADOEtiqueta.Filter := 'NombreEtiqueta LIKE ''%'+filtro+'%''';// (*)
       DataModule1.ADOEtiqueta.Filtered:= true;
     end
     else
       DataModule1.ADOEtiqueta.Filtered:= false;
end;

procedure TFormOperacionesCategoria.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (StrScan ('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil) then
     Key:= #0;
end;

procedure TFormOperacionesCategoria.Edit2Change(Sender: TObject);
begin
  Label2.Font.Color:= clblack;
  Label3.Visible:= false;
end;

procedure TFormOperacionesCategoria.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (StrScan ('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil) then
     Key:= #0;
end;

procedure TFormOperacionesCategoria.FormActivate(Sender: TObject);
begin
  label3.font.color:=clblack;
  label2.Font.Color:=clblack;
  label1.Font.Color:=clblack;
  if (SpeedButton2.Visible = false) and (SpeedButton1.Visible = false) then
      Edit2.ReadOnly := true;
  if (SpeedButton2.Visible = true) then
      Edit2.Text := '';
end;

procedure TFormOperacionesCategoria.SpeedButton1Click(Sender: TObject);
var buttonSelected: integer;
begin
  buttonSelected := messageDlg('�Realmente desea modificar esta categoria?', mtWarning, mbOkCancel, 0);
  if buttonSelected = mrOk then
     begin
       DataModule1.ComprobarCategoria.close;
       DataModule1.ComprobarCategoria.Parameters.ParamByName('ConsultarCategoria').value:= Edit2.Text;
       DataModule1.ComprobarCategoria.open;
       try
       DataModule1.ADOEtiqueta.Edit;
       if (Edit2.Text = '') then
           raise EspacioBlanco.Create('No deje campos en blanco')
       else
          if not (DataModule1.ComprobarCategoria.IsEmpty) then
              raise EYaHayCategoria.Create('Esta categor�a ya est� incluida en la tabla')
          else
          begin
              DataModule1.ADOEtiqueta.FieldByName('NombreEtiqueta').AsString := Edit2.Text;
              DataModule1.ADOEtiqueta.Post;
              Edit2.Text:= '';
              ShowMessage ('Se modific� la categor�a correctamente');
           end;
       except
           on E: EspacioBlanco do
              begin
                ShowMessage (E.Message);
                Label2.Font.Color := clred;
                Label3.Visible := true;
                Edit2.Text:= '';
                DataModule1.ADOEtiqueta.Cancel;
              end;
            on E: EYaHayCategoria do
              begin
                ShowMessage (E.Message);
                Label2.Font.Color := clred;
                Label3.Visible := true;
                Edit2.Text:='';
                DataModule1.ADOEtiqueta.Cancel;
              end;
       end;
     end
   else
     begin
       Edit2.Text := '';
       DataModule1.ADOEtiqueta.Cancel;
     end;
end;

 procedure TFormOperacionesCategoria.SpeedButton2Click(Sender: TObject);
var buttonSelected: integer;
begin
  buttonSelected := messageDlg('�Realmente desea agregar una categoria?', mtWarning, mbOkCancel, 0);
  if buttonSelected = mrOk then
     begin
       DataModule1.ComprobarCategoria.close;
       DataModule1.ComprobarCategoria.Parameters.ParamByName('ConsultarCategoria').value:= Edit2.Text;
       DataModule1.ComprobarCategoria.open;
       try
       DataModule1.ADOEtiqueta.Append;
       if (Edit2.Text = '') then
           raise EspacioBlanco.Create('No deje campos en blanco')
       else
          if not (DataModule1.ComprobarCategoria.IsEmpty) then
              raise EYaHayCategoria.Create('Esta categoria ya est� incluida en la tabla')
          else
            begin
              DataModule1.ADOEtiqueta.FieldByName('NombreEtiqueta').AsString := Edit2.Text;
              DataModule1.ADOEtiqueta.Post;
              Edit2.Text:= '';
              ShowMessage ('Se agreg� la categor�a correctamente');
            end;
       except
           on E: EspacioBlanco do
              begin
                ShowMessage (E.Message);
                Label2.Font.Color := clred;
                Label3.Visible := true;
                Edit2.Text:= '';
                DataModule1.ADOEtiqueta.Cancel;
              end;
            on E: EYaHayCategoria do
              begin
                ShowMessage (E.Message);
                Label2.Font.Color := clred;
                Label3.Visible := true;
                Edit2.Text:='';
                DataModule1.ADOEtiqueta.Cancel;
              end;
       end;
     end
   else
     begin
        edit1.Text:='';
       Edit2.Text := '';
       DataModule1.ADOEtiqueta.Cancel;
     end;
end;

procedure TFormOperacionesCategoria.SpeedButton3Click(Sender: TObject);
begin
  DataModule1.ADOEtiqueta.Cancel;
  Label2.Font.Color:= clblack;
  Label3.Visible := false;
  Edit2.ReadOnly := false;
  Edit2.Text:= '';
  Edit1.Text:= '';
  close;
end;

procedure TFormOperacionesCategoria.SpeedButton4Click(Sender: TObject);
var buttonSelected: integer;
begin
  buttonSelected := messageDlg('�Realmente desea eliminarla categoria?', mtWarning, mbOkCancel, 0);
  if buttonSelected = mrOk then
     begin
       try
       Datamodule1.CategoriaEstaEnLiBRO.Close;
       datamodule1.CategoriaEstaEnLiBRO.Parameters.ParamByName('Dato1').Value:=edit2.Text;
       datamodule1.CategoriaEstaEnLiBRO.Open;

       if (DataModule1.ADOEtiqueta.IsEmpty) then
          raise EEliminarVacio.Create('No se puede eliminar porque no hay datos')
       else
          if  (DataModule1.CategoriaEstaEnLiBRO.IsEmpty) then
            raise EUsado.Create('Actualmente la categoria se est� usando en un libro')
          else
             begin
               DataModule1.ADOEtiqueta.Delete;
               ShowMessage('La categoria se borr� exitosamente');
             end;
        except
          on E: EEliminarVacio do
               ShowMessage(E.Message);
          on E: EUsado do
             ShowMessage(E.Message);
       end;
     end;
   if buttonSelected = mrCancel then
      DataModule1.ADOEtiqueta.Cancel;
end;

end.
