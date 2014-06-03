unit ModuloDeDatos;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOAdministrador: TADOTable;
    Tabla_Administrador: TDataSource;
    ADOAdministradorDNI: TIntegerField;
    ADOAdministradorNombre: TMemoField;
    ADOAdministradorApellido: TMemoField;
    ADOAdministradorUsuario: TMemoField;
    ADOAdministradorClave: TMemoField;
    ADOAdministradorDia: TIntegerField;
    ADOAdministradorMes: TIntegerField;
    ADOAdministradorAnio: TIntegerField;
    ADOMailAdministrador: TADOTable;
    ADOLibro: TADOTable;
    ADOEjemplar: TADOTable;
    ADOPedidos: TADOTable;
    ADOCliente: TADOTable;
    Tabla_Libro: TDataSource;
    Tabla_Ejemplar: TDataSource;
    Tabla_Pedidos: TDataSource;
    Tabla_Cliente: TDataSource;
    Tabla_MailAdministrador: TDataSource;
    ADOMailCliente: TADOTable;
    ADOTelefono: TADOTable;
    ADOEtiqueta: TADOTable;
    ADOIdioma: TADOTable;
    ADOEditorial: TADOTable;
    ADOAutor: TADOTable;
    ADOFechaVenta: TADOTable;
    Tabla_Editorial: TDataSource;
    Tabla_Idioma: TDataSource;
    Tabla_Etiqueta: TDataSource;
    Tabla_Telefono: TDataSource;
    Tabla_MailCliente: TDataSource;
    Tabla_Autor: TDataSource;
    Tabla_Fecha_Venta: TDataSource;
    ADOLibroID_Libro: TAutoIncField;
    ADOLibroPrecio: TFloatField;
    ADOLibroImagen: TBlobField;
    ADOLibroAnioEdicion: TIntegerField;
    ADOLibroTitulo: TMemoField;
    ADOLibroDescripcion: TMemoField;
    ADOLibroISBN: TIntegerField;
    ADOLibroAutor: TIntegerField;
    ADOLibroEditorial: TIntegerField;
    ADOLibroEtiqueta: TIntegerField;
    ADOLibroIdioma: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
