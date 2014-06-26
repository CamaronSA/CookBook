unit CatalogoLibros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, ADODB;

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
    SpeedButton6: TSpeedButton;
    Carrito: TADOQuery;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
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

procedure TFormCatalogoLibros.FormActivate(Sender: TObject);
begin
     DataModule1.LibrosALaVenta.Active:=false;;
     DataModule1.LibrosALaVenta.Active:=true;
     StringGrid2.Cells[0, StringGrid1.Row] := 'Titulo' ;
     StringGrid2.Cells[1, StringGrid1.Row] := 'Autor';
     StringGrid2.Cells[2, StringGrid1.Row] := 'Editorial';
     StringGrid2.Cells[3, StringGrid1.Row] := 'Precio' ;
end;

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
        new(Nuevo);           //Esto solamente es agregar el ISBN del libro q quiere a la lista.
        Nuevo.Sig:=nil;      //si no entiende vea como agregar un nodo al final de la lista.
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
           //Ultima fila
           StringGrid1.Row := StringGrid1.Rowcount - 1;
           //Agranda la tabla con una fila mas
           StringGrid1.Rowcount:=StringGrid1.Rowcount + 1;
           //Aca viene la carga delstringgrid
           StringGrid1.Cells[0, StringGrid1.Row] := DataModule1.LibrosALaVenta.FieldByName('Titulo').AsString ;
           StringGrid1.Cells[1, StringGrid1.Row] := DataModule1.LibrosALaVenta.FieldByName('Autor').AsString;
           StringGrid1.Cells[2, StringGrid1.Row] := DataModule1.LibrosALaVenta.FieldByName('Editorial').AsString;
           StringGrid1.Cells[3, StringGrid1.Row] := CurrToStr(DataModule1.LibrosALaVenta.FieldByName('Precio').AsCurrency);

    end
  else

end;

procedure TFormCatalogoLibros.SpeedButton3Click(Sender: TObject);
begin
close;
end;

procedure TFormCatalogoLibros.SpeedButton4Click(Sender: TObject);
begin
  formDetalleLibro.ShowModal;
end;

procedure TFormCatalogoLibros.SpeedButton5Click(Sender: TObject);
var
 ListaRecorre:Lista;
 cont1,cont:integer;
begin
       { //Cargo la lista de pedidos dentro de una lista aux para no hacer cagadas.
        new(ListaRecorre);
        //Asigno L en una lsita aux para no hacer lios
        ListaRecorre:=L;
        //Cargo la sql de la consulta.
        Carrito.SQL.Text:='Select Titulo,Autor,Editorial,Precio from Libro where (ISBN =:Dato)';
        //Recorro la lista aux.
        while (ListaRecorre <> nil) do
          begin                                       //La carga no se hace aca esta mal.
            Carrito.Close;
            //Paso parametros por cada uno de los libros que pidio el cliente
            Carrito.Parameters.ParamByName('Dato').Value:=IntToStr(ListaRecorre.Datos);
            Carrito.Open;
            //Ultima fila
            StringGrid1.Row := StringGrid1.Rowcount - 1;
            //Agranda la tabla con una fila mas
            StringGrid1.Rowcount:=StringGrid1.Rowcount +1;
            //Carga de valores.
            StringGrid1.Cells[0, StringGrid1.Row] := Carrito.FieldByName('Titulo').AsString ;
            StringGrid1.Cells[1, StringGrid1.Row] := Carrito.FieldByName('Autor').AsString;
            StringGrid1.Cells[2, StringGrid1.Row] := Carrito.FieldByName('Editorial').AsString;
            StringGrid1.Cells[3, StringGrid1.Row] := Carrito.FieldByName('Precio').AsString;
            ListaRecorre:=ListaRecorre.Sig;
            //Aun tiene muchos defeectos pero sirvio apra ver q anda la lsita y un apr de cosas mas.
          end;  }

        // esta parte muestra el panel del carrito
        if panel2.Visible = false then
          begin
             panel2.Visible:=true;
             FormCatalogoLibros.Width:=1044;
          end
        else
         begin
           FormCatalogoLibros.Width:=742;
           FormCatalogoLibros.panel2.Visible:=false;
           //Limpia el stringGrid
          { for cont :=0 to Stringgrid1.colcount-1 do
              for cont1 :=0 to stringgrid1.rowcount-1 do
                  stringgrid1.Cells[cont,cont1] := '';
           StringGrid1.Rowcount:=1;   }
         end;

end;

procedure TFormCatalogoLibros.SpeedButton6Click(Sender: TObject);
begin
FormCatalogoLibros.Width:=744;
FormCatalogoLibros.panel2.Visible:=false;

end;

end.
