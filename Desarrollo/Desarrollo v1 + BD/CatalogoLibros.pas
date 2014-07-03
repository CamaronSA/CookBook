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

  //TStringGrid tiene metodos para eliminar de la grilla (en teoria)

  TStringGrid = class(Grids.TStringGrid);
  // Error por si quiere borrar una fila vacia o eliminar del chango cuando no hay libros o si es judio, si es judio aca no compra loco.
  EEsoNoEUnLibro = class (Exception);
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
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Carrito: TADOQuery;
    LaQuerqueteQuery: TADOQuery;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    SpeedButton11: TSpeedButton;
    ConfirmarPedido: TADOQuery;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCatalogoLibros: TFormCatalogoLibros;
  L:Lista;
  cant:integer;
  loQueValeLaMula:currency;
  ISBNParaDetalle,numerodeLibros:integer;

implementation

uses DetalleLibro, Unit1, Unit7, Unit8;

{$R *.dfm}
//Limpia labels nada mas que eso
procedure limpiarInformativos(L1,L2,L3,L4,L5:TLabel);
begin
  L1.caption:='';
  L2.Caption:='';
  L3.Caption:='';
  L4.Caption:='';
  L5.Caption:='';
end;

procedure TFormCatalogoLibros.FormActivate(Sender: TObject);
begin
     DataModule1.LibrosALaVenta.Active:=false;;
     DataModule1.LibrosALaVenta.Active:=true;
     StringGrid2.Cells[0, StringGrid1.Row] := 'ISBN';
     StringGrid2.Cells[1, StringGrid1.Row] := 'Titulo';
     StringGrid2.Cells[2, StringGrid1.Row] := 'Autor';
     StringGrid2.Cells[3, StringGrid1.Row] := 'Editorial';
     StringGrid2.Cells[4, StringGrid1.Row] := 'Precio';
end;

procedure TFormCatalogoLibros.FormCreate(Sender: TObject);
begin
    cant:=0;
    L:=nil;
    //Cuando se abre el panel la lista esta vacia.
    label15.Caption:='$ 0 ';

end;

procedure TFormCatalogoLibros.SpeedButton10Click(Sender: TObject);
var
  aux:lista;
begin
  //Cargo el ISBN del pedido actual para ver el detalle
  ISBNParaDetalle:= StrToInt(StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]);
  Aux:=L;
  numerodeLibros:=0;
  while (Aux <> nil) do
    begin
      if (ISBNParaDetalle = Aux.Datos) then
         numerodeLibros:=numerodeLibros+1;
      aux:=aux^.Sig;
    end;
  form7.showmodal;
end;

procedure TFormCatalogoLibros.SpeedButton11Click(Sender: TObject);
//var
  //Aux:Lista;
begin
  Form8.ShowModal;
  //implemente señora
 { Aux:=L;
  ConfirmarPedido.SQL.Text:='Select ';
  while (aux <> nil) do
    begin

    end; }
end;

procedure TFormCatalogoLibros.SpeedButton2Click(Sender: TObject);
  var buttonSelected,i: integer;
  Nuevo,pos: Lista;
