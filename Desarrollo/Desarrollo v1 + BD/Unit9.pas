unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}
procedure TForm9.FormShow(Sender: TObject);
begin
 timer1.Enabled:= true;
end;





procedure TForm9.Timer1Timer(Sender: TObject);
begin
form9.close;
  Timer1.Enabled:=False;
end;

end.
