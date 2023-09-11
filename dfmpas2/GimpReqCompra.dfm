object FrmGimpReqCompra: TFrmGimpReqCompra
  Left = 125
  Top = 189
  BorderStyle = bsSingle
  Caption = 'Impress'#227'o de Requisi'#231#227'o de Compra'
  ClientHeight = 254
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Group00: TGroupBox
    Left = 0
    Top = 0
    Width = 289
    Height = 100
    Caption = 'Tipos de Relat'#243'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LTBox: TListBox
      Left = 3
      Top = 15
      Width = 282
      Height = 82
      Style = lbOwnerDrawVariable
      Color = 11599871
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object GrpDispositivo: TGroupBox
    Left = 292
    Top = 0
    Width = 121
    Height = 100
    Caption = 'Dispositivo de sa'#237'da'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object RadVideo: TRadioButton
      Left = 14
      Top = 23
      Width = 65
      Height = 17
      Caption = '&V'#237'deo'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object RadImpressora: TRadioButton
      Left = 14
      Top = 48
      Width = 81
      Height = 17
      Caption = '&Impressora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RadText: TRadioButton
      Left = 14
      Top = 73
      Width = 90
      Height = 17
      Caption = 'Arquivo &Texto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object Group06: TGroupBox
    Left = 0
    Top = 211
    Width = 413
    Height = 41
    TabOrder = 2
    object BitConfig: TBitBtn
      Left = 15
      Top = 11
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Caption = 'C&onfigura'#231#227'o de Impress'#227'o'
      TabOrder = 2
      TabStop = False
      OnClick = BitConfigClick
    end
    object BitOk: TBitBtn
      Left = 215
      Top = 11
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&OK'
      TabOrder = 0
      TabStop = False
      OnClick = BitOkClick
    end
    object BitCancelar: TBitBtn
      Left = 325
      Top = 11
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      TabOrder = 1
      TabStop = False
      OnClick = BitCancelarClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 100
    Width = 413
    Height = 112
    TabOrder = 3
    object Label1: TLabel
      Left = 31
      Top = 15
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
    end
    object Label2: TLabel
      Left = 173
      Top = 15
      Width = 16
      Height = 13
      Caption = 'At'#233
    end
    object Label3: TLabel
      Left = 37
      Top = 40
      Width = 36
      Height = 13
      Caption = 'Origem:'
    end
    object Label4: TLabel
      Left = 23
      Top = 63
      Width = 50
      Height = 13
      Caption = 'Prioridade:'
    end
    object Label5: TLabel
      Left = 34
      Top = 87
      Width = 39
      Height = 13
      Caption = 'Compra:'
    end
    object CbxOrigem: TComboBox
      Left = 74
      Top = 36
      Width = 90
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemIndex = 0
      MaxLength = 15
      TabOrder = 2
      Text = 'TODOS'
      OnEnter = CbxOrigemEnter
      OnExit = CbxOrigemExit
      Items.Strings = (
        'TODOS'
        'PRODUCAO'
        'SIMULACAO')
    end
    object CbxPrioridade: TComboBox
      Left = 74
      Top = 60
      Width = 90
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemIndex = 0
      MaxLength = 15
      TabOrder = 3
      Text = 'TODOS'
      OnEnter = CbxPrioridadeEnter
      OnExit = CbxPrioridadeExit
      Items.Strings = (
        'TODOS'
        'NORMAL'
        'URGENTE'
        'PRIORIDADE')
    end
    object CbxCompra: TComboBox
      Left = 74
      Top = 84
      Width = 60
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemIndex = 0
      MaxLength = 5
      TabOrder = 4
      Text = 'TODOS'
      OnEnter = CbxCompraEnter
      OnExit = CbxCompraExit
      Items.Strings = (
        'TODOS'
        'SIM'
        'NAO')
    end
    object RxDataInicial: TJvDateEdit
      Left = 74
      Top = 12
      Width = 90
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      ImageKind = ikCustom
      ButtonWidth = 16
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
      OnEnter = RxDataInicialEnter
      OnExit = RxDataInicialExit
    end
    object RxDataFinal: TJvDateEdit
      Left = 199
      Top = 12
      Width = 90
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      ImageKind = ikCustom
      ButtonWidth = 16
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
      OnEnter = RxDataFinalEnter
      OnExit = RxDataFinalExit
    end
  end
  object PrintCfgReq: TPrinterSetupDialog
    Left = 294
    Top = 220
  end
  object RdpReq: TRDprint
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
    OpcoesPreview.CaptionPreview = 'Relatorio de Requisi'#231#227'o de Compras'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'POINT INFORMATICA LTDA'
    RegistroUsuario.SerieProduto = 'SINGLE-0615/01649'
    RegistroUsuario.AutorizacaoKey = '5E33-1QQQ-385V-ASCD-RRJM'
    About = 'RDprint 5.0 - Registrado'
    Acentuacao = SemAcento
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Relatorio de Requisi'#231#227'o de Compras'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 138
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    OnNewPage = RdpReqNewPage
    Left = 480
    Top = 8
  end
  object CdsImpReq: TClientDataSet
    PersistDataPacket.Data = {
      B80000009619E0BD010000001800000005000000000003000000B8000A526566
      6572656E6369610100490000000100055749445448020002000B000944657363
      726963616F0100490000000100055749445448020002003C0003556E64010049
      0000000100055749445448020002000300045174646508000400000001000753
      5542545950450200490006004D6F6E6579000B566C556C74436F6D7072610800
      04000000010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Und'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Qtde'
        DataType = ftCurrency
      end
      item
        Name = 'VlUltCompra'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'Idx_Descricao'
        Fields = 'Descricao'
      end>
    IndexFieldNames = 'Descricao'
    Params = <>
    StoreDefs = True
    Left = 448
    Top = 8
    object CdsImpReqReferencia: TStringField
      FieldName = 'Referencia'
      Size = 11
    end
    object CdsImpReqDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object CdsImpReqUnd: TStringField
      FieldName = 'Und'
      Size = 3
    end
    object CdsImpReqQtde: TCurrencyField
      FieldName = 'Qtde'
    end
    object CdsImpReqVlUltCompra: TCurrencyField
      FieldName = 'VlUltCompra'
    end
  end
  object SqlImpReq: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'R2.rqi_registro,'#13#10'R2.prd_refer_itens,'#13#10'P1.PRD_DESCRI,'#13#10'P' +
      '1.PRD_UND,'#13#10'P1.PRD_CUSTOCOMIPI,'#13#10'R2.rqi_solicitada'#13#10'from REQUISI' +
      'CAO_COMPRA_ITENS R2'#13#10'left join PRD0000 P1 ON (R2.prd_refer_itens' +
      ' = P1.prd_refer)'#13#10'where r2.rqi_solicitou_compra = '#39'N'#39#13#10'ORDER BY'#13 +
      #10'R2.prd_refer_itens'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'R2.rqi_registro,'#13#10'R2.prd_refer_itens,'#13#10'P1.PRD_DESCRI,'#13#10'P' +
      '1.PRD_UND,'#13#10'P1.PRD_CUSTOCOMIPI,'#13#10'R2.rqi_solicitada'#13#10'from REQUISI' +
      'CAO_COMPRA_ITENS R2'#13#10'left join PRD0000 P1 ON (R2.prd_refer_itens' +
      ' = P1.prd_refer)'#13#10'where r2.rqi_solicitou_compra = '#39'N'#39#13#10'ORDER BY'#13 +
      #10'R2.prd_refer_itens'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 8
    object SqlImpReqRQI_REGISTRO: TIntegerField
      FieldName = 'RQI_REGISTRO'
      Required = True
    end
    object SqlImpReqPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlImpReqPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlImpReqPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlImpReqPRD_CUSTOCOMIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOCOMIPI'
      Precision = 15
      Size = 4
    end
    object SqlImpReqRQI_SOLICITADA: TFMTBCDField
      FieldName = 'RQI_SOLICITADA'
      Precision = 15
    end
  end
end