begin
  buttonSelected := messageDlg('¿Realmente desea Añadir este libro al carrito?', mtWarning, mbOkCancel, 0);
  if buttonSelected = mrOk then
    begin
        new(Nuevo);           //Esto solamente es agregar el ISBN del libro q quiere a la lista.
        Nuevo.Sig:=nil;       //si no entiende vea como agregar un nodo al final de la lista.
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
          //Esto es el contador de libros en el carrito
          cant:=cant+1;
          label14.Caption:=inttostr(cant);
           //Ultima fila
           StringGrid1.Row := StringGrid1.Rowcount - 1;
           //Agranda la tabla con una fila mas
           with StringGrid1 do             //desp te falla cuando vas a eliminar.
              begin                        //Es complicado al pedo diran, pero haciendo StringGrid1.RowCount := StringGrid1.RowCount + 1;
                 RowCount:= RowCount +1;
                 for i:= RowCount-1 downto StringGrid1.Rowcount - 1 do
                     Rows[i]:= Rows[i-1];
                     Rows[StringGrid1.Rowcount - 1].Clear;
              end;
           //Aca viene la carga delstringgrid
           StringGrid1.Cells[0, StringGrid1.Row] := DataModule1.LibrosALaVenta.FieldByName('ISBN').AsString ;
           StringGrid1.Cells[1, StringGrid1.Row] := DataModule1.LibrosALaVenta.FieldByName('Titulo').AsString ;
           StringGrid1.Cells[2, StringGrid1.Row] := DataModule1.LibrosALaVenta.FieldByName('Autor').AsString;
           StringGrid1.Cells[3, StringGrid1.Row] := DataModule1.LibrosALaVenta.FieldByName('Editorial').AsString;
           StringGrid1.Cells[4, StringGrid1.Row] := CurrToStr(DataModule1.LibrosALaVenta.FieldByName('Precio').AsCurrency);
           //calcula el subtotal gastado
           loQueValeLaMula:= loQueValeLaMula + DataModule1.LibrosALaVenta.FieldByName('Precio').AsCurrency;
           label15.Caption:= '$ ' + CurrToStr(loQueValeLaMula);
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
begin
        // esta parte muestra el panel del carrito
        if panel2.Visible = false then
          begin
             panel2.Visible:=true;
             FormCatalogoLibros.Width:=1110;
          end
        else
         begin
           FormCatalogoLibros.Width:=737;
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
FormCatalogoLibros.Width:=737;
FormCatalogoLibros.panel2.Visible:=false;

end;

procedure TFormCatalogoLibros.SpeedButton7Click(Sender: TObject);
Var
  Valor:String;
  act , ant , pri: lista;
  ok:boolean;
  i,buttonSelected: Integer;
begin
buttonSelected := messageDlg('¿Realmente desea Eliminar este libro del carrito?', mtWarning, mbOkCancel, 0);
 if buttonSelected = mrOk then begin
  try
    //obtengo el valor de la celda seleccionada actualmente
    Valor:=StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row];
    if (valor = '') then
      raise EEsoNoEUnLibro.Create('Esta intentando eliminar algo que no existe')
    else begin
    cant:=cant-1;
    label14.Caption:=IntToStr(cant);
    //Aca empieza la resta del valor del libro a borrar! vuelva Pronto.. magia nene
    Carrito.SQL.Text:='Select * From Libro where (ISBN =:Dato)';
    Carrito.Close;
    Carrito.Parameters.ParamByName('Dato').Value:=(StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]);
    Carrito.Open;
    Carrito.Active:=true;
    loQueValeLaMula:= loQueValeLaMula - Carrito.FieldByName('Precio').AsCurrency;
    label15.Caption:= '$ ' + CurrToStr(loQueValeLaMula);
    //Aca hago el borrado del libro pero de la lista nada mas.
    //Para empezar al pri le asigno la lista entera, para no romper la lista original.
    pri:=L;
    //Para ir recorriendo la lista.
    act:=pri;
    ant:=pri;
    ok:=false;
    while (act <> nil) and (not ok)do
      begin
        //Clave, pregunto si el dato del nodo es igual al lugar donde esta clikeando el usuario
        if(act^.Datos = StrToInt(valor)) then
          ok:=true
        else
          begin
            ant:=act;
            act:=act^.Sig;
          end;
      end;
      if (ok =true) then
        begin
          if (act = pri) then
            pri:=act^.Sig
          else
            begin
              ant^.sig := act^.sig;
              Dispose(act);
            end;
        end;
        //Elimina la fila seleccionada, ta en etapa de testeo puede fallar.
        //Esta andando cn el click y con las flechitas si lo chivean seguro caga.
      StringGrid1.DeleteRow(StringGrid1.Row);
      //Desp de borrar la grilla limpio los label
      limpiarInformativos(label10,label11,label12,label7,label8);
    end;
  except
    on E: EEsoNoEUnLibro do
      begin
        Showmessage (E.Message); //chau chau chau lelele

      end;
  end;
 end;


