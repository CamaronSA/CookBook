program CBK;

uses
  Forms,
  Login in 'Login.pas' {FormLogin},
  Principal in 'Principal.pas' {FormPrincipal},
  CatalogoLibros in 'CatalogoLibros.pas' {FormCatalogoLibros},
  DetalleLibro in 'DetalleLibro.pas' {FormDetalleLibro},
  CarritoDeCompras in 'CarritoDeCompras.pas' {FormCarritoDeCompras},
  Unit1 in 'Unit1.pas' {DataModule1: TDataModule},
  PanelAdministracion in 'PanelAdministracion.pas' {FormPanelAdministracion},
  ModifAdmin in 'ModifAdmin.pas' {FormModifAdmin},
  Contacto in 'Contacto.pas' {Form2},
  EASendMailObjLib_TLB in 'EASendMailObjLib_TLB.pas',
  OperacionesAutor in 'OperacionesAutor.pas' {Form3},
  OperacionesIdioma in 'OperacionesIdioma.pas' {FormVerIdioma},
  OperacionesEditorial in 'OperacionesEditorial.pas' {FormOperacionesEditorial},
  OperacionesCategoria in 'OperacionesCategoria.pas' {FormOperacionesCategoria},
  AgregarLibro in 'AgregarLibro.pas' {FormAgregarLibro},
  OperacionesLibros in 'OperacionesLibros.pas' {FormOperacionesLibros},
  ModificarLibro in 'ModificarLibro.pas' {Form4},
  FiltradoLibros in 'FiltradoLibros.pas' {FormFiltradoLibros},
  FiltradoUsuarios in 'FiltradoUsuarios.pas' {FormFiltradoUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCatalogoLibros, FormCatalogoLibros);
  Application.CreateForm(TFormDetalleLibro, FormDetalleLibro);
  Application.CreateForm(TFormCarritoDeCompras, FormCarritoDeCompras);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormPanelAdministracion, FormPanelAdministracion);
  Application.CreateForm(TFormModifAdmin, FormModifAdmin);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TFormVerIdioma, FormVerIdioma);
  Application.CreateForm(TFormOperacionesEditorial, FormOperacionesEditorial);
  Application.CreateForm(TFormOperacionesCategoria, FormOperacionesCategoria);
  Application.CreateForm(TFormAgregarLibro, FormAgregarLibro);
  Application.CreateForm(TFormOperacionesLibros, FormOperacionesLibros);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TFormFiltradoLibros, FormFiltradoLibros);
  Application.CreateForm(TFormFiltradoUsuarios, FormFiltradoUsuarios);
  Application.Run;
end.
