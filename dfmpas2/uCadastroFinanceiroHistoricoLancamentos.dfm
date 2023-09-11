object FrmCadastroHistoricoConciliacao: TFrmCadastroHistoricoConciliacao
  Left = 419
  Top = 294
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Hist'#243'rico de Lan'#231'amentos'
  ClientHeight = 430
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Bit_Cancelar: TBitBtn
    Left = 454
    Top = 396
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro atual...'
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    TabStop = False
    OnClick = Bit_CancelarClick
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
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 392
    Width = 148
    Height = 27
    DataSource = DsFrases
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 119
    Width = 545
    Height = 265
    Caption = 'Observa'#231#245'es Cadastradas'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 541
      Height = 247
      Align = alClient
      DataSource = DsFrases
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'HCO_DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Titulo'
          Width = 433
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HCO_COMPENSACAO_DIAS'
          Title.Alignment = taCenter
          Title.Caption = 'Dias'
          Width = 72
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = -1
    Top = 1
    Width = 546
    Height = 117
    Caption = 'Informa'#231#245'es'
    TabOrder = 2
    object Label1: TLabel
      Left = 79
      Top = 24
      Width = 28
      Height = 14
      Caption = 'T'#237'tulo:'
    end
    object Label2: TLabel
      Left = 11
      Top = 48
      Width = 96
      Height = 14
      Caption = 'Dias Compensa'#231#227'o:'
    end
    object Label3: TLabel
      Left = 163
      Top = 48
      Width = 364
      Height = 14
      Caption = 
        'Quantidade de dias que ser'#225' adicionado '#224' data de concilia'#231#227'o ap'#243 +
        's a baixa'
    end
    object DBEdit1: TDBEdit
      Left = 109
      Top = 21
      Width = 417
      Height = 22
      CharCase = ecUpperCase
      DataField = 'HCO_DESCRICAO'
      DataSource = DsFrases
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 109
      Top = 45
      Width = 52
      Height = 22
      CharCase = ecUpperCase
      DataField = 'HCO_COMPENSACAO_DIAS'
      DataSource = DsFrases
      TabOrder = 1
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 110
      Top = 67
      Width = 417
      Height = 41
      Caption = 'Utulizado em lan'#231'amentos de'
      Columns = 3
      DataField = 'HCO_TIPO'
      DataSource = DsFrases
      Items.Strings = (
        'Cr'#233'dito'
        'D'#233'bito'
        'Ambos')
      TabOrder = 2
      Values.Strings = (
        'C'
        'D'
        'A')
    end
  end
  object Bit_Sair: TBitBtn
    Left = 454
    Top = 396
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = '&Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TabStop = False
    OnClick = Bit_SairClick
    Glyph.Data = {
      CA010000424DCA01000000000000760000002800000026000000110000000100
      04000000000054010000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
      FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
      FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
      B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
      FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
      FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF00}
    NumGlyphs = 2
  end
  object Bit_Gravar: TBitBtn
    Left = 363
    Top = 396
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Caption = '&Gravar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = False
    OnClick = Bit_GravarClick
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
  end
  object Bit_Excluir: TBitBtn
    Left = 272
    Top = 396
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Hint = '|Exclui registro atual..'
    Caption = '&Excluir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    TabStop = False
    OnClick = Bit_ExcluirClick
    Glyph.Data = {
      E6000000424DE60000000000000076000000280000000E0000000E0000000100
      04000000000070000000CE0E0000D80E00001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3300333333333333330033333333333333003333333333333300333333333333
      3300333333333333330033000000000033003300000000003300330000000000
      3300333333333333330033333333333333003333333333333300333333333333
      33003333333333333300}
  end
  object Bit_novo: TBitBtn
    Left = 181
    Top = 396
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = '&Novo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TabStop = False
    OnClick = Bit_novoClick
    Glyph.Data = {
      E6000000424DE60000000000000076000000280000000E0000000E0000000100
      04000000000070000000CE0E0000D80E00001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3300333333333333330033333333333333003333300033333300333330003333
      3300333330003333330033000000000333003300000000033300330000000003
      3300333330003333330033333000333333003333300033333300333333333333
      33003333333333333300}
  end
  object DsFrases: TDataSource
    DataSet = SqlCdsHistorico
    Left = 496
    Top = 56
  end
  object SqlHistorico: TSQLDataSet
    CommandText = 'select * from HIST_CONCILIACAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 236
    Top = 60
    object SqlHistoricoHCO_REGISTRO: TIntegerField
      FieldName = 'HCO_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlHistoricoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlHistoricoHCO_DESCRICAO: TStringField
      FieldName = 'HCO_DESCRICAO'
      Size = 100
    end
    object SqlHistoricoHCO_COMPENSACAO_DIAS: TIntegerField
      FieldName = 'HCO_COMPENSACAO_DIAS'
    end
    object SqlHistoricoHCO_TIPO: TStringField
      FieldName = 'HCO_TIPO'
      Size = 1
    end
  end
  object SqlCdsHistorico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspHistorico'
    BeforeEdit = SqlCdsHistoricoBeforeEdit
    Left = 432
    Top = 60
    object SqlCdsHistoricoHCO_REGISTRO: TIntegerField
      FieldName = 'HCO_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlCdsHistoricoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsHistoricoHCO_DESCRICAO: TStringField
      FieldName = 'HCO_DESCRICAO'
      Size = 100
    end
    object SqlCdsHistoricoHCO_COMPENSACAO_DIAS: TIntegerField
      FieldName = 'HCO_COMPENSACAO_DIAS'
    end
    object SqlCdsHistoricoHCO_TIPO: TStringField
      FieldName = 'HCO_TIPO'
      Size = 1
    end
  end
  object DspHistorico: TDataSetProvider
    DataSet = SqlHistorico
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 337
    Top = 60
  end
end
