unit DetalleDestacado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls;

type
  TFormDetalleDestacado = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Image1: TImage;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDetalleDestacado: TFormDetalleDestacado;

implementation

uses Unit1;

{$R *.dfm}

procedure TFormDetalleDestacado.FormActivate(Sender: TObject);
var Autor:String;
begin
//1,10,11,12,13,14,15
Label1.Caption:=DataModule1.Destacados.FieldByName('Titulo').AsString;
Label10.Caption:=DataModule1.Destacados.FieldByName('Etiqueta').AsString;
Autor:=(DataModule1.Destacados.FieldByName('NombreAutor').AsString)+' '+DataModule1.Destacados.FieldByName('ApellidoAutor').AsString;
Label11.Caption:=Autor;
Label12.Caption:=IntToStr(DataModule1.Destacados.FieldByName('AnioEditorial').AsInteger);
Label13.Caption:=DataModule1.Destacados.FieldByName('Editorial').AsString;
Label14.Caption:=DataModule1.Destacados.FieldByName('Idioma').AsString;
Label15.Caption:=FloatToStr(DataModule1.Destacados.FieldByName('Precio').AsFloat);
Image1.Picture.Assign(DataModule1.Destacados.FieldByName('Imagen'));
Memo1.Lines.Text:=DataModule1.Destacados.FieldByName('Descripcion').AsString;
end;

procedure TFormDetalleDestacado.SpeedButton2Click(Sender: TObject);
begin
Close;
end;

end.
