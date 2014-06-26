unit CatalogoLibros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  //Lista que va a contener los numero de ISBN de los libros pedidos
  //Guaro solamente ISBN para trabajar con el libro pero desde la misma tabla pro si ocurre algun cambio en ella no tener problemas.
  Lista = ^Nodo;
  Nodo = Record
    Datos : integer;
    Sig : Lista;
  End;


  TFormCatalogoLibros = class(TForm)
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
    SpeedButton4: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
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
    L:=nil;
    //Cuando se abre el panel la lista esta vacia.

end;

procedure TFormCatalogoLibros.SpeedButton2Click(Sender: TObject);
  var buttonSelected: integer;
      Nuevo,pos: Lista;
begin
  buttonSelected := messageDlg('¿Realmente desea Añadir este libro al carrito?', mtWarning, mbOkCancel, 0);
  if buttonSelected = mrOk then
    begin
        new(Nuevo);
        Nuevo.Sig:=nil;      //si no entiende vea como agregar un nodo al final de la lsita.
        Nuevo.Datos:=DataModule1.LibrosALaVenta.FieldByName('ISBN').AsInteger;
        if (L = nil) then
          begin
            L:= Nuevo;
          end
        else
          begin
            pos:=L;
            while (pos^.sig <> nil) do
              pos:=pos^.sig;
            pos^.sig:=Nuevo;
          end;


   {  Procedure agregarFinal (var pri : Lista; n : integer);
          var      nuevo, pos : lista;
        Begin
           new (nuevo);        nuevo^.sig := nil;       nuevo^.datos := n;
            if (pri = nil) then pri := nuevo
            else begin
               pos := pri;
               while (pos^.sig <> nil) do
                  pos := pos^.sig;
               pos^.sig := nuevo;
        end;
End.
                    }



    end
  else

end;

procedure TFormCatalogoLibros.SpeedButton3Click(Sender: TObject);
begin
close;
end;

procedure TFormCatalogoLibros.SpeedButton5Click(Sender: TObject);
begin
 panel2.Visible:=true;
 FormCatalogoLibros.Width:=1190;
end;

end.
