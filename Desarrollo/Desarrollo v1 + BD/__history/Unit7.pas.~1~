unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, DB, ADODB, Buttons;

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
    SpeedButton2: TSpeedButton;
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
close;
end;

end.
