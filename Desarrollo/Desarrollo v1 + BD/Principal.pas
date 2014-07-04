unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids,
  PanelAdministracion, Contacto, Menus, JPEG;

type
    EPedidosPendientes=class(exception);
  TFormPrincipal = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label2: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    MainMenu1: TMainMenu;
    User1: TMenuItem;
    MisDatos1: TMenuItem;
    Ayuda1: TMenuItem;
    Cargadeformularios1: TMenuItem;
    Label1: TLabel;
    SpeedButton3: TSpeedButton;
    Modificarmisdatos1: TMenuItem;
    Darmedebaja1: TMenuItem;
    ransacciones1: TMenuItem;
    Nosotros1: TMenuItem;
    Contactenos1: TMenuItem;
    SpeedButton2: TSpeedButton;
    Cambiarcontrasea1: TMenuItem;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Darmedebaja1Click(Sender: TObject);
    procedure Modificarmisdatos1Click(Sender: TObject);
    procedure MisDatos1Click(Sender: TObject);
    procedure ransacciones1Click(Sender: TObject);
    procedure Pedidosrealizados1Click(Sender: TObject);
    procedure Cambiarcontrasea1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActualizarDestacados;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses CatalogoLibros, CarritoDeCompras, Login, Unit1, MisDatos, VerMisCompras,
  PedidosRealizados, RegistroCliente, CambiarClave;

{$R *.dfm}

procedure TFormPrincipal.ActualizarDestacados;
begin
Image2.Picture.Assign(DataModule1.Destacados.FieldByName('Imagen'));
DataModule1.Destacados.Next;
Image3.Picture.Assign(DataModule1.Destacados.FieldByName('Imagen'));
DataModule1.Destacados.Next;
Image4.Picture.Assign(DataModule1.Destacados.FieldByName('Imagen'));
DataModule1.Destacados.Next;
Image5.Picture.Assign(DataModule1.Destacados.FieldByName('Imagen'));
DataModule1.Destacados.Next;
Image6.Picture.Assign(DataModule1.Destacados.FieldByName('Imagen'));
end;

procedure TFormPrincipal.Cambiarcontrasea1Click(Sender: TObject);
begin
  FormCambiarClave.ShowModal;
end;

procedure TFormPrincipal.Darmedebaja1Click(Sender: TObject);
var buttonSelected:Integer; DNI:Integer;
begin
  try
  Datamodule1.ComprobarUsuario.Close;
  Datamodule1.ComprobarUsuario.Parameters.ParamByName('user').Value:=UsuarioRegistrado;
  Datamodule1.ComprobarUsuario.Open;
  Datamodule1.ComprobarUsuarioAdmin.Close;
  Datamodule1.ComprobarUsuarioAdmin.Parameters.ParamByName('user').Value:=UsuarioRegistrado;
  Datamodule1.ComprobarUsuarioAdmin.Open;
  DNI:=DataModule1.ComprobarUsuario.FieldByName('DNI').AsInteger;
  Datamodule1.PedidosUsuario.Close;
  Datamodule1.PedidosUsuario.Parameters.ParamByName('consultaDNI').Value:=DNI;
  Datamodule1.PedidosUsuario.Open;
  buttonSelected:=messageDlg('¿Realmente desea eliminar el usuario?',mtWarning,mbOkCancel,0);
  if buttonSelected= mrOk then
    begin
      if not (Datamodule1.ComprobarUsuario.ISEmpty) then begin // Si es usuario
              if not DataModule1.PedidosUsuario.isEmpty then
                raise EPedidosPendientes.Create('No puede eliminarse ya que posee pedidos pendientes')
              else begin
              DataModule1.BorrarUsuarioCliente.Close;
              DataModule1.BorrarUsuarioCliente.Parameters.ParamByName('user').Value:=UsuarioRegistrado;
              DataModule1.BorrarUsuarioCliente.ExecSQL;
              ShowMessage('El usuario se borró exitosamente');
              Close;
              end;
              end
              else
              if not (Datamodule1.ComprobarUsuarioAdmin.ISEmpty) then begin  //Si es admin
                  ShowMessage('Usted es adminitrador, no puede eliminarse')
              end;
    end;
  except
    on E:EPedidosPendientes do
      ShowMessage(E.Message);

  end;
