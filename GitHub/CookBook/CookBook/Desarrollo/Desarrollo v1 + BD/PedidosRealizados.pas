unit PedidosRealizados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, DBCtrls, ExtCtrls;

type
  TFormTodosLosPedidos = class(TForm)
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel2: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label11: TLabel;
    Label13: TLabel;
    DBComboBox1: TDBComboBox;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
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

procedure TFormTodosLosPedidos.DBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if not(Key in []) then
    key := #0;
end;

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

procedure TFormTodosLosPedidos.SpeedButton1Click(Sender: TObject);
begin
DataModule1.ADOPedidos.Cancel;
Close;
end;

procedure TFormTodosLosPedidos.SpeedButton2Click(Sender: TObject);
begin
   //Modificar estado
   DataModule1.ADOPedidos.Edit;
   Panel1.Visible:=True;
   Panel2.Visible:=False;
   FormTodosLosPedidos.Height:=385;
   FormTodosLosPedidos.Width:=440;
end;

procedure TFormTodosLosPedidos.SpeedButton3Click(Sender: TObject);
begin
//Actualizar
DataModule1.ADOPedidos.Post;
   Panel1.Visible:=False;;
   Panel2.Visible:=True;
   FormTodosLosPedidos.Height:=387;
   FormTodosLosPedidos.Width:=811;
end;

procedure TFormTodosLosPedidos.SpeedButton4Click(Sender: TObject);
begin
//Cancelar
DataModule1.ADOPedidos.Cancel;
   Panel1.Visible:=False;;
   Panel2.Visible:=True;
   FormTodosLosPedidos.Height:=387;
   FormTodosLosPedidos.Width:=811;
end;

end.