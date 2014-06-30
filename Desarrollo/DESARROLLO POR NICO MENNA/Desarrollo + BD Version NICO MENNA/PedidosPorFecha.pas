unit PedidosPorFecha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  EEspacioBlanco=class(Exception);
  EFueraRango=class(Exception);
  TFormPedidosPorFecha = class(TForm)
    Panel2: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    SpeedButton5: TSpeedButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedidosPorFecha: TFormPedidosPorFecha;

implementation

uses Unit1;

{$R *.dfm}



procedure TFormPedidosPorFecha.SpeedButton5Click(Sender: TObject);
begin
                                 DataModule1.FiltroPorFecha.Close;
                                 //BuscoPorFecha
                                  DataModule1.FiltroPorFecha.Parameters.ParamByName('Desde').value:=DateToStr(DateTimePicker1.Date);
                                  DataModule1.FiltroPorFecha.Parameters.ParamByName('Hasta').value:=DateToStr(DateTimePicker2.Date);
                                //**Fin Busqueda Por Fecha
                                 DataModule1.FiltroPorFecha.Open;
      end;
end.