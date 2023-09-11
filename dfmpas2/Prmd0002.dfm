object FrmParamDuplicar: TFrmParamDuplicar
  Left = 296
  Top = 282
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Duplicar parametros'
  ClientHeight = 109
  ClientWidth = 341
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
  object GroupBox1: TGroupBox
    Left = 1
    Top = -1
    Width = 337
    Height = 72
    Caption = 'Empresa'
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 24
      Width = 21
      Height = 13
      Caption = 'De:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 47
      Width = 31
      Height = 13
      Caption = 'Para:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edt_Para_Codigo: TEdit
      Left = 34
      Top = 43
      Width = 30
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 2
      OnEnter = Edt_Para_CodigoEnter
      OnExit = Edt_Para_CodigoExit
    end
    object Cbx_Para_Empresa: TComboBox
      Left = 65
      Top = 43
      Width = 265
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 3
      OnClick = Cbx_Para_EmpresaClick
      OnEnter = Cbx_Para_EmpresaEnter
      OnExit = Cbx_Para_EmpresaClick
    end
    object Edt_Cod_Empresa: TEdit
      Left = 34
      Top = 20
      Width = 30
      Height = 21
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 0
    end
    object Edt_Nome: TEdit
      Left = 65
      Top = 20
      Width = 265
      Height = 21
      TabStop = False
      Color = 14145495
      MaxLength = 50
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 140
    Top = 73
    Width = 198
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel1'
    Color = 12681984
    TabOrder = 1
    object Bit_Cancelar: TBitBtn
      Left = 99
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033333333333333333333333F333333333333
        0000333333333333333333333388F333333F3333000033300333333300033333
        38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
        000333000333333338F3338F833338F3000033333000300033333333338F3338
        3333F8330000333333000003333333333338F333333F83330000333333300033
        3333333333338F3333383333000033333300000333333333333338F333833333
        00003333300030003333333333333833338F3333000033330003330003333333
        33338333338F333300003330003333300033333333383338F338F33300003330
        0333333300033333338333838F338F3300003333333333333003333333833833
        38F338F300003333333333333333333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Confirma: TBitBtn
      Left = 4
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = 'C&onfirma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000CE0E0000D80E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555550055555
        55555555577FF5555555555500005555555555557777F5555555555500005555
        555555557777FF5555555550000005555555555777777F555555550000000555
        5555557777777FF5555557000500005555555777757777F55555700555500055
        55557775555777FF5555555555500005555555555557777F5555555555550005
        555555555555777FF5555555555550005555555555555777FF55555555555570
        05555555555555777FF5555555555557005555555555555777FF555555555555
        5000555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ConfirmaClick
    end
  end
  object SqlCds_Empresa: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select E1.EMP_CODIGO,E1.EMP_RAZAO  from EMP0000 E1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select E1.EMP_CODIGO,E1.EMP_RAZAO  from EMP0000 E1'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 176
    Top = 41
    object SqlCds_EmpresaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCds_EmpresaEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      Size = 45
    end
  end
  object cdsExporta: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'SELECT * FROM PRMT0001'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT * FROM PRMT0001'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 16
    Top = 65
  end
  object cdsGrava: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'SELECT * FROM PRMT0001'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT * FROM PRMT0001'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 88
    Top = 65
  end
end
