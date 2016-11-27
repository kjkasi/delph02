object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 189
  Top = 132
  Height = 185
  Width = 299
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'FILE NAME=C:\Program Files\Common Files\System\OLE DB\Data Links' +
      '\DBDEMOS.udl'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 8
  end
  object ADOTableParts: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'parts'
    Left = 120
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOTableParts
    Left = 192
    Top = 8
  end
  object ADOTableOrders: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'PartNo'
    MasterFields = 'PartNo'
    MasterSource = DataSource1
    TableName = 'items'
    Left = 120
    Top = 80
  end
  object DataSource2: TDataSource
    DataSet = ADOTableOrders
    Left = 200
    Top = 80
  end
end
