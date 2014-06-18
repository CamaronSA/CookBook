unit PanelAdministracion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ModifAdmin, OperacionesAutor,
  OperacionesEditorial;

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
    SpeedButton10: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Label1: TLabel;
    SpeedButton14: TSpeedButton;
    Label3: TLabel;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
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
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPanelAdministracion: TFormPanelAdministracion;

implementation

uses OperacionesIdioma, ModificarLibro, Usuarios, Unit1;

{$R *.dfm}


   //*******// Powered by Yisus, root de nacimiento. //*******//
procedure TFormPanelAdministracion.SpeedButton10Click(Sender: TObject);
begin
formVerIdioma.SpeedButton4.Enabled:=false;
formVerIdioma.SpeedButton4.Visible:=false;
formVerIdioma.SpeedButton1.Enabled:=true;
formVerIdioma.SpeedButton1.Visible:=true;
formVerIdioma.SpeedButton2.Enabled:=false;
formVerIdioma.SpeedButton2.Visible:=false;
FormVerIdioma.ShowModal;
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
  FormModifAdmin.ShowModal;
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
  FormOperacionesEditorial.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton18Click(Sender: TObject);
begin
// desabilito lo que no necesito

  formusuarios.label18.Visible:=false;
  formusuarios.speedbutton1.Enabled:=false;
  formusuarios.speedbutton1.Visible:=false;

  formusuarios.edit2.ReadOnly:=false;
  formusuarios.edit3.ReadOnly:=false;
  formusuarios.edit4.ReadOnly:=false;
  formusuarios.edit5.ReadOnly:=false;
  formusuarios.edit6.ReadOnly:=false;
  formusuarios.edit7.ReadOnly:=false;
  formusuarios.edit8.ReadOnly:=false;
  formusuarios.edit9.ReadOnly:=false;
  formusuarios.edit10.ReadOnly:=false;
  formusuarios.edit11.ReadOnly:=false;
  formusuarios.edit12.ReadOnly:=false;
  formusuarios.edit13.ReadOnly:=false;
  formusuarios.edit14.ReadOnly:=false;
  formusuarios.edit16.ReadOnly:=false;
  formusuarios.edit1.Text:='';

// muestro los datos de la base de datos en los esdits

  formusuarios.edit2.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('DNI').asinteger);
  formusuarios.edit3.Text:= unit1.DataModule1.ADOCliente.FieldByName('nombre').asstring;
  formusuarios.edit4.Text:= unit1.DataModule1.ADOCliente.FieldByName('apellido').asstring;
  formusuarios.edit5.Text:= unit1.DataModule1.ADOCliente.FieldByName('usuario').asstring;
  formusuarios.edit6.Text:= unit1.DataModule1.ADOCliente.FieldByName('clave').asstring;
  formusuarios.edit7.Text:= unit1.DataModule1.ADOCliente.FieldByName('calle').asstring;
  formusuarios.edit8.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('nro').AsInteger);
  formusuarios.edit9.Text:= unit1.DataModule1.ADOCliente.FieldByName('localidad').asstring;
  formusuarios.edit10.Text:= unit1.DataModule1.ADOCliente.FieldByName('provincia').asstring;
  formusuarios.edit11.Text:= unit1.DataModule1.ADOCliente.FieldByName('pais').asstring;
  formusuarios.edit12.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fecha Nacimiento').AsDateTime);
  formusuarios.edit13.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fechadeiniciocliente').asdatetime);
  formusuarios.edit14.Text:= unit1.DataModule1.ADOCliente.FieldByName('mail').asstring;
  formusuarios.edit16.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('telefono').Asinteger);



  formusuarios.ShowModal;
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
  FormModifAdmin.ShowModal;
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
  FormModifAdmin.ShowModal;
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
  FormVerIdioma.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton27Click(Sender: TObject);
begin
// hago que solo se pueda leer poniendo todo en modo lectura nomas

  formusuarios.label18.Visible:=false;
  formusuarios.speedbutton1.Enabled:=false;
  formusuarios.speedbutton1.Visible:=false;
  formusuarios.speedbutton2.Enabled:=false;
  formusuarios.speedbutton2.Visible:=false;
  formusuarios.edit2.ReadOnly:=true;
  formusuarios.edit3.ReadOnly:=true;
  formusuarios.edit4.ReadOnly:=true;
  formusuarios.edit5.ReadOnly:=true;
  formusuarios.edit6.ReadOnly:=true;
  formusuarios.edit7.ReadOnly:=true;
  formusuarios.edit8.ReadOnly:=true;
  formusuarios.edit9.ReadOnly:=true;
  formusuarios.edit10.ReadOnly:=true;
  formusuarios.edit11.ReadOnly:=true;
  formusuarios.edit12.ReadOnly:=true;
  formusuarios.edit13.ReadOnly:=true;
  formusuarios.edit14.ReadOnly:=true;
  formusuarios.edit16.ReadOnly:=true;
  formusuarios.edit1.Text:='';

