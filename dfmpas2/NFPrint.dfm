object FormPrintNF: TFormPrintNF
  Left = 298
  Top = 128
  Width = 166
  Height = 142
  Caption = 'Gerenciador de impressão de notas físcais'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = -1
    Width = 150
    Height = 116
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object BitNFiscal: TBitBtn
      Left = 49
      Top = 41
      Width = 49
      Height = 25
      Caption = '&Imprime'
      TabOrder = 0
      OnClick = BitNFiscalClick
    end
    object BitSair: TBitBtn
      Left = 38
      Top = 83
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitSairClick
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000026000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
        FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
        FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
        00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
        FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
        B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
        FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
        FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
        00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
        FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
        8888888FFFFFFFFFFFFFFFFFFF00}
      NumGlyphs = 2
    end
  end
  object RPrintNFiscal: TRPrint
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier'
    Font.Style = []
    FromPage = 0
    LinesPerInch = 8
    MarginBotton = '0 mm'
    MarginLeft = '4 mm'
    MarginRight = '0 mm'
    MarginTop = '12 mm'
    Orientation = poPortrait
    ToPage = 0
    Left = 3
    Top = 2
  end
  object TbNFiscal: TTable
    DatabaseName = 'RwDbAdm'
    IndexName = 'XNF_NU_N'
    TableName = 'NF0000'
    Left = 32
    Top = 2
    object TbNFiscalNF_NU_NOTA: TStringField
      FieldName = 'NF_NU_NOTA'
      Size = 6
    end
    object TbNFiscalNF_EMISSAO: TDateTimeField
      FieldName = 'NF_EMISSAO'
    end
    object TbNFiscalNF_SAIDA: TDateTimeField
      FieldName = 'NF_SAIDA'
    end
    object TbNFiscalBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object TbNFiscalOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Size = 3
    end
    object TbNFiscalNF_PEDIDO: TStringField
      FieldName = 'NF_PEDIDO'
      Size = 6
    end
    object TbNFiscalNF_REPRES: TStringField
      FieldName = 'NF_REPRES'
      Size = 3
    end
    object TbNFiscalNF_CODCLI: TStringField
      FieldName = 'NF_CODCLI'
      Size = 5
    end
    object TbNFiscalNF_NOMECLI: TStringField
      FieldName = 'NF_NOMECLI'
      Size = 45
    end
    object TbNFiscalNF_ENDCLI: TStringField
      FieldName = 'NF_ENDCLI'
      Size = 40
    end
    object TbNFiscalNF_CIDCLI: TStringField
      FieldName = 'NF_CIDCLI'
      Size = 30
    end
    object TbNFiscalNF_ESTCLI: TStringField
      FieldName = 'NF_ESTCLI'
      Size = 2
    end
    object TbNFiscalNF_BAICLI: TStringField
      FieldName = 'NF_BAICLI'
      Size = 25
    end
    object TbNFiscalNF_CEPCLI: TStringField
      FieldName = 'NF_CEPCLI'
      Size = 8
    end
    object TbNFiscalNF_FONCLI: TStringField
      FieldName = 'NF_FONCLI'
      Size = 11
    end
    object TbNFiscalNF_ENDENT: TStringField
      FieldName = 'NF_ENDENT'
      Size = 40
    end
    object TbNFiscalNF_CIDENT: TStringField
      FieldName = 'NF_CIDENT'
      Size = 30
    end
    object TbNFiscalNF_ESTENT: TStringField
      FieldName = 'NF_ESTENT'
      Size = 2
    end
    object TbNFiscalNF_CEPENT: TStringField
      FieldName = 'NF_CEPENT'
      Size = 8
    end
    object TbNFiscalNF_ENDCOB: TStringField
      FieldName = 'NF_ENDCOB'
      Size = 40
    end
    object TbNFiscalNF_CIDCOB: TStringField
      FieldName = 'NF_CIDCOB'
      Size = 30
    end
    object TbNFiscalNF_ESTCOB: TStringField
      FieldName = 'NF_ESTCOB'
      Size = 2
    end
    object TbNFiscalNF_CEPCOB: TStringField
      FieldName = 'NF_CEPCOB'
      Size = 8
    end
    object TbNFiscalNF_INSCRI: TStringField
      FieldName = 'NF_INSCRI'
      Size = 14
    end
    object TbNFiscalNF_CGC: TStringField
      FieldName = 'NF_CGC'
      Size = 14
    end
    object TbNFiscalTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object TbNFiscalNF_PLACAVE: TStringField
      FieldName = 'NF_PLACAVE'
      Size = 8
    end
    object TbNFiscalNF_FRETE: TStringField
      FieldName = 'NF_FRETE'
      Size = 1
    end
    object TbNFiscalNF_QTDE: TFloatField
      FieldName = 'NF_QTDE'
    end
    object TbNFiscalNF_PESOBRU: TFloatField
      FieldName = 'NF_PESOBRU'
    end
    object TbNFiscalNF_PESOLIQ: TFloatField
      FieldName = 'NF_PESOLIQ'
    end
    object TbNFiscalNF_BASEICMS: TFloatField
      FieldName = 'NF_BASEICMS'
    end
    object TbNFiscalNF_VLICMS: TFloatField
      FieldName = 'NF_VLICMS'
    end
    object TbNFiscalNF_TOT_PROD: TFloatField
      FieldName = 'NF_TOT_PROD'
    end
    object TbNFiscalNF_TOT_NOTA: TFloatField
      FieldName = 'NF_TOT_NOTA'
    end
    object TbNFiscalNF_VLIPI: TFloatField
      FieldName = 'NF_VLIPI'
    end
    object TbNFiscalNF_DESCTO: TFloatField
      FieldName = 'NF_DESCTO'
    end
    object TbNFiscalNF_ESPECIE: TStringField
      FieldName = 'NF_ESPECIE'
      Size = 15
    end
    object TbNFiscalNF_MARCA: TStringField
      FieldName = 'NF_MARCA'
      Size = 10
    end
    object TbNFiscalNF_NUMERO: TStringField
      FieldName = 'NF_NUMERO'
      Size = 10
    end
    object TbNFiscalNF_ENTR_SAID: TStringField
      FieldName = 'NF_ENTR_SAID'
      Size = 1
    end
    object TbNFiscalNF_IMPRESS: TStringField
      FieldName = 'NF_IMPRESS'
      Size = 1
    end
    object TbNFiscalNF_TRP_NOME: TStringField
      FieldName = 'NF_TRP_NOME'
      Size = 40
    end
    object TbNFiscalNF_TRP_FONE: TStringField
      FieldName = 'NF_TRP_FONE'
      Size = 11
    end
    object TbNFiscalNF_TRP_REDESP: TStringField
      FieldName = 'NF_TRP_REDESP'
      Size = 3
    end
    object TbNFiscalNF_TRP_RNOME: TStringField
      FieldName = 'NF_TRP_RNOME'
      Size = 40
    end
    object TbNFiscalNF_TRP_RFONE: TStringField
      FieldName = 'NF_TRP_RFONE'
      Size = 11
    end
    object TbNFiscalNF_OBSPED: TStringField
      FieldName = 'NF_OBSPED'
      Size = 60
    end
    object TbNFiscalNF_OBS: TStringField
      FieldName = 'NF_OBS'
      Size = 80
    end
    object TbNFiscalNF_OBSOPE: TStringField
      FieldName = 'NF_OBSOPE'
      Size = 50
    end
  end
  object TbNFiscalIten: TTable
    DatabaseName = 'RwDbAdm'
    IndexName = 'XNF_NUME'
    TableName = 'NF_IT01'
    Left = 61
    Top = 2
    object TbNFiscalItenNF_NUMERO: TStringField
      FieldName = 'NF_NUMERO'
      Size = 6
    end
    object TbNFiscalItenPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbNFiscalItenPRD_QTDE: TFloatField
      FieldName = 'PRD_QTDE'
    end
    object TbNFiscalItenPRD_PRECO: TFloatField
      FieldName = 'PRD_PRECO'
    end
    object TbNFiscalItenPRD_UNIDADE: TStringField
      FieldName = 'PRD_UNIDADE'
      Size = 3
    end
    object TbNFiscalItenIPI_ALIQ: TFloatField
      FieldName = 'IPI_ALIQ'
    end
    object TbNFiscalItenPRD_ICMS: TFloatField
      FieldName = 'PRD_ICMS'
    end
    object TbNFiscalItenPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 45
    end
    object TbNFiscalItenEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbNFiscalItenIPI_APELIDO: TStringField
      FieldName = 'IPI_APELIDO'
      Size = 1
    end
  end
  object TbNFParce: TTable
    DatabaseName = 'RwDbAdm'
    IndexName = 'NF_NUME'
    TableName = 'NF_PC02'
    Left = 90
    Top = 2
    object TbNFParceNF_NUMERO: TStringField
      FieldName = 'NF_NUMERO'
      Size = 6
    end
    object TbNFParcePC_SEQUENC: TSmallintField
      FieldName = 'PC_SEQUENC'
    end
    object TbNFParcePC_VALOR: TFloatField
      FieldName = 'PC_VALOR'
    end
    object TbNFParcePC_VENCTO: TDateTimeField
      FieldName = 'PC_VENCTO'
    end
    object TbNFParceEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 119
    Top = 2
  end
end
