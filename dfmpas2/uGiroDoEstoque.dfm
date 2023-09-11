inherited FrmGiroDoEstoquexCompras: TFrmGiroDoEstoquexCompras
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'GIRO DO ESTOQUE X NECESSIDADE DE COMPRAS'
  ClientHeight = 636
  ClientWidth = 1356
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1364
  ExplicitHeight = 663
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 706
    Top = 153
    Width = 30
    Height = 16
    Caption = 'Linha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited PageControl1: TPageControl
    Width = 1356
    Height = 600
    ExplicitWidth = 1356
    ExplicitHeight = 600
    inherited tsNotas: TTabSheet
      ExplicitWidth = 1348
      ExplicitHeight = 572
      inherited pnControle: TPanel
        Width = 1348
        Height = 201
        ExplicitWidth = 1348
        ExplicitHeight = 201
        inherited pnFiltro: TPanel
          Width = 1319
          Height = 251
          ExplicitWidth = 1319
          ExplicitHeight = 251
          inherited pn1: TPanel
            Top = 0
            Width = 1319
            Height = 251
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 1319
            ExplicitHeight = 251
            DesignSize = (
              1319
              251)
            inherited btnPesquisa: TSpeedButton
              Left = 1125
              Top = 80
              Width = 194
              Height = 25
              Caption = 'Iniciar C'#225'lculos'
              ExplicitLeft = 1125
              ExplicitTop = 80
              ExplicitWidth = 194
              ExplicitHeight = 25
            end
            inherited btnLimpar: TSpeedButton
              Left = 1235
              Top = 111
              Width = 81
              Height = 25
              Visible = False
              ExplicitLeft = 1235
              ExplicitTop = 111
              ExplicitWidth = 81
              ExplicitHeight = 25
            end
            inherited btnImprime: TSpeedButton
              Left = 1092
              Top = 0
              ExplicitLeft = 746
              ExplicitTop = 0
            end
            inherited btnExcel: TSpeedButton
              Left = 1175
              Top = 0
              ExplicitLeft = 829
              ExplicitTop = 0
            end
            inherited btnFechar: TSpeedButton
              Left = 1259
              Top = 0
              ExplicitLeft = 913
              ExplicitTop = 0
            end
            object Label5: TLabel
              Left = 443
              Top = 38
              Width = 33
              Height = 14
              Caption = 'Grupo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 443
              Top = -1
              Width = 24
              Height = 14
              Caption = 'Tipo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 13
              Top = 150
              Width = 238
              Height = 14
              Caption = 'Informe o N'#186' de meses a projetar compras:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 443
              Top = 75
              Width = 28
              Height = 14
              Caption = 'Linha'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblproduto: TLabel
              Left = 443
              Top = 114
              Width = 44
              Height = 14
              Caption = 'Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 444
              Top = 151
              Width = 62
              Height = 14
              Caption = 'Fornecedor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object ComboLinha: TSgDbSearchCombo
              Left = 443
              Top = 91
              Width = 191
              Height = 22
              TabOrder = 8
              font.Charset = DEFAULT_CHARSET
              font.Color = clWindowText
              font.Height = -12
              font.Name = 'Tahoma'
              font.Style = []
              LookupSelect = 'lin_codigo, lin_descri'
              LookupOrderBy = 'lin_descri'
              LookupTable = 'prd_linha'
              LookupDispl = 'LIN_DESCRI'
              GridAutoSize = False
              LookupSource = qLinhas
              LookupKeyField = 'lin_codigo'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8ColumnsTitulo = 'C'#243'digo, Linha'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
            end
            object ComboGrupo: TSgDbSearchCombo
              Left = 443
              Top = 54
              Width = 191
              Height = 22
              TabOrder = 7
              font.Charset = DEFAULT_CHARSET
              font.Color = clWindowText
              font.Height = -12
              font.Name = 'Tahoma'
              font.Style = []
              LookupSelect = 'PGR_CODIGO, PGR_DESCRI'
              LookupOrderBy = 'PGR_DESCRI'
              LookupTable = 'PRD_GRUPO'
              LookupDispl = 'PGR_DESCRI'
              GridAutoSize = False
              LookupSource = qGrupo
              LookupKeyField = 'PGR_CODIGO'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8ColumnsTitulo = 'C'#243'digo, Grupo'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
            end
            object ComboTipo: TSgDbSearchCombo
              Left = 443
              Top = 15
              Width = 190
              Height = 22
              TabOrder = 6
              font.Charset = DEFAULT_CHARSET
              font.Color = clWindowText
              font.Height = -12
              font.Name = 'Tahoma'
              font.Style = []
              LookupSelect = 'PTI_CODIGO, PTI_DESCRI'
              LookupOrderBy = 'PTI_DESCRI'
              LookupTable = 'PRD_TIPO'
              LookupDispl = 'PTI_DESCRI'
              GridAutoSize = False
              LookupSource = qTipo
              LookupKeyField = 'PTI_CODIGO'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8ColumnsTitulo = 'C'#243'digo, Tipo'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
            end
            object EdtMeses: TSpinEdit
              Left = 257
              Top = 147
              Width = 87
              Height = 23
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              MaxValue = 0
              MinValue = 0
              ParentFont = False
              TabOrder = 5
              Value = 0
            end
            object cb1: TCheckBox
              Left = 13
              Top = 80
              Width = 350
              Height = 17
              Caption = 'Produtos COM movimento no per'#237'odo informado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object btnEstoqueMinimo: TButton
              Left = 1125
              Top = 49
              Width = 193
              Height = 25
              Hint = 'Atualizar estoque m'#237'nimo baseado na m'#233'dia de venda'
              Caption = 'Criar estoque m'#237'nimo autom'#225'tico'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              OnClick = btnEstoqueMinimoClick
            end
            object clearence: TGroupBox
              Left = 672
              Top = 8
              Width = 407
              Height = 152
              Caption = 'Liquidando estoque'
              TabOrder = 10
              object GroupBox3: TGroupBox
                Left = 13
                Top = 26
                Width = 169
                Height = 112
                Caption = 'Produto sem venda'
                TabOrder = 0
                object Label8: TLabel
                  Left = 141
                  Top = 86
                  Width = 19
                  Height = 13
                  Caption = 'dias'
                end
                object chkVenda30: TCheckBox
                  Left = 9
                  Top = 18
                  Width = 281
                  Height = 17
                  Caption = '... nos '#250'ltimos 30 dias'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnClick = chkAcaoFiltro
                end
                object chkVendas60: TCheckBox
                  Left = 9
                  Top = 41
                  Width = 281
                  Height = 17
                  Caption = '... nos '#250'ltimos 60 dias'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  OnClick = chkAcaoFiltro
                end
                object chkVendas90: TCheckBox
                  Left = 9
                  Top = 64
                  Width = 280
                  Height = 17
                  Caption = '... nos '#250'ltimos 90 dias'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnClick = chkAcaoFiltro
                end
                object chkDiasVariaveis: TCheckBox
                  Left = 9
                  Top = 83
                  Width = 123
                  Height = 17
                  Caption = '... '#250'ltimos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  OnClick = chkAcaoFiltro
                end
                object edDias: TEdit
                  Left = 86
                  Top = 82
                  Width = 44
                  Height = 21
                  TabOrder = 4
                  Text = '0'
                end
              end
              object GroupBox1: TGroupBox
                Left = 188
                Top = 26
                Width = 205
                Height = 112
                Caption = 'Lote a vencer '
                TabOrder = 1
                object Label4: TLabel
                  Left = 170
                  Top = 86
                  Width = 19
                  Height = 13
                  Caption = 'dias'
                end
                object chkLote30: TCheckBox
                  Left = 9
                  Top = 18
                  Width = 281
                  Height = 17
                  Caption = '... nos pr'#243'ximos 30 dias'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnClick = chkLoteFiltro
                end
                object chkLote60: TCheckBox
                  Left = 9
                  Top = 41
                  Width = 281
                  Height = 17
                  Caption = '... nos pr'#243'ximos 60 dias'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  OnClick = chkAcaoFiltro
                end
                object chkLote90: TCheckBox
                  Left = 9
                  Top = 64
                  Width = 280
                  Height = 17
                  Caption = '... nos pr'#243'ximos 90 dias'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnClick = chkAcaoFiltro
                end
                object chkLoteVariaveisDias: TCheckBox
                  Left = 9
                  Top = 83
                  Width = 123
                  Height = 17
                  Caption = '... nos pr'#243'ximos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  OnClick = chkAcaoFiltro
                end
                object edDiasLote: TEdit
                  Left = 118
                  Top = 82
                  Width = 44
                  Height = 21
                  TabOrder = 4
                  Text = '0'
                end
              end
            end
            object RadEstoqueMinimo: TCheckBox
              Left = 13
              Top = 127
              Width = 308
              Height = 17
              Caption = 'Estoque abaixo do m'#237'nimo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object grperiodo: TGroupBox
              Left = 150
              Top = 12
              Width = 287
              Height = 57
              Caption = 'Vendas entre'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object Label2: TLabel
                Left = 138
                Top = 28
                Width = 15
                Height = 14
                Caption = 'at'#233
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object dt1: TJvDateEdit
                Left = 16
                Top = 26
                Width = 102
                Height = 22
                Date = 42677.000000000000000000
                DateFormat = 'dfShort'
                ShowNullDate = False
                TabOrder = 0
              end
              object dt2: TJvDateEdit
                Left = 175
                Top = 26
                Width = 103
                Height = 22
                Date = 42677.000000000000000000
                DateFormat = 'dfShort'
                ShowNullDate = False
                TabOrder = 1
              end
            end
            object rdTipo: TRadioGroup
              Left = 13
              Top = 8
              Width = 131
              Height = 64
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemIndex = 0
              Items.Strings = (
                'Venda'
                'Produ'#231#227'o  (consumo)')
              ParentFont = False
              TabOrder = 0
              OnClick = rdTipoClick
            end
            object chkSemMov: TCheckBox
              Left = 13
              Top = 103
              Width = 381
              Height = 17
              Caption = 'Produtos SEM movimento no per'#237'odo informado e com estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object cbProdutoReferencia: TSgDbSearchCombo
              Left = 443
              Top = 129
              Width = 191
              Height = 21
              TabOrder = 9
              CharCase = ecUpperCase
              LookupSelect = 
                'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
                'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
              LookupOrderBy = 'PD.PRD_REFER'
              LookupTable = 
                'prd0000 PD left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_COD' +
                'IGO) '
              LookupDispl = 'PRD_DESCRI'
              OnButtonClick = cbProdutoReferenciaButtonClick
              GridAutoSize = False
              LookupSource = sqlqryProduto
              LookupKeyField = 'PD.PRD_REFER'
              FiltroTabela = 'PRD_STATUS = '#39'A'#39
              ShowButton = True
              LookupTableShare = 'PRODUTOS'
              LookupWhere = 'PD.PRD_REFER'
              LookupDbGridColumns = 
                'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
                'SCRI, PRD_CODBARRA, PRDCO_CODIGO_ORIGINAL'
              LookupDbGridColumnsTitle = 
                'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Barra' +
                's, C'#243'd.Cliente'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
            end
            object cbFornecedor: TSgDbSearchCombo
              Left = 444
              Top = 166
              Width = 191
              Height = 21
              TabOrder = 12
              CharCase = ecUpperCase
              LookupSelect = 'FOR_CODIGO, FOR_RAZAO, FOR_BAIRRO'
              LookupOrderBy = 'FOR_CODIGO'
              LookupTable = 'FOR0000'
              LookupDispl = 'FOR_RAZAO'
              OnButtonClick = cbFornecedorButtonClick
              GridAutoSize = False
              LookupSource = qAux
              LookupKeyField = 'FOR_CODIGO'
              ShowButton = True
              LookupTableShare = 'FORNECEDORES'
              LookupWhere = 'FOR_CODIGO'
              LookupDbGridColumns = 'FOR_CODIGO, FOR_RAZAO, FOR_BAIRRO'
              LookupDbGridColumnsTitle = 'C'#243'digo, Nome, Bairro'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Top = 201
        Width = 1348
        Height = 371
        OnCellClick = DBGridCellClick
        OnDrawColumnCell = DBGridDrawColumnCell
      end
    end
  end
  inherited Panel2: TPanel
    Top = 600
    Width = 1356
    ExplicitTop = 600
    ExplicitWidth = 1356
    DesignSize = (
      1356
      36)
    inherited btnSelect: TSpeedButton
      Left = 1179
      Top = 2
      Visible = False
      ExplicitLeft = 1179
      ExplicitTop = 2
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 88
    Top = 365
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 152
    Top = 365
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\JOBDADOS\BSC.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=True')
    Left = 32
    Top = 366
  end
  inherited Timer1: TTimer
    Interval = 10000
    Left = 172
    Top = 450
  end
  inherited qBusco: TSQLQuery
    Left = 588
    Top = 321
  end
  inherited dspBusco: TDataSetProvider
    Left = 372
    Top = 377
  end
  inherited cdsBusco: TClientDataSet
    Filter = 'media<>0'
    Left = 420
    Top = 377
  end
  inherited dsBusca: TDataSource
    Left = 476
    Top = 376
  end
  inherited mnuGridPesquisa: TPopupMenu
    Left = 556
    Top = 441
    object Selecionartudo1: TMenuItem
      Caption = 'Marcar tudo'
      OnClick = Selecionartudo1Click
    end
    object Desmarcartudo1: TMenuItem
      Caption = 'Desmarcar tudo'
      OnClick = Desmarcartudo1Click
    end
  end
  object qLinhas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 636
    Top = 377
  end
  object qGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 668
    Top = 449
  end
  object qTipo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 708
    Top = 377
  end
  object qBusco2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 756
    Top = 449
  end
  object sqlqryProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBAR' +
        'RA, PD.PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.00 as PRD_PVEN' +
        'DA'
      'from PRD0000 PD'
      'left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO)'
      'where PRD_STATUS = '#39'Z'#39' and'
      '      (coalesce(PD.PRD_REFER, '#39#39') <> '#39#39')'
      'order by PD.PRD_REFER  ')
    SQLConnection = DBConn
    Left = 271
    Top = 356
    object strngfldProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object strngfldProdutoPRD_REFER: TStringField
      Tag = 80
      FieldName = 'PRD_REFER'
    end
    object strngfldProdutoPRD_DESCRI: TStringField
      Tag = 500
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object strngfldProdutoPRD_CODBARRA: TStringField
      Tag = 100
      FieldName = 'PRD_CODBARRA'
      Size = 13
    end
    object strngfldProdutoPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object strngfldProdutoPRD_UND: TStringField
      Tag = 30
      FieldName = 'PRD_UND'
      Size = 3
    end
    object strngfldProdutoLIN_DESCRI: TStringField
      Tag = 100
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object fmtbcdfldProdutoPRD_PVENDA: TFMTBCDField
      Tag = 100
      FieldName = 'PRD_PVENDA'
      Required = True
      DisplayFormat = '###,###,##0.0000'
      Precision = 18
      Size = 2
    end
  end
end