//hago que en los edits se vean los datos de la base de datos

  formusuarios.edit2.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('DNI').asinteger);
  formusuarios.edit3.Text:= unit1.DataModule1.ADOCliente.FieldByName('nombre').asstring;
  formusuarios.edit4.Text:= unit1.DataModule1.ADOCliente.FieldByName('apellido').asstring;
  formusuarios.edit5.Text:= unit1.DataModule1.ADOCliente.FieldByName('usuario').asstring;
  formusuarios.edit6.Text:= unit1.DataModule1.ADOCliente.FieldByName('clave').asstring;
  formusuarios.edit7.Text:= unit1.DataModule1.ADOCliente.FieldByName('calle').asstring;
  formusuarios.edit8.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('nro').AsInteger);
  formusuarios.edit9.Text:= unit1.DataModule1.ADOCliente.FieldByName('localidad').asstring;
  formusuarios.edit10.Text:= unit1.DataModule1.ADOCliente.FieldByName('provincia').asstring;
  formusuarios.edit11.Text:= unit1.DataModule1.ADOCliente.FieldByName('pais').asstring;
  formusuarios.edit12.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fecha Nacimiento').AsDateTime);
  formusuarios.edit13.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fechadeiniciocliente').asdatetime);
  formusuarios.edit14.Text:= unit1.DataModule1.ADOCliente.FieldByName('mail').asstring;
  formusuarios.edit16.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('telefono').Asinteger);
  formusuarios.ShowModal;
end;

procedure TFormPanelAdministracion.SpeedButton29Click(Sender: TObject);
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

procedure TFormPanelAdministracion.SpeedButton30Click(Sender: TObject);
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
FormModifAdmin.ShowModal;
end;
 procedure TFormPanelAdministracion.SpeedButton7Click(Sender: TObject);
begin
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
FormOperacionesEditorial.ShowModal;
end;

//*******// Powered by Neg, Lider Auto Proclamado. //*******//
procedure TFormPanelAdministracion.SpeedButton9Click(Sender: TObject);
begin

// desabilito los botones innecesarios
// porngo el cartel en alerta apagado

  formusuarios.label18.Visible:=false;
  formusuarios.speedbutton2.Enabled:=false;
  formusuarios.speedbutton2.Visible:=false;

  formusuarios.edit2.ReadOnly:=false;
  formusuarios.edit3.ReadOnly:=false;
  formusuarios.edit4.ReadOnly:=false;
  formusuarios.edit5.ReadOnly:=false;
  formusuarios.edit6.ReadOnly:=false;
  formusuarios.edit7.ReadOnly:=false;
  formusuarios.edit8.ReadOnly:=false;
  formusuarios.edit9.ReadOnly:=false;
  formusuarios.edit10.ReadOnly:=false;
  formusuarios.edit11.ReadOnly:=false;
  formusuarios.edit12.ReadOnly:=false;
  formusuarios.edit13.ReadOnly:=false;
  formusuarios.edit14.ReadOnly:=false;
  formusuarios.edit16.ReadOnly:=false;
  formusuarios.edit1.Text:='';

// muestro los datos de la base de datos en los edits

  formusuarios.edit2.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('DNI').asinteger);
  formusuarios.edit3.Text:= unit1.DataModule1.ADOCliente.FieldByName('nombre').asstring;
  formusuarios.edit4.Text:= unit1.DataModule1.ADOCliente.FieldByName('apellido').asstring;
  formusuarios.edit5.Text:= unit1.DataModule1.ADOCliente.FieldByName('usuario').asstring;
  formusuarios.edit6.Text:= unit1.DataModule1.ADOCliente.FieldByName('clave').asstring;
  formusuarios.edit7.Text:= unit1.DataModule1.ADOCliente.FieldByName('calle').asstring;
  formusuarios.edit8.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('nro').AsInteger);
  formusuarios.edit9.Text:= unit1.DataModule1.ADOCliente.FieldByName('localidad').asstring;
  formusuarios.edit10.Text:= unit1.DataModule1.ADOCliente.FieldByName('provincia').asstring;
  formusuarios.edit11.Text:= unit1.DataModule1.ADOCliente.FieldByName('pais').asstring;
  formusuarios.edit12.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fecha Nacimiento').AsDateTime);
  formusuarios.edit13.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fechadeiniciocliente').asdatetime);
  formusuarios.edit14.Text:= unit1.DataModule1.ADOCliente.FieldByName('mail').asstring;
  formusuarios.edit16.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('telefono').Asinteger);
  formusuarios.ShowModal;
end;

end.
