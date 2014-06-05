unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids,
  PanelAdministracion;

type
  TFormPrincipal = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label2: TLabel;
    DBImage1: TDBImage;
    DBImage2: TDBImage;
    DBImage3: TDBImage;
    DBImage4: TDBImage;
    DBImage5: TDBImage;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses CatalogoLibros, CarritoDeCompras, Contacto, Login;

{$R *.dfm}

procedure TFormPrincipal.SpeedButton1Click(Sender: TObject);
begin
  FormCatalogoLibros.showmodal;
end;

procedure TFormPrincipal.SpeedButton2Click(Sender: TObject);
begin
  FormCarritoDeCompras.showmodal;
end;

procedure TFormPrincipal.SpeedButton3Click(Sender: TObject);
begin
  FormCatalogoLibros.showmodal;
end;

procedure TFormPrincipal.SpeedButton4Click(Sender: TObject);
begin
  FormContacto.showmodal;
end;

procedure TFormPrincipal.SpeedButton5Click(Sender: TObject);
begin
  FormPrincipal.Close;
end;

procedure TFormPrincipal.SpeedButton6Click(Sender: TObject);
begin
FormPanelAdministracion.showmodal;
end;

procedure TFormPrincipal.SpeedButton7Click(Sender: TObject);
begin
  FormPrincipal.Close;
  FormLogin.Close;
end;

end.
