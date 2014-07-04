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
    procedure Letras(Sender: TObject; var Key: Char);
    procedure LetrasYEspacio(Sender: TObject; var Key: Char);
    procedure LetrasNumnerosETC(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure LetrasSimbolosYEspacio(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormModifCondicionesVenta: TFormModifCondicionesVenta;

implementation

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
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8,' ','.',',',#13,'"','á'..'ú','Á'..'Ú']) then
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

//Letras, numeros, @ , - , _ y .
procedure TFormModifCondicionesVenta.LetrasNumnerosETC(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8,'_','-','@','0'..'9','.']) then
    key := #0;
end;

end.
