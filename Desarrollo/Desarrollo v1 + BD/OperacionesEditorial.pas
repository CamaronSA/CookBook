unit OperacionesEditorial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, Unit1;

type
  ECampoBlanco = class(Exception);
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
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOperacionesEditorial: TFormOperacionesEditorial;
  EditorialViejo:string;
implementation

uses PanelAdministracion;

{$R *.dfm}

procedure TFormOperacionesEditorial.DBGrid1CellClick(Column: TColumn);
begin

  //Aca guardo el editorial viejo apra hacer una consulta sobre la tabla de libros.
  EditorialViejo:=DataModule1.ADOEditorial.FieldByName('NombreEditorial').AsString;
  if (speedbutton1.Visible = false) then
    edit2.Text:=datamodule1.ADOEditorial.FieldByName('NombreEditorial').AsString;
end;

procedure TFormOperacionesEditorial.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  //Aca guardo el editorial viejo apra hacer una consulta sobre la tabla de libros.
  EditorialViejo:=DataModule1.ADOEditorial.FieldByName('NombreEditorial').AsString;
  if (speedbutton1.Visible = false) then
      edit2.Text:=datamodule1.ADOEditorial.FieldByName('NombreEditorial').AsString;
end;

procedure TFormOperacionesEditorial.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  //Aca guardo el editorial viejo apra hacer una consulta sobre la tabla de libros.
  EditorialViejo:=DataModule1.ADOEditorial.FieldByName('NombreEditorial').AsString;
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

