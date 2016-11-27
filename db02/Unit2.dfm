object DataModuleDB: TDataModuleDB
  OldCreateOrder = False
  Left = 230
  Top = 304
  Height = 297
  Width = 311
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'FILE NAME=C:\Program Files\Common Files\System\OLE DB\Data Links' +
      '\DBDEMOS.udl'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 64
  end
  object ADOTableItems: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'items'
    Left = 112
    Top = 16
    object ADOTableItemsOrderNo: TFloatField
      FieldName = 'OrderNo'
    end
    object ADOTableItemsItemNo: TFloatField
      FieldName = 'ItemNo'
    end
    object ADOTableItemsPartNo: TFloatField
      FieldName = 'PartNo'
    end
    object ADOTableItemsQty: TIntegerField
      FieldName = 'Qty'
    end
    object ADOTableItemsDiscount: TFloatField
      FieldName = 'Discount'
    end
  end
  object ADOQueryItems: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 112
    Top = 112
  end
  object sourceItemsQuery: TDataSource
    DataSet = ADOQueryItems
    Left = 200
    Top = 104
  end
  object sourceItemsTable: TDataSource
    DataSet = ADOTableItems
    Left = 192
    Top = 16
  end
end
