object FrmProdutoCompraVenda: TFrmProdutoCompraVenda
  Left = 404
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Notas de Entradas e Saidas do Produto'
  ClientHeight = 602
  ClientWidth = 967
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label2: TLabel
    Left = 16
    Top = 24
    Width = 56
    Height = 14
    Alignment = taRightJustify
    Caption = 'Refer'#234'ncia:'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 967
    Height = 49
    Align = alTop
    Caption = 'Produto'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 56
      Height = 14
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia:'
    end
    object Label3: TLabel
      Left = 252
      Top = 24
      Width = 52
      Height = 14
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o:'
    end
    object spCliente: TSpeedButton
      Left = 853
      Top = 19
      Width = 98
      Height = 22
      Hint = 'Busca Cliente'
      Caption = 'F2 - Pesquisar'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
        00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
        9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
        E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
        FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
        B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
        FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
        DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
        B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
        BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
        D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
        6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = spClienteClick
    end
    object EdReferencia: TEdit
      Left = 74
      Top = 21
      Width = 159
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 0
      OnExit = EdReferenciaExit
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 49
    Width = 967
    Height = 210
    Align = alTop
    Caption = 'Notas de Entradas'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 963
      Height = 192
      Align = alClient
      Color = 16776176
      DataSource = DsCompra
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'ENF_EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_NOTANUMBER'
          Title.Alignment = taCenter
          Title.Caption = 'Nota Fiscal'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_CFOP'
          Title.Alignment = taCenter
          Title.Caption = 'CFOP'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'Custo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUSTO_ENTRADA'
          Title.Alignment = taCenter
          Title.Caption = 'Custo Entrada'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IPIALIQ'
          Title.Alignment = taCenter
          Title.Caption = 'IPI %'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_VLSUBTRIB'
          Title.Alignment = taCenter
          Title.Caption = 'Sub.Trib.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_VALFRETE'
          Title.Alignment = taCenter
          Title.Caption = 'Frete'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_VLDESP_ACES'
          Title.Alignment = taCenter
          Title.Caption = 'Despesas'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_VLSEGURO'
          Title.Alignment = taCenter
          Title.Caption = 'Seguro'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FOR_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 39
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
          Title.Font.Style = []
          Width = 243
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Almoxarifado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 217
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 259
    Width = 967
    Height = 309
    Align = alTop
    Caption = 'Notas de Saidas'
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 2
      Top = 16
      Width = 963
      Height = 291
      Align = alClient
      Color = 16776176
      DataSource = DsVenda
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'NF_EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_NUM_NFE'
          Title.Alignment = taCenter
          Title.Caption = 'NF-e'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'Pedido'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NTP_CFOP'
          Title.Alignment = taCenter
          Title.Caption = 'CFOP'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_IPIALIQ'
          Title.Alignment = taCenter
          Title.Caption = 'IPI %'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_VLSUBST'
          Title.Alignment = taCenter
          Title.Caption = 'Sub.Trib.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_IFRETE'
          Title.Alignment = taCenter
          Title.Caption = 'Frete'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_IDESP_ACES'
          Title.Alignment = taCenter
          Title.Caption = 'Despesas'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_ISEGURO'
          Title.Alignment = taCenter
          Title.Caption = 'Seguro'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_RAZAO'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 212
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_CODIGO_DESTINO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Almoxarifado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 215
          Visible = True
        end>
    end
  end
  object Bit_Sair: TBitBtn
    Left = 861
    Top = 570
    Width = 98
    Height = 27
    Cursor = crHandPoint
    Cancel = True
    Caption = '&Sair'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000C40E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333330
      0000333333333333777711111111000BB030377777777777337F1EEEEEEE0BBB
      B030373333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
      B03037F333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
      B03037F3333337F3337F1EEEEEEE0BBB003037F3333337F3377F1EEEEEEE0BBB
      B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
      B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
      B03037FFFFFF37FF337F11111111000BB030377777777777337F333333333330
      0000333333333333777733333333333333333333333333333333}
    NumGlyphs = 2
    TabOrder = 3
    TabStop = False
    OnClick = Bit_SairClick
  end
  object EdDescricao: TEdit
    Left = 306
    Top = 21
    Width = 535
    Height = 22
    CharCase = ecUpperCase
    Color = clWhite
    Enabled = False
    TabOrder = 4
  end
  object SqlCdsCompra: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.ENF_IT_NOTANUMBER,'#13#10'T1.PRD_REFER,'#13#10'T1.ENF_QTDE,'#13#10'T1.E' +
      'NF_CFOP,'#13#10'T1.ENF_PRECO,'#13#10'T2.ENF_EMISSAO,'#13#10'T1.FOR_CODIGO,'#13#10'T3.FOR' +
      '_RAZAO,'#13#10'coalesce(t1.enf_preco,0) + coalesce(t1.enf_vlsubst,0) +' +
      ' coalesce(t1.enf_it_vlipi,0) + coalesce(t1.enf_it_valfrete,0) + ' +
      'coalesce(t1.enf_it_vlseguro,0) + coalesce(t1.enf_it_vldesp_aces,' +
      '0) as custo_entrada,'#13#10'T1.enf_ipialiq,'#13#10'T1.enf_it_vlsubtrib,'#13#10'T1.' +
      'enf_it_valfrete,'#13#10'T1.enf_it_vldesp_aces,'#13#10'T1.enf_it_vlseguro,'#13#10't' +
      '1.AMX_CODIGO,'#13#10'T4.AMX_DESCRI'#13#10'FROM'#13#10'ENF_IT01 T1'#13#10'JOIN ENF0001 T2' +
      ' ON (T2.ENF_NOTANUMBER = T1.ENF_IT_NOTANUMBER AND T2.FOR_CODIGO ' +
      '= T1.FOR_CODIGO)'#13#10'JOIN FOR0000 T3 ON (T3.FOR_CODIGO = T1.FOR_COD' +
      'IGO)'#13#10'LEFT JOIN ALMOX0000 T4 ON (T4.AMX_CODIGO = T1.AMX_CODIGO)'#13 +
      #10'ORDER BY T2.ENF_EMISSAO DESC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.ENF_IT_NOTANUMBER,'#13#10'T1.PRD_REFER,'#13#10'T1.ENF_QTDE,'#13#10'T1.E' +
      'NF_CFOP,'#13#10'T1.ENF_PRECO,'#13#10'T2.ENF_EMISSAO,'#13#10'T1.FOR_CODIGO,'#13#10'T3.FOR' +
      '_RAZAO,'#13#10'coalesce(t1.enf_preco,0) + coalesce(t1.enf_vlsubst,0) +' +
      ' coalesce(t1.enf_it_vlipi,0) + coalesce(t1.enf_it_valfrete,0) + ' +
      'coalesce(t1.enf_it_vlseguro,0) + coalesce(t1.enf_it_vldesp_aces,' +
      '0) as custo_entrada,'#13#10'T1.enf_ipialiq,'#13#10'T1.enf_it_vlsubtrib,'#13#10'T1.' +
      'enf_it_valfrete,'#13#10'T1.enf_it_vldesp_aces,'#13#10'T1.enf_it_vlseguro,'#13#10't' +
      '1.AMX_CODIGO,'#13#10'T4.AMX_DESCRI'#13#10'FROM'#13#10'ENF_IT01 T1'#13#10'JOIN ENF0001 T2' +
      ' ON (T2.ENF_NOTANUMBER = T1.ENF_IT_NOTANUMBER AND T2.FOR_CODIGO ' +
      '= T1.FOR_CODIGO)'#13#10'JOIN FOR0000 T3 ON (T3.FOR_CODIGO = T1.FOR_COD' +
      'IGO)'#13#10'LEFT JOIN ALMOX0000 T4 ON (T4.AMX_CODIGO = T1.AMX_CODIGO)'#13 +
      #10'ORDER BY T2.ENF_EMISSAO DESC'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 680
    Top = 105
    object SqlCdsCompraENF_IT_NOTANUMBER: TStringField
      FieldName = 'ENF_IT_NOTANUMBER'
      Required = True
      Size = 6
    end
    object SqlCdsCompraPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsCompraENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      DisplayFormat = '###,###,###,##0.000'
      Precision = 15
      Size = 6
    end
    object SqlCdsCompraENF_CFOP: TStringField
      FieldName = 'ENF_CFOP'
      Size = 4
    end
    object SqlCdsCompraENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      OnGetText = SqlCdsCompraCUSTO_ENTRADAGetText
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 15
      Size = 5
    end
    object SqlCdsCompraENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SqlCdsCompraFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsCompraFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsCompraAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object SqlCdsCompraAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 60
    end
    object SqlCdsCompraCUSTO_ENTRADA: TFMTBCDField
      FieldName = 'CUSTO_ENTRADA'
      OnGetText = SqlCdsCompraCUSTO_ENTRADAGetText
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 20
      Size = 5
    end
    object SqlCdsCompraENF_IPIALIQ: TFMTBCDField
      FieldName = 'ENF_IPIALIQ'
      DisplayFormat = '##0.00 %'
      Precision = 20
      Size = 5
    end
    object SqlCdsCompraENF_IT_VLSUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_VLSUBTRIB'
      OnGetText = SqlCdsCompraCUSTO_ENTRADAGetText
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 20
      Size = 5
    end
    object SqlCdsCompraENF_IT_VALFRETE: TFMTBCDField
      FieldName = 'ENF_IT_VALFRETE'
      OnGetText = SqlCdsCompraCUSTO_ENTRADAGetText
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 20
      Size = 5
    end
    object SqlCdsCompraENF_IT_VLDESP_ACES: TFMTBCDField
      FieldName = 'ENF_IT_VLDESP_ACES'
      OnGetText = SqlCdsCompraCUSTO_ENTRADAGetText
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 20
      Size = 5
    end
    object SqlCdsCompraENF_IT_VLSEGURO: TFMTBCDField
      FieldName = 'ENF_IT_VLSEGURO'
      OnGetText = SqlCdsCompraCUSTO_ENTRADAGetText
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 20
      Size = 5
    end
  end
  object SqlCdsVenda: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'T1.PRD_REFER,'#13#10'T1.NF_IT_NOTANUMER,'#13#10'T1. PED_CODIGO,'#13#10'T2.' +
      'NF_NUM_NFE,'#13#10'T2.PED_CODIGO,'#13#10'T1.NF_QTDE,'#13#10'T2.CLI_CODIGO,'#13#10'T3.CLI' +
      '_RAZAO,'#13#10'T2.NF_EMISSAO,'#13#10'T1.NTP_CFOP,'#13#10'T1.NF_PRECO,'#13#10't1.nf_ipial' +
      'iq,'#13#10't1.nf_vlsubst,'#13#10't1.nf_ifrete,'#13#10't1.nf_idesp_aces,'#13#10't1.nf_ise' +
      'guro,'#13#10't1.AMX_CODIGO_DESTINO,'#13#10'T4.AMX_DESCRI'#13#10'from'#13#10'NF_IT01 t1'#13#10 +
      'JOIN NF0001 T2 ON (T2.NF_NOTANUMBER = T1.NF_IT_NOTANUMER and t2.' +
      'EMP_CODIGO = t1.EMP_CODIGO)'#13#10'JOIN CLI0000 T3 ON (T3.CLI_CODIGO =' +
      ' T2.CLI_CODIGO)'#13#10'LEFT JOIN  ALMOX0000 T4 ON (T4.AMX_CODIGO = T1.' +
      'AMX_CODIGO_DESTINO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'T1.PRD_REFER,'#13#10'T1.NF_IT_NOTANUMER,'#13#10'T1. PED_CODIGO,'#13#10'T2.' +
      'NF_NUM_NFE,'#13#10'T2.PED_CODIGO,'#13#10'T1.NF_QTDE,'#13#10'T2.CLI_CODIGO,'#13#10'T3.CLI' +
      '_RAZAO,'#13#10'T2.NF_EMISSAO,'#13#10'T1.NTP_CFOP,'#13#10'T1.NF_PRECO,'#13#10't1.nf_ipial' +
      'iq,'#13#10't1.nf_vlsubst,'#13#10't1.nf_ifrete,'#13#10't1.nf_idesp_aces,'#13#10't1.nf_ise' +
      'guro,'#13#10't1.AMX_CODIGO_DESTINO,'#13#10'T4.AMX_DESCRI'#13#10'from'#13#10'NF_IT01 t1'#13#10 +
      'JOIN NF0001 T2 ON (T2.NF_NOTANUMBER = T1.NF_IT_NOTANUMER and t2.' +
      'EMP_CODIGO = t1.EMP_CODIGO)'#13#10'JOIN CLI0000 T3 ON (T3.CLI_CODIGO =' +
      ' T2.CLI_CODIGO)'#13#10'LEFT JOIN  ALMOX0000 T4 ON (T4.AMX_CODIGO = T1.' +
      'AMX_CODIGO_DESTINO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 848
    Top = 321
    object SqlCdsVendaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsVendaNF_IT_NOTANUMER: TStringField
      FieldName = 'NF_IT_NOTANUMER'
      Required = True
      Size = 6
    end
    object SqlCdsVendaNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object SqlCdsVendaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsVendaNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      DisplayFormat = '###,###,###,##0.000'
      Precision = 15
      Size = 4
    end
    object SqlCdsVendaCLI_CODIGO: TStringField
      Alignment = taCenter
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsVendaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsVendaNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SqlCdsVendaNTP_CFOP: TIntegerField
      FieldName = 'NTP_CFOP'
    end
    object SqlCdsVendaNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 15
      Size = 5
    end
    object SqlCdsVendaAMX_CODIGO_DESTINO: TStringField
      Alignment = taCenter
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object SqlCdsVendaAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 60
    end
    object SqlCdsVendaNF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      DisplayFormat = '##0.00 %'
      Precision = 20
      Size = 5
    end
    object SqlCdsVendaNF_VLSUBST: TFMTBCDField
      FieldName = 'NF_VLSUBST'
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 20
      Size = 5
    end
    object SqlCdsVendaNF_IFRETE: TFMTBCDField
      FieldName = 'NF_IFRETE'
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 20
      Size = 5
    end
    object SqlCdsVendaNF_IDESP_ACES: TFMTBCDField
      FieldName = 'NF_IDESP_ACES'
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 20
      Size = 5
    end
    object SqlCdsVendaNF_ISEGURO: TFMTBCDField
      FieldName = 'NF_ISEGURO'
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 20
      Size = 5
    end
  end
  object DsCompra: TDataSource
    DataSet = SqlCdsCompra
    Left = 848
    Top = 105
  end
  object DsVenda: TDataSource
    DataSet = SqlCdsVenda
    Left = 848
    Top = 353
  end
end
