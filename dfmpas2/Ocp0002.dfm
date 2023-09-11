object FormOrdCompraGrid: TFormOrdCompraGrid
  Left = 206
  Top = 132
  BorderIcons = [biSystemMenu]
  Caption = 'Lista de Pedidos de Compras'
  ClientHeight = 603
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Lb_lista: TLabel
    Left = 288
    Top = 13
    Width = 3
    Height = 14
  end
  object GbPesquisa: TGroupBox
    Left = 320
    Top = 3
    Width = 473
    Height = 41
    Caption = 'Informe o Fornecedor:'
    TabOrder = 2
    object Edt_lista: TEdit
      Left = 3
      Top = 16
      Width = 462
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 0
      OnClick = Edt_listaClick
      OnEnter = Edt_listaEnter
      OnExit = Edt_listaExit
      OnKeyPress = Edt_listaKeyPress
    end
  end
  object BitCancelar: TBitBtn
    Left = 861
    Top = 8
    Width = 100
    Height = 22
    Caption = '&Cancelar'
    TabOrder = 5
    OnClick = BitCancelarClick
  end
  object BitPesquisar: TBitBtn
    Left = 861
    Top = 8
    Width = 100
    Height = 22
    Caption = '&Pesquisar'
    TabOrder = 3
    OnClick = BitPesquisarClick
  end
  object GbPesquisaData: TGroupBox
    Left = 320
    Top = 3
    Width = 473
    Height = 41
    Caption = 'Informe o Peri'#243'do'
    TabOrder = 1
    Visible = False
    object Label2: TLabel
      Left = 6
      Top = 20
      Width = 57
      Height = 14
      Caption = 'Data Inicial :'
    end
    object Label3: TLabel
      Left = 165
      Top = 20
      Width = 53
      Height = 14
      Caption = 'Data Final :'
    end
    object RxDataInicial: TJvDateEdit
      Left = 68
      Top = 15
      Width = 90
      Height = 22
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      ButtonWidth = 20
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
      OnEnter = RxDataInicialEnter
      OnExit = RxDataInicialExit
    end
    object RxDataFinal: TJvDateEdit
      Left = 223
      Top = 15
      Width = 90
      Height = 22
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      ButtonWidth = 20
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
      OnEnter = RxDataFinalEnter
      OnExit = RxDataFinalExit
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 2
    Width = 317
    Height = 41
    Caption = 'Pesquisa'
    TabOrder = 0
    object Rad_Data: TRadioButton
      Left = 186
      Top = 16
      Width = 65
      Height = 17
      Caption = '&Emiss'#227'o'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      OnClick = Rad_DataClick
    end
    object Rad_Fornecedor: TRadioButton
      Left = 90
      Top = 16
      Width = 74
      Height = 17
      Caption = '&Fornecedor'
      Checked = True
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      TabStop = True
      OnClick = Rad_FornecedorClick
    end
    object Rad_Codigo: TRadioButton
      Left = 6
      Top = 16
      Width = 69
      Height = 17
      Caption = '&O.Compra'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 2
      OnClick = Rad_CodigoClick
    end
  end
  object BitBtn4: TBitBtn
    Left = 861
    Top = 30
    Width = 100
    Height = 22
    Caption = '&Sair'
    TabOrder = 4
    OnClick = BitBtn4Click
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 323
    Width = 964
    Height = 280
    Align = alBottom
    Caption = 'Itens da Ordem de Compra'
    TabOrder = 6
    object DbGridItemOrdem: TDBGrid
      Left = 2
      Top = 16
      Width = 960
      Height = 262
      Align = alClient
      Color = 16776176
      DataSource = DsItemOC
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnTitleClick = GridTitleClickDefault
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 397
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCI_PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCI_QTDES'
          Title.Alignment = taCenter
          Title.Caption = 'Solicitada'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCI_QTDER'
          Title.Alignment = taCenter
          Title.Caption = 'Recebido'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCI_SITUACAO_CC'
          Title.Caption = 'Situa'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 118
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 56
    Width = 964
    Height = 267
    Align = alBottom
    Caption = 'Ordens de Compra'
    TabOrder = 7
    object DbGridOrdComp: TDBGrid
      Left = 2
      Top = 16
      Width = 960
      Height = 249
      Align = alClient
      Color = 16776176
      DataSource = DsCompra
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DbGridOrdCompDrawColumnCell
      OnDblClick = DbGridOrdCompDblClick
      OnKeyPress = DbGridOrdCompKeyPress
      OnTitleClick = DbGridOrdCompTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'OCP_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'O.Compra'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FOR_RAZAO'
          Title.Alignment = taCenter
          Title.Caption = 'Fornecedor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 367
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCP_DTEMIS'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCP_DTENTREGA'
          Title.Alignment = taCenter
          Title.Caption = 'Entrega'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FOR_FONE'
          Title.Alignment = taCenter
          Title.Caption = 'Fone'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCP_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCP_STATUS_CC'
          Title.Caption = 'Situa'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 101
          Visible = True
        end>
    end
  end
  object SqlCdsCompra: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'O1.OCP_CODIGO,'#13#10'O1.FOR_CODIGO,'#13#10'O1.OCP_DTENTREGA,'#13#10'O1.OC' +
      'P_DTEMIS,'#13#10'O1.OCP_TOTAL,'#13#10'O1.OCP_STATUS,'#13#10'F1.FOR_RAZAO,'#13#10'F1.FOR_' +
      'FONE'#13#10'FROM OCP0000 O1'#13#10'   LEFT OUTER JOIN FOR0000 F1'#13#10'   ON  (O1' +
      '.FOR_CODIGO = F1.FOR_CODIGO)'#13#10'ORDER BY Ocp0000.OCP_DTEMIS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterScroll = SqlCdsCompraAfterScroll
    OnCalcFields = SqlCdsCompraCalcFields
    CommandText = 
      'SELECT'#13#10'O1.OCP_CODIGO,'#13#10'O1.FOR_CODIGO,'#13#10'O1.OCP_DTENTREGA,'#13#10'O1.OC' +
      'P_DTEMIS,'#13#10'O1.OCP_TOTAL,'#13#10'O1.OCP_STATUS,'#13#10'F1.FOR_RAZAO,'#13#10'F1.FOR_' +
      'FONE'#13#10'FROM OCP0000 O1'#13#10'   LEFT OUTER JOIN FOR0000 F1'#13#10'   ON  (O1' +
      '.FOR_CODIGO = F1.FOR_CODIGO)'#13#10'ORDER BY Ocp0000.OCP_DTEMIS'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 224
    Top = 160
    object SqlCdsCompraOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsCompraFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsCompraOCP_DTENTREGA: TSQLTimeStampField
      FieldName = 'OCP_DTENTREGA'
    end
    object SqlCdsCompraOCP_DTEMIS: TSQLTimeStampField
      FieldName = 'OCP_DTEMIS'
    end
    object SqlCdsCompraOCP_TOTAL: TFMTBCDField
      FieldName = 'OCP_TOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsCompraOCP_STATUS: TStringField
      FieldName = 'OCP_STATUS'
      Size = 1
    end
    object SqlCdsCompraFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsCompraFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      EditMask = '!\(999\) 9999-9999;0;_'
      Size = 11
    end
    object SqlCdsCompraOCP_STATUS_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'OCP_STATUS_CC'
      Calculated = True
    end
  end
  object DsCompra: TDataSource
    DataSet = SqlCdsCompra
    Left = 256
    Top = 160
  end
  object SqlCdsItensOC: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'O1.OCP_CODIGO,'#13#10'O1.PRD_REFER,'#13#10'O1.OCI_QTDES,'#13#10'O1.OCI_QTD' +
      'ER,'#13#10'O1.OCI_PRECO,'#13#10'O1.OCI_IPI,'#13#10'O1.OCI_SITUACAO,'#13#10'O1.OCI_DESCRI' +
      'CAO AS PRD_DESCRI'#13#10'FROM OCP_IT01 O1'#13#10'   LEFT OUTER JOIN PRD0000 ' +
      'P1'#13#10'   ON  (O1.PRD_REFER = P1.PRD_REFER)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsItensOCCalcFields
    CommandText = 
      'SELECT'#13#10'O1.OCP_CODIGO,'#13#10'O1.PRD_REFER,'#13#10'O1.OCI_QTDES,'#13#10'O1.OCI_QTD' +
      'ER,'#13#10'O1.OCI_PRECO,'#13#10'O1.OCI_IPI,'#13#10'O1.OCI_SITUACAO,'#13#10'O1.OCI_DESCRI' +
      'CAO AS PRD_DESCRI'#13#10'FROM OCP_IT01 O1'#13#10'   LEFT OUTER JOIN PRD0000 ' +
      'P1'#13#10'   ON  (O1.PRD_REFER = P1.PRD_REFER)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 216
    Top = 392
    object SqlCdsItensOCOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Size = 5
    end
    object SqlCdsItensOCPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensOCOCI_QTDES: TFMTBCDField
      FieldName = 'OCI_QTDES'
      DisplayFormat = '#0.0000'
      Precision = 15
    end
    object SqlCdsItensOCOCI_QTDER: TFMTBCDField
      FieldName = 'OCI_QTDER'
      DisplayFormat = '#0.0000'
      Precision = 15
    end
    object SqlCdsItensOCOCI_IPI: TFMTBCDField
      FieldName = 'OCI_IPI'
      DisplayFormat = '#0.00'
      Precision = 15
    end
    object SqlCdsItensOCOCI_SITUACAO: TStringField
      FieldName = 'OCI_SITUACAO'
      Size = 1
    end
    object SqlCdsItensOCOCI_SITUACAO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'OCI_SITUACAO_CC'
      Calculated = True
    end
    object SqlCdsItensOCOCI_PRECO: TFMTBCDField
      FieldName = 'OCI_PRECO'
      Precision = 15
      Size = 5
    end
    object SqlCdsItensOCPRD_DESCRI: TBlobField
      FieldName = 'PRD_DESCRI'
      OnGetText = SqlCdsItensOCPRD_DESCRIGetText
    end
  end
  object DsItemOC: TDataSource
    DataSet = SqlCdsItensOC
    Left = 248
    Top = 392
  end
end
