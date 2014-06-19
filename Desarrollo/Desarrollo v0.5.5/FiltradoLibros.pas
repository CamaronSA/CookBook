unit FiltradoLibros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ComCtrls, StdCtrls;

type
  TFormFiltradoLibros = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    SpeedButton2: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltradoLibros: TFormFiltradoLibros;

implementation

{$R *.dfm}

end.
