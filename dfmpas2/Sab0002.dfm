object FormSaldoBancoGrid: TFormSaldoBancoGrid
  Left = 46
  Top = 67
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Lista de Saldo Banc'#225'rio'
  ClientHeight = 378
  ClientWidth = 610
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object BitCancelar: TBitBtn
    Left = 509
    Top = 4
    Width = 100
    Height = 21
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitCancelarClick
  end
  object BitPesquisa: TBitBtn
    Left = 509
    Top = 4
    Width = 100
    Height = 21
    Caption = '&Pesquisar'
    TabOrder = 2
    OnClick = BitPesquisaClick
  end
  object GbData: TGroupBox
    Left = 169
    Top = 0
    Width = 312
    Height = 43
    Caption = 'Informe o periodo para pesquisa '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 7
      Top = 21
      Width = 59
      Height = 13
      Caption = 'Data Inicial :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 169
      Top = 22
      Width = 54
      Height = 13
      Caption = 'Data Final :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxDataInicial: TDateEdit
      Left = 70
      Top = 17
      Width = 83
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GlyphKind = gkDropDown
      NumGlyphs = 1
      ParentFont = False
      TabOrder = 0
      OnExit = RxDataInicialExit
    end
    object RxDataFinal: TDateEdit
      Left = 226
      Top = 17
      Width = 83
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GlyphKind = gkDropDown
      NumGlyphs = 1
      ParentFont = False
      TabOrder = 1
      OnExit = RxDataFinalExit
    end
  end
  object GbBanco: TGroupBox
    Left = 169
    Top = 0
    Width = 331
    Height = 43
    Caption = 'Informe o banco para pesquisa :'
    TabOrder = 1
    object CurrCodBanco: TCurrencyEdit
      Left = 3
      Top = 17
      Width = 35
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DisplayFormat = '0000'
      MaxLength = 4
      TabOrder = 0
      OnExit = CurrCodBancoExit
    end
    object CbBanco: TComboBox
      Left = 40
      Top = 17
      Width = 280
      Height = 22
      TabOrder = 1
      Text = 'Informe o banco'
      OnClick = CbBancoClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 169
    Height = 43
    Caption = 'Pesquisa'
    TabOrder = 0
    object RadBanco: TRadioButton
      Left = 8
      Top = 19
      Width = 65
      Height = 17
      Caption = '&Banco'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadBancoClick
    end
    object RadData: TRadioButton
      Left = 112
      Top = 19
      Width = 43
      Height = 17
      Caption = '&Data'
      TabOrder = 1
      OnClick = RadDataClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 1
    Top = 47
    Width = 609
    Height = 331
    Caption = 'Saldo banc'#225'rio encontrados'
    TabOrder = 5
    object DBGridSaldoBanco: TDBGrid
      Left = 2
      Top = 16
      Width = 605
      Height = 313
      Align = alClient
      DataSource = DsSaldo
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridSaldoBancoDrawColumnCell
      OnDblClick = DBGridSaldoBancoDblClick
      OnKeyPress = DBGridSaldoBancoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'SAB_CODIGO'
          Title.Caption = 'Lan'#231'.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAN_APELIDO'
          Title.Alignment = taCenter
          Title.Caption = 'Banco'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 219
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SAB_DIA'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SAB_SALDO'
          Title.Alignment = taCenter
          Title.Caption = 'Dispon'#237'vel'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SAB_BLOQUEADO'
          Title.Alignment = taCenter
          Title.Caption = 'Bloqueado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SAB_APLICADO'
          Title.Alignment = taCenter
          Title.Caption = 'Aplicado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 80
          Visible = True
        end>
    end
  end
  object BitSair: TBitBtn
    Left = 509
    Top = 26
    Width = 100
    Height = 21
    Caption = '&Sair'
    TabOrder = 6
    OnClick = BitSairClick
  end
  object CdsSaldo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'BAN_CODIGO,'#13#10'SAB_DIA, '#13#10'SAB_CODIGO, '#13#10'SAB_BLOQUEADO, '#13#10 +
      'SAB_SALDO, '#13#10'SAB_APLICADO, '#13#10'BAN_APELIDO'#13#10'from SALDOBCO'#13#10'join ba' +
      'n0000 on SALDOBCO.BAN_CODIGO = BAN0000.BAN_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'BAN_CODIGO,'#13#10'SAB_DIA, '#13#10'SAB_CODIGO, '#13#10'SAB_BLOQUEADO, '#13#10 +
      'SAB_SALDO, '#13#10'SAB_APLICADO, '#13#10'BAN_APELIDO'#13#10'from SALDOBCO'#13#10'join ba' +
      'n0000 on SALDOBCO.BAN_CODIGO = BAN0000.BAN_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 320
    Top = 176
    object CdsSaldoSAB_DIA: TSQLTimeStampField
      FieldName = 'SAB_DIA'
    end
    object CdsSaldoSAB_CODIGO: TStringField
      FieldName = 'SAB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object CdsSaldoSAB_BLOQUEADO: TFMTBCDField
      FieldName = 'SAB_BLOQUEADO'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsSaldoSAB_APLICADO: TFMTBCDField
      FieldName = 'SAB_APLICADO'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsSaldoSAB_SALDO: TFMTBCDField
      FieldName = 'SAB_SALDO'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsSaldoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object CdsSaldoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 6
    end
  end
  object DsSaldo: TDataSource
    DataSet = CdsSaldo
    Left = 352
    Top = 176
  end
  object CdsBancos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 440
    Top = 8
  end
end
