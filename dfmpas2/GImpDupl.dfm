object FormGimpDuplicata: TFormGimpDuplicata
  Left = 219
  Top = 30
  BorderIcons = [biSystemMenu]
  Caption = 'Impress'#227'o do Duplicata'
  ClientHeight = 387
  ClientWidth = 302
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
  object Group04: TGroupBox
    Left = 0
    Top = 304
    Width = 305
    Height = 41
    TabOrder = 1
    object BitConfig: TBitBtn
      Left = 4
      Top = 11
      Width = 139
      Height = 25
      Cursor = crHandPoint
      Caption = 'C&onfigura'#231#227'o de Impress'#227'o'
      TabOrder = 2
      OnClick = BitConfigClick
    end
    object Bit_Ok: TBitBtn
      Left = 146
      Top = 11
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&OK'
      TabOrder = 0
      OnClick = Bit_OkClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 224
      Top = 11
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = Bit_CancelarClick
    end
  end
  object Group03: TGroupBox
    Left = 0
    Top = 181
    Width = 305
    Height = 124
    Caption = 'Liberar Reemiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label8: TLabel
      Left = 48
      Top = 22
      Width = 88
      Height = 13
      Caption = 'Por No. Fatura:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 61
      Width = 123
      Height = 13
      Caption = 'Por Data de Emiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 114
      Top = 40
      Width = 15
      Height = 13
      Caption = 'ou'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtFat_codigo: TEdit
      Left = 139
      Top = 17
      Width = 60
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
      OnExit = EdtFat_codigoExit
    end
    object BitLiberaOK: TBitBtn
      Left = 8
      Top = 92
      Width = 134
      Height = 25
      Caption = '&Confirma Remiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitLiberaOKClick
    end
    object BiLiberaCancela: TBitBtn
      Left = 160
      Top = 92
      Width = 134
      Height = 25
      Caption = 'Ca&ncela Remiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BiLiberaCancelaClick
    end
    object DataEmis: TJvDateEdit
      Left = 139
      Top = 58
      Width = 99
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
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
    end
  end
  object Group00: TGroupBox
    Left = 0
    Top = 0
    Width = 183
    Height = 99
    Caption = 'Sele'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object RadData: TRadioButton
      Left = 16
      Top = 20
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
      Left = 16
      Top = 45
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
    object RadRemissao: TRadioButton
      Left = 16
      Top = 69
      Width = 121
      Height = 17
      Caption = 'Liberar Remiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = RadRemissaoClick
    end
  end
  object Group01: TGroupBox
    Left = 0
    Top = 99
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
    object Label11: TLabel
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
    object Label12: TLabel
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
  object Group02: TGroupBox
    Left = 0
    Top = 140
    Width = 305
    Height = 41
    Caption = 'Filtrar por'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label13: TLabel
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
    object Label14: TLabel
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
      OnExit = EditParcelaExit
    end
  end
  object Group05: TGroupBox
    Left = 0
    Top = 345
    Width = 305
    Height = 41
    TabOrder = 5
    object Label7: TLabel
      Left = 4
      Top = 10
      Width = 30
      Height = 13
      Caption = 'OBS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 29
      Top = 10
      Width = 236
      Height = 13
      Caption = ' Ap'#243's impress'#227'o s'#243' poder'#225' ser reimpresso a fatura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 29
      Top = 22
      Width = 254
      Height = 13
      Caption = 'novamente executando-se a rotina Libera Reemiss'#227'o.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
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
    TabOrder = 6
    object RadImpressora: TRadioButton
      Left = 14
      Top = 45
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
      Top = 20
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
    Left = 64
    Top = 312
  end
  object RDprintDup: TRDprint
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
    TamanhoQteColunas = 80
    TamanhoQteLPP = Oito
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 248
    Top = 206
  end
  object SqlCdsConfDupl: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from SYSDUPLI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from SYSDUPLI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 120
    Top = 8
    object SqlCdsConfDuplCDU_CODIGO: TStringField
      FieldName = 'CDU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object SqlCdsConfDuplCDU_DTCADA: TDateField
      FieldName = 'CDU_DTCADA'
    end
    object SqlCdsConfDuplCDU_ATIVO: TStringField
      FieldName = 'CDU_ATIVO'
      Size = 1
    end
    object SqlCdsConfDuplCDU_FONTE: TStringField
      FieldName = 'CDU_FONTE'
      Size = 2
    end
    object SqlCdsConfDuplEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsConfDuplCDU_NATUREZA: TStringField
      FieldName = 'CDU_NATUREZA'
      Size = 7
    end
    object SqlCdsConfDuplCDU_DTEMISSAO: TStringField
      FieldName = 'CDU_DTEMISSAO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_FATURA: TStringField
      FieldName = 'CDU_FATURA'
      Size = 7
    end
    object SqlCdsConfDuplCDU_VALORD: TStringField
      FieldName = 'CDU_VALORD'
      Size = 7
    end
    object SqlCdsConfDuplCDU_NORDEM: TStringField
      FieldName = 'CDU_NORDEM'
      Size = 7
    end
    object SqlCdsConfDuplCDU_VENCTO: TStringField
      FieldName = 'CDU_VENCTO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_DESCTODE: TStringField
      FieldName = 'CDU_DESCTODE'
      Size = 7
    end
    object SqlCdsConfDuplCDU_DESCTOATE: TStringField
      FieldName = 'CDU_DESCTOATE'
      Size = 7
    end
    object SqlCdsConfDuplCDU_DESCTOS: TStringField
      FieldName = 'CDU_DESCTOS'
      Size = 7
    end
    object SqlCdsConfDuplCDU_CONDESPECIAL: TStringField
      FieldName = 'CDU_CONDESPECIAL'
      Size = 7
    end
    object SqlCdsConfDuplCDU_NOMESACADO: TStringField
      FieldName = 'CDU_NOMESACADO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_ENDERECO: TStringField
      FieldName = 'CDU_ENDERECO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_BAIRRO: TStringField
      FieldName = 'CDU_BAIRRO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_CIDADE: TStringField
      FieldName = 'CDU_CIDADE'
      Size = 7
    end
    object SqlCdsConfDuplCDU_ESTADO: TStringField
      FieldName = 'CDU_ESTADO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_CEP: TStringField
      FieldName = 'CDU_CEP'
      Size = 7
    end
    object SqlCdsConfDuplCDU_FONE: TStringField
      FieldName = 'CDU_FONE'
      Size = 7
    end
    object SqlCdsConfDuplCDU_PRACA: TStringField
      FieldName = 'CDU_PRACA'
      Size = 7
    end
    object SqlCdsConfDuplCDU_ENDECOBRA: TStringField
      FieldName = 'CDU_ENDECOBRA'
      Size = 7
    end
    object SqlCdsConfDuplCDU_CEPCOBRA: TStringField
      FieldName = 'CDU_CEPCOBRA'
      Size = 7
    end
    object SqlCdsConfDuplCDU_CNPJ: TStringField
      FieldName = 'CDU_CNPJ'
      Size = 7
    end
    object SqlCdsConfDuplCDU_INSCRESTADUAL: TStringField
      FieldName = 'CDU_INSCRESTADUAL'
      Size = 7
    end
    object SqlCdsConfDuplCDU_DATACEITE: TStringField
      FieldName = 'CDU_DATACEITE'
      Size = 7
    end
    object SqlCdsConfDuplCDU_VLEXTENSO: TStringField
      FieldName = 'CDU_VLEXTENSO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_LINHAS: TStringField
      FieldName = 'CDU_LINHAS'
      Size = 3
    end
  end
  object SqlCdsDupl: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'P1.FAT_CODIGO,'#13#10'P1.FPC_NUMER,'#13#10'P1.CLI_CODIGO,'#13#10'P1.FPC_DT' +
      'EMIS,'#13#10'P1.FPC_VENCTO,'#13#10'P1.FPC_VLPARC,'#13#10'P1.FPC_DESCTO,'#13#10'P1.FPC_DT' +
      'DESC,'#13#10'P1.FPC_IMPDUP,'#13#10'P1.FPC_SITPAG,'#13#10'P1.EMP_CODIGO,'#13#10'A1.FAT_OP' +
      'ERACAO,'#13#10'C1.CLI_RAZAO,'#13#10'C1.CLI_ENDERE,'#13#10'C1.CLI_BAIRRO,'#13#10'C1.CLI_C' +
      'EP,'#13#10'C1.CLI_CIDADE,'#13#10'C1.CLI_UF,'#13#10'C1.CLI_FONE,'#13#10'C1.CLI_ENDFAT,'#13#10'C' +
      '1.CLI_CIDFAT,'#13#10'C1.CLI_CEPFAT,'#13#10'C1.CLI_UFFAT,'#13#10'C1.CLI_CGC,'#13#10'C1.CL' +
      'I_INSC'#13#10'FROM fat_pc01 P1'#13#10'JOIN CLI0000 C1 ON C1.cli_codigo = P1.' +
      'cli_codigo'#13#10'JOIN FAT0000 A1 ON A1.FAT_CODIGO = P1.FAT_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'P1.FAT_CODIGO,'#13#10'P1.FPC_NUMER,'#13#10'P1.CLI_CODIGO,'#13#10'P1.FPC_DT' +
      'EMIS,'#13#10'P1.FPC_VENCTO,'#13#10'P1.FPC_VLPARC,'#13#10'P1.FPC_DESCTO,'#13#10'P1.FPC_DT' +
      'DESC,'#13#10'P1.FPC_IMPDUP,'#13#10'P1.FPC_SITPAG,'#13#10'P1.EMP_CODIGO,'#13#10'A1.FAT_OP' +
      'ERACAO,'#13#10'C1.CLI_RAZAO,'#13#10'C1.CLI_ENDERE,'#13#10'C1.CLI_BAIRRO,'#13#10'C1.CLI_C' +
      'EP,'#13#10'C1.CLI_CIDADE,'#13#10'C1.CLI_UF,'#13#10'C1.CLI_FONE,'#13#10'C1.CLI_ENDFAT,'#13#10'C' +
      '1.CLI_CIDFAT,'#13#10'C1.CLI_CEPFAT,'#13#10'C1.CLI_UFFAT,'#13#10'C1.CLI_CGC,'#13#10'C1.CL' +
      'I_INSC'#13#10'FROM fat_pc01 P1'#13#10'JOIN CLI0000 C1 ON C1.cli_codigo = P1.' +
      'cli_codigo'#13#10'JOIN FAT0000 A1 ON A1.FAT_CODIGO = P1.FAT_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 152
    Top = 8
    object SqlCdsDuplFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      ProviderFlags = []
      Required = True
      Size = 6
    end
    object SqlCdsDuplFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      ProviderFlags = []
      Size = 2
    end
    object SqlCdsDuplCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = []
      Size = 5
    end
    object SqlCdsDuplFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
      ProviderFlags = []
    end
    object SqlCdsDuplFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
      ProviderFlags = []
    end
    object SqlCdsDuplFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      ProviderFlags = []
      Precision = 15
    end
    object SqlCdsDuplEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object SqlCdsDuplCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = []
      Size = 52
    end
    object SqlCdsDuplCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      ProviderFlags = []
      Size = 52
    end
    object SqlCdsDuplCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      ProviderFlags = []
      Size = 52
    end
    object SqlCdsDuplCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object SqlCdsDuplCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      ProviderFlags = []
      Size = 30
    end
    object SqlCdsDuplCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      ProviderFlags = []
      Size = 8
    end
    object SqlCdsDuplCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      ProviderFlags = []
      Size = 8
    end
    object SqlCdsDuplCLI_UF: TStringField
      FieldName = 'CLI_UF'
      ProviderFlags = []
      Size = 2
    end
    object SqlCdsDuplCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      ProviderFlags = []
      Size = 2
    end
    object SqlCdsDuplCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      ProviderFlags = []
      Size = 14
    end
    object SqlCdsDuplFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 15
    end
    object SqlCdsDuplFPC_DTDESC: TSQLTimeStampField
      FieldName = 'FPC_DTDESC'
    end
    object SqlCdsDuplFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object SqlCdsDuplFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object SqlCdsDuplFAT_OPERACAO: TStringField
      FieldName = 'FAT_OPERACAO'
      Size = 4
    end
    object SqlCdsDuplCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object SqlCdsDuplCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object SqlCdsDuplCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
  end
end
