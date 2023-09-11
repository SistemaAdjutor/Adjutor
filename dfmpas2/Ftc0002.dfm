object FormFichaTecGrid: TFormFichaTecGrid
  Left = 21
  Top = 52
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lista das Fichas T'#233'cnicas'
  ClientHeight = 466
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object BitCancelar: TBitBtn
    Left = 581
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
  object BitPesquisar: TBitBtn
    Left = 581
    Top = 4
    Width = 100
    Height = 21
    Caption = '&Pesquisar'
    TabOrder = 2
    OnClick = BitPesquisarClick
  end
  object Grp_Pesquisa: TGroupBox
    Left = 0
    Top = 0
    Width = 205
    Height = 46
    Caption = 'Pesquisa'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object Rd_Refe: TRadioButton
      Left = 20
      Top = 18
      Width = 73
      Height = 17
      Caption = 'Refer'#234'ncia'
      TabOrder = 0
      OnClick = Rd_RefeClick
    end
    object Rd_Desc: TRadioButton
      Left = 115
      Top = 18
      Width = 76
      Height = 17
      Caption = 'Descri'#231#227'o'
      TabOrder = 1
      OnClick = Rd_DescClick
    end
  end
  object DBGridFicha: TDBGrid
    Left = 0
    Top = 49
    Width = 683
    Height = 417
    Color = 16776176
    DataSource = DsProdutos
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGridFichaDblClick
    OnKeyPress = DBGridFichaKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 395
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FTC_TUP'
        Title.Alignment = taCenter
        Title.Caption = 'TUP'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FTC_CRIACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Cria'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 78
        Visible = True
      end>
  end
  object Grp_Produto: TGroupBox
    Left = 206
    Top = 0
    Width = 373
    Height = 46
    Caption = 'Digite a descri'#231#227'o do produto'
    TabOrder = 1
    object Edt_Nome: TEdit
      Left = 4
      Top = 17
      Width = 315
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 45
      TabOrder = 0
      OnClick = Edt_NomeClick
      OnEnter = Edt_NomeEnter
      OnExit = Edt_NomeExit
    end
  end
  object BitSair: TBitBtn
    Left = 581
    Top = 25
    Width = 100
    Height = 21
    Caption = '&Sair'
    TabOrder = 5
    OnClick = BitSairClick
  end
  object SqlCdsProdutos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'F1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'F1.ftc_tup,'#13#10'F1.ftc_criac' +
      'ao'#13#10'from ftc0000 F1'#13#10'left join prd0000 P1 on f1.prd_refer = p1.p' +
      'rd_refer'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'F1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'F1.ftc_tup,'#13#10'F1.ftc_criac' +
      'ao'#13#10'from ftc0000 F1'#13#10'left join prd0000 P1 on f1.prd_refer = p1.p' +
      'rd_refer'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 256
    Top = 168
    object SqlCdsProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object SqlCdsProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsProdutosFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
    end
    object SqlCdsProdutosFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
    end
  end
  object DsProdutos: TDataSource
    DataSet = SqlCdsProdutos
    Left = 328
    Top = 128
  end
end
