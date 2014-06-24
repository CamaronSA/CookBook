unit CatalogoLibros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls;

type
  //Lista que va a contener los numero de ISBN de los libros pedidos
  //Guaro solamente ISBN para trabajar con el libro pero desde la misma tabla pro si ocurre algun cambio en ella no tener problemas.
  Lista = ^Nodo;
  Nodo = Record
    Datos : integer;
    Sig : Lista;
  End;


  TFormCatalogoLibros = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label3: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCatalogoLibros: TFormCatalogoLibros;
  L:Lista;

implementation

uses DetalleLibro, Unit1;

{$R *.dfm}

procedure TFormCatalogoLibros.FormCreate(Sender: TObject);
begin

  //Cuando se abre el panel la lista esta vacia.
  L:=nil;
end;

procedure TFormCatalogoLibros.SpeedButton2Click(Sender: TObject);
  var buttonSelected: integer;
begin
  buttonSelected := messageDlg('�Realmente desea A�adir este libro al carrito?', mtWarning, mbOkCancel, 0);
  if buttonSelected = mrOk then
    begin




    end
  else

end;

procedure TFormCatalogoLibros.SpeedButton3Click(Sender: TObject);
begin
close;
end;

end.
