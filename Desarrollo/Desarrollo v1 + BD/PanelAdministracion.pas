unit PanelAdministracion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ModifAdmin, OperacionesAutor,
  OperacionesEditorial, Unit1, OperacionesCategoria, FiltradoLibros;

type
  TFormPanelAdministracion = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label2: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Label1: TLabel;
    SpeedButton14: TSpeedButton;
    Label3: TLabel;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton21: TSpeedButton;
    Label4: TLabel;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton28: TSpeedButton;
    Label5: TLabel;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure SpeedButton34Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPanelAdministracion: TFormPanelAdministracion;

implementation

uses OperacionesIdioma, ModificarLibro, PedidosPorFecha, CondicionesDeVenta,
  PedidosRealizados, Usuarios, TarjetasDeCredito;

{$R *.dfm}


   //*******// Powered by Yisus, root de nacimiento. //*******// neg tamb

procedure TFormPanelAdministracion.SpeedButton10Click(Sender: TObject);
begin
formVerIdioma.SpeedButton4.Enabled:=false;
formVerIdioma.SpeedButton4.Visible:=false;
formVerIdioma.SpeedButton1.Enabled:=true;
formVerIdioma.SpeedButton1.Visible:=true;
formVerIdioma.SpeedButton2.Enabled:=false;
formVerIdioma.SpeedButton2.Visible:=false;
FormVerIdioma.Label2.Caption:='Idioma: *';
formVerIdioma.Label4.Visible:=true;
FormVerIdioma.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton11Click(Sender: TObject);
begin
FormOperacionesCategoria.SpeedButton1.visible:=false;
FormOperacionesCategoria.SpeedButton4.visible:=false;
FormOperacionesCategoria.SpeedButton2.visible:=false;
FormOperacionesCategoria.SpeedButton1.enabled:=false;
FormOperacionesCategoria.SpeedButton4.enabled:=false;
FormOperacionesCategoria.SpeedButton2.enabled:=false;
FormOperacionesCategoria.Label4.Visible:=false;
FormOperacionesCategoria.label2.Caption:='Categoria:';
FormOperacionesCategoria.showmodal;
end;

procedure TFormPanelAdministracion.SpeedButton12Click(Sender: TObject);
begin
FormOperacionesCategoria.SpeedButton1.visible:=false;
FormOperacionesCategoria.SpeedButton4.visible:=false;
FormOperacionesCategoria.SpeedButton2.visible:=true;
FormOperacionesCategoria.SpeedButton1.enabled:=false;
FormOperacionesCategoria.SpeedButton4.enabled:=false;
FormOperacionesCategoria.SpeedButton2.enabled:=true;
FormOperacionesCategoria.Label4.Visible:=true;
FormOperacionesCategoria.label2.Caption:='Categoria: *';
FormOperacionesCategoria.showmodal;
end;

procedure TFormPanelAdministracion.SpeedButton13Click(Sender: TObject);
begin
   FormTodosLosPedidos.Panel1.Visible:=False;;
   FormTodosLosPedidos.Panel2.Visible:=True;
   FormTodosLosPedidos.Height:=387;
   FormTodosLosPedidos.Width:=811;
   FormTodosLosPedidos.SpeedButton2.Visible:=True;
   FormTodosLosPedidos.Label1.Visible:=True; //Habilito Label "Haga click en...."
   FormTodosLosPedidos.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton14Click(Sender: TObject);
begin

FormPanelAdministracion.Close;

end;


  //*******// Powered by Yisus, root de nacimiento. //*******//
procedure TFormPanelAdministracion.SpeedButton15Click(Sender: TObject);
begin
FormModifAdmin.SpeedButton1.Visible:=False; //Boton Modificar
FormModifAdmin.SpeedButton3.Visible:=False; //Boton Agregar
FormModifAdmin.SpeedButton4.Visible:=True; //Boton Eliminar
FormModifAdmin.label10.Visible:= False; //Label Agregar
FormModifAdmin.Label11.Visible:= True; //Label Eliminar
FormModifAdmin.Label7.Visible:= False; //Label Modificar
FormModifAdmin.Label12.Visible:= False; //Label Ver
FormModifAdmin.Label17.Visible:=False; //Atención
FormModifAdmin.Label18.Visible:=False; //Todos los campos son obligatorios
FormModifAdmin.ShowModal;
end;



