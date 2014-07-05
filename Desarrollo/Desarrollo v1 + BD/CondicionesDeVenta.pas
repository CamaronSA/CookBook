unit CondicionesDeVenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TFormModifCondicionesVenta = class(TForm)
    Memo1: TMemo;
    Label12: TLabel;
    CheckBox1: TCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure Letras(Sender: TObject; var Key: Char);
    procedure LetrasYEspacio(Sender: TObject; var Key: Char);
    procedure LetrasNumnerosETC(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure LetrasSimbolosYEspacio(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormModifCondicionesVenta: TFormModifCondicionesVenta;

implementation

uses Unit8;

{$R *.dfm}

//Solo Letras
procedure TFormModifCondicionesVenta.FormActivate(Sender: TObject);
begin
  Memo1.Lines.LoadFromFile('condicionesventa.txt');
end;

procedure TFormModifCondicionesVenta.Letras(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8]) then
    key := #0;
end;

//Solo Letras y ESPACIO
procedure TFormModifCondicionesVenta.LetrasYEspacio(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8,' ']) then
    key := #0;
end;

//Solo Letras y ESPACIO
procedure TFormModifCondicionesVenta.LetrasSimbolosYEspacio(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8,' ','.',',',#13,'"','�'..'�','�'..'�']) then
    key := #0;
end;

procedure TFormModifCondicionesVenta.SpeedButton1Click(Sender: TObject);
begin
   Memo1.Lines.SaveToFile('condicionesventa.txt');
   ShowMessage('Condiciones modificadas correctamente');
   Close;
end;

procedure TFormModifCondicionesVenta.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormModifCondicionesVenta.SpeedButton3Click(Sender: TObject);
begin
  if(checkBox1.Checked = true) then
    begin
      form8.showmodal;
      close;
    end
  else
    showmessage('Acepte las condiciones de venta antes de continuar con la compra');
end;

//Letras, numeros, @ , - , _ y .
procedure TFormModifCondicionesVenta.LetrasNumnerosETC(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8,'_','-','@','0'..'9','.']) then
    key := #0;
end;

end.
