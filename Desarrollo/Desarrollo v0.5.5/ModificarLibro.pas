unit ModificarLibro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Buttons, Grids, DBGrids,
  TarjetasDeCredito, Unit1, dblookup, ExtDlgs, Mask, PanelAdministracion;

type
  EEsaTablaTaPelada =class (Exception);
  EPentakill = class (Exception);
  EFueraDeRango = class(Exception);
  ECampoBlanco = class (Exception);
  ENoAbuse = class (Exception);
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    RadioButton3: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Edit6: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Edit2: TEdit;
    Label8: TLabel;
    Edit10: TEdit;
    Label11: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label12: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    SpeedButton6: TSpeedButton;
    Memo1: TMemo;
    Label10: TLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
function EncontrarArroba (Palabra: String):Boolean;
var Aux:Boolean; Max:Integer;
begin
Max:=Length(Palabra);
Aux:=False;
while (Max>-1) and (Aux<>True) do begin
  if (Palabra[Max] = '@') then
    Aux:=True;
  Max:=Max-1;
end;
Result:=Aux;
end;

function ElInquisidorDeLSimbolo (Palabra: String):integer;
var
  Aux:integer;
  Max:Integer;
begin
  Max:=Length(Palabra);
  Aux:=0;
    while (Max>-1) do begin
      if (Palabra[Max] = '.') then
         Aux:=aux+1;
       Max:=Max-1;
    end;
  Result:=Aux;
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
if (speedbutton1.Visible = false) and ( speedbutton1.Visible =false ) and ( speedbutton1.Visible =false ) then
  begin
    edit2.Text:=datamodule1.ADOLibro.FieldByName('ISBN').AsString;
    EDIT3.Text:=DataModule1.ADOLibro.FieldByName('Titulo').AsString;
    edit6.Text:=IntToStr(DataModule1.ADOLibro.FieldByName('AnioEditorial').AsInteger);
    edit10.Text:=CurrToStr(DataModule1.ADOLibro.FieldByName('precio').AsCurrency);
    DBLookUpcomboBox3.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox3.DataField:='Idioma';
    DBLookUpcomboBox3.ReadOnly:=true;
    DBLookUpcomboBox2.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox2.DataField:='Etiqueta';
    DBLookUpcomboBox2.ReadOnly:=true;
    DBLookUpcomboBox4.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox4.DataField:='Autor';
    DBLookUpcomboBox4.ReadOnly:=true;
    DBLookUpcomboBox1.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox1.DataField:='Editorial';
    DBLookUpcomboBox1.ReadOnly:=true;
    //DBLookUpcomboBox2.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox2.ListField:='Etiqueta';
    //DBLookUpcomboBox4.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox4.ListField:='Autor';
    //DBLookUpcomboBox1.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox1.ListField:='Editorial';
  end;
  if ( speedbutton1.Visible = true )  then
  begin
    edit2.Text:=datamodule1.ADOLibro.FieldByName('ISBN').AsString;
    EDIT3.Text:=DataModule1.ADOLibro.FieldByName('Titulo').AsString;
    edit6.Text:=IntToStr(DataModule1.ADOLibro.FieldByName('AnioEditorial').AsInteger);
    edit10.Text:=CurrToStr(DataModule1.ADOLibro.FieldByName('precio').AsCurrency);
    DBLookUpcomboBox3.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox3.DataField:='Idioma';
    DBLookUpcomboBox2.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox2.DataField:='Etiqueta';
    DBLookUpcomboBox4.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox4.DataField:='Autor';
    DBLookUpcomboBox1.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox1.DataField:='Editorial';

    //DBLookUpcomboBox2.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox2.ListField:='Etiqueta';
    //DBLookUpcomboBox4.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox4.ListField:='Autor';
    //DBLookUpcomboBox1.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox1.ListField:='Editorial';
  end;
  if ( speedbutton3.Visible = true )  then
    begin
      edit2.Text:='';
      EDIT3.Text:='';
      edit6.Text:='';
      edit10.Text:='';
      DBLookUpcomboBox3.DataSource:=nil;
      DBLookUpcomboBox3.DataField:='';
      DBLookUpcomboBox3.ReadOnly:=false;
      DBLookUpcomboBox2.DataSource:=nil;
      DBLookUpcomboBox2.DataField:='';
      DBLookUpcomboBox2.ReadOnly:=false;
      DBLookUpcomboBox4.DataSource:=nil;
      DBLookUpcomboBox4.DataField:='';
      DBLookUpcomboBox4.ReadOnly:=false;
      DBLookUpcomboBox1.DataSource:=nil;
      DBLookUpcomboBox1.DataField:='';
      DBLookUpcomboBox1.ReadOnly:=false;
      //DBLookUpcomboBox2.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox2.ListField:='Etiqueta';
      //DBLookUpcomboBox4.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox4.ListField:='Autor';
      //DBLookUpcomboBox1.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox1.ListField:='Editorial';
    end;