procedure TFormPanelAdministracion.SpeedButton16Click(Sender: TObject);
begin
form4.speedbutton1.Enabled:=false;
form4.speedbutton1.visible:=false;
form4.speedbutton2.Enabled:=true;
form4.speedbutton2.visible:=true;
form4.speedbutton3.Enabled:=false;
form4.speedbutton3.visible:=false;
form4.speedbutton4.Enabled:=true;
form4.speedbutton4.visible:=true;
form4.SpeedButton5.Visible:=false;
form4.showmodal;
end;

procedure TFormPanelAdministracion.SpeedButton17Click(Sender: TObject);
begin
FormOperacionesEditorial.SpeedButton1.Visible:=false;
FormOperacionesEditorial.SpeedButton1.enabled:=false;
FormOperacionesEditorial.SpeedButton2.Visible:=false;
FormOperacionesEditorial.SpeedButton2.enabled:=false;
FormOperacionesEditorial.SpeedButton3.Visible:=true;
FormOperacionesEditorial.SpeedButton3.enabled:=true;
FormOperacionesEditorial.SpeedButton4.Visible:=true;
FormOperacionesEditorial.SpeedButton4.enabled:=true;
FormOperacionesEditorial.SpeedButton1.Visible:=false;
FormOperacionesEditorial.Label4.visible:=false;
FormOperacionesEditorial.Label1.Caption:='Editorial:';
FormOperacionesEditorial.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton18Click(Sender: TObject);
begin
Form3.SpeedButton3.Visible:=false;
Form3.SpeedButton1.Visible:=false;
Form3.SpeedButton4.Visible:=true;
Form3.Label6.Visible:=false;
Form3.Label3.Visible:=false;
Form3.Label4.Visible:=true;
Form3.Label7.Visible:=false;
Form3.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton19Click(Sender: TObject);
begin
formVerIdioma.SpeedButton4.Enabled:=true;
formVerIdioma.SpeedButton4.Visible:=true;
formVerIdioma.SpeedButton1.Enabled:=false;
formVerIdioma.SpeedButton1.Visible:=false;
formVerIdioma.SpeedButton2.Enabled:=false;
formVerIdioma.SpeedButton2.Visible:=false;
FormVerIdioma.Label2.Caption:='Idioma';
formVerIdioma.Label4.Visible:=false;
FormVerIdioma.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton1Click(Sender: TObject);
begin
FormModifAdmin.SpeedButton1.Visible:=False; //Boton Modificar
FormModifAdmin.SpeedButton3.Visible:=True; //Boton Agregar
FormModifAdmin.SpeedButton4.Visible:=False; //Boton Eliminar
FormModifAdmin.label10.Visible:= True; //Label Agregar
FormModifAdmin.Label11.Visible:= False; //Label Eliminar
FormModifAdmin.Label7.Visible:= False; //Label Modificar
FormModifAdmin.Label12.Visible:= False; //Label Ver
FormModifAdmin.Label17.Visible:=True; //Atención
FormModifAdmin.Label18.Visible:=True; //Todos los campos son obligatorios
FormModifAdmin.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton20Click(Sender: TObject);
begin
FormOperacionesCategoria.SpeedButton1.visible:=true;
FormOperacionesCategoria.SpeedButton4.visible:=false;
FormOperacionesCategoria.SpeedButton2.visible:=false;
FormOperacionesCategoria.SpeedButton1.enabled:=true;
FormOperacionesCategoria.SpeedButton4.enabled:=false;
FormOperacionesCategoria.SpeedButton2.enabled:=false;
FormOperacionesCategoria.Label4.Visible:=true;
FormOperacionesCategoria.label2.Caption:='Categoria: *';
FormOperacionesCategoria.showmodal;
end;


