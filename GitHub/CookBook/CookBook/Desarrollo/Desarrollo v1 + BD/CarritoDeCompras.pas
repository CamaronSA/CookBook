unit CarritoDeCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, DBCtrls, JPEG;

type
  TFormCarritoDeCompras = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    DBText1: TDBText;
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCarritoDeCompras: TFormCarritoDeCompras;

implementation

{$R *.dfm}

procedure TFormCarritoDeCompras.SpeedButton3Click(Sender: TObject);
begin
  FormCarritoDeCompras.Close;
end;

end.
