unit Usuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, ComCtrls, ExtDlgs, DB, ADODB;

type
  EcampoBlanco = Class(exception);
  EdniDuplicado = Class (exception);
  EtablaVacia = Class (exception);
  EdniEnUso = Class (exception);
  EclienteEnUso = Class (exception);
  TFormUsuarios = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit14: TEdit;
    Edit16: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Edit13: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    SpeedButton5: TSpeedButton;
    ComprobarUser: TADOQuery;
    ClienteEnPedidos: TADOQuery;
    Edit12: TEdit;
    SpeedButton4: TSpeedButton;
    usuarioDisponible: TADOQuery;
    modificarUsuario: TADOQuery;
    comprobarUsuario: TADOQuery;
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure Edit16Change(Sender: TObject);
    procedure Edit14Change(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuarios: TFormUsuarios;
  dniAux:integer;
  dniVIejo: string;

implementation

uses Unit1, CambioClave;

{$R *.dfm}

procedure TFormUsuarios.DBGrid1CellClick(Column: TColumn);
begin

if not (datamodule1.ADOCliente.IsEmpty) then
begin

  dniViejo:=DataModule1.ADOCliente.FieldByName('dni').AsString;

  formusuarios.edit2.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('dni').asinteger);
  formusuarios.edit3.Text:= unit1.DataModule1.ADOCliente.FieldByName('nombre').asstring;
  formusuarios.edit4.Text:= unit1.DataModule1.ADOCliente.FieldByName('apellido').asstring;
  formusuarios.edit5.Text:= unit1.DataModule1.ADOCliente.FieldByName('usuario').asstring;
  formusuarios.edit6.Text:= unit1.DataModule1.ADOCliente.FieldByName('clave').asstring;
  formusuarios.edit7.Text:= unit1.DataModule1.ADOCliente.FieldByName('calle').asstring;
  formusuarios.edit8.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('nro').AsInteger);
  formusuarios.edit9.Text:= unit1.DataModule1.ADOCliente.FieldByName('localidad').asstring;
  formusuarios.edit10.Text:= unit1.DataModule1.ADOCliente.FieldByName('provincia').asstring;
  formusuarios.edit11.Text:= unit1.DataModule1.ADOCliente.FieldByName('pais').asstring;
  formusuarios.edit12.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fecha Nacimiento').AsDateTime);
  formusuarios.edit13.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fechadeiniciocliente').asdatetime);
  formusuarios.edit14.Text:= unit1.DataModule1.ADOCliente.FieldByName('mail').asstring;
  formusuarios.edit16.Text:= unit1.DataModule1.ADOCliente.FieldByName('telefono').AsString;
  // para verificar que no se modifica el dni
  dniAux:= strtoint(edit2.Text);

end;

end;

procedure TFormUsuarios.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if not (datamodule1.ADOCliente.IsEmpty) then
begin

  dniViejo:=DataModule1.ADOCliente.FieldByName('dni').AsString;

  formusuarios.edit2.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('dni').asinteger);
  formusuarios.edit3.Text:= unit1.DataModule1.ADOCliente.FieldByName('nombre').asstring;
  formusuarios.edit4.Text:= unit1.DataModule1.ADOCliente.FieldByName('apellido').asstring;
  formusuarios.edit5.Text:= unit1.DataModule1.ADOCliente.FieldByName('usuario').asstring;
  formusuarios.edit6.Text:= unit1.DataModule1.ADOCliente.FieldByName('clave').asstring;
  formusuarios.edit7.Text:= unit1.DataModule1.ADOCliente.FieldByName('calle').asstring;
  formusuarios.edit8.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('nro').AsInteger);
  formusuarios.edit9.Text:= unit1.DataModule1.ADOCliente.FieldByName('localidad').asstring;
  formusuarios.edit10.Text:= unit1.DataModule1.ADOCliente.FieldByName('provincia').asstring;
  formusuarios.edit11.Text:= unit1.DataModule1.ADOCliente.FieldByName('pais').asstring;
  formusuarios.edit12.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fecha Nacimiento').AsDateTime);
  formusuarios.edit13.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fechadeiniciocliente').asdatetime);
  formusuarios.edit14.Text:= unit1.DataModule1.ADOCliente.FieldByName('mail').asstring;
  formusuarios.edit16.Text:= unit1.DataModule1.ADOCliente.FieldByName('telefono').AsString;
  // para verificar que no se modifica el dni
  dniAux:= strtoint(edit2.Text);

