program CBK;

uses
  Forms,
  Login in 'Login.pas' {FormLogin},
  Principal in 'Principal.pas' {FormPrincipal},
  CatalogoLibros in 'CatalogoLibros.pas' {FormCatalogoLibros},
  DetalleLibro in 'DetalleLibro.pas' {FormDetalleLibro},
  CarritoDeCompras in 'CarritoDeCompras.pas' {FormCarritoDeCompras},
  Contacto in 'Contacto.pas' {FormContacto},
  ModuloDeDatos in 'ModuloDeDatos.pas' {DataModule1: TDataModule},
  DetalleAutor in 'DetalleAutor.pas' {FormDetalleAutor},
  DetalleEditorial in 'DetalleEditorial.pas' {FormDetalleEditorial},
  DetalleUsuario in 'DetalleUsuario.pas' {FormDetalleUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCatalogoLibros, FormCatalogoLibros);
  Application.CreateForm(TFormDetalleLibro, FormDetalleLibro);
  Application.CreateForm(TFormCarritoDeCompras, FormCarritoDeCompras);
  Application.CreateForm(TFormContacto, FormContacto);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormDetalleAutor, FormDetalleAutor);
  Application.CreateForm(TFormDetalleEditorial, FormDetalleEditorial);
  Application.CreateForm(TFormDetalleUsuario, FormDetalleUsuario);
  Application.Run;
end.
