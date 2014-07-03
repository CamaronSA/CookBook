unit DetalleLibro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Mask, DBCtrls, StdCtrls, ExtCtrls;

type
  TFormDetalleLibro = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText8: TDBText;
    DBImage1: TDBImage;
    Memo1: TMemo;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDetalleLibro: TFormDetalleLibro;

implementation

uses Unit1;

{$R *.dfm}

procedure TFormDetalleLibro.FormActivate(Sender: TObject);
begin
  memo1.text:=DataModule1.LibrosALaVenta.FieldByName('Descripcion').AsString;
end;

procedure TFormDetalleLibro.SpeedButton2Click(Sender: TObject);
begin
  FormDetalleLibro.Close;
end;

end.
