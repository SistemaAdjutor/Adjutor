object FormTrasmBancos: TFormTrasmBancos
  Left = 26
  Top = 74
  Width = 717
  Height = 513
  BorderIcons = [biSystemMenu]
  Caption = 'Gera Arquivo de Transmiss'#227'o para Bancos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 17
    Top = 33
    Width = 121
    Height = 13
    Caption = 'N'#250'mero Inicial da Fatura :'
  end
  object Label2: TLabel
    Left = 22
    Top = 59
    Width = 116
    Height = 13
    Caption = 'N'#250'mero Final da Fatura :'
  end
  object Label3: TLabel
    Left = 62
    Top = 85
    Width = 76
    Height = 13
    Caption = 'Nosso N'#250'mero :'
  end
  object Label4: TLabel
    Left = 45
    Top = 112
    Width = 93
    Height = 13
    Caption = 'C'#243'digo da Carteira :'
  end
  object Label5: TLabel
    Left = 6
    Top = 138
    Width = 132
    Height = 13
    Caption = '1a. Instru'#231#227'o de Cobran'#231'a :'
  end
  object Label6: TLabel
    Left = 6
    Top = 164
    Width = 132
    Height = 13
    Caption = '2a. Instru'#231#227'o de Cobran'#231'a :'
  end
  object Label7: TLabel
    Left = 83
    Top = 214
    Width = 55
    Height = 13
    Caption = 'Mensagem:'
  end
  object Label9: TLabel
    Left = 93
    Top = 6
    Width = 45
    Height = 13
    Caption = 'Banco :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 9
    Top = 189
    Width = 129
    Height = 13
    Alignment = taRightJustify
    Caption = 'Prazo Protesto\Devolu'#231#227'o:'
  end
  object Label8: TLabel
    Left = 11
    Top = 259
    Width = 107
    Height = 13
    Caption = 'Arquivo Remessa :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LbRemessa: TLabel
    Left = 120
    Top = 259
    Width = 81
    Height = 13
    Caption = 'Aguardando...'
    Color = clCaptionText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 610
    Top = 248
    Width = 92
    Height = 23
    Caption = '<F9> Sair'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Edt_Instruc: TLabel
    Left = 163
    Top = 138
    Width = 93
    Height = 13
    Caption = 'Qual '#233' a Instru'#231#227'o?'
    Visible = False
  end
  object xInicial: TEdit
    Left = 140
    Top = 31
    Width = 60
    Height = 21
    MaxLength = 6
    TabOrder = 1
    OnExit = xInicialExit
    OnKeyPress = xInicialKeyPress
  end
  object xFinal: TEdit
    Left = 140
    Top = 57
    Width = 60
    Height = 21
    MaxLength = 6
    TabOrder = 2
    OnEnter = xFinalEnter
    OnExit = xFinalExit
    OnKeyPress = xFinalKeyPress
  end
  object xNossoN: TEdit
    Left = 140
    Top = 83
    Width = 88
    Height = 21
    Enabled = False
    MaxLength = 9
    TabOrder = 3
    OnKeyPress = xNossoNKeyPress
  end
  object xCarteira: TEdit
    Left = 140
    Top = 110
    Width = 21
    Height = 21
    MaxLength = 2
    TabOrder = 4
    OnKeyPress = xCarteiraKeyPress
  end
  object xInstrucao1: TEdit
    Left = 140
    Top = 136
    Width = 20
    Height = 21
    MaxLength = 2
    TabOrder = 5
    OnExit = xInstrucao1Exit
    OnKeyPress = xInstrucao1KeyPress
  end
  object xInstrucao2: TEdit
    Left = 140
    Top = 162
    Width = 20
    Height = 21
    MaxLength = 2
    TabOrder = 6
    OnKeyPress = xInstrucao2KeyPress
  end
  object xMensagem: TEdit
    Left = 140
    Top = 212
    Width = 242
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 30
    TabOrder = 8
  end
  object DBGrid1: TDBGrid
    Left = 389
    Top = 5
    Width = 313
    Height = 228
    TabStop = False
    DataSource = DsQRecParce
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FAT_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'No. Fatura'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPC_NUMER'
        Title.Alignment = taCenter
        Title.Caption = 'N.PC'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPC_VLPARC'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPC_DTEMIS'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Width = 73
        Visible = True
      end>
  end
  object DBLkCboBanco: TDBLookupComboBox
    Left = 140
    Top = 4
    Width = 242
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    KeyField = 'BAN_APELIDO'
    ListField = 'BAN_APELIDO'
    ListSource = DataModulo.Dsbanco
    ParentFont = False
    TabOrder = 0
    OnExit = DBLkCboBancoExit
  end
  object EdtProtesto: TEdit
    Left = 140
    Top = 187
    Width = 20
    Height = 21
    MaxLength = 2
    TabOrder = 7
    OnExit = EdtProtestoExit
    OnKeyPress = EdtProtestoKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 459
    Top = 248
    Width = 144
    Height = 23
    Caption = '&Gerar Arquivo Remessa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    TabStop = False
    OnClick = BitBtn1Click
  end
  object Memo1: TMemo
    Left = 9
    Top = 275
    Width = 692
    Height = 204
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Fixedsys'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 10
  end
  object Panel1: TPanel
    Left = 9
    Top = 239
    Width = 691
    Height = 3
    BevelOuter = bvLowered
    TabOrder = 12
  end
  object TQRecParce: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FAT_CODIGO, FPC_NUMER, REP_CODIGO, BAN_CODIGO, FPC_DTEMIS' +
        ', FPC_COBNUM, FPC_COBTIPO, FPC_STATUS, FPC_DESCTO, FPC_DTDESC, F' +
        'PC_VENCTO, FPC_PAGTO, FPC_VLPARC, FPC_VLPAGO, FPC_OBS, FPC_SITPA' +
        'G, EMP_CODIGO, CLI_CODIGO, FPC_IMPDUP'
      'FROM FAT_PC01 Fat_pc01')
    Left = 266
    Top = 59
    object TQRecParceFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Origin = 'FAT_PC01.FAT_CODIGO'
      Size = 6
    end
    object TQRecParceFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Origin = 'FAT_PC01.FPC_NUMER'
      Size = 2
    end
    object TQRecParceREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Origin = 'FAT_PC01.REP_CODIGO'
      Size = 3
    end
    object TQRecParceBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Origin = 'FAT_PC01.BAN_CODIGO'
      Size = 4
    end
    object TQRecParceFPC_DTEMIS: TDateTimeField
      FieldName = 'FPC_DTEMIS'
      Origin = 'FAT_PC01.FPC_DTEMIS'
    end
    object TQRecParceFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Origin = 'FAT_PC01.FPC_COBNUM'
      Size = 13
    end
    object TQRecParceFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Origin = 'FAT_PC01.FPC_COBTIPO'
      Size = 2
    end
    object TQRecParceFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Origin = 'FAT_PC01.FPC_STATUS'
      Size = 12
    end
    object TQRecParceFPC_DESCTO: TFloatField
      FieldName = 'FPC_DESCTO'
      Origin = 'FAT_PC01.FPC_DESCTO'
    end
    object TQRecParceFPC_DTDESC: TDateTimeField
      FieldName = 'FPC_DTDESC'
      Origin = 'FAT_PC01.FPC_DTDESC'
    end
    object TQRecParceFPC_VENCTO: TDateTimeField
      FieldName = 'FPC_VENCTO'
      Origin = 'FAT_PC01.FPC_VENCTO'
    end
    object TQRecParceFPC_PAGTO: TDateTimeField
      FieldName = 'FPC_PAGTO'
      Origin = 'FAT_PC01.FPC_PAGTO'
    end
    object TQRecParceFPC_VLPARC: TFloatField
      FieldName = 'FPC_VLPARC'
      Origin = 'FAT_PC01.FPC_VLPARC'
      DisplayFormat = '#0,.00'
      EditFormat = '#0,.00'
    end
    object TQRecParceFPC_VLPAGO: TFloatField
      FieldName = 'FPC_VLPAGO'
      Origin = 'FAT_PC01.FPC_VLPAGO'
    end
    object TQRecParceFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Origin = 'FAT_PC01.FPC_OBS'
      Size = 50
    end
    object TQRecParceFPC_SITPAG: TBooleanField
      FieldName = 'FPC_SITPAG'
      Origin = 'FAT_PC01.FPC_SITPAG'
    end
    object TQRecParceEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'FAT_PC01.EMP_CODIGO'
      Size = 3
    end
    object TQRecParceCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'FAT_PC01.CLI_CODIGO'
      Size = 5
    end
    object TQRecParceFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Origin = 'FAT_PC01.FPC_IMPDUP'
      Size = 1
    end
  end
  object DsQRecParce: TDataSource
    DataSet = TQRecParce
    Left = 266
    Top = 106
  end
  object TbSequencia: TTable
    DatabaseName = 'RWMaster'
    TableName = 'REM00CEF'
    Left = 337
    Top = 36
    object TbSequenciaCEF_REMESSA: TStringField
      FieldName = 'CEF_REMESSA'
      Size = 5
    end
  end
end