end;

procedure TFormPrincipal.FormActivate(Sender: TObject);
begin
if UsuarioRegistrado <>'' then
  label1.Caption:='Bienvenido '+UsuarioRegistrado
else
  label1.Caption:='Bienvenido Visitante';

DataModule1.Destacados.Close;
DataModule1.Destacados.Open;
FormPrincipal.ActualizarDestacados;
end;

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
begin
for I := 1 to 5 do
DataModule1.Destacados.Next;

end;

procedure TFormPrincipal.MisDatos1Click(Sender: TObject);
begin
  FormMisDatos.SpeedButton1.Visible:=False;
  FormMisDatos.SpeedButton2.Visible:=False;
  FormMisDatos.SpeedButton3.Visible:=True;
  FormMisDatos.SpeedButton4.Visible:=True;
  FormMisDatos.ShowModal;
end;

procedure TFormPrincipal.Modificarmisdatos1Click(Sender: TObject);
begin
 FormMisDatos.SpeedButton1.Visible:=True;
 FormMisDatos.SpeedButton2.Visible:=True;
 FormMisDatos.SpeedButton3.Visible:=False;
 FormMisDatos.SpeedButton4.Visible:=False;
 FormMisDatos.ShowModal;
end;

procedure TFormPrincipal.Pedidosrealizados1Click(Sender: TObject);
begin
 FormTodosLosPedidos.ShowModal;
end;

procedure TFormPrincipal.ransacciones1Click(Sender: TObject);
begin
  FormVerMisCompras.ShowModal;
end;

procedure TFormPrincipal.SpeedButton1Click(Sender: TObject);
begin
  FormCatalogoLibros.showmodal;
end;

procedure TFormPrincipal.SpeedButton2Click(Sender: TObject);
begin
  Close;
  formregistrocliente.showmodal;
end;

procedure TFormPrincipal.SpeedButton4Click(Sender: TObject);
begin
Form2.Showmodal;
end;

procedure TFormPrincipal.SpeedButton5Click(Sender: TObject);
var
  cont1,cont:integer;
begin
   //Esto es una bestialidad jaja no queda otra borra el chango :p
   for cont :=0 to FormCatalogoLibros.Stringgrid1.colcount-1 do
      for cont1 :=0 to FormCatalogoLibros.stringgrid1.rowcount-1 do
      FormCatalogoLibros.stringgrid1.Cells[cont,cont1] := '';
   FormCatalogoLibros.StringGrid1.Rowcount:=1;
  UsuarioParaCarro:='';
  Form2.Label1.Visible:=True;
  Form2.Edit1.Visible:=True;
  UsuarioRegistrado:='';
  L:=nil;   //Limpia la lista de carrito de compras para que no venga otro y compre las mismas boludeces que compre yo  [CUIDADO LO HIZO EL HOMOSAPIENS DE NEG90]
  FormPrincipal.Close;

end;

procedure TFormPrincipal.SpeedButton6Click(Sender: TObject);
begin
FormPanelAdministracion.showmodal;
end;

procedure TFormPrincipal.SpeedButton7Click(Sender: TObject);
var
  cont1,cont:integer;
begin
   //Esto es una bestialidad jaja no queda otra borra el chango :p
   for cont :=0 to FormCatalogoLibros.Stringgrid1.colcount-1 do
      for cont1 :=0 to FormCatalogoLibros.stringgrid1.rowcount-1 do
      FormCatalogoLibros.stringgrid1.Cells[cont,cont1] := '';
   FormCatalogoLibros.StringGrid1.Rowcount:=1;
  UsuarioParaCarro:='';
  UsuarioRegistrado:='';
  L:=Nil;  //Limpia la lista de carrito de compras para que no venga otro y compre las mismas boludeces que compre yo  [CUIDADO LO HIZO EL HOMOSAPIENS DE NEG90]
  FormPrincipal.Close;
  FormLogin.Close;
end;

end.
