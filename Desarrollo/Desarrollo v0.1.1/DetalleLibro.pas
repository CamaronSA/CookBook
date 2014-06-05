unit DetalleLibro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Mask, DBCtrls, StdCtrls, ExtCtrls;

type
  TFormDetalleLibro = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Image1: TImage;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDetalleLibro: TFormDetalleLibro;

implementation

uses DetalleAutor, DetalleEditorial;

{$R *.dfm}

procedure TFormDetalleLibro.SpeedButton2Click(Sender: TObject);
begin
  FormDetalleLibro.Close;
end;

procedure TFormDetalleLibro.SpeedButton3Click(Sender: TObject);
begin
  FormDetalleAutor.showmodal;
end;

procedure TFormDetalleLibro.SpeedButton4Click(Sender: TObject);
begin
  FormDetalleEditorial.showmodal;
end;

end.