end;

procedure TForm4.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (speedbutton1.Visible = false) and ( speedbutton1.Visible =false ) and ( speedbutton1.Visible =false ) then
  begin
    edit2.Text:=datamodule1.ADOLibro.FieldByName('ISBN').AsString;
    EDIT3.Text:=DataModule1.ADOLibro.FieldByName('Titulo').AsString;
    edit6.Text:=IntToStr(DataModule1.ADOLibro.FieldByName('AnioEditorial').AsInteger);
    edit10.Text:=CurrToStr(DataModule1.ADOLibro.FieldByName('precio').AsCurrency);
    DBLookUpcomboBox3.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox3.DataField:='Idioma';
    DBLookUpcomboBox3.ReadOnly:=true;
    DBLookUpcomboBox2.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox2.DataField:='Etiqueta';
    DBLookUpcomboBox2.ReadOnly:=true;
    DBLookUpcomboBox4.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox4.DataField:='Autor';
    DBLookUpcomboBox4.ReadOnly:=true;
    DBLookUpcomboBox1.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox1.DataField:='Editorial';
    DBLookUpcomboBox1.ReadOnly:=true;
    //DBLookUpcomboBox2.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox2.ListField:='Etiqueta';
    //DBLookUpcomboBox4.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox4.ListField:='Autor';
    //DBLookUpcomboBox1.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox1.ListField:='Editorial';
  end;

  if ( speedbutton3.Visible = true )  then
    begin
      edit2.Text:='';
      EDIT3.Text:='';
      edit6.Text:='';
      edit10.Text:='';
      DBLookUpcomboBox3.DataSource:=nil;
      DBLookUpcomboBox3.DataField:='';
      DBLookUpcomboBox3.ReadOnly:=false;
      DBLookUpcomboBox2.DataSource:=nil;
      DBLookUpcomboBox2.DataField:='';
      DBLookUpcomboBox2.ReadOnly:=false;
      DBLookUpcomboBox4.DataSource:=nil;
      DBLookUpcomboBox4.DataField:='';
      DBLookUpcomboBox4.ReadOnly:=false;
      DBLookUpcomboBox1.DataSource:=nil;
      DBLookUpcomboBox1.DataField:='';
      DBLookUpcomboBox1.ReadOnly:=false;
      //DBLookUpcomboBox2.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox2.ListField:='Etiqueta';
      //DBLookUpcomboBox4.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox4.ListField:='Autor';
      //DBLookUpcomboBox1.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox1.ListField:='Editorial';
    end;
     if ( speedbutton1.Visible = true )  then
  begin
    edit2.Text:=datamodule1.ADOLibro.FieldByName('ISBN').AsString;
    EDIT3.Text:=DataModule1.ADOLibro.FieldByName('Titulo').AsString;
    edit6.Text:=IntToStr(DataModule1.ADOLibro.FieldByName('AnioEditorial').AsInteger);
    edit10.Text:=CurrToStr(DataModule1.ADOLibro.FieldByName('precio').AsCurrency);
    DBLookUpcomboBox3.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox3.DataField:='Idioma';
    DBLookUpcomboBox2.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox2.DataField:='Etiqueta';
    DBLookUpcomboBox4.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox4.DataField:='Autor';
    DBLookUpcomboBox1.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox1.DataField:='Editorial';

    //DBLookUpcomboBox2.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox2.ListField:='Etiqueta';
    //DBLookUpcomboBox4.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox4.ListField:='Autor';
    //DBLookUpcomboBox1.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox1.ListField:='Editorial';
  end;
