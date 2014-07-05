unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids,
  PanelAdministracion, Contacto, Menus, JPEG,WinHelpViewer, HtmlHelpViewer;

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
    Visitante1: TMenuItem;
    Registrarse1: TMenuItem;
    Recuperarclave1: TMenuItem;
    Catalogodelibros1: TMenuItem;
    Contacto1: TMenuItem;
    Cerrarsesin1: TMenuItem;
    ransacciones2: TMenuItem;
    Usuario1: TMenuItem;
    Cmocompro1: TMenuItem;
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
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure ImagenesVisibles;
    procedure Cargadeformularios1Click(Sender: TObject);
    procedure Visitante1Click(Sender: TObject);
    procedure Registrarse1Click(Sender: TObject);
    procedure Recuperarclave1Click(Sender: TObject);
    procedure Catalogodelibros1Click(Sender: TObject);
    procedure Contacto1Click(Sender: TObject);
    procedure Cerrarsesin1Click(Sender: TObject);
    procedure Usuario1Click(Sender: TObject);
    procedure ransacciones2Click(Sender: TObject);
    procedure Cmocompro1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses CatalogoLibros, Login, Unit1, MisDatos, VerMisCompras,
  PedidosRealizados, RegistroCliente, CambiarClave, DetalleDestacado;

{$R *.dfm}

procedure TFormPrincipal.ImagenesVisibles;
begin
if (DataModule1.Destacados.RecordCount=5) or (DataModule1.Destacados.RecordCount>5) then begin
  Image2.Visible:=True;
  Image2.Enabled:=True;
  Image3.Visible:=True;
  Image3.Enabled:=True;
  Image4.Visible:=True;
  Image4.Enabled:=True;
  Image5.Visible:=True;
  Image5.Enabled:=True;
  Image6.Visible:=True;
  Image6.Enabled:=True;
end;
if DataModule1.Destacados.RecordCount=4 then begin
  Image2.Visible:=True;
  Image2.Enabled:=True;
  Image3.Visible:=True;
  Image3.Enabled:=True;
  Image4.Visible:=True;
  Image4.Enabled:=True;
  Image5.Visible:=True;
  Image5.Enabled:=True;
  Image6.Visible:=False;
  Image6.Enabled:=False;
end;
if DataModule1.Destacados.RecordCount=3 then begin
  Image2.Visible:=True;
  Image2.Enabled:=True;
  Image3.Visible:=True;
  Image3.Enabled:=True;
  Image4.Visible:=True;
  Image4.Enabled:=True;
  Image5.Visible:=False;
  Image5.Enabled:=False;
  Image6.Visible:=False;
  Image6.Enabled:=False;
end;
if DataModule1.Destacados.RecordCount=2 then begin
  Image2.Visible:=True;
  Image2.Enabled:=True;
  Image3.Visible:=True;
  Image3.Enabled:=True;
  Image4.Visible:=False;
  Image4.Enabled:=False;
  Image5.Visible:=False;
  Image5.Enabled:=False;
  Image6.Visible:=False;
  Image6.Enabled:=False;
end;
if DataModule1.Destacados.RecordCount=1 then begin
  Image2.Visible:=True;
  Image2.Enabled:=True;
  Image3.Visible:=False;
  Image3.Enabled:=False;
  Image4.Visible:=False;
  Image4.Enabled:=False;
  Image5.Visible:=False;
  Image5.Enabled:=False;
  Image6.Visible:=False;
  Image6.Enabled:=False;
end;
end;

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

procedure TFormPrincipal.Cargadeformularios1Click(Sender: TObject);
begin
Application.HelpCommand(HELP_CONTEXT,50);
end;


procedure TFormPrincipal.Visitante1Click(Sender: TObject);
begin
Application.HelpCommand(HELP_CONTEXT,60);
end;

procedure TFormPrincipal.Registrarse1Click(Sender: TObject);
begin
Application.HelpCommand(HELP_CONTEXT,70);
end;

procedure TFormPrincipal.Recuperarclave1Click(Sender: TObject);
begin
Application.HelpCommand(HELP_CONTEXT,80);
end;

procedure TFormPrincipal.Catalogodelibros1Click(Sender: TObject);
begin
Application.HelpCommand(HELP_CONTEXT,100);
end;

procedure TFormPrincipal.Contacto1Click(Sender: TObject);
begin
Application.HelpCommand(HELP_CONTEXT,90);
end;

procedure TFormPrincipal.Cerrarsesin1Click(Sender: TObject);
begin
Application.HelpCommand(HELP_CONTEXT,110);
end;

procedure TFormPrincipal.Cmocompro1Click(Sender: TObject);
begin
Application.HelpCommand(HELP_CONTEXT,120);
end;

procedure TFormPrincipal.Usuario1Click(Sender: TObject);
begin
Application.HelpCommand(HELP_CONTEXT,130);
end;

procedure TFormPrincipal.ransacciones2Click(Sender: TObject);
begin
Application.HelpCommand(HELP_CONTEXT,140);
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
FormPrincipal.ImagenesVisibles;

end;

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
begin
for I := 1 to 5 do
DataModule1.Destacados.Next;

end;

procedure TFormPrincipal.Image2Click(Sender: TObject);
begin
 DataModule1.Destacados.First;
 FormDetalleDestacado.ShowModal;
end;

procedure TFormPrincipal.Image3Click(Sender: TObject);
begin
 DataModule1.Destacados.First;
 DataModule1.Destacados.Next;
 FormDetalleDestacado.ShowModal;
end;

procedure TFormPrincipal.Image4Click(Sender: TObject);
begin
  DataModule1.Destacados.First;
  DataModule1.Destacados.Next;
  DataModule1.Destacados.Next;
  FormDetalleDestacado.ShowModal;
end;

procedure TFormPrincipal.Image5Click(Sender: TObject);
begin
  DataModule1.Destacados.First;
  DataModule1.Destacados.Next;
  DataModule1.Destacados.Next;
  DataModule1.Destacados.Next;
  FormDetalleDestacado.ShowModal;
end;

procedure TFormPrincipal.Image6Click(Sender: TObject);
begin
  DataModule1.Destacados.First;
  DataModule1.Destacados.Next;
  DataModule1.Destacados.Next;
  DataModule1.Destacados.Next;
  DataModule1.Destacados.Next;
  FormDetalleDestacado.ShowModal;
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
