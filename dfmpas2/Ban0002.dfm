object FormBancoGrid: TFormBancoGrid
  Left = 195
  Top = 230
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Contas Bancos'
  ClientHeight = 570
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitPesquisar: TBitBtn
    Left = 638
    Top = 5
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
    OnClick = BitPesquisarClick
  end
  object BitCancelar: TBitBtn
    Left = 639
    Top = 5
    Width = 100
    Height = 21
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitCancelarClick
  end
  object BitSair: TBitBtn
    Left = 639
    Top = 27
    Width = 100
    Height = 21
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitSairClick
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 209
    Height = 46
    Caption = 'Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object RadNome: TRadioButton
      Left = 120
      Top = 21
      Width = 49
      Height = 17
      Caption = 'No&me'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = RadNomeClick
    end
    object RadCodigo: TRadioButton
      Left = 8
      Top = 21
      Width = 57
      Height = 17
      Caption = 'C'#243'&digo'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = RadCodigoClick
    end
  end
  object GbPesquisa: TGroupBox
    Left = 211
    Top = 0
    Width = 257
    Height = 46
    Caption = 'Digite c'#243'digo da conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Edt_nome: TEdit
      Left = 10
      Top = 20
      Width = 30
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      OnClick = Edt_nomeClick
      OnEnter = Edt_nomeEnter
      OnExit = Edt_nomeExit
      OnKeyPress = Edt_nomeKeyPress
    end
  end
  object DBGridBanco: TDBGrid
    Left = 0
    Top = 53
    Width = 745
    Height = 508
    Color = 16776176
    DataSource = DsConsBco
    FixedColor = 12681984
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGridBancoDrawColumnCell
    OnDblClick = DBGridBancoDblClick
    OnKeyPress = DBGridBancoKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'BAN_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_APELIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Conta Banco'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 237
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_CODAGE'
        Title.Alignment = taCenter
        Title.Caption = 'Ag'#234'ncia'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_CODAGEDIG'
        Title.Alignment = taCenter
        Title.Caption = 'D'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_CONTA'
        Title.Alignment = taCenter
        Title.Caption = 'Conta'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_DIGCONTA'
        Title.Alignment = taCenter
        Title.Caption = 'D'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 16
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_CONTATO'
        Title.Alignment = taCenter
        Title.Caption = 'Gerente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 144
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_JUROMES'
        Title.Alignment = taCenter
        Title.Caption = 'Juros'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_FONE'
        Title.Alignment = taCenter
        Title.Caption = 'Fone'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 85
        Visible = True
      end>
  end
  object SqlCdsConsBco: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'Select * from BAN0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select * from BAN0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 112
    Top = 160
    object SqlCdsConsBcoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsConsBcoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object SqlCdsConsBcoBAN_CODAGE: TStringField
      FieldName = 'BAN_CODAGE'
      Size = 5
    end
    object SqlCdsConsBcoBAN_FONE: TStringField
      FieldName = 'BAN_FONE'
      Size = 11
    end
    object SqlCdsConsBcoBAN_CONTATO: TStringField
      FieldName = 'BAN_CONTATO'
      Size = 30
    end
    object SqlCdsConsBcoBAN_JUROMES: TFMTBCDField
      FieldName = 'BAN_JUROMES'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
    end
    object SqlCdsConsBcoBAN_CODAGEDIG: TStringField
      FieldName = 'BAN_CODAGEDIG'
      Size = 2
    end
    object SqlCdsConsBcoBAN_CONTA: TStringField
      FieldName = 'BAN_CONTA'
      Size = 7
    end
    object SqlCdsConsBcoBAN_DIGCONTA: TStringField
      FieldName = 'BAN_DIGCONTA'
      Size = 1
    end
  end
  object DsConsBco: TDataSource
    DataSet = SqlCdsConsBco
    Left = 248
    Top = 168
  end
end
