unit NortwindData;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TNorthwind = class(TDataModule)
    Northwind: TADOConnection;
    Orders: TADOQuery;
    fromOrders: TDataSource;
    Employees: TADOQuery;
    OrdersOrderID: TAutoIncField;
    OrdersCustomerID: TWideStringField;
    OrdersEmployeeID: TIntegerField;
    OrdersOrderDate: TDateTimeField;
    OrdersShipCity: TWideStringField;
    OrdersShipCountry: TWideStringField;
    OrdersOrderMonth: TIntegerField;
    OrdersSeller: TStringField;
    OrdersProductCount: TIntegerField;
    Customers: TADOQuery;
    OrdersCustomer: TStringField;
    OrdersTotal: TFloatField;
    fromOrderDetails: TDataSource;
    OrderDetails: TADOQuery;
    procedure OrdersAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Northwind: TNorthwind;

implementation

{$R *.dfm}

procedure TNorthwind.OrdersAfterScroll(DataSet: TDataSet);
begin
  OrderDetails.Parameters.ParamByName ('MyOrder').Value := Orders.FieldByName ('OrderID').AsInteger;

  if OrderDetails.Active
    then
      OrderDetails.Requery ()
    else
      OrderDetails.Open ();
end;

end.