end;

procedure TForm4.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (speedbutton1.Visible = false) and ( speedbutton1.Visible =false ) and ( speedbutton1.Visible =false ) then
  begin
    edit2.Text:=datamodule1.ADOLibro.FieldByName('ISBN').AsString;
    EDIT3.Text:=DataModule1.ADOLibro.FieldByName('Titulo').AsString;
    edit6.Text:=IntToStr(DataModule1.ADOLibro.FieldByName('AnioEditorial').AsInteger);
    edit10.Text:=CurrToStr(DataModule1.ADOLibro.FieldByName('precio').AsCurrency);
    DBLookUpcomboBox3.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox3.DataField:='Idioma';
    DBLookUpcomboBox3.ReadOnly:=true;
    DBLookUpcomboBox2.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox2.DataField:='Etiqueta';
    DBLookUpcomboBox2.ReadOnly:=true;
    DBLookUpcomboBox4.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox4.DataField:='Autor';
    DBLookUpcomboBox4.ReadOnly:=true;
    DBLookUpcomboBox1.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox1.DataField:='Editorial';
    DBLookUpcomboBox1.ReadOnly:=true;
    //DBLookUpcomboBox2.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox2.ListField:='Etiqueta';
    //DBLookUpcomboBox4.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox4.ListField:='Autor';
    //DBLookUpcomboBox1.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox1.ListField:='Editorial';
  end;

  if ( speedbutton3.Visible = true )  then
    begin
      edit2.Text:='';
      EDIT3.Text:='';
      edit6.Text:='';
      edit10.Text:='';
      DBLookUpcomboBox3.DataSource:=nil;
      DBLookUpcomboBox3.DataField:='';
      DBLookUpcomboBox3.ReadOnly:=false;
      DBLookUpcomboBox2.DataSource:=nil;
      DBLookUpcomboBox2.DataField:='';
      DBLookUpcomboBox2.ReadOnly:=false;
      DBLookUpcomboBox4.DataSource:=nil;
      DBLookUpcomboBox4.DataField:='';
      DBLookUpcomboBox4.ReadOnly:=false;
      DBLookUpcomboBox1.DataSource:=nil;
      DBLookUpcomboBox1.DataField:='';
      DBLookUpcomboBox1.ReadOnly:=false;
      //DBLookUpcomboBox2.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox2.ListField:='Etiqueta';
      //DBLookUpcomboBox4.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox4.ListField:='Autor';
      //DBLookUpcomboBox1.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox1.ListField:='Editorial';
    end;
     if ( speedbutton1.Visible = true )  then
  begin
    edit2.Text:=datamodule1.ADOLibro.FieldByName('ISBN').AsString;
    EDIT3.Text:=DataModule1.ADOLibro.FieldByName('Titulo').AsString;
    edit6.Text:=IntToStr(DataModule1.ADOLibro.FieldByName('AnioEditorial').AsInteger);
    edit10.Text:=CurrToStr(DataModule1.ADOLibro.FieldByName('precio').AsCurrency);
    DBLookUpcomboBox3.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox3.DataField:='Idioma';
    DBLookUpcomboBox2.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox2.DataField:='Etiqueta';
    DBLookUpcomboBox4.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox4.DataField:='Autor';
    DBLookUpcomboBox1.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox1.DataField:='Editorial';

    //DBLookUpcomboBox2.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox2.ListField:='Etiqueta';
    //DBLookUpcomboBox4.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox4.ListField:='Autor';
    //DBLookUpcomboBox1.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox1.ListField:='Editorial';
  end;
end;

procedure TForm4.Edit10Change(Sender: TObject);
begin
label11.Font.Color:=clBlack;
label12.Visible:=false;
end;

