unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, DB, ADODB, Buttons, JPEG;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    DBImage1: TDBImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DetLibro: TADOQuery;
    Tabla_DetLibro: TDataSource;
    DBText6: TDBText;
    DBText7: TDBText;
    SpeedButton1: TSpeedButton;
    Label12: TLabel;
    DetLibroIDLibro: TAutoIncField;
    DetLibroPrecio: TFloatField;
    DetLibroImagen: TBlobField;
    DetLibroAnioEditorial: TIntegerField;
    DetLibroTitulo: TWideStringField;
    DetLibroDescripcion: TWideMemoField;
    DetLibroDNIAutor: TIntegerField;
    DetLibroEditorial: TWideStringField;
    DetLibroIdioma: TWideStringField;
    DetLibroEtiqueta: TWideStringField;
    DetLibroISBN: TIntegerField;
    DetLibroEsDestacado: TBooleanField;
    DetLibroDisponible: TBooleanField;
    DBText8: TDBText;
    DetLibroApeAutor: TStringField;
    DetLibroNomAutor: TStringField;
    ComboBox1: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1, CatalogoLibros;

{$R *.dfm}

procedure TForm7.FormActivate(Sender: TObject);
begin
  //Activo la tabla del nico menna por que si no anda :D
 DataModule1.ADOTarjetas.Active:=true;
 //OnClick Cargo los Bancos Dispoibles para garpar .                 <--Revisar Todo
  //Carga las tarjetas en comboBoz!
  DataModule1.ADOTarjetas.First;
  while not (DataModule1.ADOTarjetas.Eof) do
   Begin
     ComboBox1.Items.Add(DataModule1.ADOTarjetas.Fields[1].text);
     DataModule1.ADOTarjetas.Next;
   End ;
  DetLibro.Close;
  DetLibro.Parameters.ParamByName('Dato').Value:= ISBNParaDetalle;
  DetLibro.Open;
  memo1.Text:=DetLibro.FieldByName('Descripcion').AsString;
  DetLibro.Active:=true;
  if (DetLibro.FieldByName('AnioEditorial').AsInteger = 0)then
    dbtext4.Caption:='-';
  label11.Caption:=IntToStr (numerodeLibros) ;

end;

procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
  ComboBox1.Items.Clear;
  close;

end;

end.
