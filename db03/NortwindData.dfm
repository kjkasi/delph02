object Northwind: TNorthwind
  OldCreateOrder = False
  Left = 950
  Top = 129
  Height = 260
  Width = 336
  object Northwind: TADOConnection
    Connected = True
    ConnectionString = 'FILE NAME=Z:\delph02\Northwind.UDL'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 16
  end
  object Orders: TADOQuery
    Active = True
    Connection = Northwind
    CursorType = ctStatic
    Filter = 'OrderMonth = 1'
    AfterScroll = OrdersAfterScroll
    Parameters = <
      item
        Name = 'MyYear'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *, Month(OrderDate) AS OrderMonth,'
      '                 ('
      #9#9#9#9#9' SELECT Sum(Quantity)'
      #9#9#9#9#9' FROM [Order Details]'
      #9#9#9#9#9' WHERE OrderID = Orders.OrderID'
      '                 ) AS ProductCount,'
      '                 ('
      #9#9#9#9#9' SELECT Sum(Quantity * UnitPrice * (1 - Discount))'
      #9#9#9#9#9' FROM [Order Details]'
      #9#9#9#9#9' WHERE OrderID = Orders.OrderID'
      '                 ) AS Total'
      'FROM Orders'
      'WHERE Year(OrderDate) = IsNull(:MyYear, Year(OrderDate))')
    Left = 24
    Top = 72
    object OrdersOrderID: TAutoIncField
      FieldName = 'OrderID'
      ReadOnly = True
    end
    object OrdersCustomerID: TWideStringField
      FieldName = 'CustomerID'
      FixedChar = True
      Size = 5
    end
    object OrdersEmployeeID: TIntegerField
      FieldName = 'EmployeeID'
    end
    object OrdersOrderDate: TDateTimeField
      FieldName = 'OrderDate'
    end
    object OrdersShipCity: TWideStringField
      FieldName = 'ShipCity'
      Size = 15
    end
    object OrdersShipCountry: TWideStringField
      FieldName = 'ShipCountry'
      Size = 15
    end
    object OrdersOrderMonth: TIntegerField
      FieldName = 'OrderMonth'
      ReadOnly = True
    end
    object OrdersSeller: TStringField
      FieldKind = fkLookup
      FieldName = 'Seller'
      LookupDataSet = Employees
      LookupKeyFields = 'EmployeeID'
      LookupResultField = 'FullName'
      KeyFields = 'EmployeeID'
      Size = 50
      Lookup = True
    end
    object OrdersProductCount: TIntegerField
      FieldName = 'ProductCount'
      ReadOnly = True
    end
    object OrdersCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'Customer'
      LookupDataSet = Customers
      LookupKeyFields = 'CustomerID'
      LookupResultField = 'ContactName'
      KeyFields = 'CustomerID'
      Size = 50
      Lookup = True
    end
    object OrdersTotal: TFloatField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object fromOrders: TDataSource
    DataSet = Orders
    Left = 24
    Top = 132
  end
  object Employees: TADOQuery
    Active = True
    Connection = Northwind
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *, FirstName + '#39' '#39' + LastName AS FullName'
      'FROM Employees')
    Left = 96
    Top = 72
  end
  object Customers: TADOQuery
    Active = True
    Connection = Northwind
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Customers')
    Left = 160
    Top = 72
  end
  object fromOrderDetails: TDataSource
    DataSet = OrderDetails
    Left = 224
    Top = 136
  end
  object OrderDetails: TADOQuery
    Active = True
    Connection = Northwind
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MyOrder'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 10251
      end>
    SQL.Strings = (
      'SELECT'#9'P.ProductName, OD.Quantity'
      'FROM'#9'Products P INNER JOIN [Order Details] OD'
      #9#9'ON P.ProductID = OD.ProductID'
      'WHERE OD.OrderID = :MyOrder')
    Left = 224
    Top = 72
  end
end
