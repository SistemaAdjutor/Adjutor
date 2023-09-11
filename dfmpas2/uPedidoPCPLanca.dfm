object FrmPedidoPCPLanca: TFrmPedidoPCPLanca
  Left = 1027
  Top = 247
  Caption = 'FrmPedidoPCPLanca'
  ClientHeight = 383
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 738
    Height = 337
    Align = alTop
    Caption = 'Itens '#224' serem enviados'
    TabOrder = 0
    object DbGradeItemPedido: TDBGrid
      Left = 2
      Top = 16
      Width = 734
      Height = 319
      Align = alClient
      Color = 16776176
      DataSource = dsTemp
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      PopupMenu = pm1
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnExit = DbGradeItemPedidoExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Pedido'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Referencia'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 398
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Disponivel'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Dispon'#237'vel'
          Width = 75
          Visible = True
        end
        item
          Color = clYellow
          Expanded = False
          FieldName = 'Enviar'
          Title.Alignment = taCenter
          Width = 75
          Visible = True
        end>
    end
    object Memo: TMemo
      Left = 16
      Top = 192
      Width = 385
      Height = 145
      Lines.Strings = (
        'Memo')
      TabOrder = 1
      Visible = False
    end
  end
  object Bit_Cancelar: TBitBtn
    Left = 630
    Top = 349
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro atual...'
    Cancel = True
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      04000000000068010000CE0E0000D80E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033333333333333333333333F333333333333
      0000333333333333333333333388F333333F3333000033300333333300033333
      38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
      000333000333333338F3338F833338F3000033333000300033333333338F3338
      3333F8330000333333000003333333333338F333333F83330000333333300033
      3333333333338F3333383333000033333300000333333333333338F333833333
      00003333300030003333333333333833338F3333000033330003330003333333
      33338333338F333300003330003333300033333333383338F338F33300003330
      0333333300033333338333838F338F3300003333333333333003333333833833
      38F338F300003333333333333333333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Bit_CancelarClick
  end
  object btnEnviar: TBitBtn
    Left = 526
    Top = 349
    Width = 100
    Height = 25
    Hint = 'Baixar'
    Caption = '&Enviar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      333333333333337FF3333333333333903333333333333377FF33333333333399
      03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
      99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
      99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
      03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
      33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
      33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btnEnviarClick
  end
  object CdsTemp: TClientDataSet
    PersistDataPacket.Data = {
      E60100009619E0BD010000001800000010000000000003000000E60106506564
      69646F0100490000000100055749445448020002000F000D436C69656E746543
      6F6469676F0100490000000100055749445448020002000A000C436C69656E74
      6552617A616F01004900000001000557494454480200020064000A5265666572
      656E6369610100490000000100055749445448020002000F0009446573637269
      63616F01004900000001000557494454480200020096000A446973706F6E6976
      656C080004000000000006456E76696172080004000000000007456D70726573
      6101004900000001000557494454480200020003000A4461746150656469646F
      08000800000000000B44617461456E747265676108000800000000000D50726F
      6475746F436F6469676F0100490000000100055749445448020002000A000B50
      726F6475746F5469706F01004900000001000557494454480200020005000E50
      726F6475746F556E696461646501004900000001000557494454480200020005
      000C50726F6475746F4772616465010049000000010005574944544802000200
      64001050726F6475746F44657363726963616F01004900000001000557494454
      480200020096000C526567697374726F4974656D010049000000010005574944
      5448020002000A000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Pedido'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ClienteCodigo'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ClienteRazao'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'Disponivel'
        DataType = ftFloat
      end
      item
        Name = 'Enviar'
        DataType = ftFloat
      end
      item
        Name = 'Empresa'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DataPedido'
        DataType = ftDateTime
      end
      item
        Name = 'DataEntrega'
        DataType = ftDateTime
      end
      item
        Name = 'ProdutoCodigo'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ProdutoTipo'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ProdutoUnidade'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ProdutoGrade'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ProdutoDescricao'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'RegistroItem'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    IndexFieldNames = 'Pedido'
    Params = <>
    StoreDefs = True
    BeforePost = CdsTempBeforePost
    Left = 552
    Top = 152
    object CdsTempPedido: TStringField
      FieldName = 'Pedido'
      Size = 15
    end
    object CdsTempClienteCodigo: TStringField
      FieldName = 'ClienteCodigo'
      Size = 10
    end
    object CdsTempClienteRazao: TStringField
      FieldName = 'ClienteRazao'
      Size = 100
    end
    object CdsTempReferencia: TStringField
      FieldName = 'Referencia'
      Size = 15
    end
    object CdsTempDescricao: TStringField
      FieldName = 'Descricao'
      Size = 150
    end
    object CdsTempDisponivel: TFloatField
      FieldName = 'Disponivel'
    end
    object CdsTempEnviar: TFloatField
      FieldName = 'Enviar'
    end
    object CdsTempEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 3
    end
    object CdsTempDataPedido: TDateTimeField
      FieldName = 'DataPedido'
    end
    object CdsTempDataEntrega: TDateTimeField
      FieldName = 'DataEntrega'
    end
    object CdsTempProdutoCodigo: TStringField
      FieldName = 'ProdutoCodigo'
      Size = 10
    end
    object CdsTempProdutoTipo: TStringField
      FieldName = 'ProdutoTipo'
      Size = 5
    end
    object CdsTempProdutoUnidade: TStringField
      FieldName = 'ProdutoUnidade'
      Size = 5
    end
    object CdsTempProdutoGrade: TStringField
      FieldName = 'ProdutoGrade'
      Size = 100
    end
    object CdsTempProdutoDescricao: TStringField
      FieldName = 'ProdutoDescricao'
      Size = 150
    end
    object CdsTempRegistroItem: TStringField
      FieldName = 'RegistroItem'
      Size = 10
    end
  end
  object pm1: TPopupMenu
    Left = 656
    Top = 192
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
  object dsTemp: TDataSource
    DataSet = CdsTemp
    Left = 592
    Top = 160
  end
  object CdsPedido: TClientDataSet
    PersistDataPacket.Data = {
      BC0000009619E0BD010000001800000006000000000003000000BC0007456D70
      7265736101004900000001000557494454480200020003000650656469646F01
      00490000000100055749445448020002000F000D436C69656E7465436F646967
      6F0100490000000100055749445448020002000A000C436C69656E746552617A
      616F01004900000001000557494454480200020096000A446174615065646964
      6F08000800000000000C44617461507265766973616F08000800000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 256
    object CdsPedidoEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 3
    end
    object CdsPedidoPedido: TStringField
      FieldName = 'Pedido'
      Size = 15
    end
    object CdsPedidoClienteCodigo: TStringField
      FieldName = 'ClienteCodigo'
      Size = 10
    end
    object CdsPedidoClienteRazao: TStringField
      FieldName = 'ClienteRazao'
      Size = 150
    end
    object CdsPedidoDataPedido: TDateTimeField
      FieldName = 'DataPedido'
    end
    object CdsPedidoDataPrevisao: TDateTimeField
      FieldName = 'DataPrevisao'
    end
  end
  object CdsPedidoItem: TClientDataSet
    PersistDataPacket.Data = {
      0C0100009619E0BD0100000018000000090000000000030000000C0106506564
      69646F0100490000000100055749445448020002000F0006436F6469676F0100
      490000000100055749445448020002000F000A5265666572656E636961010049
      0000000100055749445448020002001400045469706F01004900000001000557
      4944544802000200050007556E69646164650100490000000100055749445448
      020002000A000547726164650100490000000100055749445448020002006400
      0944657363726963616F01004900000001000557494454480200020096000A51
      75616E746964616465080004000000000008526567697374726F010049000000
      0100055749445448020002000A000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Pedido'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Grade'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'Quantidade'
        DataType = ftFloat
      end
      item
        Name = 'Registro'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 336
    Top = 256
    object CdsPedidoItemPedido: TStringField
      FieldName = 'Pedido'
      Size = 15
    end
    object CdsPedidoItemCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object CdsPedidoItemReferencia: TStringField
      FieldName = 'Referencia'
    end
    object CdsPedidoItemTipo: TStringField
      FieldName = 'Tipo'
      Size = 5
    end
    object CdsPedidoItemUnidade: TStringField
      FieldName = 'Unidade'
      Size = 10
    end
    object CdsPedidoItemGrade: TStringField
      FieldName = 'Grade'
      Size = 100
    end
    object CdsPedidoItemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 150
    end
    object CdsPedidoItemQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object CdsPedidoItemRegistro: TStringField
      FieldName = 'Registro'
      Size = 10
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = []
    Left = 312
    Top = 344
  end
  object vXMLDoc: TXMLDocument
    XML.Strings = (
      
        '<retorno><validado>0</validado><chave>00455509192300172501104301' +
        '2133</chave><resultado>Sistema Validado</resultado></retorno>'
      'd')
    Left = 344
    Top = 344
    DOMVendorDesc = 'MSXML'
  end
end
