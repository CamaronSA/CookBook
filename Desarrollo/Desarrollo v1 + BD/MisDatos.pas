unit MisDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, DBCtrls;

type
  EEspacioBlanco=class(Exception);
  ESinArroba=class(Exception);
  EExisteDNI=class(Exception);
  EExisteUsuario=class(Exception);
  EFueraDeRango=class(Exception);
  TFormMisDatos = class(TForm)
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Edit4: TEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label29: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label6: TLabel;
    DBText4: TDBText;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Letras(Sender: TObject; var Key: Char);
    procedure LetrasYEspacio(Sender: TObject; var Key: Char);
    procedure LetrasNumnerosETC(Sender: TObject; var Key: Char);
    procedure PonerLabelsNegro;
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMisDatos: TFormMisDatos;

implementation

uses Unit1, Login, Principal;

{$R *.dfm}

procedure TFormMisDatos.PonerLabelsNegro;
begin
  //Pongo los labels en negro
  Label1.Font.Color:=ClBlack;
  Label2.Font.Color:=ClBlack;
  Label3.Font.Color:=ClBlack;
  Label4.Font.Color:=ClBlack;
  Label5.Font.Color:=ClBlack;
  Label7.Font.Color:=ClBlack;
  Label8.Font.Color:=ClBlack;
  Label9.Font.Color:=ClBlack;
  Label10.Font.Color:=ClBlack;
  Label11.Font.Color:=ClBlack;
  Label13.Font.Color:=ClBlack;
  Label14.Font.Color:=ClBlack;
end;


//*******// Powered by Yisus, root de nacimiento. //*******//
                       //&&&&&&&&&//                       // Encontrar ARROBA @
//*******// Powered by NEG, lider autoprogramado //*******//
function EncontrarArroba (Palabra: String):Boolean;
var Aux:Boolean; Max:Integer;
begin
Max:=Length(Palabra);
Aux:=False;
while (Max>-1) and (Aux<>True) do begin
  if (Palabra[Max] = '@') then
    Aux:=True;
  Max:=Max-1;
end;
Result:=Aux;
end;

//Solo Letras
procedure TFormMisDatos.Letras(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8]) then
    key := #0;
end;

//Solo Letras y ESPACIO
procedure TFormMisDatos.LetrasYEspacio(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8,' ']) then
    key := #0;
end;

//Letras, numeros, @ , - , _ y .
procedure TFormMisDatos.LetrasNumnerosETC(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8,'_','-','@','0'..'9','.']) then
    key := #0;
end;

procedure TFormMisDatos.DateTimePicker1Change(Sender: TObject);
begin
Label3.Font.Color:=ClBlack;
Label15.Visible:=False;
end;

procedure TFormMisDatos.Edit10Change(Sender: TObject);
begin
Label13.Font.Color:=ClBlack;
Label15.Visible:=False;
end;

procedure TFormMisDatos.Edit11Change(Sender: TObject);
begin
Label8.Font.Color:=ClBlack;
Label15.Visible:=False;
end;

procedure TFormMisDatos.Edit1Change(Sender: TObject);
begin
Label1.Font.Color:=ClBlack;
Label15.Visible:=False;
end;

procedure TFormMisDatos.Edit2Change(Sender: TObject);
begin
Label2.Font.Color:=ClBlack;
Label15.Visible:=False;
end;

procedure TFormMisDatos.Edit3Change(Sender: TObject);
begin
Label5.Font.Color:=ClBlack;
Label15.Visible:=False;
end;

procedure TFormMisDatos.Edit4Change(Sender: TObject);
begin
Label4.Font.Color:=ClBlack;
Label15.Visible:=False;
end;

procedure TFormMisDatos.Edit6Change(Sender: TObject);
begin
Label7.Font.Color:=ClBlack;
Label15.Visible:=False;
end;

procedure TFormMisDatos.Edit7Change(Sender: TObject);
begin
Label9.Font.Color:=ClBlack;
Label15.Visible:=False;
end;

