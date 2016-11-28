object Form1: TForm1
  Left = 191
  Top = 195
  Width = 870
  Height = 500
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Year: TLabel
    Left = 8
    Top = 344
    Width = 22
    Height = 13
    Caption = 'Year'
  end
  object Label1: TLabel
    Left = 184
    Top = 344
    Width = 30
    Height = 13
    Caption = 'Month'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 849
    Height = 313
    DataSource = Northwind.fromOrders
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'OrderDate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShipCity'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShipCountry'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Seller'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ProductCount'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Customer'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 376
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Show'
    TabOrder = 1
    OnClick = Button1Click
  end
  object SelectYear: TComboBox
    Left = 32
    Top = 336
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'All'
    Items.Strings = (
      '1996'
      '1997'
      '1998')
  end
  object SelectMonth: TComboBox
    Left = 224
    Top = 336
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'All'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12')
  end
  object DBGrid2: TDBGrid
    Left = 456
    Top = 336
    Width = 400
    Height = 120
    DataSource = Northwind.fromOrderDetails
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
