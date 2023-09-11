object FormFCustoGrid: TFormFCustoGrid
  Left = 4
  Top = 6
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lista de Fichas de Custo'
  ClientHeight = 483
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Lb_Busca: TLabel
    Left = 235
    Top = 16
    Width = 3
    Height = 13
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 5
    Width = 220
    Height = 48
    Caption = 'Pesquisa'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Rd_Refe: TRadioButton
      Left = 20
      Top = 20
      Width = 73
      Height = 17
      Caption = 'Refer'#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Rd_RefeClick
    end
    object Rd_Desc: TRadioButton
      Left = 130
      Top = 20
      Width = 76
      Height = 17
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Rd_DescClick
    end
  end
  object Edt_Busca: TEdit
    Left = 233
    Top = 33
    Width = 330
    Height = 21
    MaxLength = 45
    TabOrder = 1
    Visible = False
    OnClick = Edt_BuscaClick
    OnExit = Edt_BuscaExit
  end
  object DBGridFicha: TDBGrid
    Left = 5
    Top = 64
    Width = 559
    Height = 412
    DataSource = DsQFichaCusto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGridFichaDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'FTC0000.PRD_REFER'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 360
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FTC_TUP'
        Title.Alignment = taCenter
        Title.Caption = 'TUP'
        Visible = True
      end>
  end
  object TQFichaCusto: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FTC0000.PRD_REFER, FTC0000.FTC_TUP, PRD0000.PRD_REFER, PR' +
        'D0000.PRD_DESCRI'
      'FROM FTC0000, PRD0000'
      'WHERE  (FTC0000.PRD_REFER = PRD0000.PRD_REFER)  '
      'ORDER BY FTC0000.PRD_REFER')
    Left = 376
    Top = 8
    object TQFichaCustoFTC0000PRD_REFER: TStringField
      FieldName = 'FTC0000.PRD_REFER'
      Origin = 'FTC0000.PRD_REFER'
      Size = 11
    end
    object TQFichaCustoFTC_TUP: TFloatField
      FieldName = 'FTC_TUP'
      Origin = 'FTC0000.FTC_TUP'
    end
    object TQFichaCustoPRD0000PRD_REFER: TStringField
      FieldName = 'PRD0000.PRD_REFER'
      Origin = 'PRD0000.PRD_REFER'
      Size = 11
    end
    object TQFichaCustoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD0000.PRD_DESCRI'
      Size = 40
    end
  end
  object DsQFichaCusto: TDataSource
    DataSet = TQFichaCusto
    Left = 416
    Top = 8
  end
end
