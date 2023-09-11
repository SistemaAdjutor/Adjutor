inherited frmDetalheFluxo: TfrmDetalheFluxo
  Caption = 'Detalhe do fluxo de caixa - receber e pagar'
  ClientHeight = 556
  ClientWidth = 1355
  FormStyle = fsMDIChild
  Visible = True
  ExplicitTop = -80
  ExplicitWidth = 1363
  ExplicitHeight = 583
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 1355
    Caption = 'Previs'#227'o de fluxo de caixa anal'#237'tico'
    Font.Height = -21
    ParentFont = False
    ExplicitWidth = 1355
    DesignSize = (
      1355
      41)
    inherited btnExclui: TSpeedButton
      Visible = False
    end
    inherited btnNovo: TSpeedButton
      Visible = False
    end
    inherited btnEdita: TSpeedButton
      Visible = False
    end
    inherited btnFechar: TSpeedButton
      Left = 1291
      Font.Height = -12
      ParentFont = False
      ExplicitLeft = 1117
    end
    inherited btnImprime: TSpeedButton
      Left = 1134
      Visible = False
      ExplicitLeft = 960
    end
    inherited btnExcel: TSpeedButton
      Left = 1213
      Visible = False
      ExplicitLeft = 1039
    end
  end
  inherited PageControl1: TPageControl
    Width = 1355
    Height = 455
    ExplicitWidth = 1355
    ExplicitHeight = 455
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1347
      ExplicitHeight = 427
      object Splitter1: TSplitter [0]
        Left = 873
        Top = 79
        Height = 348
        ExplicitLeft = 580
        ExplicitTop = 85
        ExplicitHeight = 364
      end
      inherited pnControle: TPanel
        Width = 1347
        ExplicitWidth = 1347
        inherited pnFiltro: TPanel
          Width = 700
          Height = 79
          Align = alLeft
          ExplicitWidth = 700
          ExplicitHeight = 79
          inherited pn1: TPanel
            Top = 0
            Width = 700
            Height = 79
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 700
            ExplicitHeight = 79
            inherited btnPesquisa: TSpeedButton
              Left = 355
              Top = 12
              ExplicitLeft = 355
              ExplicitTop = 12
            end
            inherited btnLimpar: TSpeedButton
              Left = 570
              Visible = False
              ExplicitLeft = 570
            end
          end
          object GroupBox1: TGroupBox
            Left = 14
            Top = 12
            Width = 310
            Height = 49
            Caption = 'Per'#237'odo:'
            TabOrder = 1
            object ldataInicial: TLabel
              Left = 11
              Top = 20
              Width = 30
              Height = 13
              Caption = 'Inicial:'
              FocusControl = RxDataInicial
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lDataFinal: TLabel
              Left = 150
              Top = 20
              Width = 25
              Height = 13
              Caption = 'Final:'
              FocusControl = RxDataFinal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RxDataInicial: TJvDateEdit
              Left = 44
              Top = 16
              Width = 90
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ImageKind = ikCustom
              ButtonWidth = 16
              ParentFont = False
              PopupColor = clBtnFace
              ShowNullDate = False
              YearDigits = dyFour
              TabOrder = 0
            end
            object RxDataFinal: TJvDateEdit
              Left = 181
              Top = 16
              Width = 89
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ImageKind = ikCustom
              ButtonWidth = 16
              ParentFont = False
              PopupColor = clBtnFace
              ShowNullDate = False
              YearDigits = dyFour
              TabOrder = 1
            end
          end
        end
      end
      object gbReceber: TGroupBox [2]
        Left = 0
        Top = 79
        Width = 873
        Height = 348
        Align = alLeft
        Caption = 'Contas a receber'
        TabOrder = 1
        object dbgridreceber: TDBGrid
          Left = 2
          Top = 15
          Width = 869
          Height = 331
          Hint = 'Duplo clique para mostrar detalhe da fatura'
          Align = alClient
          DataSource = dsBusca
          ParentShowHint = False
          PopupMenu = mnuGridPesquisa
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = dbgridreceberDblClick
          OnKeyDown = DBGridKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'FAT_CODIGO'
              Title.Caption = 'Fatura'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_RAZAO'
              Title.Caption = 'Cliente'
              Width = 222
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_NUMER'
              Title.Caption = 'N'#186
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_VENCTO'
              Title.Caption = 'Vencto'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_VLPARC'
              Title.Caption = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_VLPAGO'
              Title.Caption = 'Valor pago'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_STATUS'
              Title.Caption = 'Situa'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAN_APELIDO'
              Title.Caption = 'Banco'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_PAGTO'
              Title.Caption = 'Data pagto'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPG_DESCRICAO'
              Title.Caption = 'Forma pg'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dias_credito'
              Title.Caption = 'Dias cr'#233'dito'
              Visible = True
            end>
        end
      end
      object gbpagar: TGroupBox [3]
        Left = 876
        Top = 79
        Width = 471
        Height = 348
        Align = alClient
        Caption = 'Contas a pagar'
        TabOrder = 2
      end
      inherited DBGrid: TDBGrid
        Left = 684
        Top = 145
        Width = 576
        Height = 347
        Hint = 'Duplo clique para mostrar detalhe da fatura'
        Align = alNone
        DataSource = dspaga
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Columns = <
          item
            Expanded = False
            FieldName = 'PAG_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Favorecido'
            Width = 260
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPC_NUMER'
            Title.Caption = 'N'#186
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPC_VENCTO'
            Title.Caption = 'Vencto'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPC_VLPARC'
            Title.Caption = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPC_VLPAGO'
            Title.Caption = 'Vl pago'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPC_STATUS'
            Title.Caption = 'Situa'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAN_APELIDO'
            Title.Caption = 'Banco'
            Width = 40
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Top = 496
    Width = 1355
    Height = 60
    ExplicitTop = 496
    ExplicitWidth = 1355
    ExplicitHeight = 60
    DesignSize = (
      1355
      60)
    inherited btnSelect: TSpeedButton
      Left = 1207
      ExplicitLeft = 1033
    end
    inherited lbCntRegistros: TLabel
      Top = 12
      ExplicitTop = 12
    end
    object rectot: TLabel
      Left = 176
      Top = 9
      Width = 61
      Height = 13
      Caption = 'Receber dia:'
    end
    object Label1: TLabel
      Left = 888
      Top = 10
      Width = 32
      Height = 13
      Caption = 'Pagar:'
    end
    object lsaldofinal: TLabel
      Left = 867
      Top = 36
      Width = 53
      Height = 13
      Caption = 'Saldo final:'
    end
    object edReceber: TDBEdit
      Left = 239
      Top = 6
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      DataField = 'TotalReceber'
      DataSource = dsBusca
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 0
    end
    object edPagar: TDBEdit
      Left = 922
      Top = 6
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      DataField = 'TotalPagar'
      DataSource = dspaga
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 2
    end
    object curSaldoFinal: TJvValidateEdit
      Left = 922
      Top = 33
      Width = 121
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      ReadOnly = True
      TabOrder = 3
    end
    object pdescontos: TPanel
      Left = 360
      Top = 1
      Width = 465
      Height = 58
      BevelOuter = bvNone
      TabOrder = 1
      object Label2: TLabel
        Left = 44
        Top = 8
        Width = 95
        Height = 13
        Caption = 'Cr'#233'dito antecipado:'
      end
      object Label3: TLabel
        Left = 14
        Top = 32
        Width = 125
        Height = 13
        Caption = 'Entrada em data anterior:'
      end
      object Label4: TLabel
        Left = 269
        Top = 8
        Width = 70
        Height = 13
        Caption = 'Saldo receber:'
      end
      object edDescCred: TDBEdit
        Left = 142
        Top = 3
        Width = 121
        Height = 21
        BiDiMode = bdRightToLeft
        DataField = 'TotalDescontado'
        DataSource = dsBusca
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 0
      end
      object edDescDeb: TDBEdit
        Left = 142
        Top = 30
        Width = 121
        Height = 21
        BiDiMode = bdRightToLeft
        DataField = 'TotalDesc_deb'
        DataSource = dsBusca
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 1
      end
      object CurSaldoReceber: TJvValidateEdit
        Left = 345
        Top = 5
        Width = 121
        Height = 21
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloat
        DecimalPlaces = 2
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
  inherited qBusco: TSQLQuery
    Left = 380
    Top = 89
  end
  inherited dspBusco: TDataSetProvider
    Left = 340
    Top = 113
  end
  inherited cdsBusco: TClientDataSet
    AggregatesActive = True
    PacketRecords = -1
    Left = 356
    Top = 201
    object CdsParcelasGridFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object cdsBuscoFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      OnGetText = cdsBuscoFPC_NUMERGetText
      Size = 10
    end
    object cdsBuscoFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object cdsBuscoFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object cdsBuscoFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      currency = True
      Precision = 15
    end
    object cdsBuscoFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object cdsBuscoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 16
    end
    object cdsBuscoFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object cdsBuscoFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object cdsBuscoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 100
    end
    object cdsBuscoFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object cdsBuscoFPC_VALOR_REC: TFMTBCDField
      FieldName = 'FPC_VALOR_REC'
      Precision = 15
    end
    object cdsBuscoDESC_CRED: TFMTBCDField
      FieldName = 'DESC_CRED'
      Precision = 15
    end
    object cdsBuscoDESC_DEB: TFMTBCDField
      FieldName = 'DESC_DEB'
      Precision = 15
    end
    object cdsBuscoFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object cdsBuscodias_credito: TIntegerField
      FieldName = 'dias_credito'
    end
    object cdsBuscoemp_codigo: TStringField
      FieldName = 'emp_codigo'
      Size = 3
    end
    object cdsBuscoTotalReceber: TAggregateField
      FieldName = 'TotalReceber'
      ReadOnly = True
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'sum(FPC_VALOR_REC)'
    end
    object cdsBuscoTotalDescontado: TAggregateField
      FieldName = 'TotalDescontado'
      ReadOnly = True
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'sum(DESC_CRED)'
    end
    object cdsBuscoTotalDesc_deb: TAggregateField
      FieldName = 'TotalDesc_deb'
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'sum(desc_deb)'
    end
    object cdsBuscoTotal: TAggregateField
      FieldName = 'Total'
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'sum(fpc_vlparc)'
    end
  end
  inherited dsBusca: TDataSource
    Left = 428
    Top = 104
  end
  object qpaga: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from emp0000')
    SQLConnection = DBConn
    Left = 972
    Top = 313
  end
  object dsppaga: TDataSetProvider
    DataSet = qpaga
    Left = 812
    Top = 265
  end
  object cdspaga: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    ObjectView = False
    Params = <>
    ProviderName = 'dsppaga'
    AfterOpen = cdsBuscoAfterOpen
    AfterClose = cdsBuscoAfterClose
    OnFilterRecord = cdsBuscoFilterRecord
    AfterApplyUpdates = cdsBuscoAfterApplyUpdates
    Left = 868
    Top = 281
    object cdspagaBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 16
    end
    object SqlCdsPagarParcPAG_CODIGO: TStringField
      DisplayWidth = 12
      FieldName = 'PAG_CODIGO'
      ProviderFlags = []
      Size = 5
    end
    object cdspagaPPC_NUMER: TStringField
      FieldName = 'PPC_NUMER'
      OnGetText = cdspagaPPC_NUMERGetText
      Size = 10
    end
    object cdspagaPPC_VLPARC: TFMTBCDField
      DisplayWidth = 17
      FieldName = 'PPC_VLPARC'
      ProviderFlags = []
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object cdspagaPPC_VLPAGO: TFMTBCDField
      DisplayWidth = 15
      FieldName = 'PPC_VLPAGO'
      ProviderFlags = []
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object cdspagaPPC_STATUS: TStringField
      DisplayWidth = 16
      FieldName = 'PPC_STATUS'
      ProviderFlags = []
      Size = 12
    end
    object cdspagaPPC_SITPAG: TStringField
      FieldName = 'PPC_SITPAG'
      ProviderFlags = []
      Size = 1
    end
    object cdspagaPPC_VENCTO: TSQLTimeStampField
      FieldName = 'PPC_VENCTO'
    end
    object cdspagaPPC_PAGTO: TSQLTimeStampField
      FieldName = 'PPC_PAGTO'
    end
    object cdspagaPPC_NPARCELAS: TSmallintField
      FieldName = 'PPC_NPARCELAS'
    end
    object cdspagaFavorecido: TStringField
      FieldName = 'Favorecido'
      Size = 100
    end
    object cdspagaemp_codigo: TStringField
      FieldName = 'emp_codigo'
      Size = 3
    end
    object cdspagaTotalPagar: TAggregateField
      FieldName = 'TotalPagar'
      ReadOnly = True
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'sum(PPC_VLPARC)'
    end
  end
  object dspaga: TDataSource
    DataSet = cdspaga
    Left = 908
    Top = 280
  end
end
