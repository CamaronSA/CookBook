program CBK;

uses
  Forms,
  Login in 'Login.pas' {FormLogin},
  Principal in 'Principal.pas' {FormPrincipal},
  CatalogoLibros in 'CatalogoLibros.pas' {FormCatalogoLibros},
  DetalleLibro in 'DetalleLibro.pas' {FormDetalleLibro},
  CarritoDeCompras in 'CarritoDeCompras.pas' {FormCarritoDeCompras},
  Contacto in 'Contacto.pas' {FormContacto};

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
  Application.Run;
end.
