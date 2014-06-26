unit AgregoCorrectamenteAlgo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFrmMensajeConTemporizador = class(TForm)
    TimerEscondeVentana: TTimer;
    Panel1: TPanel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure TimerEscondeVentanaTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMensajeConTemporizador: TFrmMensajeConTemporizador;

implementation

{$R *.dfm}

procedure TFrmMensajeConTemporizador.FormShow(Sender: TObject);
begin
  TimerEscondeVentana.Enabled:= True;
end;


procedure TFrmMensajeConTemporizador.TimerEscondeVentanaTimer(
  Sender: TObject);
begin
  FrmMensajeConTemporizador.Close;
  TimerEscondeVentana.Enabled := False;
end;


end.
