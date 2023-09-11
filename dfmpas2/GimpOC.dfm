object FormGimpOC: TFormGimpOC
  Left = 150
  Top = 171
  BorderIcons = [biSystemMenu]
  Caption = 'Gerenciador de Impress'#227'o - Ordem de Compra'
  ClientHeight = 299
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grp05: TGroupBox
    Left = 0
    Top = 262
    Width = 413
    Height = 41
    TabOrder = 6
    object BitBtn1: TBitBtn
      Left = 16
      Top = 11
      Width = 185
      Height = 25
      Caption = '&Configura'#231#227'o de Impress'#227'o'
      TabOrder = 2
      TabStop = False
      OnClick = BitConfigClick
    end
    object BitBtn2: TBitBtn
      Left = 214
      Top = 11
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      TabStop = False
      OnClick = BitOkClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 315
      Top = 11
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      TabStop = False
      OnClick = BitCancelarClick
    end
  end
  object Grp02: TGroupBox
    Left = 0
    Top = 141
    Width = 413
    Height = 41
    Caption = 'Sele'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object LabelRepresentante: TLabel
      Left = 6
      Top = 17
      Width = 60
      Height = 13
      Caption = 'Forn&ecedor :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CbxForn: TComboBox
      Left = 100
      Top = 15
      Width = 310
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'TODOS OS FORNECEDORES'
      OnClick = CbxFornClick
      OnEnter = CbxFornEnter
      OnExit = CbxFornExit
      OnKeyPress = CbxFornKeyPress
      Items.Strings = (
        'TODOS OS FORNECEDORES')
    end
    object CbxCod: TComboBox
      Left = 100
      Top = 15
      Width = 30
      Height = 21
      Style = csSimple
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object EdtForn: TEdit
      Left = 68
      Top = 15
      Width = 31
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      OnExit = EdtFornExit
    end
  end
  object Grp04: TGroupBox
    Left = 0
    Top = 222
    Width = 413
    Height = 41
    Caption = 'Ordem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label1: TLabel
      Left = 39
      Top = 16
      Width = 48
      Height = 13
      Caption = 'N'#186' &Inicial :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 183
      Top = 16
      Width = 43
      Height = 13
      Caption = 'N'#186' &Final :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditInicial: TEdit
      Left = 90
      Top = 13
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
      OnClick = EditInicialClick
      OnEnter = EditInicialClick
      OnExit = EditInicialExit
    end
    object EditFinal: TEdit
      Left = 227
      Top = 13
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 1
      OnClick = EditFinalClick
      OnEnter = EditFinalClick
      OnExit = EditFinalExit
    end
  end
  object Grp00: TGroupBox
    Left = 0
    Top = 0
    Width = 289
    Height = 100
    Caption = 'Tipos de &Relat'#243'rios'
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
      OnClick = LTBoxClick
    end
  end
  object GrpDispositivo: TGroupBox
    Left = 290
    Top = 0
    Width = 123
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
  object Grp03: TGroupBox
    Left = 0
    Top = 182
    Width = 413
    Height = 41
    Caption = '&Informe o Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label5: TLabel
      Left = 50
      Top = 19
      Width = 17
      Height = 13
      Caption = '&De:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 179
      Top = 19
      Width = 16
      Height = 13
      Caption = '&At'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditDataI: TJvDateEdit
      Left = 68
      Top = 16
      Width = 100
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
      OnClick = EditDataIClick
      OnEnter = EditDataIClick
      OnExit = EditDataIExit
    end
    object EditDataF: TJvDateEdit
      Left = 202
      Top = 16
      Width = 99
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
      OnClick = EditDataFClick
      OnEnter = EditDataFClick
      OnExit = EditDataFExit
    end
  end
  object Grp01: TGroupBox
    Left = 0
    Top = 100
    Width = 413
    Height = 41
    Caption = 'Filtrar as ordem de compra:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object RadConcluida: TRadioButton
      Left = 311
      Top = 16
      Width = 82
      Height = 17
      Caption = 'Co&nclu'#237'do'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object RadPende: TRadioButton
      Left = 100
      Top = 16
      Width = 82
      Height = 17
      Caption = '&Pendentes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RadTodas: TRadioButton
      Left = 16
      Top = 16
      Width = 57
      Height = 17
      Caption = '&Todas'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object radAtraso: TRadioButton
      Left = 207
      Top = 16
      Width = 82
      Height = 17
      Caption = 'Em &Atraso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 288
    Top = 271
  end
  object RDPrintOrdem: TRDprint
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
    TitulodoRelatorio = 'Gerado por RDprint'
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
    TamanhoQteColunas = 132
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 416
    Top = 1
  end
  object SqlCdsForn: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 600
    Top = 254
    object SqlCdsFornFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsFornFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
  end
  object SqlCdsOC: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'O1.OCP_CODIGO,'#13#10'O1.OCP_DTEMIS,'#13#10'O1.OCP_DTENTREGA,'#13#10'O1.OC' +
      'P_OBS,'#13#10'O1.OCP_REQUERENTE,'#13#10'O1.ocp_status,'#13#10'O1.ocp_total,'#13#10'O1.EM' +
      'P_CODIGO,'#13#10'O1.FOR_CODIGO,'#13#10'F1.FOR_RAZAO,'#13#10'F1.FOR_ENDERE,'#13#10'F1.for' +
      '_cidade,'#13#10'F1.for_uf,'#13#10'F1.for_contato,'#13#10'F1.for_foncont,'#13#10'F1.for_f' +
      'axcont,'#13#10'F1.for_emailcont,'#13#10'O1.TRP_CODIGO,'#13#10'T1.TRP_RAZAO,'#13#10'T1.TR' +
      'P_FONE,'#13#10'O1.PCL_CODIGO,'#13#10'P2.PCL_NOME,'#13#10'O2.PRD_REFER,'#13#10'P1.PRD_DES' +
      'CRI,'#13#10'O2.OCI_QTDES,'#13#10'O2.OCI_QTDER,'#13#10'O2.OCI_PRECO,'#13#10'O2.OCI_IPI,'#13#10 +
      'O2.OCI_SITUACAO'#13#10'from OCP0000 O1'#13#10'JOIN ocp_it01 O2 ON O1.ocp_cod' +
      'igo = O2.OCP_CODIGO'#13#10'JOIN prd0000 P1  ON O2.PRD_REFER  = P1.prd_' +
      'refer'#13#10'LEFT JOIN PCL0000 P2 ON O1.pcl_codigo = P2.pcl_codigo'#13#10'JO' +
      'IN FOR0000 F1 ON O1.for_codigo = F1.for_codigo'#13#10'LEFT JOIN TRP000' +
      '0 T1 ON O1.trp_codigo = T1.trp_codigo'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsOCCalcFields
    CommandText = 
      'Select'#13#10'O1.OCP_CODIGO,'#13#10'O1.OCP_DTEMIS,'#13#10'O1.OCP_DTENTREGA,'#13#10'O1.OC' +
      'P_OBS,'#13#10'O1.OCP_REQUERENTE,'#13#10'O1.ocp_status,'#13#10'O1.ocp_total,'#13#10'O1.EM' +
      'P_CODIGO,'#13#10'O1.FOR_CODIGO,'#13#10'F1.FOR_RAZAO,'#13#10'F1.FOR_ENDERE,'#13#10'F1.for' +
      '_cidade,'#13#10'F1.for_uf,'#13#10'F1.for_contato,'#13#10'F1.for_foncont,'#13#10'F1.for_f' +
      'axcont,'#13#10'F1.for_emailcont,'#13#10'O1.TRP_CODIGO,'#13#10'T1.TRP_RAZAO,'#13#10'T1.TR' +
      'P_FONE,'#13#10'O1.PCL_CODIGO,'#13#10'P2.PCL_NOME,'#13#10'O2.PRD_REFER,'#13#10'P1.PRD_DES' +
      'CRI,'#13#10'O2.OCI_QTDES,'#13#10'O2.OCI_QTDER,'#13#10'O2.OCI_PRECO,'#13#10'O2.OCI_IPI,'#13#10 +
      'O2.OCI_SITUACAO'#13#10'from OCP0000 O1'#13#10'JOIN ocp_it01 O2 ON O1.ocp_cod' +
      'igo = O2.OCP_CODIGO'#13#10'JOIN prd0000 P1  ON O2.PRD_REFER  = P1.prd_' +
      'refer'#13#10'LEFT JOIN PCL0000 P2 ON O1.pcl_codigo = P2.pcl_codigo'#13#10'JO' +
      'IN FOR0000 F1 ON O1.for_codigo = F1.for_codigo'#13#10'LEFT JOIN TRP000' +
      '0 T1 ON O1.trp_codigo = T1.trp_codigo'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 576
    Top = 192
    object SqlCdsOCOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsOCFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsOCFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsOCFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      Size = 40
    end
    object SqlCdsOCFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object SqlCdsOCFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object SqlCdsOCFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object SqlCdsOCFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      Size = 11
    end
    object SqlCdsOCFOR_FAXCONT: TStringField
      FieldName = 'FOR_FAXCONT'
      Size = 11
    end
    object SqlCdsOCFOR_EMAILCONT: TStringField
      FieldName = 'FOR_EMAILCONT'
      Size = 35
    end
    object SqlCdsOCTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object SqlCdsOCTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object SqlCdsOCTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      Size = 11
    end
    object SqlCdsOCOCP_DTEMIS: TSQLTimeStampField
      FieldName = 'OCP_DTEMIS'
    end
    object SqlCdsOCOCP_DTENTREGA: TSQLTimeStampField
      FieldName = 'OCP_DTENTREGA'
    end
    object SqlCdsOCOCP_OBS: TMemoField
      FieldName = 'OCP_OBS'
      BlobType = ftMemo
      Size = 1
    end
    object SqlCdsOCOCP_REQUERENTE: TStringField
      FieldName = 'OCP_REQUERENTE'
    end
    object SqlCdsOCOCP_STATUS: TStringField
      FieldName = 'OCP_STATUS'
      Size = 1
    end
    object SqlCdsOCOCP_TOTAL: TFMTBCDField
      FieldName = 'OCP_TOTAL'
      Precision = 15
    end
    object SqlCdsOCEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsOCPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsOCPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsOCOCI_QTDES: TFMTBCDField
      FieldName = 'OCI_QTDES'
      Precision = 15
    end
    object SqlCdsOCOCI_QTDER: TFMTBCDField
      FieldName = 'OCI_QTDER'
      Precision = 15
    end
    object SqlCdsOCOCI_PRECO: TFMTBCDField
      FieldName = 'OCI_PRECO'
      Precision = 15
    end
    object SqlCdsOCOCI_IPI: TFMTBCDField
      FieldName = 'OCI_IPI'
      Precision = 15
    end
    object SqlCdsOCOCI_TOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'OCI_TOTAL_CC'
      Calculated = True
    end
    object SqlCdsOCOCI_SITUACAO: TStringField
      FieldName = 'OCI_SITUACAO'
      Size = 1
    end
    object SqlCdsOCOCI_SITUACAO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'OCI_SITUACAO_CC'
      Calculated = True
    end
    object SqlCdsOCOCP_PRAZO: TStringField
      FieldName = 'OCP_PRAZO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlCdsOCFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      Size = 14
    end
  end
  object DsOC: TDataSource
    DataSet = SqlCdsOC
    Left = 448
    Top = 96
  end
  object SqlCdsItensOC: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'I1.OCP_CODIGO,'#13#10'I1.PRD_REFER,'#13#10'I1.OCI_QTDES,'#13#10'I1.OCI_QTD' +
      'ER,'#13#10'I1.OCI_PRECO,'#13#10'I1.OCI_IPI,'#13#10'I1.OCI_SITUACAO,'#13#10'P1.PRD_DESCRI' +
      ','#13#10'P1.PRD_UND '#13#10'FROM OCP_IT01 I1 LEFT OUTER JOIN PRD0000 P1 ON'#13#10 +
      'I1.PRD_REFER = P1.PRD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'I1.OCP_CODIGO,'#13#10'I1.PRD_REFER,'#13#10'I1.OCI_QTDES,'#13#10'I1.OCI_QTD' +
      'ER,'#13#10'I1.OCI_PRECO,'#13#10'I1.OCI_IPI,'#13#10'I1.OCI_SITUACAO,'#13#10'P1.PRD_DESCRI' +
      ','#13#10'P1.PRD_UND '#13#10'FROM OCP_IT01 I1 LEFT OUTER JOIN PRD0000 P1 ON'#13#10 +
      'I1.PRD_REFER = P1.PRD_REFER'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 432
    Top = 216
    object SqlCdsItensOCOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Size = 6
    end
    object SqlCdsItensOCPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensOCOCI_QTDES: TFMTBCDField
      FieldName = 'OCI_QTDES'
      Precision = 15
    end
    object SqlCdsItensOCOCI_QTDER: TFMTBCDField
      FieldName = 'OCI_QTDER'
      Precision = 15
    end
    object SqlCdsItensOCOCI_PRECO: TFMTBCDField
      FieldName = 'OCI_PRECO'
      Precision = 15
    end
    object SqlCdsItensOCOCI_IPI: TFMTBCDField
      FieldName = 'OCI_IPI'
      Precision = 15
    end
    object SqlCdsItensOCOCI_SITUACAO: TStringField
      FieldName = 'OCI_SITUACAO'
      Size = 1
    end
    object SqlCdsItensOCPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsItensOCPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
  end
  object DsItensOC: TDataSource
    DataSet = SqlCdsItensOC
    Left = 448
    Top = 64
  end
  object ppDBOC: TppDBPipeline
    DataSource = DsOC
    CloseDataSource = True
    UserName = 'DBOC'
    Left = 528
    Top = 48
    object ppDBOCppField1: TppField
      FieldAlias = 'OCP_CODIGO'
      FieldName = 'OCP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField2: TppField
      FieldAlias = 'FOR_CODIGO'
      FieldName = 'FOR_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField3: TppField
      FieldAlias = 'FOR_RAZAO'
      FieldName = 'FOR_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField4: TppField
      FieldAlias = 'FOR_ENDERE'
      FieldName = 'FOR_ENDERE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField5: TppField
      FieldAlias = 'FOR_CIDADE'
      FieldName = 'FOR_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField6: TppField
      FieldAlias = 'FOR_UF'
      FieldName = 'FOR_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField7: TppField
      FieldAlias = 'FOR_CONTATO'
      FieldName = 'FOR_CONTATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField8: TppField
      FieldAlias = 'FOR_FONCONT'
      FieldName = 'FOR_FONCONT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField9: TppField
      FieldAlias = 'FOR_FAXCONT'
      FieldName = 'FOR_FAXCONT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField10: TppField
      FieldAlias = 'FOR_EMAILCONT'
      FieldName = 'FOR_EMAILCONT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField11: TppField
      FieldAlias = 'TRP_CODIGO'
      FieldName = 'TRP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField12: TppField
      FieldAlias = 'TRP_RAZAO'
      FieldName = 'TRP_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField13: TppField
      FieldAlias = 'TRP_FONE'
      FieldName = 'TRP_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField14: TppField
      FieldAlias = 'OCP_DTEMIS'
      FieldName = 'OCP_DTEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField15: TppField
      FieldAlias = 'OCP_DTENTREGA'
      FieldName = 'OCP_DTENTREGA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField16: TppField
      FieldAlias = 'OCP_OBS'
      FieldName = 'OCP_OBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField17: TppField
      FieldAlias = 'OCP_REQUERENTE'
      FieldName = 'OCP_REQUERENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField18: TppField
      FieldAlias = 'OCP_STATUS'
      FieldName = 'OCP_STATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField19: TppField
      FieldAlias = 'OCP_TOTAL'
      FieldName = 'OCP_TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField20: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField21: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField22: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField23: TppField
      FieldAlias = 'OCI_QTDES'
      FieldName = 'OCI_QTDES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField24: TppField
      FieldAlias = 'OCI_QTDER'
      FieldName = 'OCI_QTDER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField25: TppField
      FieldAlias = 'OCI_PRECO'
      FieldName = 'OCI_PRECO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField26: TppField
      FieldAlias = 'OCI_IPI'
      FieldName = 'OCI_IPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField27: TppField
      FieldAlias = 'OCI_TOTAL_CC'
      FieldName = 'OCI_TOTAL_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField28: TppField
      FieldAlias = 'OCI_SITUACAO'
      FieldName = 'OCI_SITUACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField29: TppField
      FieldAlias = 'OCI_SITUACAO_CC'
      FieldName = 'OCI_SITUACAO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField30: TppField
      FieldAlias = 'OCP_PRAZO'
      FieldName = 'OCP_PRAZO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBOCppField31: TppField
      FieldAlias = 'FOR_CGC'
      FieldName = 'FOR_CGC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBOC
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCOMPRAS.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.DefaultBands = [btHeader, btTitle, btGroupHeader, btDetail, btGroupFooter, btFooter]
    XLSSettings.IncludeSingleFooter = True
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 608
    Top = 40
    Version = '16.02'
    mmColumnWidth = 98000
    DataPipelineName = 'ppDBOC'
    object pp00HeaderBand2: TppHeaderBand
      BeforePrint = pp00HeaderBand2BeforePrint
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 265
        mmTop = 794
        mmWidth = 22719
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 4233
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 7673
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        OnGetText = ppSystemVariable3GetText
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 794
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = ppSystemVariable4GetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 170127
        mmTop = 7673
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 11112
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object pp00DetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBOC'
        mmHeight = 3246
        mmLeft = 1323
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBOC'
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 0
        mmWidth = 62177
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OCI_QTDES'
        DataPipeline = ppDBOC
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOC'
        mmHeight = 3175
        mmLeft = 82815
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OCI_PRECO'
        DataPipeline = ppDBOC
        DisplayFormat = '#,####0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOC'
        mmHeight = 3175
        mmLeft = 121444
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OCI_IPI'
        DataPipeline = ppDBOC
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOC'
        mmHeight = 3175
        mmLeft = 161925
        mmTop = 0
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OCI_QTDER'
        DataPipeline = ppDBOC
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOC'
        mmHeight = 3175
        mmLeft = 102129
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText102'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OCI_TOTAL_CC'
        DataPipeline = ppDBOC
        DisplayFormat = '#,####0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOC'
        mmHeight = 3175
        mmLeft = 142082
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OCI_SITUACAO_CC'
        DataPipeline = ppDBOC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBOC'
        mmHeight = 3175
        mmLeft = 171186
        mmTop = 0
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      AlignToBottom = True
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup3: TppGroup
      BreakName = 'FOR_CODIGO'
      DataPipeline = ppDBOC
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBOC'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'FORNECEDOR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3387
          mmLeft = 0
          mmTop = 0
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FOR_CODIGO'
          DataPipeline = ppDBOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBOC'
          mmHeight = 3387
          mmLeft = 22490
          mmTop = 0
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FOR_RAZAO'
          DataPipeline = ppDBOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBOC'
          mmHeight = 3387
          mmLeft = 29898
          mmTop = 0
          mmWidth = 83079
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine6: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText23: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText23'
          HyperlinkEnabled = False
          OnGetText = ppDBText23GetText
          Border.Weight = 1.000000000000000000
          DataField = 'FOR_CGC'
          DataPipeline = ppDBOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBOC'
          mmHeight = 3440
          mmLeft = 125722
          mmTop = 0
          mmWidth = 64029
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label25'
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3440
          mmLeft = 115933
          mmTop = 0
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'OCP_CODIGO'
      DataPipeline = ppDBOC
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBOC'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 11906
        mmPrintPosition = 0
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'OCP_DTEMIS'
          DataPipeline = ppDBOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBOC'
          mmHeight = 3440
          mmLeft = 12700
          mmTop = 3440
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'OCP_DTENTREGA'
          DataPipeline = ppDBOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBOC'
          mmHeight = 3440
          mmLeft = 29369
          mmTop = 3440
          mmWidth = 19050
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText5: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText5'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'OCP_TOTAL'
          DataPipeline = ppDBOC
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBOC'
          mmHeight = 3440
          mmLeft = 50006
          mmTop = 3440
          mmWidth = 18521
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line6'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 7143
          mmWidth = 196057
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'EMISS'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 12700
          mmTop = 0
          mmWidth = 14552
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label4'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'LM.ENTREGA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3440
          mmLeft = 29369
          mmTop = 0
          mmWidth = 19050
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'VL.LIQUIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 50006
          mmTop = 0
          mmWidth = 18521
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label7'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'PRAZO PAGTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3440
          mmLeft = 70379
          mmTop = 0
          mmWidth = 55033
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label6'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'ORDEM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 0
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText14: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText14'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'OCP_CODIGO'
          DataPipeline = ppDBOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBOC'
          mmHeight = 3440
          mmLeft = 0
          mmTop = 3440
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 7673
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Descri'#231#227'o do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3440
          mmLeft = 19844
          mmTop = 7673
          mmWidth = 61913
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label10'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Qtde Solicitada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 82815
          mmTop = 7673
          mmWidth = 18521
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label101'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Qtde Recebida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 102129
          mmTop = 7673
          mmWidth = 18521
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label12'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Vl.Unit'#225'rio R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 121444
          mmTop = 7673
          mmWidth = 18521
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label13'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 142082
          mmTop = 7673
          mmWidth = 18521
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label14'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 161925
          mmTop = 7673
          mmWidth = 7938
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label15'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3440
          mmLeft = 171186
          mmTop = 7673
          mmWidth = 22225
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 11377
          mmWidth = 196057
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText6'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'OCP_PRAZO'
          DataPipeline = ppDBOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBOC'
          mmHeight = 3440
          mmLeft = 70379
          mmTop = 3440
          mmWidth = 55033
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 265
        mmPrintPosition = 0
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 265
          mmTop = 0
          mmWidth = 196057
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object SqlCdsOCN: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'O1.OCP_CODIGO,'#13#10'O1.OCP_DTEMIS,'#13#10'O1.OCP_DTENTREGA,'#13#10'O1.OC' +
      'P_OBS,'#13#10'O1.OCP_REQUERENTE,'#13#10'O1.ocp_status,'#13#10'O1.ocp_total,'#13#10'O1.EM' +
      'P_CODIGO,'#13#10'O1.FOR_CODIGO,'#13#10'F1.FOR_RAZAO,'#13#10'F1.FOR_ENDERE,'#13#10'F1.for' +
      '_cidade,'#13#10'F1.for_uf,'#13#10'F1.for_contato,'#13#10'F1.for_foncont,'#13#10'F1.for_f' +
      'axcont,'#13#10'F1.for_emailcont,'#13#10'O1.TRP_CODIGO,'#13#10'T1.TRP_RAZAO,'#13#10'T1.TR' +
      'P_FONE,'#13#10'O1.PCL_CODIGO,'#13#10'P2.PCL_NOME'#13#10'from OCP0000 O1'#13#10'LEFT JOIN' +
      ' PCL0000 P2 ON O1.pcl_codigo = P2.pcl_codigo'#13#10'LEFT JOIN FOR0000 ' +
      'F1 ON O1.for_codigo = F1.for_codigo'#13#10'LEFT JOIN TRP0000 T1 ON O1.' +
      'trp_codigo = T1.trp_codigo'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsOCCalcFields
    CommandText = 
      'Select'#13#10'O1.OCP_CODIGO,'#13#10'O1.OCP_DTEMIS,'#13#10'O1.OCP_DTENTREGA,'#13#10'O1.OC' +
      'P_OBS,'#13#10'O1.OCP_REQUERENTE,'#13#10'O1.ocp_status,'#13#10'O1.ocp_total,'#13#10'O1.EM' +
      'P_CODIGO,'#13#10'O1.FOR_CODIGO,'#13#10'F1.FOR_RAZAO,'#13#10'F1.FOR_ENDERE,'#13#10'F1.for' +
      '_cidade,'#13#10'F1.for_uf,'#13#10'F1.for_contato,'#13#10'F1.for_foncont,'#13#10'F1.for_f' +
      'axcont,'#13#10'F1.for_emailcont,'#13#10'O1.TRP_CODIGO,'#13#10'T1.TRP_RAZAO,'#13#10'T1.TR' +
      'P_FONE,'#13#10'O1.PCL_CODIGO,'#13#10'P2.PCL_NOME'#13#10'from OCP0000 O1'#13#10'LEFT JOIN' +
      ' PCL0000 P2 ON O1.pcl_codigo = P2.pcl_codigo'#13#10'LEFT JOIN FOR0000 ' +
      'F1 ON O1.for_codigo = F1.for_codigo'#13#10'LEFT JOIN TRP0000 T1 ON O1.' +
      'trp_codigo = T1.trp_codigo'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 512
    Top = 184
    object SqlCdsOCNOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsOCNOCP_DTEMIS: TSQLTimeStampField
      FieldName = 'OCP_DTEMIS'
    end
    object SqlCdsOCNOCP_DTENTREGA: TSQLTimeStampField
      FieldName = 'OCP_DTENTREGA'
    end
    object SqlCdsOCNOCP_OBS: TMemoField
      FieldName = 'OCP_OBS'
      BlobType = ftMemo
      Size = 1
    end
    object SqlCdsOCNOCP_REQUERENTE: TStringField
      FieldName = 'OCP_REQUERENTE'
    end
    object SqlCdsOCNOCP_STATUS: TStringField
      FieldName = 'OCP_STATUS'
      Size = 1
    end
    object SqlCdsOCNOCP_TOTAL: TFMTBCDField
      FieldName = 'OCP_TOTAL'
      Precision = 15
    end
    object SqlCdsOCNEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsOCNFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsOCNFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsOCNFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      Size = 40
    end
    object SqlCdsOCNFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object SqlCdsOCNFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object SqlCdsOCNFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object SqlCdsOCNFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      Size = 11
    end
    object SqlCdsOCNFOR_FAXCONT: TStringField
      FieldName = 'FOR_FAXCONT'
      Size = 11
    end
    object SqlCdsOCNFOR_EMAILCONT: TStringField
      FieldName = 'FOR_EMAILCONT'
      Size = 35
    end
    object SqlCdsOCNTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object SqlCdsOCNTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object SqlCdsOCNTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      Size = 11
    end
    object SqlCdsOCNOCP_PRAZO: TStringField
      FieldName = 'OCP_PRAZO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlCdsOCNFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      Size = 14
    end
  end
  object DsOCN: TDataSource
    DataSet = SqlCdsOCN
    Left = 480
    Top = 24
  end
  object DsCompraAlmox: TDataSource
    DataSet = SqlcdsCompraAlmox
    Left = 448
    Top = 160
  end
  object SqlcdsCompraAlmox: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select O1. OSI_EMP_PENDENTE,O1.PRD_REFER_ITENS, O1.OSV_CODIGO, P' +
      '1.PRD_DESCRI, P1.PRD_PCUSTO, P1.PRD_ESTOQUE, P1.PRD_ENTRADA, P1.' +
      'PRD_SAIDA, P1.PRD_EMPENHO,P1.PRD_PENDENTE from OSV_IT02 O1'#13#10'left' +
      ' join PRD0000 P1 on (O1.PRD_REFER_ITENS = P1.PRD_REFER)'#13#10'where O' +
      'SI_EMP_PENDENTE > 0'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlcdsCompraAlmoxCalcFields
    CommandText = 
      'select O1. OSI_EMP_PENDENTE,O1.PRD_REFER_ITENS, O1.OSV_CODIGO, P' +
      '1.PRD_DESCRI, P1.PRD_PCUSTO, P1.PRD_ESTOQUE, P1.PRD_ENTRADA, P1.' +
      'PRD_SAIDA, P1.PRD_EMPENHO,P1.PRD_PENDENTE from OSV_IT02 O1'#13#10'left' +
      ' join PRD0000 P1 on (O1.PRD_REFER_ITENS = P1.PRD_REFER)'#13#10'where O' +
      'SI_EMP_PENDENTE > 0'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 376
    Top = 136
    object SqlcdsCompraAlmoxOSI_EMP_PENDENTE: TFMTBCDField
      FieldName = 'OSI_EMP_PENDENTE'
      Precision = 15
    end
    object SqlcdsCompraAlmoxPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlcdsCompraAlmoxOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 8
    end
    object SqlcdsCompraAlmoxPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlcdsCompraAlmoxPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
    end
    object SqlcdsCompraAlmoxPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlcdsCompraAlmoxPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlcdsCompraAlmoxPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlcdsCompraAlmoxPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      Precision = 15
    end
    object SqlcdsCompraAlmoxPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlcdsCompraAlmoxCC_SALDO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_SALDO'
      DisplayFormat = '#0.000'
      Calculated = True
    end
    object SqlcdsCompraAlmoxCC_CUSTO_TOTAL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_CUSTO_TOTAL'
      Calculated = True
    end
  end
  object ppRAlmoxarifado: TppReport
    AutoStop = False
    DataPipeline = ppCompraAlmox
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 628
    Top = 120
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppCompraAlmox'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21167
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de compras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4022
        mmLeft = 260
        mmTop = 4500
        mmWidth = 33443
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        OnGetText = ppSystemVariable1GetText
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 157427
        mmTop = 260
        mmWidth = 32279
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = ppSystemVariable2GetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 165629
        mmTop = 4500
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15081
        mmWidth = 190000
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 5821
        mmTop = 16669
        mmWidth = 13674
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 59267
        mmTop = 16669
        mmWidth = 12615
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 112977
        mmTop = 16669
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Custo unit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 123031
        mmTop = 16669
        mmWidth = 12785
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Num.O.P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 138642
        mmTop = 16669
        mmWidth = 11726
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 157427
        mmTop = 16669
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Produtos solicitado pelo almoxarifado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4064
        mmLeft = 260
        mmTop = 8731
        mmWidth = 59182
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 20902
        mmWidth = 189971
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Custo total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 173038
        mmTop = 16669
        mmWidth = 13589
        BandType = 0
        LayerName = Foreground1
      end
      object Label_Empresa1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label_Empresa1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4022
        mmLeft = 260
        mmTop = 260
        mmWidth = 50588
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER_ITENS'
        DataPipeline = ppCompraAlmox
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCompraAlmox'
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 180
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppCompraAlmox
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCompraAlmox'
        mmHeight = 3175
        mmLeft = 26988
        mmTop = 180
        mmWidth = 78052
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_SALDO'
        DataPipeline = ppCompraAlmox
        DisplayFormat = '#0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCompraAlmox'
        mmHeight = 3175
        mmLeft = 106363
        mmTop = 180
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PCUSTO'
        DataPipeline = ppCompraAlmox
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCompraAlmox'
        mmHeight = 3175
        mmLeft = 122767
        mmTop = 180
        mmWidth = 13000
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_CODIGO'
        DataPipeline = ppCompraAlmox
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppCompraAlmox'
        mmHeight = 3260
        mmLeft = 139436
        mmTop = 180
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSI_EMP_PENDENTE'
        DataPipeline = ppCompraAlmox
        DisplayFormat = '#0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCompraAlmox'
        mmHeight = 3175
        mmLeft = 153000
        mmTop = 180
        mmWidth = 15000
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_CUSTO_TOTAL'
        DataPipeline = ppCompraAlmox
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCompraAlmox'
        mmHeight = 3260
        mmLeft = 170000
        mmTop = 180
        mmWidth = 19000
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 265
        mmWidth = 190000
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 529
        mmTop = 1000
        mmWidth = 13928
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER_ITENS'
        DataPipeline = ppCompraAlmox
        DisplayFormat = '#00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppCompraAlmox'
        mmHeight = 3260
        mmLeft = 18521
        mmTop = 1000
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PCUSTO'
        DataPipeline = ppCompraAlmox
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCompraAlmox'
        mmHeight = 3175
        mmLeft = 118798
        mmTop = 1058
        mmWidth = 17000
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSI_EMP_PENDENTE'
        DataPipeline = ppCompraAlmox
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCompraAlmox'
        mmHeight = 3175
        mmLeft = 153000
        mmTop = 794
        mmWidth = 15000
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_CUSTO_TOTAL'
        DataPipeline = ppCompraAlmox
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCompraAlmox'
        mmHeight = 3175
        mmLeft = 170000
        mmTop = 794
        mmWidth = 19000
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppCompraAlmox: TppDBPipeline
    DataSource = DsCompraAlmox
    UserName = 'CompraAlmox'
    Left = 530
    Top = 112
    object ppCompraAlmoxppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSI_EMP_PENDENTE'
      FieldName = 'OSI_EMP_PENDENTE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object ppCompraAlmoxppField2: TppField
      FieldAlias = 'PRD_REFER_ITENS'
      FieldName = 'PRD_REFER_ITENS'
      FieldLength = 11
      DisplayWidth = 11
      Position = 1
    end
    object ppCompraAlmoxppField3: TppField
      FieldAlias = 'OSV_CODIGO'
      FieldName = 'OSV_CODIGO'
      FieldLength = 8
      DisplayWidth = 8
      Position = 2
    end
    object ppCompraAlmoxppField4: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object ppCompraAlmoxppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_PCUSTO'
      FieldName = 'PRD_PCUSTO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 4
    end
    object ppCompraAlmoxppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_ESTOQUE'
      FieldName = 'PRD_ESTOQUE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object ppCompraAlmoxppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_ENTRADA'
      FieldName = 'PRD_ENTRADA'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 6
    end
    object ppCompraAlmoxppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_SAIDA'
      FieldName = 'PRD_SAIDA'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object ppCompraAlmoxppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_EMPENHO'
      FieldName = 'PRD_EMPENHO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 8
    end
    object ppCompraAlmoxppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_PENDENTE'
      FieldName = 'PRD_PENDENTE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 9
    end
    object ppCompraAlmoxppField11: TppField
      FieldAlias = 'CC_SALDO'
      FieldName = 'CC_SALDO'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object ppCompraAlmoxppField12: TppField
      FieldAlias = 'CC_CUSTO_TOTAL'
      FieldName = 'CC_CUSTO_TOTAL'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
  end
end
