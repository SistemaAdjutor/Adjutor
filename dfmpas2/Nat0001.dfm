object FrmOpNatureza: TFrmOpNatureza
  Left = 130
  Top = 237
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Transfer'#234'ncia de Opera'#231#227'o de Natureza'
  ClientHeight = 127
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 1
    Width = 465
    Height = 41
    Caption = 'CFOP De:'
    TabOrder = 0
    object CbOperDe: TComboBox
      Left = 36
      Top = 15
      Width = 424
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 60
      ParentFont = False
      TabOrder = 0
      OnClick = CbOperDeClick
      OnExit = CbOperDeExit
    end
    object CurrOpeNatDe: TCurrencyEdit
      Left = 3
      Top = 15
      Width = 33
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DisplayFormat = '0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
      OnExit = CurrOpeNatDeExit
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 42
    Width = 465
    Height = 41
    Caption = 'CFOP Para:'
    TabOrder = 1
    object CurrOpeNatPa: TCurrencyEdit
      Left = 3
      Top = 15
      Width = 33
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DisplayFormat = '0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      OnExit = CurrOpeNatPaExit
    end
    object CbOperPa: TComboBox
      Left = 36
      Top = 15
      Width = 424
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 60
      ParentFont = False
      TabOrder = 1
      OnClick = CbOperPaClick
      OnExit = CbOperPaExit
    end
  end
  object BitBtn1: TBitBtn
    Left = 470
    Top = 6
    Width = 75
    Height = 25
    Caption = '&Atualizar'
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333377F3333333333000033334224333333333333
      337337F3333333330000333422224333333333333733337F3333333300003342
      222224333333333373333337F3333333000034222A22224333333337F337F333
      7F33333300003222A3A2224333333337F3737F337F33333300003A2A333A2224
      33333337F73337F337F33333000033A33333A222433333337333337F337F3333
      0000333333333A222433333333333337F337F33300003333333333A222433333
      333333337F337F33000033333333333A222433333333333337F337F300003333
      33333333A222433333333333337F337F00003333333333333A22433333333333
      3337F37F000033333333333333A223333333333333337F730000333333333333
      333A333333333333333337330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 2
    TabStop = False
    OnClick = BitBtn1Click
  end
  object Panel2: TPanel
    Left = 0
    Top = 87
    Width = 547
    Height = 39
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 4
    object Label7: TLabel
      Left = 217
      Top = 4
      Width = 59
      Height = 13
      Caption = 'ATEN'#199#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 109
      Top = 18
      Width = 359
      Height = 16
      Caption = 'Fa'#231'a o Backup, antes de executar esse processo....'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object BitSair: TBitBtn
    Left = 471
    Top = 32
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 3
    TabStop = False
    OnClick = BitSairClick
  end
  object SqlCdsOPDe: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'Distinct(E1.OPE_NATUREZA),'#13#10'O1.ope_descri'#13#10'from ENF0001 ' +
      'E1'#13#10'LEFT JOIN OPE0000 O1 ON (O1.ope_natureza = E1.ope_natureza)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'Distinct(E1.OPE_NATUREZA),'#13#10'O1.ope_descri'#13#10'from ENF0001 ' +
      'E1'#13#10'LEFT JOIN OPE0000 O1 ON (O1.ope_natureza = E1.ope_natureza)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 472
    Top = 92
    object SqlCdsOPDeOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object SqlCdsOPDeOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
  end
  object SqlCdsOPPa: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'OPE_CODIGO, '#13#10'OPE_NATUREZA, '#13#10'OPE_DESCRI,'#13#10'OPE_DENTRO,'#13 +
      #10'OPE_TIPO'#13#10' from OPE0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'OPE_CODIGO, '#13#10'OPE_NATUREZA, '#13#10'OPE_DESCRI,'#13#10'OPE_DENTRO,'#13 +
      #10'OPE_TIPO'#13#10' from OPE0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 504
    Top = 92
    object SqlCdsOPPaOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsOPPaOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object SqlCdsOPPaOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
    object SqlCdsOPPaOPE_DENTRO: TStringField
      FieldName = 'OPE_DENTRO'
      Size = 1
    end
    object SqlCdsOPPaOPE_TIPO: TStringField
      FieldName = 'OPE_TIPO'
      Size = 1
    end
  end
end
