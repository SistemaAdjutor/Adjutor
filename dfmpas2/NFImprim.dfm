object FormNFImprime: TFormNFImprime
  Left = 18
  Top = 73
  Width = 779
  Height = 512
  BorderIcons = [biSystemMenu]
  Caption = 'IMPRESS'#195'O P'#211'S-FATURAMENTO'
  Color = 10841658
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 3
    Width = 94
    Height = 13
    Caption = 'NOTAS FISCAIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrdNotas: TDBGrid
    Left = 3
    Top = 17
    Width = 614
    Height = 237
    Hint = 'Duplo clique : imprime Nota  selecionada'
    DataSource = DsNFiscal
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NF_NU_NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'N.F.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NF_EMISSAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'EMISS'#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NF_PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'PEDIDO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NF_NOMECLI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'CLIENTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 257
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NF_IMPRESS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'S'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NF_TOT_NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'VL.TOTAL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NF_SAIDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'SAIDA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 65
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 4
    Top = 259
    Width = 612
    Height = 219
    DataSource = DsNFiscalIten
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_QTDE'
        Title.Alignment = taCenter
        Title.Caption = 'Quant.'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_PRECO'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_TOT_CC'
        Title.Alignment = taCenter
        Title.Caption = 'Vl. Total'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_ICMS'
        Title.Alignment = taCenter
        Title.Caption = 'ICMS'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IPI_ALIQ'
        Title.Alignment = taCenter
        Title.Caption = 'IPI'
        Width = 26
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 624
    Top = 19
    Width = 137
    Height = 235
    Caption = 'Imprimir Documento'
    Color = 15780262
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object SBit_Notas: TSpeedButton
      Left = 13
      Top = 24
      Width = 113
      Height = 28
      Caption = '&Nota Fiscal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SBit_Prenota: TSpeedButton
      Left = 13
      Top = 59
      Width = 113
      Height = 28
      Caption = '&Pr'#233'-Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SBit_Recibo: TSpeedButton
      Left = 13
      Top = 93
      Width = 113
      Height = 28
      Caption = '&Recibo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SBit_Etiquetas: TSpeedButton
      Left = 13
      Top = 127
      Width = 113
      Height = 28
      Caption = '&Etiquetas da Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Sbit_Minuta: TSpeedButton
      Left = 13
      Top = 162
      Width = 113
      Height = 28
      Caption = '&Minuta de Despacho'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SBit_Fichas: TSpeedButton
      Left = 13
      Top = 197
      Width = 113
      Height = 28
      Caption = '&Fichas de Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 624
    Top = 260
    Width = 137
    Height = 160
    Caption = 'Manuten'#231#227'o'
    Color = 15780262
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object Bit_Estorno: TBitBtn
      Left = 12
      Top = 23
      Width = 113
      Height = 28
      Cursor = crHandPoint
      Caption = 'E&stornar Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object BitNFiscal: TBitBtn
      Left = 12
      Top = 91
      Width = 113
      Height = 28
      Cursor = crHandPoint
      Hint = 'Imprime todas as Notas que ainda n'#227'o foram impressas'
      Caption = '&Imprime todas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitLimpar: TBitBtn
      Left = 12
      Top = 57
      Width = 113
      Height = 28
      Cursor = crHandPoint
      Hint = 'Limpa notas que j'#225' foram impressas'
      Caption = '&Limpar tudo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object BitConfig: TBitBtn
      Left = 12
      Top = 125
      Width = 113
      Height = 28
      Cursor = crHandPoint
      Caption = '&Configurar Impress'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object BitSair: TBitBtn
    Left = 630
    Top = 447
    Width = 125
    Height = 28
    Cursor = crHandPoint
    Caption = '&Sair'
    TabOrder = 4
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
  object GrBoxMinuta: TGroupBox
    Left = 243
    Top = 157
    Width = 342
    Height = 234
    Caption = 'MINUTA DE DESPACHO'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    Visible = False
    object Label3: TLabel
      Left = 7
      Top = 96
      Width = 25
      Height = 13
      Caption = 'OBS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 7
      Top = 137
      Width = 69
      Height = 13
      Caption = 'Valor do Frete:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabCliente: TLabel
      Left = 7
      Top = 21
      Width = 75
      Height = 13
      Caption = 'Nome cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabNota: TLabel
      Left = 43
      Top = 40
      Width = 28
      Height = 13
      Caption = 'Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabTransport: TLabel
      Left = 7
      Top = 187
      Width = 72
      Height = 13
      Caption = 'Transportadora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabTipoFrete: TLabel
      Left = 7
      Top = 208
      Width = 59
      Height = 13
      Caption = 'Tipo Frete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 182
      Top = 40
      Width = 27
      Height = 13
      Caption = 'Valor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabtotNota: TLabel
      Left = 246
      Top = 40
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'TotNota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 9
      Top = 64
      Width = 26
      Height = 13
      Caption = 'Qtde:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabQtde: TLabel
      Left = 41
      Top = 64
      Width = 23
      Height = 13
      Caption = 'Qtde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabEspecie: TLabel
      Left = 76
      Top = 64
      Width = 38
      Height = 13
      Caption = 'Especie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 183
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Peso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabPeso: TLabel
      Left = 261
      Top = 64
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Peso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 7
      Top = 40
      Width = 32
      Height = 13
      Caption = 'Nota:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditObsMinuta: TEdit
      Left = 5
      Top = 111
      Width = 330
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 40
      ParentFont = False
      TabOrder = 0
    end
    object NEditValorFrete: TCurrencyEdit
      Left = 6
      Top = 155
      Width = 87
      Height = 21
      AutoSize = False
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BitMinuta: TBitBtn
      Left = 254
      Top = 163
      Width = 80
      Height = 25
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object BitMinutaFechar: TBitBtn
      Left = 254
      Top = 195
      Width = 80
      Height = 25
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object GrBEtiqueta: TGroupBox
    Left = 27
    Top = 325
    Width = 214
    Height = 137
    Caption = 'ETIQUETAS DE VOLUMES DA NOTA'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    Visible = False
    object Label2: TLabel
      Left = 21
      Top = 62
      Width = 84
      Height = 13
      Caption = 'Nota Fiscal Final :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 13
      Top = 36
      Width = 92
      Height = 13
      Caption = 'Nota Fiscal  Inicial :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditFinal: TEdit
      Left = 108
      Top = 59
      Width = 65
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 1
    end
    object EditInicial: TEdit
      Left = 108
      Top = 32
      Width = 65
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
    end
    object BitImprimeEtiq: TBitBtn
      Left = 24
      Top = 105
      Width = 80
      Height = 25
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object BitEtiqFechar: TBitBtn
      Left = 115
      Top = 105
      Width = 80
      Height = 25
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object TbNFiscal: TTable
    DatabaseName = 'RwDbAdm'
    TableName = 'NF0000'
    Left = 344
    Top = 72
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
    object TbNFiscalNF_PEDIDO: TStringField
      FieldName = 'NF_PEDIDO'
      Size = 6
    end
    object TbNFiscalNF_REPRES: TStringField
      FieldName = 'NF_REPRES'
      Size = 3
    end
    object TbNFiscalNF_IMPRESS: TStringField
      FieldName = 'NF_IMPRESS'
      Size = 1
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
      Size = 45
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
      Size = 45
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
      Size = 45
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
    object TbNFiscalNF_CGC: TStringField
      FieldName = 'NF_CGC'
      Size = 14
    end
    object TbNFiscalNF_FRETE: TStringField
      FieldName = 'NF_FRETE'
      Size = 1
    end
    object TbNFiscalNF_FRETE2: TStringField
      FieldName = 'NF_FRETE2'
      Size = 1
    end
    object TbNFiscalNF_QTDE: TFloatField
      FieldName = 'NF_QTDE'
    end
    object TbNFiscalNF_PLACAVE: TStringField
      FieldName = 'NF_PLACAVE'
      Size = 8
    end
    object TbNFiscalNF_PESOBRU: TFloatField
      FieldName = 'NF_PESOBRU'
    end
    object TbNFiscalNF_PESOLIQ: TFloatField
      FieldName = 'NF_PESOLIQ'
    end
    object TbNFiscalNF_ALIQ_ICMS: TFloatField
      FieldName = 'NF_ALIQ_ICMS'
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
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
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
    object TbNFiscalTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object TbNFiscalNF_TRP_NOME: TStringField
      FieldName = 'NF_TRP_NOME'
      Size = 40
    end
    object TbNFiscalNF_TRP_FONE: TStringField
      FieldName = 'NF_TRP_FONE'
      Size = 11
    end
    object TbNFiscalNF_TRP_ENDE: TStringField
      FieldName = 'NF_TRP_ENDE'
      Size = 40
    end
    object TbNFiscalNF_TRP_CIDA: TStringField
      FieldName = 'NF_TRP_CIDA'
      Size = 30
    end
    object TbNFiscalNF_TRP_UF: TStringField
      FieldName = 'NF_TRP_UF'
      Size = 2
    end
    object TbNFiscalNF_TRP_CGC: TStringField
      FieldName = 'NF_TRP_CGC'
      Size = 14
    end
    object TbNFiscalNF_TRP_INSC: TStringField
      FieldName = 'NF_TRP_INSC'
      Size = 14
    end
    object TbNFiscalNF_TRP_RNOME: TStringField
      FieldName = 'NF_TRP_RNOME'
      Size = 40
    end
    object TbNFiscalNF_TRP_RFONE: TStringField
      FieldName = 'NF_TRP_RFONE'
      Size = 11
    end
    object TbNFiscalNF_TRP_RCIDA: TStringField
      FieldName = 'NF_TRP_RCIDA'
      Size = 30
    end
    object TbNFiscalNF_TRP_RUF: TStringField
      FieldName = 'NF_TRP_RUF'
      Size = 2
    end
    object TbNFiscalNF_OBS_PEDI: TStringField
      FieldName = 'NF_OBS_PEDI'
      Size = 60
    end
    object TbNFiscalNF_OBS_NOTA: TStringField
      FieldName = 'NF_OBS_NOTA'
      Size = 60
    end
    object TbNFiscalNF_VLFRETE: TFloatField
      FieldName = 'NF_VLFRETE'
    end
    object TbNFiscalOPE_SUBCOD: TStringField
      FieldName = 'OPE_SUBCOD'
      Size = 2
    end
    object TbNFiscalEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbNFiscalNF_BASESUBTRIB: TFloatField
      FieldName = 'NF_BASESUBTRIB'
    end
    object TbNFiscalNF_VLSUBTRIB: TFloatField
      FieldName = 'NF_VLSUBTRIB'
    end
    object TbNFiscalNF_TOT_CSUB: TFloatField
      FieldName = 'NF_TOT_CSUB'
    end
    object TbNFiscalNF_MINUTAOBS: TStringField
      FieldName = 'NF_MINUTAOBS'
      Size = 40
    end
    object TbNFiscalNF_MINUTAVAL: TFloatField
      FieldName = 'NF_MINUTAVAL'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TbNFiscalNF_DESCTO_PC1: TFloatField
      FieldName = 'NF_DESCTO_PC1'
    end
    object TbNFiscalNF_DESCTO_PC2: TFloatField
      FieldName = 'NF_DESCTO_PC2'
    end
    object TbNFiscalNF_IE_SUB: TStringField
      FieldName = 'NF_IE_SUB'
      Size = 18
    end
    object TbNFiscalOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 35
    end
    object TbNFiscalNF_CONDPAGTO: TStringField
      FieldName = 'NF_CONDPAGTO'
      Size = 35
    end
    object TbNFiscalNF_REPNOME: TStringField
      FieldName = 'NF_REPNOME'
      Size = 15
    end
    object TbNFiscalNF_INSCRI: TStringField
      FieldName = 'NF_INSCRI'
      Size = 18
    end
    object TbNFiscalNF_OBS_OPER: TStringField
      FieldName = 'NF_OBS_OPER'
      Size = 80
    end
    object TbNFiscalNF_TRP_RENDE: TStringField
      FieldName = 'NF_TRP_RENDE'
      Size = 40
    end
    object TbNFiscalNF_TRP_RCEP: TStringField
      FieldName = 'NF_TRP_RCEP'
      Size = 8
    end
    object TbNFiscalOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Size = 4
    end
    object TbNFiscalOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      Size = 3
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 500
    Top = 72
  end
  object TbReceParcela: TTable
    DatabaseName = 'RwDbAdm'
    IndexName = 'XFAT_CODI_FPC'
    TableName = 'FAT_PC01'
    Left = 471
    Top = 72
    object TbReceParcelaFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object TbReceParcelaFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object TbReceParcelaBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object TbReceParcelaFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 13
    end
    object TbReceParcelaFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object TbReceParcelaFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object TbReceParcelaFPC_DESCTO: TFloatField
      FieldName = 'FPC_DESCTO'
    end
    object TbReceParcelaFPC_DTDESC: TDateTimeField
      FieldName = 'FPC_DTDESC'
    end
    object TbReceParcelaFPC_VENCTO: TDateTimeField
      FieldName = 'FPC_VENCTO'
    end
    object TbReceParcelaFPC_PAGTO: TDateTimeField
      FieldName = 'FPC_PAGTO'
    end
    object TbReceParcelaFPC_VLPARC: TFloatField
      FieldName = 'FPC_VLPARC'
    end
    object TbReceParcelaFPC_VLPAGO: TFloatField
      FieldName = 'FPC_VLPAGO'
    end
    object TbReceParcelaFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 50
    end
    object TbReceParcelaFPC_SITPAG: TBooleanField
      FieldName = 'FPC_SITPAG'
    end
    object TbReceParcelaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbReceParcelaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
  end
  object DsNFiscal: TDataSource
    DataSet = TbNFiscal
    Left = 372
    Top = 72
  end
  object RPrintNFiscal: TEvRPrint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FromPage = 0
    LinesPerInch = 6
    MarginBotton = '25 mm'
    MarginLeft = '25 mm'
    MarginRight = '25 mm'
    MarginTop = '25 mm'
    Orientation = poPortrait
    ToPage = 0
    Left = 536
    Top = 72
  end
  object RDprintNotaFiscal: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 75
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = SemAcento
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Formul'#225'rio Nota Fiscal'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 100
    TamanhoQteColunas = 150
    TamanhoQteLPP = Oito
    
    
    
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 568
    Top = 73
  end
  object RdPrintEtiq1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 0
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = SemAcento
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Etiquetas Padr'#227'o Matricial ou Jato/Laser'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 70
    TamanhoQteColunas = 220
    TamanhoQteLPP = Seis
    
    
    
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 568
    Top = 113
  end
  object TbNFiscalIten: TTable
    DatabaseName = 'RwDbAdm'
    TableName = 'NF_IT01'
    Left = 408
    Top = 72
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
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
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
      Size = 2
    end
    object TbNFiscalItenIPI_CLASSIF: TStringField
      FieldName = 'IPI_CLASSIF'
      Size = 8
    end
    object TbNFiscalItenPRD_SITRIBUT: TStringField
      FieldName = 'PRD_SITRIBUT'
      Size = 2
    end
    object TbNFiscalItenVL_SUBSTIT: TFloatField
      FieldName = 'VL_SUBSTIT'
    end
    object TbNFiscalItenNF_IDESCTO1: TFloatField
      FieldName = 'NF_IDESCTO1'
    end
    object TbNFiscalItenNF_IDESCTO2: TFloatField
      FieldName = 'NF_IDESCTO2'
    end
    object TbNFiscalItenPRD_TOT_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRD_TOT_CC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
  end
  object DsNFiscalIten: TDataSource
    DataSet = TbNFiscalIten
    Left = 440
    Top = 72
  end
end
