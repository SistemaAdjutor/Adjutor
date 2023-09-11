object FrmTransfCtaCaixa: TFrmTransfCtaCaixa
  Left = 145
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Transfer'#234'ncia da Conta Caixa do Fornecedor'
  ClientHeight = 135
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grp_Pesquisa: TGroupBox
    Left = 0
    Top = 0
    Width = 529
    Height = 41
    Caption = 'Pesquisar Fornecedor'
    TabOrder = 0
    object BitSair: TBitBtn
      Left = 424
      Top = 16
      Width = 100
      Height = 21
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitSairClick
    end
    object BitPesquisa: TBitBtn
      Left = 324
      Top = 16
      Width = 100
      Height = 21
      Caption = '&Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitPesquisaClick
    end
    object Curr_Forn: TCurrencyEdit
      Left = 4
      Top = 16
      Width = 33
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0000'
      MaxLength = 4
      TabOrder = 0
      OnExit = Curr_FornExit
    end
    object Cb_Forn: TComboBox
      Left = 39
      Top = 16
      Width = 282
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 1
      OnClick = Cb_FornExit
      OnExit = Cb_FornExit
    end
  end
  object Grp_Conta: TGroupBox
    Left = 0
    Top = 48
    Width = 529
    Height = 82
    Caption = 'Conta Caixa'
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 17
      Top = 24
      Width = 17
      Height = 13
      Caption = 'De:'
    end
    object Label2: TLabel
      Left = 9
      Top = 52
      Width = 25
      Height = 13
      Caption = 'Para:'
    end
    object Edt_De_Razao: TEdit
      Left = 71
      Top = 21
      Width = 327
      Height = 21
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 1
    end
    object Cb_Para: TComboBox
      Left = 71
      Top = 48
      Width = 327
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 3
      OnClick = Cb_ParaExit
      OnExit = Cb_ParaExit
    end
    object Bit_Gravar: TBitBtn
      Left = 413
      Top = 20
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Confirma atualiza'#231#227'o da Conta Caixa'
      Caption = '&Confirmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 413
      Top = 45
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Cancela registro atual...'
      Caption = 'Cancela&r'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Curr_Para: TCurrencyEdit
      Left = 37
      Top = 48
      Width = 33
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '000'
      MaxLength = 3
      TabOrder = 2
      OnExit = Curr_ParaExit
    end
    object Curr_De_Forn: TCurrencyEdit
      Left = 37
      Top = 21
      Width = 33
      Height = 21
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '000'
      ReadOnly = True
      TabOrder = 0
    end
  end
  object SqlCdsFornecedor: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.FOR_CODIGO,'#13#10'T1.FOR_RAZAO'#13#10'FROM FOR0000 T1'#13#10'ORDER BY'#13 +
      #10'T1.FOR_RAZAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.FOR_CODIGO,'#13#10'T1.FOR_RAZAO'#13#10'FROM FOR0000 T1'#13#10'ORDER BY'#13 +
      #10'T1.FOR_RAZAO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 216
    Top = 14
    object SqlCdsFornecedorFOR_CODIGO: TStringField
      Alignment = taCenter
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsFornecedorFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
  end
  object SqlContaCaixa: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.CCT_CODIGO,'#13#10'T1.CCT_DESCRI'#13#10'FROM CCT_0000 T1'#13#10'ORDER B' +
      'Y'#13#10'T1.CCT_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.CCT_CODIGO,'#13#10'T1.CCT_DESCRI'#13#10'FROM CCT_0000 T1'#13#10'ORDER B' +
      'Y'#13#10'T1.CCT_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 176
    Top = 88
    object SqlContaCaixaCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Required = True
      Size = 3
    end
    object SqlContaCaixaCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 82
    end
  end
  object DsForn: TDataSource
    DataSet = SqlCdsFornecedor
    Left = 248
    Top = 14
  end
end
