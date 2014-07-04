unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, ADODB;

type
  ENoHayTarjeta = class (Exception);
  EBlanco = class (Exception);
  TForm8 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    ClaroQueSiCampeon: TADOQuery;
    EncontrarTarjeta: TADOQuery;
    Label2: TLabel;
    Label5: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit1, CatalogoLibros, Login;

{$R *.dfm}

Procedure LimpiarCampos (E1,E2 :TEdit);

begin
  E1.text:='';
  E2.text:='';
end;

Procedure CargarComboBox(C1,C2:TComboBox);
begin
 // Close;
 // CampoEtiquetaComboBox.SQL.Text:= 'Select NombreEtiqueta from Etiqueta';
 // CampoEtiquetaComboBox.Open;
 // CampoEtiquetaComboBox.Active:=True;
 //    while not (CampoEtiquetaComboBox.eof) do
 //      Begin
 //        ComboBox1.items.Add(DataModule1.CampoEtiquetaComboBox.Fields[0].text);
 //        CampoEtiquetaComboBox.Next;
 //      End;
end;

procedure TForm8.ComboBox1Change(Sender: TObject);
begin
  Label1.Font.Color:=clBlack;
  label2.Visible:=false;
end;

procedure TForm8.Edit1Change(Sender: TObject);
begin
  Label3.Font.Color:=clBlack;
  label2.Visible:=false;
end;

procedure TForm8.Edit2Change(Sender: TObject);
begin
  Label4.Font.Color:=clBlack;
  label2.Visible:=false;
end;

procedure TForm8.FormActivate(Sender: TObject);
begin
 //Activo la tabla del nico menna por que si no anda :D
 DataModule1.ADOTarjetas.Active:=true;
 //OnClick Cargo los Bancos Dispoibles para garpar .                 <--Revisar Todo
  while not (DataModule1.ADOTarjetas.Eof) do
   Begin
     ComboBox1.Items.Add(DataModule1.ADOTarjetas.Fields[1].text);
     DataModule1.ADOTarjetas.Next;
   End
end;

procedure TForm8.SpeedButton1Click(Sender: TObject);
var
  aux:lista;
  t:String;
  buttonSelected,cont,cont1:integer;
begin
  buttonSelected := messageDlg('¿Realmente Desea confirmar el carrito?', mtWarning, mbOkCancel, 0);
  if buttonSelected = mrOk then begin
    try
      //no tiene que quedar el comboBox Sin tarjeta
      if (ComboBox1.Text = '') then
        raise ENoHayTarjeta.Create('Elija una Tarjeta ')
      else
        t:=ComboBox1.Text;
      EncontrarTarjeta.Close;
      //Este busca el usuario :p
      ClaroQueSiCampeon.SQL.Text:='Select DNI From Cliente Where (Usuario =:Dato)';
      ClaroQueSiCampeon.close;
      ClaroQueSiCampeon.Parameters.ParamByName('Dato').Value:=UsuarioParaCarro;
      ClaroQueSiCampeon.Open;
      EncontrarTarjeta.SQL.Text:='Select IDTarjeta From Tarjetas Where (Nombre =:Dato1)';
      EncontrarTarjeta.Parameters.ParamByName('Dato1').value:=t;
      EncontrarTarjeta.Open;
      EncontrarTarjeta.Active:=True;
      Aux:=L;
      while ( aux <> nil ) do
        begin
           ClaroQueSiCampeon.Active:=true;
           DataModule1.ADOPedidos.Append;
           DataModule1.ADOPedidos.FieldByName('DNI').asInteger:=ClaroQueSiCampeon.FieldByName('DNI').AsInteger;
           DataModule1.ADOPedidos.FieldByName('ISBN').AsInteger:=aux.Datos;
           DataModule1.ADOPedidos.FieldByName('Estado').AsString:='Pendiente';
           DataModule1.ADOPedidos.FieldByName('FechaDeInicio').Value:= now();
           DataModule1.ADOPedidos.FieldByName('IDTarjeta').AsInteger:=EncontrarTarjeta.FieldByName('IDTarjeta').AsInteger;
           if ((edit1.Text = '' ) or (Edit2.Text = '')) then
              raise EBlanco.Create('No deje campos en Blanco')
           else
              DataModule1.ADOPedidos.FieldByName('NroTarjeta').AsString:= edit1.Text+edit2.Text;
           DataModule1.ADOPedidos.Post;
           //Proximo de la lista.
           aux:=aux.Sig;
        end;
          //Limpia edits
         LimpiarCampos (Edit1,Edit2);
         //Limpia el carrito
         showmessage('Su pedido esta siendo procesado, en breve sera informado, sino verifique en el menu transacciones ,muchas gracias.');
         for cont :=0 to FormCatalogoLibros.Stringgrid1.colcount-1 do
         for cont1 :=0 to FormCatalogoLibros.stringgrid1.rowcount-1 do
            FormCatalogoLibros.stringgrid1.Cells[cont,cont1] := '';
         FormCatalogoLibros.StringGrid1.Rowcount:=1;
          //Limpia la lista
         L:=nil;
         aux:=nil;
         close;
  except
     on E: EBlanco do
      begin
      //aca el Color de los labels
        DataModule1.ADOPedidos.Cancel;
        Showmessage(E.Message);
        label2.Visible:=true;
        if (edit1.Text = '') then
          Label3.Font.Color:=clred;
        if (Edit2.Text = '') then
          Label4.Font.Color:=clred;
      end;
      //aca el Color de los labels
      on E: ENoHayTarjeta do
        begin
          Label1.Font.Color:=clred;
          label2.Visible:=true;
          DataModule1.ADOPedidos.Cancel;
          ShowMessage(E.Message);
        end;
  end;

end
 else     //Esto por si cancela la operacion antes de tiempo
    begin
      DataModule1.ADOPedidos.cancel;

    end;
end;

procedure TForm8.SpeedButton2Click(Sender: TObject);
begin
  Label1.Font.Color:=clblack;
  Label3.Font.Color:=clblack;
  Label4.Font.Color:=clblack;
  Label2.visible:=false;
  LimpiarCampos (Edit1,Edit2);
  DataModule1.ADOPedidos.Cancel;
  close;
end;

end.

