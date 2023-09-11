object FormCidadeGrid: TFormCidadeGrid
  Left = 249
  Top = 283
  Caption = 'Consulta de Cidades'
  ClientHeight = 223
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object BitCancelar: TBitBtn
    Left = 436
    Top = 3
    Width = 100
    Height = 21
    Caption = '&Cancelar'
    TabOrder = 1
    OnClick = BitCancelarClick
  end
  object BitSair: TBitBtn
    Left = 436
    Top = 24
    Width = 100
    Height = 21
    Caption = '&Sair'
    TabOrder = 3
    OnClick = BitSairClick
  end
  object GbPesquisa: TGroupBox
    Left = 2
    Top = 0
    Width = 431
    Height = 46
    Caption = 'Nome da Cidade'
    TabOrder = 0
    object Edt_nome: TEdit
      Left = 10
      Top = 20
      Width = 415
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 30
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 48
    Width = 537
    Height = 173
    Color = 16776176
    DataSource = DsCidade
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CID_CIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'CIDADE'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 392
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_ESTADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_COD_IBGE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'COD.IBGE'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end>
  end
  object BitPesquisar: TBitBtn
    Left = 436
    Top = 3
    Width = 100
    Height = 21
    Caption = '&Pesquisar'
    TabOrder = 2
    OnClick = BitPesquisarClick
  end
  object SqlCdsCidade: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select CID_CODIGO, CID_CIDADE, CID_ESTADO, CID_COD_IBGE from CID' +
      '0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select CID_CODIGO, CID_CIDADE, CID_ESTADO, CID_COD_IBGE from CID' +
      '0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 128
    Top = 150
    object SqlCdsCidadeCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      Required = True
    end
    object SqlCdsCidadeCID_CIDADE: TStringField
      FieldName = 'CID_CIDADE'
      Size = 50
    end
    object SqlCdsCidadeCID_ESTADO: TStringField
      FieldName = 'CID_ESTADO'
      FixedChar = True
      Size = 2
    end
    object SqlCdsCidadeCID_COD_IBGE: TIntegerField
      FieldName = 'CID_COD_IBGE'
    end
  end
  object DsCidade: TDataSource
    DataSet = SqlCdsCidade
    Left = 160
    Top = 150
  end
end