end;

procedure TFormCatalogoLibros.SpeedButton8Click(Sender: TObject);
var
  cont1,cont,i:integer;
  aux:Lista;
begin
    //sql para actualizar , trae datusss
    Carrito.SQL.Text:='Select * From Libro where (ISBN =:Dato)';
    //Borrar todo  de stringGrid
    //limpio string grid                                        //87.6
    for cont :=0 to Stringgrid1.colcount-1 do
        for cont1 :=0 to stringgrid1.rowcount-1 do
            stringgrid1.Cells[cont,cont1] := '';
        StringGrid1.Rowcount:=1;
    //Cargo nuevamente el stringGrid con datos de la lista
    Aux:=L;
    while (Aux <> Nil) do begin
      Carrito.close;
      Carrito.Parameters.ParamByName('Dato').Value:=aux.Datos;
      Carrito.Active:=True;
      Carrito.Open;
      StringGrid1.Cells[0,StringGrid1.Row]:=Carrito.FieldByName('ISBN').AsString ;
      StringGrid1.Cells[1,StringGrid1.Row]:=Carrito.FieldByName('Titulo').AsString ;
      StringGrid1.Cells[2,StringGrid1.Row]:=Carrito.FieldByName('Autor').AsString;
      StringGrid1.Cells[3,StringGrid1.Row]:=Carrito.FieldByName('Editorial').AsString;
      StringGrid1.Cells[4,StringGrid1.Row]:=CurrToStr(Carrito.FieldByName('Precio').AsCurrency);
      StringGrid1.Row:=StringGrid1.Rowcount - 1;
      //Agranda la tabla con una fila mas
      with StringGrid1 do          // desp te falla cuando vas a eliminar.
        begin       // Es complicado al pedo diran, pero haciendo StringGrid1.RowCount := StringGrid1.RowCount + 1;
          RowCount := RowCount +1;
          for i:= RowCount - 1 downto StringGrid1.Rowcount - 1 do
            Rows[i]:= Rows[i-1];
            Rows[StringGrid1.Rowcount - 1].Clear;
          end;
      Aux:=Aux^.sig;
    end;

end;


procedure TFormCatalogoLibros.SpeedButton9Click(Sender: TObject);
var
  buttonSelected,cont1,cont:integer;

begin
  buttonSelected := messageDlg('Si confirma la accion se eliminara toda la lista de libros que agrego al carrito y no se podra recuperar', mtWarning, mbOkCancel, 0);
    if buttonSelected = mrOk then begin
      //Acomoda la cantidad de libros que compro mr comprador.
      cant:=0;
      label14.Caption:=inttostr(cant);
      //Aca lo q va gastando mr comprador.
      label15.Caption:='$ 0 ';
      //Limpio la lista  , desp de esto no hay mas libros
      L:=Nil;
      //limpio string grid , no lo cante no lo grite no se abrase, el coso este andaaaa
      for cont :=0 to Stringgrid1.colcount-1 do
        for cont1 :=0 to stringgrid1.rowcount-1 do
            stringgrid1.Cells[cont,cont1] := '';
        StringGrid1.Rowcount:=1;
    end;
end;

procedure TFormCatalogoLibros.StringGrid1Click(Sender: TObject);
begin
  //cargar labels. chaundo la grilla cambia actualizo los labels.
  label10.Caption:=Copy(StringGrid1.Cells[3, StringGrid1.Row],1,10);
  label11.Caption:=Copy(StringGrid1.Cells[0, StringGrid1.Row],1,10);
  label12.Caption:=Copy(StringGrid1.Cells[4, StringGrid1.Row],1,10);
  label7.Caption:=Copy(StringGrid1.Cells[1, StringGrid1.Row],1,10);
  label8.Caption:=Copy(StringGrid1.Cells[2, StringGrid1.Row],1,10);

end;

end.
