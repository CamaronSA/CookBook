unit PanelAdministracion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ModifAdmin;

type
  TFormPanelAdministracion = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel1: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Label1: TLabel;
    SpeedButton14: TSpeedButton;
    Label3: TLabel;
    Panel3: TPanel;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    Label4: TLabel;
    Panel4: TPanel;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    Label5: TLabel;
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPanelAdministracion: TFormPanelAdministracion;

implementation

{$R *.dfm}


   //*******// Powered by Yisus, root de nacimiento. //*******//
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
FormModifAdmin.Label2.Visible:= False; //Label Ver
FormModifAdmin.ShowModal;
end;



  procedure TFormPanelAdministracion.SpeedButton1Click(Sender: TObject);
begin
FormModifAdmin.SpeedButton1.Visible:=False; //Boton Modificar
FormModifAdmin.SpeedButton3.Visible:=True; //Boton Agregar
FormModifAdmin.SpeedButton4.Visible:=False; //Boton Eliminar
FormModifAdmin.label10.Visible:= True; //Label Agregar
FormModifAdmin.Label11.Visible:= False; //Label Eliminar
FormModifAdmin.Label7.Visible:= False; //Label Modificar
FormModifAdmin.Label2.Visible:= False; //Label Ver
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
FormModifAdmin.Label2.Visible:= True; //Label Ver
FormModifAdmin.ShowModal;
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
FormModifAdmin.Label2.Visible:= False; //Label Ver
FormModifAdmin.ShowModal;
end;

end.