procedure TFormMisDatos.Edit8Change(Sender: TObject);
begin
Label10.Font.Color:=ClBlack;
Label15.Visible:=False;
end;

procedure TFormMisDatos.Edit9Change(Sender: TObject);
begin
Label11.Font.Color:=ClBlack;
Label15.Visible:=False;
end;

procedure TFormMisDatos.FormActivate(Sender: TObject);
begin
//Paso parametro "UsuarioRegistrado"(Usuario actualmente logueado)
  DataModule1.ComprobarUsuario.Close;
  DataModule1.ComprobarUsuario.Parameters.ParamByName('user').Value:=UsuarioRegistrado;
  DataModule1.ComprobarUsuario.Open;

//Cargo los datos del cliente
if (SpeedButton2.Visible=True) and (SpeedButton3.Visible=False) then begin  //MODIFICAR CLIENTE
    Label29.Visible:=False; //Invisible "MIS DATOS"
    Label12.Visible:=True; //visible "Modificar mis datos"
    Label18.Visible:=True; //Invisible "Datos obligatorios"
    Label15.Visible:=False; //visible "Complete los campos en rojo"
    //Visibles los Edits
      Edit1.Visible:=True;
      Edit2.Visible:=True;
      Edit3.Visible:=True;
      Edit4.Visible:=True;
      Edit6.Visible:=True;
      Edit7.Visible:=True;
      Edit8.Visible:=True;
      Edit9.Visible:=True;
      Edit10.Visible:=True;
      Edit11.Visible:=True;
      Edit12.Visible:=True;
      DateTimePicker1.Visible:=True;
    //Invisibles los DBText
      DBText1.Visible:=False;
      DBText2.Visible:=False;
      DBText3.Visible:=False;
      DBText4.Visible:=False;
      DBText7.Visible:=False;
      DBText8.Visible:=False;
      DBText9.Visible:=False;
      DBText10.Visible:=False;
      DBText11.Visible:=False;
      DBText12.Visible:=False;
      DBText13.Visible:=False;
      DBText14.Visible:=False;
  //Cargo los datos en los EDITS
  Edit1.Text:=DataModule1.ComprobarUsuario.FieldByName('Nombre').AsString; //Nombre
  Edit2.Text:=DataModule1.ComprobarUsuario.FieldByName('Apellido').AsString; //Apellido
  Edit3.Text:=IntToStr(DataModule1.ComprobarUsuario.FieldByName('DNI').AsInteger); //DNI
  Edit4.Text:=DataModule1.ComprobarUsuario.FieldByName('Usuario').AsString; //Usuario
  Edit6.Text:=DataModule1.ComprobarUsuario.FieldByName('Calle').AsString; //Calle
  Edit7.Text:=IntToStr(DataModule1.ComprobarUsuario.FieldByName('Nro').AsInteger); //Nro
  Edit8.Text:=DataModule1.ComprobarUsuario.FieldByName('Localidad').AsString; //Localidad
  Edit9.Text:=DataModule1.ComprobarUsuario.FieldByName('Provincia').AsString; //Provincia
  Edit10.Text:=DataModule1.ComprobarUsuario.FieldByName('Pais').AsString; //Pais
  Edit11.Text:=DataModule1.ComprobarUsuario.FieldByName('Mail').AsString; //Email
  Edit12.Text:=DataModule1.ComprobarUsuario.FieldByName('Telefono').AsString; //Telefono
  DateTimePicker1.Date:=DataModule1.ComprobarUsuario.FieldByName('Fecha Nacimiento').AsDateTime; //Fecha de nacimiento
  SpeedButton1.Visible:=True;
  SpeedButton2.Visible:=True;
  SpeedButton3.Visible:=False;
  SpeedButton4.Visible:=False;
  //Asteriscos
  Label6.Visible:=True;
  Label17.Visible:=True;
  Label19.Visible:=True;
  Label22.Visible:=True;
  Label24.Visible:=True;
  Label25.Visible:=True;
  Label26.Visible:=True;
  Label27.Visible:=True;
  Label28.Visible:=True;

  end
  else begin //VER CLIENTE (NO MODIFICA EL CLIENTE)
    Label29.Visible:=True; //Visible "MIS DATOS"
    Label12.Visible:=False; //Invisible "Modificar mis datos"
    Label18.Visible:=False; //Invisible "Datos obligatorios"
    Label15.Visible:=False; //Invisible "Complete los campos en rojo"
    //Invisibles los Edits
      Edit1.Visible:=False;
      Edit2.Visible:=False;
      Edit3.Visible:=False;
      Edit4.Visible:=False;
      Edit6.Visible:=False;
      Edit7.Visible:=False;
      Edit8.Visible:=False;
      Edit9.Visible:=False;
      Edit10.Visible:=False;
      Edit11.Visible:=False;
      Edit12.Visible:=False;
      DateTimePicker1.Visible:=False;
    //Visibles los DBText
      DBText1.Visible:=True;
      DBText2.Visible:=True;
      DBText3.Visible:=True;
      DBText4.Visible:=True;
      DBText7.Visible:=True;
      DBText8.Visible:=True;
      DBText9.Visible:=True;
      DBText10.Visible:=True;
      DBText11.Visible:=True;
      DBText12.Visible:=True;
      DBText13.Visible:=True;
      DBText14.Visible:=True;
    //Asigno los datafield a los DBTEXT
      DBText1.DataField:='Nombre';
      DBText2.DataField:='Apellido';
      DBText3.DataField:='DNI';
      DBText4.DataField:='Usuario';
      DBText7.DataField:='Calle';
      DBText8.DataField:='Nro';
      DBText9.DataField:='Localidad';
      DBText10.DataField:='Provincia';
      DBText11.DataField:='Pais';
      DBText12.DataField:='Mail';
      DBText13.DataField:='Telefono';
      DBText14.DataField:='Fecha Nacimiento';
      SpeedButton1.Visible:=False;
      SpeedButton2.Visible:=False;
      SpeedButton3.Visible:=True;
      SpeedButton4.Visible:=True;
      //Asteriscos
      Label6.Visible:=False;
      Label17.Visible:=False;
      Label19.Visible:=False;
      Label22.Visible:=False;
      Label24.Visible:=False;
      Label25.Visible:=False;
      Label26.Visible:=False;
      Label27.Visible:=False;
      Label28.Visible:=False;
  end;