procedure TFormOperacionesEditorial.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin                      //esto evita q meta caracteres especiales, solo lo de la lista!
if ( StrScan('0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormOperacionesEditorial.Edit2Change(Sender: TObject);
begin
  label3.Visible:=false;
  label1.Font.Color:=clblack;
end;

procedure TFormOperacionesEditorial.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if ( StrScan('0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormOperacionesEditorial.FormActivate(Sender: TObject);
begin
if (speedbutton1.Visible = false) and (speedbutton2.Visible = false)  then
  edit2.ReadOnly:=true;

end;
     //********Neg*****//
procedure TFormOperacionesEditorial.SpeedButton1Click(Sender: TObject);
var
  buttonSelected:integer;
begin
  buttonSelected:=messageDlg('�Realmente desea Agregar esta Editorial?',mtWarning,mbOkCancel,0);
  if buttonSelected= mrOk then
     Begin
       try   //No tocar anda de pedo la mierda esta, si tira error de parametro, piense que otras careras tamb son buenas opciones.
       datamodule1.ComprobarEditorial.Close;
       datamodule1.ComprobarEditorial.Parameters.ParamByName('Dato').Value:=edit2.Text;
       datamodule1.ComprobarEditorial.Open;
       datamodule1.ADOEditorial.Append;
       if (edit2.Text = '') then
          raise ECampoBlanco.Create('Complete todos los campos')
       else
          if not (Datamodule1.ComprobarEditorial.IsEmpty) then
             raise EUsada.Create('Ya esta en la lista no puede agregar esta editorial')
          else
              begin
                datamodule1.ADOEditorial.FieldByName('NombreEditorial').AsString:=edit2.Text;
                datamodule1.ADOEditorial.Post;
                showmessage('Se agrego correctamente la editorial');
                edit2.Text:='';
              end;
       except
        on E:ECampoBlanco do
          begin
            showmessage(e.Message);
            Label1.font.Color:=clred;
            label3.Visible:=true;
            edit2.Text:='';
            datamodule1.ADOEditorial.Cancel;
          end;
         on E:EUsada do
            begin
              showmessage(e.Message);
              Label1.font.Color:=clred;
              label3.Visible:=true;
              edit2.Text:='';
              datamodule1.ADOEditorial.Cancel;
            end;
       end;
     End
  else
    begin
    datamodule1.ADOEditorial.Cancel;
    edit2.Text:='';
    end;
end;

procedure TFormOperacionesEditorial.SpeedButton2Click(Sender: TObject);
var
  buttonSelected,ButtonSelected2:integer; ISBNActual:STRING;
begin
  buttonSelected:=messageDlg('�Realmente desea Modificar esta Editorial?',mtWarning,mbOkCancel,0);
  if buttonSelected= mrOk then
     Begin
       try
       //No tocar anda de pedo la mierda esta, si tira error de parametro, piense que otras careras tamb son buenas opciones.
       datamodule1.ComprobarEditorial.Close;
       datamodule1.ComprobarEditorial.Parameters.ParamByName('Dato').Value:=edit2.Text;
       datamodule1.ComprobarEditorial.Open;
       //Voy a cagar los datos de la consulta que necesito apr actualizar la lsita de libros.
       DataModule1.ModificarEditorial.Close;
       DataModule1.ModificarEditorial.Parameters.ParamByName('Dato1').Value:=EditorialViejo;
       DataModule1.ModificarEditorial.Open;
       //se comienza a editar la tabla
       datamodule1.ADOEditorial.Edit;
       if (edit2.Text = '') then
          raise ECampoBlanco.Create('Complete todos los campos')
       else
        begin
          //Aca compruebo que la editorial que quiere modificar ya exista o sea la misma
          if not (Datamodule1.ComprobarEditorial.IsEmpty) then
             raise EUsada.Create('Ya esta en la lista no puede agregar esta editorial')
          else
            //Aca si hay libros que esten usando esta editorial, entonces Reccorro los libros y cambio las editoriales.
            if not (DataModule1.ModificarEditorial.isEmpty) then
              begin
                  //No confundir con buttonselected.
                  ButtonSelected2:=messageDlg('Esta editorial esta siendo usada por un libro o varios libros, �seguro desea modificar?',mtWarning,mbOkCancel,0);
                  if(ButtonSelected2 =mrOK) then
                      begin
                          //Me paro en el primer registro de la consulta , esta consulta tiene todos los libros que usan ese idioma!
                          DataModule1.ModificarEditorial.first;
                          //Mientras no se termine esta lista tengo que modificar Editoriales dentro de libros
                          while NOT (DataModule1.ModificarEditorial.Eof) do
                            begin
                                //Eto mismo se puede hacer con un update pero tarda mucho tiempo
                                // En la siguente linea cargo el ISBN actual de la consulta para modificarlo
                                ISBNActual:=IntToStr(DataModule1.ModificarEditorial.FieldByName('ISBN').AsInteger);
                                //Filtro la tabla Libro , atento por que aca empieza la magia.
                                DataModule1.ADOLibro.Filter:='ISBN ='+ quotedstr(ISBNActual);
                                DataModule1.ADOLibro.Filtered:=true;
                                DataModule1.ADOLibro.Edit;
                                //Alta cagada me mande en vez de poner Editorial habia puesto idioma, ojo con eso :D
                                DataModule1.ADOLibro.FieldByName('Editorial').AsString:=edit2.Text;
                                DataModule1.ADOLibro.Post;
                                //Os recomiendo sacar el filtro a la tabla y ponerlo en nil sino el noble caballero q abra libro putiara libre mente por el prado.
                                DataModule1.ADOLibro.Filter:='';
                                DataModule1.ADOLibro.Filtered:=false;
                                //siguente registro
                                DataModule1.ModificarEditorial.Next;
                            end;
                            //esta parte es para la modificacion pero de la tabla de editorial.
                            //Vuelvo a habilitar el modo edicion por que se cierra cuando abris las anteriores.
                            datamodule1.ADOEditorial.Edit;
                            datamodule1.ADOEditorial.FieldByName('NombreEditorial').AsString:=edit2.Text;
                            datamodule1.ADOEditorial.Post;
                            showmessage('Se Modifico correctamente la editorial');
                            edit2.Text:='';
                  end
                  else
                  begin
                    DataModule1.ADOEditorial.Cancel;
                    edit2.Text:='';
                  end;
            end
            //En este caso la editorial no tiene libros asociados entonces no necesito cambiar nada.
             else
                begin
                    datamodule1.ADOEditorial.FieldByName('NombreEditorial').AsString:=edit2.Text;
                    datamodule1.ADOEditorial.Post;
                    showmessage('Se Modifico correctamente la editorial');
                    edit2.Text:='';
                end;
        end;
       except
        on E:ECampoBlanco do
          begin
            showmessage(e.Message);
            Label1.font.Color:=clred;
            label3.Visible:=true;
            edit2.Text:='';
            //la unicao linea q importa realmente.
            datamodule1.ADOEditorial.Cancel;
          end;
         on E:EUsada do
            begin
              showmessage(e.Message);
              Label1.font.Color:=clred;
              label3.Visible:=true;
              edit2.Text:='';
              //la unica linea q importa realmente.
              datamodule1.ADOEditorial.Cancel;
            end;
       end;
     End
  else
    begin
      datamodule1.ADOEditorial.Cancel;
      edit2.Text:='';
    end;
end;

procedure TFormOperacionesEditorial.SpeedButton3Click(Sender: TObject);
begin

edit1.Text:='';
edit2.Text:='';
DataModule1.ADOEditorial.Filtered := false;
Label1.font.Color:=clblack;
label3.Visible:=false;
edit2.ReadOnly:=false;
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
