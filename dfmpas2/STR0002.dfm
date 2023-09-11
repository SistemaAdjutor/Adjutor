object FormConsultaSitTrib: TFormConsultaSitTrib
  Left = 253
  Top = 281
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta Situa'#231#227'o Tribut'#225'ria'
  ClientHeight = 253
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GbPesquisa: TGroupBox
    Left = 2
    Top = 0
    Width = 415
    Height = 46
    Caption = 'Informe a ST'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label97: TLabel
      Left = 8
      Top = 21
      Width = 92
      Height = 13
      Alignment = taRightJustify
      Caption = 'Situa'#231#227'o Tribut'#225'ria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBESituTrib: TEdit
      Left = 102
      Top = 17
      Width = 50
      Height = 21
      Alignment = taCenter
      AutoSize = False
      MaxLength = 3
      TabOrder = 0
      OnExit = DBESituTribExit
    end
    object CbRwSituacaoTrib: TEdit
      Left = 156
      Top = 17
      Width = 231
      Height = 21
      TabOrder = 1
      OnExit = CbRwSituacaoTribExit
    end
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 48
    Width = 520
    Height = 201
    Color = 16776176
    DataSource = DataCadastros1.DSSitTributaria
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
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'STB_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'Cod'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STB_TRIBUTACAO'
        Title.Caption = 'ST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STB_DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'Descricao'
        Width = 395
        Visible = True
      end>
  end
  object BitSair: TBitBtn
    Left = 424
    Top = 24
    Width = 100
    Height = 21
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitSairClick
  end
  object BitPesquisar: TBitBtn
    Left = 424
    Top = 3
    Width = 100
    Height = 21
    Caption = '&Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitPesquisarClick
  end
end
