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
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
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
  var buttonSelected: integer;
begin
  buttonSelected := messageDlg('�Realmente desea A�adir este libro al carrito?', mtWarning, mbOkCancel, 0);
  if buttonSelected = mrOk then
    begin

    end
  else

end;

end.
