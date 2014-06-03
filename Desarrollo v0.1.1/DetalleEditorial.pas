unit DetalleEditorial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrls;

type
  TFormDetalleEditorial = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDetalleEditorial: TFormDetalleEditorial;

implementation

{$R *.dfm}

procedure TFormDetalleEditorial.SpeedButton1Click(Sender: TObject);
begin
  FormDetalleEditorial.Close;
end;

end.
