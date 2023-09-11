object FormBloquetoBancario: TFormBloquetoBancario
  Left = 245
  Top = 162
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Impress'#227'o de Bloquetos Banc'#225'rios'
  ClientHeight = 266
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Group03: TGroupBox
    Left = 0
    Top = 222
    Width = 305
    Height = 41
    TabOrder = 4
    object BitConfig: TBitBtn
      Left = 4
      Top = 11
      Width = 139
      Height = 25
      Cursor = crHandPoint
      Caption = 'C&onfigura'#231#227'o de Impress'#227'o'
      TabOrder = 2
      TabStop = False
      OnClick = BitConfigClick
    end
    object BitBtn1: TBitBtn
      Left = 146
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
      Left = 224
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
  object Group00: TGroupBox
    Left = 0
    Top = 100
    Width = 305
    Height = 41
    Caption = 'Sele'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object RadData: TRadioButton
      Left = 11
      Top = 17
      Width = 89
      Height = 17
      Caption = '&Data emiss'#227'o'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = RadDataClick
    end
    object RadFatura: TRadioButton
      Left = 195
      Top = 17
      Width = 73
      Height = 17
      Caption = '&N'#186' Fatura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RadFaturaClick
    end
  end
  object Group01: TGroupBox
    Left = 0
    Top = 141
    Width = 305
    Height = 41
    Caption = 'Filtrar por'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 17
      Top = 18
      Width = 26
      Height = 13
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 151
      Top = 18
      Width = 19
      Height = 13
      Caption = 'At'#233':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditDataI: TJvDateEdit
      Left = 45
      Top = 14
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
      OnExit = EditDataIExit
    end
    object EditDataF: TJvDateEdit
      Left = 175
      Top = 14
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
      TabOrder = 1
      OnExit = EditDataFExit
    end
  end
  object GroupBox6: TGroupBox
    Left = 0
    Top = 0
    Width = 182
    Height = 100
    Caption = 'Selecione o Boleto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object LTBoxBloquetos: TListBox
      Left = 2
      Top = 15
      Width = 178
      Height = 83
      Style = lbOwnerDrawVariable
      Align = alClient
      Color = 11599871
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = LTBoxBloquetosClick
    end
  end
  object Group02: TGroupBox
    Left = 0
    Top = 182
    Width = 305
    Height = 41
    Caption = 'Filtrar por'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 17
      Width = 63
      Height = 13
      Caption = 'N'#186' da Fatura:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 154
      Top = 17
      Width = 39
      Height = 13
      Caption = 'Parcela:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditFatura: TEdit
      Left = 74
      Top = 14
      Width = 65
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
      OnExit = EditFaturaExit
    end
    object EditParcela: TEdit
      Left = 199
      Top = 14
      Width = 25
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object GroupDispositivo: TGroupBox
    Left = 184
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
    TabOrder = 5
    object RadImpressora: TRadioButton
      Left = 14
      Top = 58
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
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 137
    Top = 23
  end
  object SqlCdsListaBox: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'Y1.BOL_CODBOL,'#13#10'Y1.BOL_ATIVO,'#13#10'Y1.BOL_CODBAN,'#13#10'Y1.EMP_CO' +
      'DIGO,'#13#10'Y2.BAN_APELIDO'#13#10'FROM SYSBOLETO Y1'#13#10'JOIN BAN0000 Y2 ON Y2.' +
      'BAN_CODIGO = Y1.BOL_CODBAN'#13#10'order by y2.BAN_APELIDO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'Y1.BOL_CODBOL,'#13#10'Y1.BOL_ATIVO,'#13#10'Y1.BOL_CODBAN,'#13#10'Y1.EMP_CO' +
      'DIGO,'#13#10'Y2.BAN_APELIDO'#13#10'FROM SYSBOLETO Y1'#13#10'JOIN BAN0000 Y2 ON Y2.' +
      'BAN_CODIGO = Y1.BOL_CODBAN'#13#10'order by y2.BAN_APELIDO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 8
    Top = 24
    object SqlCdsListaBoxBOL_CODBOL: TStringField
      FieldName = 'BOL_CODBOL'
      Required = True
      Size = 3
    end
    object SqlCdsListaBoxBOL_ATIVO: TStringField
      FieldName = 'BOL_ATIVO'
      Size = 1
    end
    object SqlCdsListaBoxBOL_CODBAN: TStringField
      FieldName = 'BOL_CODBAN'
      Size = 6
    end
    object SqlCdsListaBoxBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
  end
  object SqlCdsConfImpr: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from SYSBOLETO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from SYSBOLETO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 40
    Top = 24
    object SqlCdsConfImprBOL_CODBOL: TStringField
      FieldName = 'BOL_CODBOL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsConfImprBOL_ATIVO: TStringField
      FieldName = 'BOL_ATIVO'
      Size = 1
    end
    object SqlCdsConfImprBOL_CODBAN: TStringField
      FieldName = 'BOL_CODBAN'
      Size = 6
    end
    object SqlCdsConfImprBOL_NRLINHA: TStringField
      FieldName = 'BOL_NRLINHA'
      Size = 3
    end
    object SqlCdsConfImprBOL_LOCAL: TStringField
      FieldName = 'BOL_LOCAL'
      Size = 7
    end
    object SqlCdsConfImprBOL_VENCTO: TStringField
      FieldName = 'BOL_VENCTO'
      Size = 7
    end
    object SqlCdsConfImprBOL_DTEMIS: TStringField
      FieldName = 'BOL_DTEMIS'
      Size = 7
    end
    object SqlCdsConfImprBOL_CODFAT: TStringField
      FieldName = 'BOL_CODFAT'
      Size = 7
    end
    object SqlCdsConfImprBOL_ESPDOC: TStringField
      FieldName = 'BOL_ESPDOC'
      Size = 7
    end
    object SqlCdsConfImprBOL_DESESPDOC: TStringField
      FieldName = 'BOL_DESESPDOC'
      Size = 3
    end
    object SqlCdsConfImprBOL_ACEITE: TStringField
      FieldName = 'BOL_ACEITE'
      Size = 7
    end
    object SqlCdsConfImprBOL_DESACEITE: TStringField
      FieldName = 'BOL_DESACEITE'
      Size = 3
    end
    object SqlCdsConfImprBOL_DTPROCE: TStringField
      FieldName = 'BOL_DTPROCE'
      Size = 7
    end
    object SqlCdsConfImprBOL_USOBCO: TStringField
      FieldName = 'BOL_USOBCO'
      Size = 7
    end
    object SqlCdsConfImprBOL_CARTEIRA: TStringField
      FieldName = 'BOL_CARTEIRA'
      Size = 7
    end
    object SqlCdsConfImprBOL_DESCARTEIRA: TStringField
      FieldName = 'BOL_DESCARTEIRA'
      Size = 3
    end
    object SqlCdsConfImprBOL_VLPARC: TStringField
      FieldName = 'BOL_VLPARC'
      Size = 7
    end
    object SqlCdsConfImprBOL_ESPECIE: TStringField
      FieldName = 'BOL_ESPECIE'
      Size = 7
    end
    object SqlCdsConfImprBOL_DESPECIE: TStringField
      FieldName = 'BOL_DESPECIE'
      Size = 5
    end
    object SqlCdsConfImprBOL_QUANTIDADE: TStringField
      FieldName = 'BOL_QUANTIDADE'
      Size = 7
    end
    object SqlCdsConfImprBOL_VALOR: TStringField
      FieldName = 'BOL_VALOR'
      Size = 7
    end
    object SqlCdsConfImprBOL_VLDOC: TStringField
      FieldName = 'BOL_VLDOC'
      Size = 7
    end
    object SqlCdsConfImprBOL_JUROMES: TStringField
      FieldName = 'BOL_JUROMES'
      Size = 7
    end
    object SqlCdsConfImprBOL_DESCABAT: TStringField
      FieldName = 'BOL_DESCABAT'
      Size = 7
    end
    object SqlCdsConfImprBOL_OBSBOL1: TStringField
      FieldName = 'BOL_OBSBOL1'
      Size = 7
    end
    object SqlCdsConfImprBOL_OUTDEDU: TStringField
      FieldName = 'BOL_OUTDEDU'
      Size = 7
    end
    object SqlCdsConfImprBOL_OBSBOL2: TStringField
      FieldName = 'BOL_OBSBOL2'
      Size = 7
    end
    object SqlCdsConfImprBOL_MORAMULTA: TStringField
      FieldName = 'BOL_MORAMULTA'
      Size = 7
    end
    object SqlCdsConfImprBOL_OBSBOL3: TStringField
      FieldName = 'BOL_OBSBOL3'
      Size = 7
    end
    object SqlCdsConfImprBOL_OUTACRES: TStringField
      FieldName = 'BOL_OUTACRES'
      Size = 7
    end
    object SqlCdsConfImprBOL_OBSBOL4: TStringField
      FieldName = 'BOL_OBSBOL4'
      Size = 7
    end
    object SqlCdsConfImprBOL_VLCOBRADO: TStringField
      FieldName = 'BOL_VLCOBRADO'
      Size = 7
    end
    object SqlCdsConfImprBOL_RAZAO: TStringField
      FieldName = 'BOL_RAZAO'
      Size = 7
    end
    object SqlCdsConfImprBOL_END: TStringField
      FieldName = 'BOL_END'
      Size = 7
    end
    object SqlCdsConfImprBOL_CEP: TStringField
      FieldName = 'BOL_CEP'
      Size = 7
    end
    object SqlCdsConfImprBOL_CID: TStringField
      FieldName = 'BOL_CID'
      Size = 7
    end
    object SqlCdsConfImprBOL_EST: TStringField
      FieldName = 'BOL_EST'
      Size = 7
    end
    object SqlCdsConfImprBOL_CNPJ: TStringField
      FieldName = 'BOL_CNPJ'
      Size = 7
    end
    object SqlCdsConfImprBOL_LOCPGTO: TStringField
      FieldName = 'BOL_LOCPGTO'
      Size = 45
    end
    object SqlCdsConfImprBOL_OBS1: TStringField
      FieldName = 'BOL_OBS1'
      Size = 45
    end
    object SqlCdsConfImprBOL_OBS2: TStringField
      FieldName = 'BOL_OBS2'
      Size = 45
    end
    object SqlCdsConfImprBOL_OBS3: TStringField
      FieldName = 'BOL_OBS3'
      Size = 45
    end
    object SqlCdsConfImprBOL_OBS4: TStringField
      FieldName = 'BOL_OBS4'
      Size = 45
    end
    object SqlCdsConfImprEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsBoleto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'P1.FAT_CODIGO,'#13#10'P1.FPC_NUMER,'#13#10'P1.BAN_CODIGO,'#13#10'P1.CLI_CO' +
      'DIGO,'#13#10'P1.FPC_DTEMIS,'#13#10'P1.FPC_VENCTO,'#13#10'P1.FPC_VLPARC,'#13#10'P1.EMP_CO' +
      'DIGO,'#13#10'B1.BAN_JUROMES,'#13#10'C1.CLI_RAZAO,'#13#10'C1.CLI_ENDERE,'#13#10'C1.CLI_EN' +
      'DFAT,'#13#10'C1.CLI_CIDADE,'#13#10'C1.CLI_CIDFAT,'#13#10'C1.CLI_CEP,'#13#10'C1.CLI_CEPFA' +
      'T,'#13#10'C1.CLI_UF,'#13#10'C1.CLI_UFFAT,'#13#10'C1.CLI_CGC'#13#10'FROM fat_pc01 P1'#13#10'JOI' +
      'N ban0000 B1 ON B1.ban_codigo = P1.ban_codigo'#13#10'JOIN CLI0000 C1 O' +
      'N C1.cli_codigo = P1.cli_codigo'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'P1.FAT_CODIGO,'#13#10'P1.FPC_NUMER,'#13#10'P1.BAN_CODIGO,'#13#10'P1.CLI_CO' +
      'DIGO,'#13#10'P1.FPC_DTEMIS,'#13#10'P1.FPC_VENCTO,'#13#10'P1.FPC_VLPARC,'#13#10'P1.EMP_CO' +
      'DIGO,'#13#10'B1.BAN_JUROMES,'#13#10'C1.CLI_RAZAO,'#13#10'C1.CLI_ENDERE,'#13#10'C1.CLI_EN' +
      'DFAT,'#13#10'C1.CLI_CIDADE,'#13#10'C1.CLI_CIDFAT,'#13#10'C1.CLI_CEP,'#13#10'C1.CLI_CEPFA' +
      'T,'#13#10'C1.CLI_UF,'#13#10'C1.CLI_UFFAT,'#13#10'C1.CLI_CGC'#13#10'FROM fat_pc01 P1'#13#10'JOI' +
      'N ban0000 B1 ON B1.ban_codigo = P1.ban_codigo'#13#10'JOIN CLI0000 C1 O' +
      'N C1.cli_codigo = P1.cli_codigo'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 72
    Top = 24
    object SqlCdsBoletoFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object SqlCdsBoletoFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      ProviderFlags = []
      Size = 2
    end
    object SqlCdsBoletoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = []
      Size = 4
    end
    object SqlCdsBoletoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = []
      Size = 5
    end
    object SqlCdsBoletoFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
      ProviderFlags = []
    end
    object SqlCdsBoletoFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
      ProviderFlags = []
    end
    object SqlCdsBoletoFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      ProviderFlags = []
      Precision = 15
    end
    object SqlCdsBoletoBAN_JUROMES: TFMTBCDField
      FieldName = 'BAN_JUROMES'
      ProviderFlags = []
      Precision = 15
    end
    object SqlCdsBoletoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = []
      Size = 52
    end
    object SqlCdsBoletoCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      ProviderFlags = []
      Size = 52
    end
    object SqlCdsBoletoCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      ProviderFlags = []
      Size = 52
    end
    object SqlCdsBoletoCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object SqlCdsBoletoCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      ProviderFlags = []
      Size = 30
    end
    object SqlCdsBoletoCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      ProviderFlags = []
      Size = 8
    end
    object SqlCdsBoletoCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      ProviderFlags = []
      Size = 8
    end
    object SqlCdsBoletoCLI_UF: TStringField
      FieldName = 'CLI_UF'
      ProviderFlags = []
      Size = 2
    end
    object SqlCdsBoletoCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      ProviderFlags = []
      Size = 2
    end
    object SqlCdsBoletoCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      ProviderFlags = []
      Size = 14
    end
  end
  object RDPrintBoleto: TRDprint
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
    Acentuacao = Transliterate
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
    TamanhoQteColunas = 80
    TamanhoQteLPP = Oito
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 104
    Top = 80
  end
end