end;
end;

procedure TFormUsuarios.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if not (datamodule1.ADOCliente.IsEmpty) then
begin

  dniViejo:=DataModule1.ADOCliente.FieldByName('dni').AsString;

  formusuarios.edit2.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('dni').asinteger);
  formusuarios.edit3.Text:= unit1.DataModule1.ADOCliente.FieldByName('nombre').asstring;
  formusuarios.edit4.Text:= unit1.DataModule1.ADOCliente.FieldByName('apellido').asstring;
  formusuarios.edit5.Text:= unit1.DataModule1.ADOCliente.FieldByName('usuario').asstring;
  formusuarios.edit6.Text:= unit1.DataModule1.ADOCliente.FieldByName('clave').asstring;
  formusuarios.edit7.Text:= unit1.DataModule1.ADOCliente.FieldByName('calle').asstring;
  formusuarios.edit8.Text:= inttostr(unit1.DataModule1.ADOCliente.FieldByName('nro').AsInteger);
  formusuarios.edit9.Text:= unit1.DataModule1.ADOCliente.FieldByName('localidad').asstring;
  formusuarios.edit10.Text:= unit1.DataModule1.ADOCliente.FieldByName('provincia').asstring;
  formusuarios.edit11.Text:= unit1.DataModule1.ADOCliente.FieldByName('pais').asstring;
  formusuarios.edit12.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fecha Nacimiento').AsDateTime);
  formusuarios.edit13.Text:= datetostr(unit1.DataModule1.ADOCliente.FieldByName('fechadeiniciocliente').asdatetime);
  formusuarios.edit14.Text:= unit1.DataModule1.ADOCliente.FieldByName('mail').asstring;
  formusuarios.edit16.Text:= unit1.DataModule1.ADOCliente.FieldByName('telefono').AsString;
  // para verificar que no se modifica el dni
  dniAux:= strtoint(edit2.Text);

end;
end;

procedure TFormUsuarios.Edit10Change(Sender: TObject);
begin
  label18.Visible:=false;
  label7.Font.Color:=clblack;
end;

procedure TFormUsuarios.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormUsuarios.Edit11Change(Sender: TObject);
begin
  label18.Visible:=false;
  label8.Font.Color:=clblack;
end;

procedure TFormUsuarios.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormUsuarios.Edit12Change(Sender: TObject);
begin
  label18.Visible:=false;
  label14.Font.Color:=clblack;
end;

procedure TFormUsuarios.Edit13Change(Sender: TObject);
begin
  label18.Visible:=false;
  label17.Font.Color:=clblack;
end;

procedure TFormUsuarios.Edit14Change(Sender: TObject);
begin
  label18.Visible:=false;
  label16.Font.Color:=clblack;
end;

