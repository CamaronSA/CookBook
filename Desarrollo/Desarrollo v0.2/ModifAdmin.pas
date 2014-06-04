unit ModifAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit1, StdCtrls, ExtCtrls, Mask, DBCtrls, Buttons, dblookup, Grids,
  DBGrids;

type
  TFormModifAdmin = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    DBComboBox1: TDBComboBox;
    Edit2: TEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormModifAdmin: TFormModifAdmin;

implementation

{$R *.dfm}


procedure TFormModifAdmin.SpeedButton1Click(Sender: TObject);
var buttonSelected:integer;
begin
  buttonSelected:=messageDlg('¿Realmente desea modificar el usuario?',mtError,mbOkCancel,0);
  if buttonSelected= mrOk then
    begin
  
    end;
  if buttonSelected= mrCancel then
    FormModifAdmin.Close;
end;

procedure TFormModifAdmin.SpeedButton2Click(Sender: TObject);
begin
FormModifAdmin.Close;
end;


end.
