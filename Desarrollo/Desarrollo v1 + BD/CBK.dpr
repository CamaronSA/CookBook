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
  EASendMailObjLib_TLB in 'EASendMailObjLib_TLB.pas',
  OperacionesAutor in 'OperacionesAutor.pas' {Form3},
  OperacionesIdioma in 'OperacionesIdioma.pas' {FormVerIdioma},
  OperacionesEditorial in 'OperacionesEditorial.pas' {FormOperacionesEditorial},
  OperacionesCategoria in 'OperacionesCategoria.pas' {FormOperacionesCategoria},
  ModificarLibro in 'ModificarLibro.pas' {Form4},
  RecuperarClave in 'RecuperarClave.pas' {FormRecuperarClave},
  TarjetasDeCredito in 'TarjetasDeCredito.pas' {FormtarjetasDeCredito},
  PedidosPorFecha in 'PedidosPorFecha.pas' {FormPedidosPorFecha},
  RegistroCliente in 'RegistroCliente.pas' {FormRegistroCliente},
  Contacto in 'Contacto.pas' {Form2},
  unit5 in 'unit5.pas' {FrmMensajeConTemporizador},
  Unit6 in 'Unit6.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TFormLogin, FormLogin);
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
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TFormRecuperarClave, FormRecuperarClave);
  Application.CreateForm(TFormtarjetasDeCredito, FormtarjetasDeCredito);
  Application.CreateForm(TFormPedidosPorFecha, FormPedidosPorFecha);
  Application.CreateForm(TFormRegistroCliente, FormRegistroCliente);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFrmMensajeConTemporizador, FrmMensajeConTemporizador);
  Application.CreateForm(TForm6, Form6);
  pplication.Run;
end.