end;

procedure TFormMisDatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      SpeedButton1.Visible:=False;
      SpeedButton2.Visible:=False;
      SpeedButton3.Visible:=False;
      SpeedButton4.Visible:=False;
      Label15.Visible:=False;
      FormMisDatos.PonerLabelsNegro;
end;

procedure TFormMisDatos.SpeedButton1Click(Sender: TObject);
begin
  //Vuelvo a mostrar "SOLO VER"
    SpeedButton1.Visible:=False;
    SpeedButton2.Visible:=False;
    SpeedButton3.Visible:=True;
    SpeedButton4.Visible:=True;
    FormMisDatos.PonerLabelsNegro;
    FormMisDatos.OnActivate(Sender);
end;

procedure TFormMisDatos.SpeedButton2Click(Sender: TObject);
var buttonSelected:integer;
begin
  buttonSelected:=messageDlg('�Desea modificar sus datos?',mtWarning,mbOkCancel,0);
  if buttonSelected= mrOk then begin
  try
    if Edit3.Text<>'' then begin
    DataModule1.YaExisteCliente.Close;
    DataModule1.YaExisteCliente.Parameters.ParamByName('consultarDNI').Value:=StrToInt(Edit3.Text);
    DataModule1.YaExisteCliente.Open;
    DataModule1.ComprobarAdmin.Close;
    DataModule1.ComprobarAdmin.Parameters.ParamByName('consultarDNI').Value:=StrToInt(Edit3.Text);
    DataModule1.ComprobarAdmin.Open;
    DataModule1.ComprobarUsuarioAdmin.Close;
    DataModule1.ComprobarUsuarioAdmin.Parameters.ParamByName('user').Value:=Edit4.Text;
    DataModule1.ComprobarUsuarioAdmin.Open;
    end;
    DataModule1.ComprobarUsuario.Edit;
    //Nombre
    if (Edit1.Text = '') then
      raise EEspacioBlanco.Create('Complete los campos en rojo')
      else
        DataModule1.ComprobarUsuario.FieldByName('Nombre').AsString:=Edit1.Text;

    //Apellido
    if (Edit2.Text = '') then
      raise EEspacioBlanco.Create('Complete los campos en rojo')
      else
        DataModule1.ComprobarUsuario.FieldByName('Apellido').AsString:=Edit2.Text;

    //DNI
      if (Edit3.Text = '') then
         raise EEspacioBlanco.Create('Complete los campos en rojo')
      else
        if (DataModule1.ComprobarUsuario.FieldByName('DNI').Value)<>(StrToInt(Edit3.Text)) then
          if not (Datamodule1.YaExisteCliente.ISEmpty) then
            raise EExisteDNI.Create('El DNI ya se encuentra en la base de datos')
          else
            if not (Datamodule1.ComprobarAdmin.ISEmpty) then
             raise EExisteDNI.Create('El DNI ya se encuentra en la base de datos')
             else
                DataModule1.ComprobarUsuario.FieldByName('DNI').AsInteger:=StrToInt(Edit3.Text);
    //Usuario
    if (Edit4.Text = '') then
         raise EEspacioBlanco.Create('Complete los campos en rojo')
        else
          if DataModule1.ComprobarUsuario.FieldByName('Usuario').Value=Edit4.Text then
              DataModule1.ComprobarUsuario.FieldByName('Usuario').Value:=Edit4.Text
          else begin
            DataModule1.YaExisteUsuarioCliente.Close;
            DataModule1.YaExisteUsuarioCliente.Parameters.ParamByName('user').Value:=Edit4.Text;
            DataModule1.YaExisteUsuarioCliente.Open;
            if not DataModule1.YaExisteUsuarioCliente.IsEmpty then
              raise EExisteUsuario.Create('El nombre de usuario ya se encuentra en uso')
            else
              if not (Datamodule1.ComprobarUsuarioAdmin.ISEmpty) then
                raise EExisteUsuario.Create('El nombre de usuario ya se encuentra en uso')
              else begin
                 DataModule1.ComprobarUsuario.FieldByName('Usuario').Value:=Edit4.Text;
                 UsuarioRegistrado:=Edit4.Text;
              end;
          end;


    //Calle
    if (Edit6.Text = '') then
      raise EEspacioBlanco.Create('Complete los campos en rojo')
      else
          DataModule1.ComprobarUsuario.FieldByName('Calle').AsString:=Edit6.Text;

    //Nro
    if (Edit7.Text = '') then
      raise EEspacioBlanco.Create('Complete los campos en rojo')
      else
          DataModule1.ComprobarUsuario.FieldByName('Nro').AsInteger:=StrToInt(Edit7.Text); //Nro

    //Localidad
    if (Edit8.Text = '') then
      raise EEspacioBlanco.Create('Complete los campos en rojo')
      else
          DataModule1.ComprobarUsuario.FieldByName('Localidad').AsString:=Edit8.Text;

    //Provincia
    if (Edit9.Text = '') then
      raise EEspacioBlanco.Create('Complete los campos en rojo')
      else
          DataModule1.ComprobarUsuario.FieldByName('Provincia').AsString:=Edit9.Text;

    //Pais
    if (Edit10.Text = '') then
      raise EEspacioBlanco.Create('Complete los campos en rojo')
      else
        DataModule1.ComprobarUsuario.FieldByName('Pais').AsString:=Edit10.Text;

    //Email
    if (Edit11.Text = '') then
      raise EEspacioBlanco.Create('Complete los campos en rojo')
      else
        if EncontrarArroba(Edit11.Text)=False then
          raise ESinArroba.Create('El email no es v�lido')
          else
            DataModule1.ComprobarUsuario.FieldByName('Mail').AsString:=Edit11.Text;

    //Telefono (No es obligatorio)
    DataModule1.ComprobarUsuario.FieldByName('Telefono').AsString:=Edit12.Text; //Telefono

    //Fecha de Nacimiento
    if ((DateTimePicker1.Date)<01/01/1900) or ((DateTimePicker1.Date)>Now()) then
      raise EFueraDeRango.Create('Ingrese una fecha v�lida')
      else
          DataModule1.ComprobarUsuario.FieldByName('Fecha Nacimiento').AsDateTime:=DateTimePicker1.Date;
    DataModule1.ComprobarUsuario.Post;
  //Vuelvo a mostrar "SOLO VER"
    SpeedButton1.Visible:=False;
    SpeedButton2.Visible:=False;
    SpeedButton3.Visible:=True;
    SpeedButton4.Visible:=True;
    FormMisDatos.PonerLabelsNegro;
    FormMisDatos.OnActivate(Sender);
  except
      on E:EEspacioBlanco do begin
      ShowMessage( E.Message);
        if (Edit1.Text = '') then begin Label1.Font.Color:= clRed; label15.Visible:=True; end;//Nombre
        if (Edit2.Text = '') then begin Label2.Font.Color:= clRed; label15.Visible:=True; end;//Apellido
        if (Edit3.Text = '') then begin Label5.Font.Color:= clRed; label15.Visible:=True; end;//DNI
        if (Edit4.Text = '') then begin Label4.Font.Color:= clRed; label15.Visible:=True; end;//DNI
        if (Edit6.Text = '') then begin Label7.Font.Color:= clRed; label15.Visible:=True; end;//Calle
        if (Edit7.Text = '') then begin Label9.Font.Color:= clRed; label15.Visible:=True; end;//Nro
        if (Edit8.Text = '') then begin Label10.Font.Color:= clRed; label15.Visible:=True; end;//Localidad
        if (Edit9.Text = '') then begin Label11.Font.Color:= clRed; label15.Visible:=True; end;//Provincia
        if (Edit10.Text = '') then begin Label13.Font.Color:= clRed; label15.Visible:=True; end;//Pais
        if (Edit11.Text = '') then begin Label8.Font.Color:= clRed; label15.Visible:=True; end;//Email
        DataModule1.ComprobarUsuario.Cancel;
        end;
     on E:EConvertError do begin
        ShowMessage('Ingrese informaci�n v�lida');
        label15.Visible:=True;
        DataModule1.ComprobarUsuario.Cancel;
     end;
     on E:ESinArroba do begin
        ShowMessage(E.Message);
        Label8.Font.Color:= clRed;
        label15.Visible:=True;
        DataModule1.ComprobarUsuario.Cancel;
     end;
     on E:EExisteDNI do begin
        ShowMessage(E.Message);
        label5.Font.Color:=clred;
        label15.Visible:=true;
        DataModule1.ComprobarUsuario.Cancel;
     end;
     on E:EExisteUsuario do begin
        ShowMessage(E.Message);
        label4.Font.Color:=ClRed;
        label15.Visible:=True;
        DataModule1.ComprobarUsuario.Cancel;
     end;
     on E:EFueraDeRango do begin
        ShowMessage(E.Message);
        Label3.Font.Color:=ClRed;
        Label15.Visible:=True;
        DataModule1.ComprobarUsuario.Cancel;
     end;

  end;
  end;
end;

procedure TFormMisDatos.SpeedButton3Click(Sender: TObject);
begin
      SpeedButton1.Visible:=True;
      SpeedButton2.Visible:=True;
      SpeedButton3.Visible:=False;
      SpeedButton4.Visible:=False;
      FormMisDatos.OnActivate(Sender);
end;

procedure TFormMisDatos.SpeedButton4Click(Sender: TObject);
begin
    FormMisDatos.PonerLabelsNegro;
    Close;
end;

end.