procedure TFormPanelAdministracion.SpeedButton22Click(Sender: TObject);
begin
FormModifAdmin.SpeedButton1.Visible:=False; //Boton Modificar
FormModifAdmin.SpeedButton3.Visible:=False; //Boton Agregar
FormModifAdmin.SpeedButton4.Visible:=False; //Boton Eliminar
FormModifAdmin.label10.Visible:= False; //Label Agregar
FormModifAdmin.Label11.Visible:= False; //Label Eliminar
FormModifAdmin.Label7.Visible:= False; //Label Modificar
FormModifAdmin.Label12.Visible:= True; //Label Ver
FormModifAdmin.Label17.Visible:=False; //Atención
FormModifAdmin.Label18.Visible:=False; //Todos los campos son obligatorios
FormModifAdmin.ShowModal;
end;
 procedure TFormPanelAdministracion.SpeedButton23Click(Sender: TObject);
begin
 form4.speedbutton1.Enabled:=false;
      form4.speedbutton1.visible:=false;
      form4.speedbutton2.Enabled:=true;
      form4.speedbutton2.visible:=true;
      form4.speedbutton3.Enabled:=false;
      form4.speedbutton3.visible:=false;
      form4.speedbutton4.Enabled:=false;
      form4.speedbutton4.visible:=false;
      form4.SpeedButton5.Visible:=false;
      form4.showmodal;
end;

procedure TFormPanelAdministracion.SpeedButton24Click(Sender: TObject);
begin
FormOperacionesEditorial.SpeedButton1.Visible:=false;
FormOperacionesEditorial.SpeedButton1.enabled:=false;
FormOperacionesEditorial.SpeedButton2.Visible:=false;
FormOperacionesEditorial.SpeedButton2.enabled:=false;
FormOperacionesEditorial.SpeedButton3.Visible:=true;
FormOperacionesEditorial.SpeedButton3.enabled:=true;
FormOperacionesEditorial.SpeedButton4.Visible:=false;
FormOperacionesEditorial.SpeedButton4.enabled:=false;
FormOperacionesEditorial.Label4.visible:=false;
FormOperacionesEditorial.Label1.Caption:='Editorial:';
FormOperacionesEditorial.ShowModal;
end;

//*******// Powered by Neg, Lider Auto Proclamado. //*******//
procedure TFormPanelAdministracion.SpeedButton25Click(Sender: TObject);
begin
Form3.SpeedButton3.Visible:=false;
Form3.SpeedButton1.Visible:=false;
Form3.SpeedButton4.Visible:=false;
Form3.Label6.Visible:=true;
Form3.Label3.Visible:=false;
Form3.Label4.Visible:=false;
Form3.Label7.Visible:=false;
Form3.ShowModal;
end;
 procedure TFormPanelAdministracion.SpeedButton26Click(Sender: TObject);
begin
formVerIdioma.SpeedButton4.Enabled:=false;
formVerIdioma.SpeedButton4.Visible:=false;
formVerIdioma.SpeedButton1.Enabled:=false;
formVerIdioma.SpeedButton1.Visible:=false;
formVerIdioma.SpeedButton2.Enabled:=false;
formVerIdioma.SpeedButton2.Visible:=false;
FormVerIdioma.Label2.Caption:='Idioma:';
formVerIdioma.Label4.Visible:=false;
FormVerIdioma.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton27Click(Sender: TObject);
begin
FormOperacionesCategoria.SpeedButton1.visible:=false;
FormOperacionesCategoria.SpeedButton4.visible:=true;
FormOperacionesCategoria.SpeedButton2.visible:=false;
FormOperacionesCategoria.SpeedButton1.enabled:=false;
FormOperacionesCategoria.SpeedButton4.enabled:=true;
FormOperacionesCategoria.SpeedButton2.enabled:=false;
FormOperacionesCategoria.Label4.Visible:=false;
FormOperacionesCategoria.label2.Caption:='Categoria:';
FormOperacionesCategoria.showmodal;
end;