procedure TForm4.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
 if ( StrScan('0123456789,'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TForm4.Edit1Change(Sender: TObject);
var filtro : string;

begin
if (RadioButton1.Checked = true) then
  begin
    filtro := TRIM (edit1.text);
      if filtro<>'' then
         begin
            DataModule1.ADOLibro.Filter := 'Titulo LIKE ''%'+filtro+'%'''; // (*)
            DataModule1.ADOLibro.Filtered := true;
        end
      else
        DataModule1.ADOLibro.Filtered := false;
  end;
  if (RadioButton2.Checked = true) then
  begin
    filtro := TRIM (edit1.text);
      if filtro<>'' then
         begin
            DataModule1.ADOLibro.Filter := 'Editorial LIKE ''%'+filtro+'%'''; // (*)
            DataModule1.ADOLibro.Filtered := true;
        end
      else
        DataModule1.ADOLibro.Filtered := false;
  end;
  if (RadioButton3.Checked = true) then
  begin
    filtro := TRIM (edit1.text);
      if filtro<>'' then
         begin
            DataModule1.ADOLibro.Filter := 'Etiqueta LIKE ''%'+filtro+'%'''; // (*)
            DataModule1.ADOLibro.Filtered := true;
        end
      else
        DataModule1.ADOLibro.Filtered := false;
  end;
end;

procedure TForm4.Edit2Change(Sender: TObject);
begin
label8.Font.Color:=clBlack;
Label12.Visible:=false;
end;

procedure TForm4.Edit3Change(Sender: TObject);
begin
label7.Font.Color:=clBlack;
label12.Visible:=false;
end;

procedure TForm4.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if ( StrScan(' qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TForm4.Edit6Change(Sender: TObject);
begin
label4.Font.Color:=clBlack;
label12.Visible:=false;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
if (speedbutton1.Visible = false) and ( speedbutton1.Visible =false ) and ( speedbutton1.Visible =false ) then
  begin
    edit2.Text:=datamodule1.ADOLibro.FieldByName('ISBN').AsString;
    EDIT3.Text:=DataModule1.ADOLibro.FieldByName('Titulo').AsString;
    edit6.Text:=IntToStr(DataModule1.ADOLibro.FieldByName('AnioEditorial').AsInteger);
    edit10.Text:=CurrToStr(DataModule1.ADOLibro.FieldByName('precio').AsCurrency);
    DBLookUpcomboBox3.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox3.DataField:='Idioma';
    DBLookUpcomboBox3.ReadOnly:=true;
    DBLookUpcomboBox2.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox2.DataField:='Etiqueta';
    DBLookUpcomboBox2.ReadOnly:=true;
    DBLookUpcomboBox4.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox4.DataField:='Autor';
    DBLookUpcomboBox4.ReadOnly:=true;
    DBLookUpcomboBox1.DataSource:=DataModule1.Tabla_Libro;
    DBLookUpcomboBox1.DataField:='Editorial';
    DBLookUpcomboBox1.ReadOnly:=true;
    //DBLookUpcomboBox2.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox2.ListField:='Etiqueta';
    //DBLookUpcomboBox4.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox4.ListField:='Autor';
    //DBLookUpcomboBox1.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox1.ListField:='Editorial';
  end;
if ( speedbutton3.Visible = true )  then
    begin
      edit2.Text:='';
      EDIT3.Text:='';
      edit6.Text:='';
      edit10.Text:='';
      DBLookUpcomboBox3.DataSource:=nil;
      DBLookUpcomboBox3.DataField:='';
      DBLookUpcomboBox3.ReadOnly:=false;
      DBLookUpcomboBox2.DataSource:=nil;
      DBLookUpcomboBox2.DataField:='';
      DBLookUpcomboBox2.ReadOnly:=false;
      DBLookUpcomboBox4.DataSource:=nil;
      DBLookUpcomboBox4.DataField:='';
      DBLookUpcomboBox4.ReadOnly:=false;
      DBLookUpcomboBox1.DataSource:=nil;
      DBLookUpcomboBox1.DataField:='';
      DBLookUpcomboBox1.ReadOnly:=false;
      //DBLookUpcomboBox2.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox2.ListField:='Etiqueta';
      //DBLookUpcomboBox4.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox4.ListField:='Autor';
      //DBLookUpcomboBox1.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox1.ListField:='Editorial';
    end;
  if ( speedbutton1.Visible = true )  then
    begin
      edit2.Text:=datamodule1.ADOLibro.FieldByName('ISBN').AsString;
      EDIT3.Text:=DataModule1.ADOLibro.FieldByName('Titulo').AsString;
      edit6.Text:=IntToStr(DataModule1.ADOLibro.FieldByName('AnioEditorial').AsInteger);
      edit10.Text:=CurrToStr(DataModule1.ADOLibro.FieldByName('precio').AsCurrency);
      DBLookUpcomboBox3.DataSource:=DataModule1.Tabla_Libro;
      DBLookUpcomboBox3.DataField:='Idioma';
      DBLookUpcomboBox2.DataSource:=DataModule1.Tabla_Libro;
      DBLookUpcomboBox2.DataField:='Etiqueta';
      DBLookUpcomboBox4.DataSource:=DataModule1.Tabla_Libro;
      DBLookUpcomboBox4.DataField:='Autor';
      DBLookUpcomboBox1.DataSource:=DataModule1.Tabla_Libro;
      DBLookUpcomboBox1.DataField:='Editorial';

      //DBLookUpcomboBox2.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox2.ListField:='Etiqueta';
      //DBLookUpcomboBox4.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox4.ListField:='Autor';
      //DBLookUpcomboBox1.ListSource:=DataModule1.Tabla_Libro;
      //DBLookUpcomboBox1.ListField:='Editorial';
    end;

end;

procedure TForm4.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
   if ( StrScan(' 0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
var
  buttonSelected:integer;
begin
  buttonSelected:= messageDlg('�Realmente desea modificar un Libro?',mtWarning,mbOkCancel,0);
  if buttonSelected = mrOk then
    begin
      try
        Datamodule1.ADOLibro.edit;  //No se maneja asi tendria que ser con datafiel y datasource pero falla como a dephi le gsuta :D
        DataModule1.ComprobarLibro.Close;
        DataModule1.ComprobarLibro.Parameters.ParamByName('Dato').Value:=StrToInt(edit2.Text);
        DataModule1.ComprobarLibro.Open;
        //DataModule1.ADOLibro.FieldByName('Idioma').AsString:=DBLookUpcomboBox3.Text;
        //DataModule1.ADOLibro.FieldByName('Etiqueta').AsString:=DBLookUpcomboBox2.Text;
        //DataModule1.ADOLibro.FieldByName('Autor').AsString:=DBLookUpcomboBox4.Text;
        //DataModule1.ADOLibro.FieldByName('Editorial').AsString:=DBLookUpcomboBox1.Text;
        if (edit2.Text = '' ) then
          raise ECampoBlanco.Create('Complete todos los campos en rojo')
        else
          if not (DataModule1.ADOLibro.FieldByName('Isbn').AsInteger = strtoint(edit2.Text)) then
            begin
              if not (DataModule1.ComprobarLibro.IsEmpty)  then
                raise EPentakill.Create('Este Libro ya esta en la base de datos')
              else
                DataModule1.ADOLibro.FieldByName('ISBN').AsInteger:=StrToInt(edit2.Text);
            end;
        if(edit3.Text = '') then
          raise ECampoBlanco.Create('Complete todos los campos en rojo')
        else
          DataModule1.ADOLibro.FieldByName('Titulo').AsString:=edit3.Text;                 //pobre el q tenga q leer!
        if (edit6.Text ='') then
          raise ECampoBlanco.Create('Complete todos los campos en rojo')               // Ahora anda bien la insercion que loco antes no andaba ahora si.
        else                                                                           // Posibles errores 7kk y contando.
         if ((strtoint(edit6.Text) > 4000) or ((strtoint(edit6.Text) < 1500))) then
            raise EFueraDeRango.Create('Ingrese un a�o valido')
         else
           DataModule1.ADOLibro.FieldByName('AnioEditorial').AsInteger:=StrToInt(edit6.Text);
        if (edit10.Text = '') then
         raise ECampoBlanco.Create('Complete todos los campos en rojo')
        else
          if (ElInquisidorDeLSimbolo(edit10.Text) > 1 ) then
            raise ENoAbuse.Create('Introduzca un numero valido sin tantas comas')
          else
            DataModule1.ADOLibro.FieldByName('Precio').AsCurrency:= strtoCurr(edit10.Text);
        DataModule1.ADOLibro.FieldByName('Descripcion').AsString:=memo1.Text;
        Datamodule1.ADOLibro.Post;
        showmessage ('Su libro fue Modificado correctamente');
      except                  //Si hay algo que puede fallar, va a fallar
        on E: ECampoBlanco do
          begin
             showmessage (E.Message);
             if (edit2.Text ='') then
              begin
                label8.Font.Color:=clred;
                label12.Visible:=true;
                label12.Font.Color:=clred;
                edit2.Text:='';
              end;
            if (edit3.Text ='') then
             begin
                label7.Font.Color:=clred;
                label12.Visible:=true;                         //codigo feo por diooo
                label12.Font.Color:=clred;     //ta bien!
                edit3.Text:='';
             end;
            if (edit6.Text ='') then
              begin
                label4.Font.Color:=clred;
                label12.Visible:=true;
                label12.Font.Color:=clred;
                edit6.Text:='';
              end;
            if (edit10.Text ='')then
             begin
                label11.Font.Color:=clred;
                label12.Visible:=true;
                label12.Font.Color:=clred;
                edit10.Text:='';
              end;
            DataModule1.ADOLibro.Cancel;
          end;
        on E: EConvertError do
         begin
            showmessage ('Ingrese un numero valido!');
            label8.Font.Color:=clred;
            DataModule1.ADOLibro.Cancel;
         end;
        on E: EfueraDeRango do
          begin
            showmessage (E.Message);
            DataModule1.ADOLibro.Cancel;
            edit10.Text:='';
          end;
        on E:EPentakill do
          begin
            edit2.Text:='';
            DataModule1.ADOLibro.Cancel;
          end;
      end;
    end
   else
    Datamodule1.ADOLibro.Cancel;

end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
  edit1.Text:='';
  edit2.Text:='';
  edit3.Text:='';
  edit10.Text:='';
  edit6.Text:='' ;
  label8.Font.Color:=clblack;
  label7.Font.Color:=clblack;
  label4.Font.Color:=clblack;
  label11.Font.Color:=clblack;
  label12.Visible:=false;
    //DBLookUpcomboBox2.ListField:='Etiqueta';
    //DBLookUpcomboBox4.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox4.ListField:='Autor';
    //DBLookUpcomboBox1.ListSource:=DataModule1.Tabla_Libro;
    //DBLookUpcomboBox1.ListField:='Editorial';
close;
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
var
  buttonSelected:integer;
begin
  buttonSelected:= messageDlg('�Realmente desea agregar un Libro?',mtWarning,mbOkCancel,0);
  if buttonSelected = mrOk then
    begin
      try
        Datamodule1.ADOLibro.append;  //No se maneja asi tendria que ser con datafiel y datasource pero falla como a dephi le gsuta :D
        DataModule1.ComprobarLibro.Close;
        DataModule1.ComprobarLibro.Parameters.ParamByName('Dato').Value:=StrToInt(edit2.Text);
        DataModule1.ComprobarLibro.Open;
        DataModule1.ADOLibro.FieldByName('Idioma').AsString:=DBLookUpcomboBox3.Text;
        DataModule1.ADOLibro.FieldByName('Etiqueta').AsString:=DBLookUpcomboBox2.Text;
        DataModule1.ADOLibro.FieldByName('Autor').AsString:=DBLookUpcomboBox4.Text;
        DataModule1.ADOLibro.FieldByName('Editorial').AsString:=DBLookUpcomboBox1.Text;
        if (edit2.Text = '' ) then
          raise ECampoBlanco.Create('Complete todos los campos en rojo')
        else
          if not (DataModule1.ComprobarLibro.IsEmpty) then
             raise EPentakill.Create('Este Libro ya esta en la base de datos');
          DataModule1.ADOLibro.FieldByName('ISBN').AsInteger:=StrToInt(edit2.Text);
        if(edit3.Text = '') then
          raise ECampoBlanco.Create('Complete todos los campos en rojo')
        else
          DataModule1.ADOLibro.FieldByName('Titulo').AsString:=edit3.Text;
        if (edit6.Text ='') then
          raise ECampoBlanco.Create('Complete todos los campos en rojo')                       // Ahora anda bien la insercion que loco antes no andaba ahora si.
        else                                                                                   // Posibles errores 7kk y contando.
         if ((strtoint(edit6.Text) > 4000) or ((strtoint(edit6.Text) < 1500))) then
            raise EFueraDeRango.Create('Ingrese un a�o valido')
         else
           DataModule1.ADOLibro.FieldByName('AnioEditorial').AsInteger:=StrToInt(edit6.Text);
        if (edit10.Text = '') then
         raise ECampoBlanco.Create('Complete todos los campos en rojo')
        else
          if (ElInquisidorDeLSimbolo(edit10.Text) > 1 ) then
            raise ENoAbuse.Create('Introduzca un numero valido sin tantas comas')
          else
            DataModule1.ADOLibro.FieldByName('Precio').AsCurrency:= strtoCurr(edit10.Text);
        DataModule1.ADOLibro.FieldByName('Descripcion').AsString:=memo1.Text;
        Datamodule1.ADOLibro.Post;
        showmessage ('Su libro fue agregado correctamente');
        edit2.Text:= '';
        edit3.Text:= '';
        edit10.Text:='' ;
        edit6.Text:='' ;
      except                  //Si hay algo que puede fallar, va a fallar
        on E: ECampoBlanco do
          begin
             showmessage (E.Message);
             if (edit2.Text ='') then
              begin
                label8.Font.Color:=clred;
                label12.Visible:=true;
                label12.Font.Color:=clred;
                edit2.Text:='';
              end;
            if (edit3.Text ='') then
             begin
                label7.Font.Color:=clred;
                label12.Visible:=true;                         //codigo feo por diooo
                label12.Font.Color:=clred;     //ta bien!
                edit3.Text:='';
             end;
            if (edit6.Text ='') then
              begin
                label4.Font.Color:=clred;
                label12.Visible:=true;
                label12.Font.Color:=clred;
                edit6.Text:='';
              end;
            if (edit10.Text ='')then
             begin
                label11.Font.Color:=clred;
                label12.Visible:=true;
                label12.Font.Color:=clred;
                edit10.Text:='';
              end;
            DataModule1.ADOLibro.Cancel;
          end;
        on E: EConvertError do
         begin
            showmessage ('Ingrese un numero valido!') ;
            edit10.Text:='';
            DataModule1.ADOLibro.Cancel;
         end;
        on E: EfueraDeRango do
          begin
            showmessage (E.Message);
            DataModule1.ADOLibro.Cancel;
            edit10.Text:='';
          end;
        on E:EPentakill do
          begin
            edit2.Text:='';
            DataModule1.ADOLibro.Cancel;
          end;
      end;
    end
   else
    Datamodule1.ADOLibro.Cancel;
   //Son todos putos por hacerme hacer estoo!
end;

procedure TForm4.SpeedButton4Click(Sender: TObject);
var
  buttonSelected:integer;
begin
  buttonSelected:= messageDlg('�Realmente desea Eliminar un Libro?',mtWarning,mbOkCancel,0);
  if buttonSelected = mrOk then
    begin
      try
        if (datamodule1.ADOLibro.IsEmpty) then
          raise EEsaTablaTaPelada.Create('No hay libros para eliminar!')
        else
          begin
             edit2.Text:= '';
             edit3.Text:= '';
             edit10.Text:='' ;
             edit6.Text:='' ;
             DataModule1.ADOLibro.Delete;
             showmessage('Se elimino el libro correctamente!');
          end;
      except
        on E: EEsaTablaTaPelada do
          begin
            showmessage (e.Message);
            DataModule1.ADOLibro.Cancel;
          end;
                   // que te garchen todos los diablo mira vos
     else
        datamodule1.ADOLibro.Cancel;

   end;
 end;
end;
end.