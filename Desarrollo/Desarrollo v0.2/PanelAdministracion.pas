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
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPanelAdministracion: TFormPanelAdministracion;

implementation

{$R *.dfm}



procedure TFormPanelAdministracion.SpeedButton14Click(Sender: TObject);
begin
FormPanelAdministracion.Close;

end;

procedure TFormPanelAdministracion.SpeedButton6Click(Sender: TObject);
begin
FormModifAdmin.ShowModal;
end;

end.