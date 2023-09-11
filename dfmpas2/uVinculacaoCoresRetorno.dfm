inherited frmVinculacaoCoresRetorno: TfrmVinculacaoCoresRetorno
  Caption = 'Vincula'#231#227'o de Cores Retorno'
  ClientHeight = 275
  ClientWidth = 564
  ExplicitWidth = 572
  ExplicitHeight = 302
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 564
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 1
      Width = 88
      Height = 19
      Caption = 'Refer'#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 1
      Width = 39
      Height = 19
      Caption = 'Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbReferencia: TLabel
      Left = 24
      Top = 23
      Width = 88
      Height = 19
      Caption = 'Refer'#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbItem: TLabel
      Left = 136
      Top = 23
      Width = 39
      Height = 19
      Caption = 'Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 27
      Top = 50
      Width = 17
      Height = 13
      Caption = 'Cor'
    end
    object Label4: TLabel
      Left = 195
      Top = 50
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object cbCor: TSgDbSearchCombo
      Left = 24
      Top = 66
      Width = 134
      Height = 21
      TabOrder = 0
      CharCase = ecUpperCase
      LookupSelect = 'ACO_NOME, ACO_CODIGO'
      LookupOrderBy = 'ACO_NOME'
      LookupTable = 'ACABAMENTO_CORES'
      LookupDispl = 'ACO_NOME'
      OnSelect = cbCorSelect
      GridAutoSize = False
      LookupSource = qCor
      LookupKeyField = 'ACO_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Cores'
      AutoF8ColumnsTitulo = 'C'#243'digo, Cor'
      LookupDbGridColumns = 'ACO_NOME, ACO_CODIGO,'
      LookupDbGridColumnsTitle = 'Nome, C'#243'digo'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object BitConfirmar: TBitBtn
      Left = 279
      Top = 65
      Width = 100
      Height = 25
      Caption = '&Adicionar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        D6020000424DD60200000000000036000000280000000F0000000E0000000100
        180000000000A0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFB7DBB7
        2F972F2F972F2F972F2F972F0D860D0080002492242F972F2F972F2F972F51A8
        51FFFFFFFFFFFF000000FFFFFFB1D8B11F8F1F1F8F1F1F8F1F1F8F1F08840800
        8000188C181F8F1F1F8F1F1F8F1F44A244FFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F
        8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      ParentFont = False
      TabOrder = 1
      OnClick = BitConfirmarClick
    end
    object edQuantidade: TCurrencyEdit
      Left = 194
      Top = 66
      Width = 78
      Height = 21
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '###,###,###.#####'
      TabOrder = 2
      OnKeyPress = edQuantidadeKeyPress
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 97
    Width = 564
    Height = 137
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 562
      Height = 135
      Align = alClient
      DataSource = dsGrade
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyUp = DBGrid1KeyUp
      Columns = <
        item
          Expanded = False
          FieldName = 'ACO_NOME'
          ReadOnly = True
          Title.Caption = 'Cor'
          Width = 231
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEDIND_QUANTIDADE'
          ReadOnly = True
          Title.Caption = 'Quantidade Retornada'
          Width = 134
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BOTAO'
          Title.Alignment = taCenter
          Title.Caption = 'Excluir'
          Width = 59
          Visible = True
        end>
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 234
    Width = 564
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      564
      41)
    object Label5: TLabel
      Left = 217
      Top = 16
      Width = 34
      Height = 16
      Alignment = taRightJustify
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbTotal: TLabel
      Left = 372
      Top = 16
      Width = 7
      Height = 16
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object bitFinalizar: TBitBtn
      Left = 458
      Top = 9
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Finalizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
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
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = bitFinalizarClick
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 456
    Top = 64
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    AllowDefault = False
    EnterAsTab = False
    Left = 320
    Top = 8
  end
  inherited DBConn: TSQLConnection
    Left = 392
    Top = 57
  end
  inherited qAux: TSQLQuery
    Left = 402
    Top = 5
  end
  inherited qAux2: TSQLQuery
    Left = 450
    Top = 4
  end
  inherited qAux3: TSQLQuery
    Left = 506
    Top = 4
  end
  object qCor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM ACABAMENTO_CORES ORDER BY ACO_NOME')
    SQLConnection = DBInicio.MainDB
    Left = 119
    Top = 63
  end
  object cdsGrade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrade'
    Left = 192
    Top = 137
    object cdsGradeACO_CODIGO: TIntegerField
      FieldName = 'ACO_CODIGO'
    end
    object cdsGradeACO_NOME: TStringField
      FieldName = 'ACO_NOME'
      Size = 100
    end
    object cdsGradeENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
    end
    object cdsGradePEDIND_QUANTIDADE: TFMTBCDField
      FieldName = 'PEDIND_QUANTIDADE'
    end
    object cdsGradeBOTAO: TStringField
      FieldName = 'BOTAO'
      Size = 1
    end
  end
  object dsGrade: TDataSource
    DataSet = cdsGrade
    Left = 256
    Top = 137
  end
end