procedure TFormUsuarios.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('0123456789-@_.qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormUsuarios.Edit16Change(Sender: TObject);
begin
  label18.Visible:=false;
  label12.Font.Color:=clblack;
end;

procedure TFormUsuarios.Edit1Change(Sender: TObject);
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

procedure TFormUsuarios.Edit2Change(Sender: TObject);
begin
  label18.Visible:=false;
  label2.Font.Color:=clblack;
end;

procedure TFormUsuarios.Edit3Change(Sender: TObject);
begin
  label18.Visible:=false;
  label3.Font.Color:=clblack;
end;

procedure TFormUsuarios.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormUsuarios.Edit4Change(Sender: TObject);
begin
  label18.Visible:=false;
  label4.Font.Color:=clblack;
end;

procedure TFormUsuarios.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
end;

procedure TFormUsuarios.Edit5Change(Sender: TObject);
begin
  label18.Visible:=false;
  label5.Font.Color:=clblack;
  speedbutton4.Enabled:=true;
end;

procedure TFormUsuarios.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if ( StrScan('0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'+chr(7)+chr(8), Key) = nil ) then  Key := #0;
speedbutton1.Enabled:=false;
end;

procedure TFormUsuarios.Edit7Change(Sender: TObject);
begin
  label18.Visible:=false;
  label9.Font.Color:=clblack;
end;

procedure TFormUsuarios.Edit8Change(Sender: TObject);
begin
  label18.Visible:=false;
  label10.Font.Color:=clblack;
end;

procedure TFormUsuarios.Edit9Change(Sender: TObject);
begin
  label18.Visible:=false;
  label6.Font.Color:=clblack;
end;

procedure TFormUsuarios.FormActivate(Sender: TObject);
begin
  label18.Visible:=false;

  // si entro a modificar, puedo editar
  if speedbutton1.Visible=true then
  begin
    edit2.ReadOnly:=false;
    edit3.ReadOnly:=false;
    edit4.ReadOnly:=false;
    edit5.ReadOnly:=false;
    edit7.ReadOnly:=false;
    edit8.ReadOnly:=false;
    edit9.ReadOnly:=false;
    edit10.ReadOnly:=false;
    edit11.ReadOnly:=false;
    edit14.ReadOnly:=false;
    edit16.ReadOnly:=false;
    speedbutton4.Enabled:=false;
  end
  // si no entro a modificar, no puedo editar.
  else begin
    edit2.ReadOnly:=true;
    edit3.ReadOnly:=true;
    edit4.ReadOnly:=true;
    edit5.ReadOnly:=true;
    edit7.ReadOnly:=true;
    edit8.ReadOnly:=true;
    edit9.ReadOnly:=true;
    edit10.ReadOnly:=true;
    edit11.ReadOnly:=true;
    edit14.ReadOnly:=true;
    edit16.ReadOnly:=true;
  end;

  // por ahora a esto lo anulo, esto seria para que cuando abro me muestre los campos
  // de algun uauario, pero queda mejor que los muestre cuando hago click en la
  // grilla o cuando muevo para arriba o abajo.

   { edit2.Text:= inttostr(datamodule1.adocliente.FieldByName('dni').Asinteger);
    edit3.Text:= datamodule1.adocliente.FieldByName('nombre').AsString;
    edit4.Text:= datamodule1.adocliente.FieldByName('Apellido').AsString;
    edit5.Text:= datamodule1.adocliente.FieldByName('usuario').AsString;
    edit6.Text:= datamodule1.adocliente.FieldByName('clave').AsString;
    edit7.Text:= datamodule1.adocliente.FieldByName('calle').AsString;
    edit8.Text:= inttostr(datamodule1.adocliente.FieldByName('nro').Asinteger);
    edit9.Text:= datamodule1.adocliente.FieldByName('localidad').AsString;
    edit10.Text:= datamodule1.adocliente.FieldByName('provincia').AsString;
    edit11.Text:= datamodule1.adocliente.FieldByName('pais').AsString;
    edit12.Text:= datetostr(datamodule1.adocliente.FieldByName('fecha Nacimiento').AsDateTime);
    edit13.Text:= datetostr(datamodule1.adocliente.FieldByName('fechadeiniciocliente').Asdatetime);
    edit14.Text:= datamodule1.adocliente.FieldByName('mail').AsString;
    edit16.Text:= inttostr(datamodule1.adocliente.FieldByName('telefono').Asinteger);   }

end;

procedure TFormUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  formusuarios.speedbutton1.Enabled:=true;
  formusuarios.speedbutton1.Visible:=true;
  formusuarios.speedbutton2.Enabled:=true;
  formusuarios.speedbutton2.Visible:=true;

  speedbutton4.Enabled:=false;

  speedbutton1.Enabled:=true;
  speedbutton1.Visible:=true;
  edit2.ReadOnly:=false;
  edit3.ReadOnly:=false;
  edit4.ReadOnly:=false;
  edit5.ReadOnly:=false;
  edit7.ReadOnly:=false;
  edit8.ReadOnly:=false;
  edit9.ReadOnly:=false;
  edit10.ReadOnly:=false;
  edit11.ReadOnly:=false;
  edit14.ReadOnly:=false;
  edit16.ReadOnly:=false;



  label2.Font.Color:=clblack;
  label3.Font.Color:=clblack;
  label4.Font.Color:=clblack;
  label5.Font.Color:=clblack;
  label13.Font.Color:=clblack;
  label9.Font.Color:=clblack;
  label10.Font.Color:=clblack;
  label6.Font.Color:=clblack;
  label7.Font.Color:=clblack;
  label8.Font.Color:=clblack;
  label14.Font.Color:=clblack;
  label12.Font.Color:=clblack;
  label16.Font.Color:=clblack;
  label17.Font.Color:=clblack;

  speedbutton4.Visible:=true;
  speedbutton4.Enabled:=true;
  speedbutton5.Visible:=true;
  speedbutton5.Enabled:=true;
end;

procedure TFormUsuarios.SpeedButton1Click(Sender: TObject);
var dniActual:string;
    buttonSelected,ButtonSelected2:integer;
begin
  buttonSelected:=messageDlg('¿Realmente desea modificar el Autor?',mtConfirmation,mbOkCancel,0);
  if buttonSelected= mrOk then Begin
    try

    if strtoint(edit2.Text) <> dniAux then
    begin
     // consulta para verificar que el DNI no exista
      Comprobaruser.Close;
      ComprobarUser.Parameters.ParamByName('consulta').Value:=Edit2.Text;
      ComprobarUser.Open;
    end;

      DataModule1.ADOCliente.edit;

      if (edit3.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('nombre').AsString:= edit3.Text;
      if (edit4.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('Apellido').AsString:= edit4.Text;
      if (edit5.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('usuario').AsString:= edit5.Text;
      if (edit6.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('clave').AsString:= edit6.Text;
      if (edit7.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('calle').AsString:= edit7.Text;
      if (edit8.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('nro').Asinteger:= strtoint(edit8.Text);
      if (edit9.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('localidad').AsString:= edit9.Text;
      if (edit10.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('provincia').AsString:= edit10.Text;
      if (edit11.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('pais').AsString:= edit11.Text;
      if (edit12.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('fecha Nacimiento').AsDateTime:= strtodate(edit12.Text);
      if (edit16.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('telefono').AsString:= edit16.Text;
      if (edit14.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('mail').AsString:= edit14.Text;
      if (edit13.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
        datamodule1.adocliente.FieldByName('fechadeiniciocliente').Asdatetime:= strtodate(edit13.Text);

      if (edit2.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
      else
      // verifico que el dni no este en uso
        if not (ComprobarUser.isEmpty = true) then
          raise EdniDuplicado.Create('El DNI que ingreso ya se encuentra en uso')
          else
            datamodule1.adocliente.FieldByName('dni').Asinteger:= strtoint(edit2.Text);


     {
       ESTO ES ALTO QUILOMBO, NO LO PUEDO HACER ANDAR!! NECESITO UN MEDICO, ELLOS SIEMPRE PUEDEN AYUDARTE, DAN VIDA,
       TIENEN BUENA PUNTERIA Y HACEN QUE AL REVIVIR TU TEAM NO RESTE TKTS ASI LA PARTIDA ES MAS PROVABLE QUE LA GANES...
       TMB CON UN MEDICO EN TU PATRU SEGURO SALEN MEJOR PATRU DE LA RONDA... PORQUE LO QUE ROBAN LOS HDP...
       SON PEOR Q LOS K MAS LAZARO BAEZ ROBANDO... EN UNA RONDA FUNDEM A UN PAIS ENTRTO Y SI TE DESCUIDAS A LOS VECINOS TMB..
     }

   {
     TODO EL PUTO CODIGO DE ACA ABAJO NO SIRVE PARA UNA MISMISIMA MIERDA.

   if (edit2.Text = '') then
        raise EcampoBlanco.Create('Complete los campos en rojo')
        else begin
          //No tocar anda de pedo la mierda esta, si tira error de parametro, piense que otras careras tamb son buenas opciones.
          ComprobarUsuario.Close;
          ComprobarUsuario.Parameters.ParamByName('dato').Value:=edit2.Text;
          ComprobarUsuario.Open;
          //Voy a cagar los datos de la consulta que necesito apr actualizar la lsita de PEDIDOS.
          ModificarUsuario.Close;
          ModificarUsuario.Parameters.ParamByName('dato').Value:=dniViejo;
          ModificarUsuario.Open;

          // verifico que el DNI no este en uso
          if not (ComprobarUser.isEmpty = true) then
            raise EdniDuplicado.Create('El DNI que ingreso ya se encuentra en uso')
            else
              //Aca si hay PEDIDOS que esten usando estd DNI, entonces Reccorro los PEDIDOS y cambio los DNI.
              if not (Modificarusuario.isEmpty) then
              begin
                //No confundir con buttonselected.
                ButtonSelected2:=messageDlg('Este DNI tiene uno o mas pedidos, ¿seguro desea modificar?',mtWarning,mbOkCancel,0);
                if(ButtonSelected2 =mrOK) then
                begin
                  //Me paro en el primer registro de la consulta , esta consulta tiene todos los PEDIDOS que usan ese DNI!
                  ModificarUsuario.first;
                  //Mientras no se termine esta lista tengo que modificar DNI dentro de PEDIDOS
                  while NOT (ModificarUsuario.Eof) do
                  begin
                    //Eto mismo se puede hacer con un update pero tarda mucho tiempo
                    // En la siguente linea cargo el DNI actual de la consulta para modificarlo
                    dniActual:=IntToStr(ModificarUsuario.FieldByName('dni').AsInteger);
                    //Filtro la tabla PEDIDOS , atento por que aca empieza la magia.
                    // quotedstr hace que una variable la ´puedas usar
                    // dentro de un string de una pripiedad
                    unit1.DataModule1.ADOpedidos.close;
                    unit1.DataModule1.ADOpedidos.Filter:='DNI ='+ quotedstr(dniActual);
                    unit1.DataModule1.ADOpedidos.Open;

                    unit1.DataModule1.ADOpedidos.Filtered:=true;
                    unit1.DataModule1.ADOpedidos.Edit;

                    unit1.DataModule1.ADOpedidos.FieldByName('DNI').Asinteger:=strtoint(edit2.Text);
                    unit1.DataModule1.ADOpedidos.Post;
                    //Os recomiendo sacar el filtro a la tabla y ponerlo en nill.
                    unit1.DataModule1.ADOpedidos.Filter:='';
                    unit1.DataModule1.ADOpedidos.Filtered:=false;
                    //siguente registro
                    ModificarUsuario.Next;
                  end;
                  //esta parte es para la modificacion pero de la tabla de editorial.
                  //Vuelvo a habilitar el modo edicion por que se cierra cuando abris las anteriores.

                  datamodule1.ADOcliente.FieldByName('dni').Asinteger:=strtoint(edit2.Text);


              end;
            end;
        end;
                            }
      DataModule1.ADOCliente.post;

    except

      on E : EcampoBlanco do
      begin

      ShowMessage (E.Message);

      if (edit2.Text = '') then begin
        label2.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit3.Text = '') then begin
        label3.font.color:= clred;
        label18.visible:=True;
      end;
      if (edit4.Text = '') then begin
        label4.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit5.Text = '') then begin
        label5.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit6.Text = '') then begin
        label13.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit7.Text = '') then begin
        label9.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit8.Text = '') then begin
        label10.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit9.Text = '') then begin
        label6.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit10.Text = '') then begin
        label7.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit11.Text = '') then begin
        label8.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit12.Text = '') then begin
        label14.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit16.Text = '') then begin
        label12.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit14.Text = '') then begin
        label16.Font.color:= clred;
        label18.Visible:=True;
      end;
      if (edit13.Text = '') then begin
        label7.Font.color:= clred;
        label18.Visible:=True;
      end;
      datamodule1.ADOcliente.Cancel
    end;

    on E : EdniDuplicado do
    begin
      ShowMessage (E.Message);
      edit2.Text:='';
      label2.Font.color:= clred;
      label18.Visible:=True;
      datamodule1.ADOcliente.Cancel;
    end
    else begin
      ShowMessage('Error desconocido');
      datamodule1.ADOcliente.Cancel;
    end;
    end;
    end;
    if buttonSelected= mrCancel then
    begin
      datamodule1.ADOcliente.Cancel;
      edit2.Text:='';
      edit3.Text:='';
      edit4.Text:='';
      edit5.Text:='';
      edit6.Text:='';
      edit7.Text:='';
      edit8.Text:='';
      edit9.Text:='';
      edit10.Text:='';
      edit11.Text:='';
      edit12.Text:='';
      edit13.Text:='';
      edit14.Text:='';
      edit16.Text:='';
    end;

  end;


procedure TFormUsuarios.SpeedButton2Click(Sender: TObject);
var buttonselected: integer;
begin
  try
    ClienteEnPedidos.close;
    ClienteEnPedidos.Parameters.ParamByName('dni').value:=edit2.Text;
    ClienteEnPedidos.open;

    buttonSelected:=messageDlg('¿Realmente desea eliminar este usuario?',mtWarning,mbOkCancel,0);
    if buttonSelected= mrOk then
    begin
      if datamodule1.ADOCliente.IsEmpty then
         raise EtablaVacia.Create('No se puede eliminar de la tabla por que no hay datos')
      else
        if not (ClienteEnPedidos.IsEmpty) then
          raise EdniEnUso.Create('Actualmente el usuario tiene algun pedido')
        else begin
          DataModule1.ADOcliente.delete;
          ShowMessage('El usuario se borró exitosamente');
        end;
    end;

    if buttonSelected = mrCancel then
      DataModule1.ADOEditorial.Cancel;

  except

    on E : EtablaVacia do
      Showmessage (E.Message);

    on E : EdniEnUso do
      ShowMessage (E.Message);
  end;

end;

procedure TFormUsuarios.SpeedButton3Click(Sender: TObject);
begin
  datamodule1.ADOcliente.Cancel;

  edit2.Text:='';
  edit3.Text:='';
  edit4.Text:='';
  edit5.Text:='';
  edit6.Text:='';
  edit7.Text:='';
  edit8.Text:='';
  edit9.Text:='';
  edit10.Text:='';
  edit11.Text:='';
  edit12.Text:='';
  edit13.Text:='';
  edit14.Text:='';
  edit16.Text:='';

  formusuarios.Close;


end;

procedure TFormUsuarios.SpeedButton4Click(Sender: TObject);
begin
  // consulta para ver si el usuario esta en uso.
  usuarioDisponible.Close;
  usuarioDisponible.Parameters.ParamByName('usuario').Value:= edit5.Text;
  usuarioDisponible.Open;

  // pregunto si el usuario esta siendo usado o si el usuario que puse es
  //igual al que ya tenia
  if (edit5.Text = datamodule1.ADOCliente.FieldByName('usuario').AsString) or
    (usuarioDisponible.IsEmpty) then
  begin
  // si es igual al que ya tenia o no esta usado pregunto si el campo esta en blanco
    if (edit5.Text = '') then
    // si deje el campo usuario en blanco
      showmessage ('No se puede dejar el usuario en blanco')
    else begin
    // sino lo deje en blanco y se cumple lo anterior
      showmessage ('El usuario se encuentra disponible');
      speedbutton1.Enabled:=true;
    end;
  end
  else
  // si el usuario esta en uso
    begin
      showmessage('El nombre de usuario se encuentra en uso actualmente, intente con otro');
      speedbutton1.Enabled:= false;
    end;

end;

procedure TFormUsuarios.SpeedButton5Click(Sender: TObject);
begin
  formcambioClave.showmodal;
end;

end.