procedure TFormPanelAdministracion.SpeedButton28Click(Sender: TObject);
begin
   FormTodosLosPedidos.Panel1.Visible:=False;;  //Deshabilito panel modificacion
   FormTodosLosPedidos.Panel2.Visible:=True;  //Muestro solo la vista
   FormTodosLosPedidos.Height:=387;
   FormTodosLosPedidos.Width:=811;
   FormTodosLosPedidos.SpeedButton2.Visible:=False; //Deshabilito boton modificar
   FormTodosLosPedidos.Label1.Visible:=False; //Deshabilito Label "Haga click en...."
   FormTodosLosPedidos.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton29Click(Sender: TObject);
begin
  FormPedidosPorFecha.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton2Click(Sender: TObject);
begin
form4.speedbutton1.Enabled:=false;
form4.speedbutton1.visible:=false;
form4.speedbutton2.Enabled:=true;
form4.speedbutton2.visible:=true;
form4.speedbutton3.Enabled:=true;
form4.speedbutton3.visible:=true;
form4.speedbutton4.Enabled:=false;
form4.speedbutton4.visible:=false;
form4.showmodal;
end;

procedure TFormPanelAdministracion.SpeedButton30Click(Sender: TObject);
begin
  FormModifCondicionesVenta.Memo1.ReadOnly:=False;
  FormModifCondicionesVenta.SpeedButton1.Visible:=True;
  FormModifCondicionesVenta.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton31Click(Sender: TObject);
begin
  formUsuarios.speedbutton1.Visible:=false;
  formusuarios.speedbutton1.Enabled:=false;
  formUsuarios.speedbutton2.Visible:=false;
  formusuarios.speedbutton2.Enabled:=false;
  formUsuarios.speedbutton4.Visible:=false;
  formusuarios.speedbutton4.Enabled:=false;
  formUsuarios.speedbutton5.Visible:=false;
  formusuarios.speedbutton5.Enabled:=false;

  formusuarios.showmodal;
end;

procedure TFormPanelAdministracion.SpeedButton32Click(Sender: TObject);
begin
  formtarjetasDeCredito.Edit1.ReadOnly:=true;
  formtarjetasDeCredito.SpeedButton1.Visible:=false;
  formtarjetasDeCredito.SpeedButton1.Enabled:=false;
  formtarjetasDeCredito.SpeedButton2.Visible:=false;
  formtarjetasDeCredito.SpeedButton2.Enabled:=false;

  formtarjetasDeCredito.showmodal;
end;

procedure TFormPanelAdministracion.SpeedButton33Click(Sender: TObject);
begin
  formUsuarios.speedbutton2.Visible:=false;
  formusuarios.speedbutton2.Enabled:=false;
  formusuarios.showmodal;
end;

procedure TFormPanelAdministracion.SpeedButton34Click(Sender: TObject);
begin
  formUsuarios.speedbutton1.Visible:=false;
  formusuarios.speedbutton1.Enabled:=false;
  formUsuarios.speedbutton4.Visible:=false;
  formusuarios.speedbutton4.Enabled:=false;
  formUsuarios.speedbutton5.Visible:=false;
  formusuarios.speedbutton5.Enabled:=false;
  formusuarios.showmodal;
end;

procedure TFormPanelAdministracion.SpeedButton35Click(Sender: TObject);
begin
  formtarjetasDeCredito.Edit1.Text:='';
  formtarjetasDeCredito.SpeedButton2.Visible:=false;
  formtarjetasDeCredito.SpeedButton2.Enabled:=false;
  formtarjetasDeCredito.showmodal;
end;

procedure TFormPanelAdministracion.SpeedButton36Click(Sender: TObject);
begin
  formtarjetasDeCredito.Edit1.ReadOnly:=true;
  formtarjetasDeCredito.SpeedButton1.Visible:=false;
  formtarjetasDeCredito.SpeedButton1.Enabled:=false;

  formtarjetasDeCredito.showmodal;
end;

procedure TFormPanelAdministracion.SpeedButton3Click(Sender: TObject);
begin
FormOperacionesEditorial.SpeedButton1.Visible:=true;
FormOperacionesEditorial.SpeedButton1.enabled:=true;
FormOperacionesEditorial.SpeedButton2.Visible:=false;
FormOperacionesEditorial.SpeedButton2.enabled:=false;
FormOperacionesEditorial.SpeedButton3.Visible:=true;
FormOperacionesEditorial.SpeedButton3.enabled:=true;
FormOperacionesEditorial.SpeedButton4.Visible:=false;
FormOperacionesEditorial.SpeedButton4.enabled:=false;
FormOperacionesEditorial.Label4.visible:=true;
FormOperacionesEditorial.Label1.Caption:='Editorial: *';
FormOperacionesEditorial.ShowModal;
end;

