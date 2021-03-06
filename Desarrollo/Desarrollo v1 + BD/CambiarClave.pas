unit CambiarClave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  EEspacioBlanco=class(exception);
  EClaveDistinta=class(exception);
  EClaveActualErronea=class(exception);
  TFormCambiarClave = class(TForm)
    Label11: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Letras(Sender: TObject; var Key: Char);
    procedure LetrasYEspacio(Sender: TObject; var Key: Char);
    procedure LetrasNumnerosETC(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCambiarClave: TFormCambiarClave; ContraAct:String;

implementation

uses Unit1, Login;

{$R *.dfm}

//Solo Letras
procedure TFormCambiarClave.Letras(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8]) then
    key := #0;
end;

//Solo Letras y ESPACIO
procedure TFormCambiarClave.LetrasYEspacio(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8,' ']) then
    key := #0;
end;

//Letras, numeros, @ , - , _ y .
procedure TFormCambiarClave.LetrasNumnerosETC(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', #9, #8,'_','-','@','0'..'9','.',' ']) then
    key := #0;
end;

procedure TFormCambiarClave.Edit1Change(Sender: TObject);
begin
Label1.Font.Color:=ClBlack;
Label7.Visible:=False;
Label4.Visible:=False;
Label5.Visible:=False;
end;

procedure TFormCambiarClave.Edit2Change(Sender: TObject);
begin
Label3.Font.Color:=ClBlack;
Label7.Visible:=False;
Label4.Visible:=False;
Label5.Visible:=False;
end;

procedure TFormCambiarClave.Edit3Change(Sender: TObject);
begin
Label6.Font.Color:=ClBlack;
Label7.Visible:=False;
Label4.Visible:=False;
Label5.Visible:=False;
end;

procedure TFormCambiarClave.FormActivate(Sender: TObject);
begin
  DataModule1.ComprobarUsuario.Close;
  DataModule1.ComprobarUsuario.Parameters.ParamByName('user').Value:=UsuarioRegistrado;
  DataModule1.ComprobarUsuario.Open;
  ContraAct:=DataModule1.ComprobarUsuario.FieldByName('Clave').AsString;
end;

procedure TFormCambiarClave.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Label6.Font.Color:=ClBlack;
Label3.Font.Color:=ClBlack;
Label1.Font.Color:=ClBlack;
Label4.Visible:=False;
Label5.Visible:=False;
Label7.Visible:=False;
Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:='';
end;

procedure TFormCambiarClave.SpeedButton1Click(Sender: TObject);
begin
  try
  if not DataModule1.ComprobarUsuario.IsEmpty then begin
    if Edit3.Text = '' then     //Si deja en blanco la contrase�a actual
      raise EEspacioBlanco.Create('Complete los campos en rojo')
      else
       if ContraAct <> Edit3.Text then  //Si la clave actual es incorrecta
          raise EClaveActualErronea.Create('Ingrese su clave actual correctamente')
          else
            if Edit2.Text='' then
               raise EEspacioBlanco.Create('Complete los campos en rojo')
               else
                if Edit1.Text='' then
                  raise EEspacioBlanco.Create('Complete los campos en rojo')
                    else
                        if Edit2.Text <> Edit1.Text then  //Si las claves son distintas
                              raise EClaveDistinta.Create('Las claves no coinciden')
                              else begin
                                  DataModule1.ComprobarUsuario.Edit;
                                  DataModule1.ComprobarUsuario.FieldByName('Clave').Value:=Edit1.Text; //Guardo la contrase�a nueva
                                  DataModule1.ComprobarUsuario.Post;
                                  ShowMessage('Contrase�a cambiada correctamente');
                                  Close;
                              end;



      end;
  except
  on E:EConvertError do begin
        ShowMessage('Ingrese informaci�n v�lida');
        DataModule1.ComprobarUsuario.Cancel;
  end;
  on E:EEspacioBlanco do begin
        ShowMessage( E.Message);
        Label7.Visible:=True;
        if Edit3.Text = '' then Label6.Font.Color:=ClRed;
        if Edit2.Text = '' then Label3.Font.Color:=ClRed;
        if Edit1.Text = '' then Label1.Font.Color:=ClRed;
        DataModule1.ComprobarUsuario.Cancel;
  end;
  on E:EClaveActualErronea do begin
    ShowMessage(E.Message);
    Label6.Font.Color:=ClRed;
    Label3.Font.Color:=ClBlack;
    Label1.Font.Color:=ClBlack;
    Label5.Visible:=True;
    DataModule1.ComprobarUsuario.Cancel;
  end;
  on E:EClaveDistinta do begin
    ShowMessage(E.Message);
    Label3.Font.Color:=ClRed;
    Label1.Font.Color:=ClRed;
    Label6.Font.Color:=ClBlack;
    Label4.Visible:=True;
    DataModule1.ComprobarUsuario.Cancel;
  end;

  end;


end;

procedure TFormCambiarClave.SpeedButton2Click(Sender: TObject);
begin
Close;
end;

end.
