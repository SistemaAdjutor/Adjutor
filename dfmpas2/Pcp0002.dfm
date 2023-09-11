object FormPCPGrid: TFormPCPGrid
  Left = 55
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lista de Se'#231#245'es'
  ClientHeight = 266
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitCancelar: TBitBtn
    Left = 384
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
    TabOrder = 3
    OnClick = BitCancelarClick
  end
  object BitPesquisar: TBitBtn
    Left = 384
    Top = 4
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
  object Grp00: TGroupBox
    Left = 0
    Top = 0
    Width = 168
    Height = 46
    Caption = 'Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object RadCodigo: TRadioButton
      Left = 16
      Top = 21
      Width = 65
      Height = 17
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = RadCodigoClick
    end
    object Rad_Descri: TRadioButton
      Left = 85
      Top = 21
      Width = 73
      Height = 17
      Caption = 'Descri'#231#227'o'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = Rad_DescriClick
    end
  end
  object Grp01: TGroupBox
    Left = 168
    Top = 0
    Width = 209
    Height = 46
    Caption = 'C'#243'digo da Se'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Edt_Busca: TEdit
      Left = 4
      Top = 20
      Width = 201
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      TabOrder = 0
      OnClick = Edt_BuscaClick
      OnEnter = Edt_BuscaEnter
      OnExit = Edt_BuscaExit
      OnKeyPress = Edt_BuscaKeyPress
    end
  end
  object BitSair: TBitBtn
    Left = 384
    Top = 25
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
  object DBGridPCP: TDBGrid
    Left = 0
    Top = 48
    Width = 484
    Height = 217
    Color = 16776176
    DataSource = DsConsPcl
    FixedColor = 12681984
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridPCPDblClick
    OnKeyPress = DBGridPCPKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'SEC_CODIGO'
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
        FieldName = 'SEC_DESCRI'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEC_QTDE'
        Title.Caption = 'Quant.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEC_CUSTO_UNIT'
        Title.Caption = 'Custo Unit'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEC_TMP_CUSTO'
        Title.Caption = 'Temp'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object SqlCdsConsPcl: TSQLClientDataSet
    CommandText = 'select * from PCP_SECAO'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DataCadastros.SQLConnection1
    Left = 144
    Top = 184
    object SqlCdsConsPclSEC_CODIGO: TStringField
      FieldName = 'SEC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object SqlCdsConsPclSEC_DESCRI: TStringField
      FieldName = 'SEC_DESCRI'
      Size = 30
    end
    object SqlCdsConsPclSEC_QTDE: TSmallintField
      FieldName = 'SEC_QTDE'
    end
    object SqlCdsConsPclSEC_CUSTO_UNIT: TFMTBCDField
      FieldName = 'SEC_CUSTO_UNIT'
      Precision = 15
    end
    object SqlCdsConsPclSEC_TMP_CUSTO: TStringField
      FieldName = 'SEC_TMP_CUSTO'
      Size = 3
    end
    object SqlCdsConsPclEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsConsPcl: TDataSource
    DataSet = SqlCdsConsPcl
    Left = 176
    Top = 184
  end
end
