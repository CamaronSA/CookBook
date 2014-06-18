unit CatalogoLibros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, Mask, DBCtrls;

type
  TFormCatalogoLibros = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCatalogoLibros: TFormCatalogoLibros;

implementation

uses DetalleLibro, Unit1;

{$R *.dfm}

procedure TFormCatalogoLibros.DBEdit1Change(Sender: TObject);
var
  filtro : string;
begin
    filtro := TRIM (edit1.text);
    if filtro<>'' then
    begin
        if RadioButton1.Checked=True then begin
          DataModule1.ADOCliente.Filter := 'Nombre LIKE ''%'+filtro+'%'''; // (*)
          DataModule1.ADOCliente.Filtered := true;
        end;

        if RadioButton2.Checked=True then begin
          DataModule1.ADOCliente.Filter := 'Apellido LIKE ''%'+filtro+'%'''; // (*)
          DataModule1.ADOCliente.Filtered := true;
        end;

        if RadioButton3.Checked=True then begin
          DataModule1.ADOCliente.Filter := 'Localidad LIKE ''%'+filtro+'%'''; // (*)
          DataModule1.ADOCliente.Filtered := true;
        end;
   end
   else
     DataModule1.ADOCliente.Filtered := false;
end;

procedure TFormCatalogoLibros.Edit1Change(Sender: TObject);
var
  filtro : string;
begin
    filtro := TRIM (edit1.text);
    if filtro<>'' then
    begin
        if RadioButton1.Checked=True then begin
          DataModule1.ADOlibro.Filter := 'Autor LIKE ''%'+filtro+'%'''; // (*)
          DataModule1.ADOlibro.Filtered := true;
        end;

        if RadioButton2.Checked=True then begin
          DataModule1.ADOlibro.Filter := 'Titulo LIKE ''%'+filtro+'%'''; // (*)
          DataModule1.ADOlibro.Filtered := true;
        end;

        if RadioButton3.Checked=True then begin
          DataModule1.ADOlibro.Filter := 'editorial LIKE ''%'+filtro+'%'''; // (*)
          DataModule1.ADOlibro.Filtered := true;
        end;

        if RadioButton4.Checked=True then begin
          DataModule1.ADOlibro.Filter := 'Etiqueta LIKE ''%'+filtro+'%'''; // (*)
          DataModule1.ADOlibro.Filtered := true;
        end;
   end
   else
     DataModule1.ADOlibro.Filtered := false;
end;

procedure TFormCatalogoLibros.SpeedButton2Click(Sender: TObject);
begin
  FormDetalleLibro.showmodal;
end;

procedure TFormCatalogoLibros.SpeedButton3Click(Sender: TObject);
begin
  FormCatalogoLibros.Close;
end;

end.
