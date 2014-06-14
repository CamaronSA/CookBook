unit CatalogoLibros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls;

type
  TFormCatalogoLibros = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCatalogoLibros: TFormCatalogoLibros;

implementation

uses DetalleLibro;

{$R *.dfm}

procedure TFormCatalogoLibros.SpeedButton2Click(Sender: TObject);
begin
  FormDetalleLibro.showmodal;
end;

procedure TFormCatalogoLibros.SpeedButton3Click(Sender: TObject);
begin
  FormCatalogoLibros.Close;
end;

end.