//*******// Powered by Neg, L //*******//
procedure TFormPanelAdministracion.SpeedButton4Click(Sender: TObject);
begin
Form3.SpeedButton3.Visible:=true;
Form3.SpeedButton1.Visible:=false;
Form3.SpeedButton4.Visible:=false;
Form3.Label6.Visible:=false;
Form3.Label3.Visible:=false;
Form3.Label4.Visible:=false;
Form3.Label7.Visible:=true;
Form3.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton5Click(Sender: TObject);
begin
formVerIdioma.SpeedButton1.Enabled:=false;
formVerIdioma.SpeedButton1.Visible:=false;
formVerIdioma.SpeedButton4.Enabled:=false;
formVerIdioma.SpeedButton4.Visible:=false;
formVerIdioma.SpeedButton2.Enabled:=true;
formVerIdioma.SpeedButton2.Visible:=true;
FormVerIdioma.Label2.Caption:='Idioma: *';
formVerIdioma.Label4.Visible:=true;
FormVerIdioma.ShowModal;
end;

//*******// Powered by Yisus, root de nacimiento. //*******//
procedure TFormPanelAdministracion.SpeedButton6Click(Sender: TObject);
begin
FormModifAdmin.SpeedButton1.Visible:=True; //Boton Modificar
FormModifAdmin.SpeedButton3.Visible:=False; //Boton Agregar
FormModifAdmin.SpeedButton4.Visible:=False; //Boton Eliminar
FormModifAdmin.label10.Visible:= False; //Label Agregar
FormModifAdmin.Label11.Visible:= False; //Label Eliminar
FormModifAdmin.Label7.Visible:= True; //Label Modificar
FormModifAdmin.Label12.Visible:= False; //Label Ver
FormModifAdmin.Label17.Visible:=True; //Atención
FormModifAdmin.Label18.Visible:=True; //Todos los campos son obligatorios
FormModifAdmin.ShowModal;
end;
 procedure TFormPanelAdministracion.SpeedButton7Click(Sender: TObject);
begin
form4.speedbutton1.Enabled:=true;
form4.speedbutton1.visible:=true;
form4.speedbutton2.Enabled:=true;
form4.speedbutton2.visible:=true;
form4.speedbutton3.Enabled:=false;
form4.speedbutton3.visible:=false;
form4.speedbutton4.Enabled:=false;
form4.speedbutton4.visible:=false;
form4.showmodal;
end;

procedure TFormPanelAdministracion.SpeedButton8Click(Sender: TObject);
begin
FormOperacionesEditorial.SpeedButton1.Visible:=false;
FormOperacionesEditorial.SpeedButton1.enabled:=false;
FormOperacionesEditorial.SpeedButton2.Visible:=true;
FormOperacionesEditorial.SpeedButton2.enabled:=true;
FormOperacionesEditorial.SpeedButton3.Visible:=true;
FormOperacionesEditorial.SpeedButton3.enabled:=true;
FormOperacionesEditorial.SpeedButton4.Visible:=false;
FormOperacionesEditorial.SpeedButton4.enabled:=false;
FormOperacionesEditorial.Label4.visible:=true;
FormOperacionesEditorial.Label1.Caption:='Editorial: *';
FormOperacionesEditorial.ShowModal;
end;

//*******// Powered by Neg, Lider Auto Proclamado. //*******//
procedure TFormPanelAdministracion.SpeedButton9Click(Sender: TObject);
begin
Form3.SpeedButton3.Visible:=false;
Form3.SpeedButton1.Visible:=true;
Form3.SpeedButton4.Visible:=false;
Form3.Label6.Visible:=false;
Form3.Label3.Visible:=true;
Form3.Label4.Visible:=false;
Form3.Label7.Visible:=false;
Form3.ShowModal;
end;



end.
