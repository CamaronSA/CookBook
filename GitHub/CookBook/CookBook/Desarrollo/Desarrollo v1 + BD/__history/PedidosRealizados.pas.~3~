unit PedidosRealizados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls;

type
  TFormTodosLosPedidos = class(TForm)
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTodosLosPedidos: TFormTodosLosPedidos;

implementation

uses Unit1;

{$R *.dfm}

procedure TFormTodosLosPedidos.DBGrid1TitleClick(Column: TColumn);
begin
 //Esto ordena la tabla segun en que titulo haga click el usuario
Case Column.Index Of
  0 : DataModule1.ADOPedidos.IndexFieldNames:='DNI';
  1 : DataModule1.ADOPedidos.IndexFieldNames:='Estado';
  2 : DataModule1.ADOPedidos.IndexFieldNames:='NumTarjeta';
  3 : DataModule1.ADOPedidos.IndexFieldNames:='FechaDeInicio';
  4 : DataModule1.ADOPedidos.IndexFieldNames:='FechaDeFin';
End;
end;

end.
