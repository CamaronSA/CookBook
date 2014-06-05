unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids,
  Menus;

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
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Ayuda1: TMenuItem;
    Salir1: TMenuItem;
    Nuevo1: TMenuItem;
    Edicin1: TMenuItem;
    DatosPersonales1: TMenuItem;
    Contrasea1: TMenuItem;
    Acercade1: TMenuItem;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
    procedure DBImage2DblClick(Sender: TObject);
    procedure DBImage3Click(Sender: TObject);
    procedure DBImage4Click(Sender: TObject);
    procedure DBImage5Click(Sender: TObject);
    procedure DatosPersonales1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses CatalogoLibros, CarritoDeCompras, Contacto, DetalleLibro, DetalleUsuario;

{$R *.dfm}

procedure TFormPrincipal.DatosPersonales1Click(Sender: TObject);
begin
  FormDetalleUsuario.showmodal;
end;

procedure TFormPrincipal.DBImage1DblClick(Sender: TObject);
begin
  FormDetalleLibro.showmodal;
end;

procedure TFormPrincipal.DBImage2DblClick(Sender: TObject);
begin
  FormDetalleLibro.showmodal;
end;

procedure TFormPrincipal.DBImage3Click(Sender: TObject);
begin
  FormDetalleLibro.showmodal;
end;

procedure TFormPrincipal.DBImage4Click(Sender: TObject);
begin
  FormDetalleLibro.showmodal;
end;

procedure TFormPrincipal.DBImage5Click(Sender: TObject);
begin
  FormDetalleLibro.showmodal;
end;

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
  FormDetalleLibro.showmodal;
end;

procedure TFormPrincipal.SpeedButton4Click(Sender: TObject);
begin
  FormContacto.showmodal;
end;

procedure TFormPrincipal.SpeedButton5Click(Sender: TObject);
begin
  FormPrincipal.Close;
end;

end.