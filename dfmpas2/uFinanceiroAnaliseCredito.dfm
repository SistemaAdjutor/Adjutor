object FrmFinanceiroAnaliseCredito: TFrmFinanceiroAnaliseCredito
  Left = 181
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'An'#225'lise de Cr'#233'dito'
  ClientHeight = 600
  ClientWidth = 999
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 313
    Width = 999
    Height = 287
    ActivePage = TabSheet1
    Align = alBottom
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Informa'#231#245'es'
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 337
        Height = 166
        Caption = 'Contas '#224' Receber'
        Enabled = False
        TabOrder = 0
        object Label1: TLabel
          Left = 28
          Top = 24
          Width = 100
          Height = 14
          Alignment = taRightJustify
          Caption = 'Duplicatas '#224' Vencer:'
        end
        object Label2: TLabel
          Left = 27
          Top = 48
          Width = 101
          Height = 14
          Alignment = taRightJustify
          Caption = 'Duplicatas Vencidas:'
        end
        object Label3: TLabel
          Left = 47
          Top = 72
          Width = 81
          Height = 14
          Alignment = taRightJustify
          Caption = 'M'#233'dia de Atraso:'
        end
        object Label4: TLabel
          Left = 51
          Top = 96
          Width = 77
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total em Aberto:'
        end
        object DBEdit2: TDBEdit
          Left = 130
          Top = 21
          Width = 121
          Height = 22
          DataField = 'FATURAS_PENDENTES'
          DataSource = DsPedidoAnalise
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 130
          Top = 45
          Width = 121
          Height = 22
          DataField = 'FATURAS_VENCIDAS'
          DataSource = DsPedidoAnalise
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 130
          Top = 69
          Width = 121
          Height = 22
          DataField = 'MEDIA_ATRASO'
          DataSource = DsPedidoAnalise
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 130
          Top = 93
          Width = 121
          Height = 22
          DataField = 'TotalAberto'
          DataSource = DsPedidoAnalise
          TabOrder = 3
        end
      end
      object GroupBox3: TGroupBox
        Left = 341
        Top = 0
        Width = 332
        Height = 121
        Caption = 'Compras'
        Enabled = False
        TabOrder = 1
        object Label6: TLabel
          Left = 91
          Top = 24
          Width = 69
          Height = 14
          Alignment = taRightJustify
          Caption = 'Maior Compra:'
        end
        object Label7: TLabel
          Left = 61
          Top = 48
          Width = 99
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor '#218'ltima Compra:'
        end
        object Label8: TLabel
          Left = 49
          Top = 72
          Width = 111
          Height = 14
          Alignment = taRightJustify
          Caption = 'Data da '#218'ltima Compra:'
        end
        object Label16: TLabel
          Left = 74
          Top = 96
          Width = 86
          Height = 14
          Alignment = taRightJustify
          Caption = 'Desconto Padr'#227'o:'
        end
        object DBEdit6: TDBEdit
          Left = 162
          Top = 21
          Width = 121
          Height = 22
          DataField = 'MAIOR_COMPRA'
          DataSource = DsPedidoAnalise
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 162
          Top = 45
          Width = 121
          Height = 22
          DataField = 'CLIENTE_ULTIMA_COMPRA'
          DataSource = DsPedidoAnalise
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 162
          Top = 69
          Width = 121
          Height = 22
          DataField = 'CLIENTE_DATA_ULTIMA_COMPRA'
          DataSource = DsPedidoAnalise
          TabOrder = 2
        end
        object DBEdit9: TDBEdit
          Left = 162
          Top = 93
          Width = 121
          Height = 22
          DataField = 'CLIENTE_DESCONTO'
          DataSource = DsPedidoAnalise
          TabOrder = 3
        end
      end
      object GroupBox4: TGroupBox
        Left = 680
        Top = 0
        Width = 283
        Height = 121
        Caption = 'Pedidos'
        Enabled = False
        TabOrder = 2
        object Label9: TLabel
          Left = 62
          Top = 24
          Width = 82
          Height = 14
          Alignment = taRightJustify
          Caption = 'Pedidos Abertos:'
        end
        object Label10: TLabel
          Left = 30
          Top = 48
          Width = 114
          Height = 14
          Alignment = taRightJustify
          Caption = 'Or'#231'amentos em Aberto:'
        end
        object DBEdit10: TDBEdit
          Left = 146
          Top = 21
          Width = 121
          Height = 22
          DataField = 'PEDIDOS_ABERTOS'
          DataSource = DsPedidoAnalise
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 146
          Top = 45
          Width = 121
          Height = 22
          DataField = 'PEDIDOS_ORCAMENTOS'
          DataSource = DsPedidoAnalise
          TabOrder = 1
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 166
        Width = 991
        Height = 92
        Align = alBottom
        Caption = 'Cliente'
        Enabled = False
        TabOrder = 3
        object Label12: TLabel
          Left = 40
          Top = 16
          Width = 88
          Height = 14
          Alignment = taRightJustify
          Caption = 'Porte da Empresa:'
        end
        object Label13: TLabel
          Left = 93
          Top = 40
          Width = 35
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cliente:'
        end
        object Label14: TLabel
          Left = 105
          Top = 64
          Width = 23
          Height = 14
          Alignment = taRightJustify
          Caption = 'Tipo:'
        end
        object Label19: TLabel
          Left = 544
          Top = 16
          Width = 48
          Height = 14
          Alignment = taRightJustify
          Caption = 'Atividade:'
        end
        object Label15: TLabel
          Left = 475
          Top = 40
          Width = 117
          Height = 14
          Alignment = taRightJustify
          Caption = 'Prazo de Venda Padr'#227'o:'
        end
        object Label18: TLabel
          Left = 542
          Top = 65
          Width = 50
          Height = 14
          Alignment = taRightJustify
          Caption = 'Vendedor:'
        end
        object DBEdit14: TDBEdit
          Left = 130
          Top = 13
          Width = 327
          Height = 22
          DataField = 'CLIENTE_PORTE'
          DataSource = DsPedidoAnalise
          TabOrder = 0
        end
        object DBEdit15: TDBEdit
          Left = 130
          Top = 37
          Width = 327
          Height = 22
          DataField = 'CLIENTE_NAC_INTER'
          DataSource = DsPedidoAnalise
          TabOrder = 1
        end
        object DBEdit16: TDBEdit
          Left = 130
          Top = 61
          Width = 327
          Height = 22
          DataField = 'CLIENTE_PESSOA'
          DataSource = DsPedidoAnalise
          TabOrder = 2
        end
        object DBEdit17: TDBEdit
          Left = 594
          Top = 13
          Width = 327
          Height = 22
          DataField = 'CLIENTE_ATIVIDADE'
          DataSource = DsPedidoAnalise
          TabOrder = 3
        end
        object DBEdit18: TDBEdit
          Left = 594
          Top = 37
          Width = 327
          Height = 22
          DataField = 'CLIENTE_PRAZO'
          DataSource = DsPedidoAnalise
          TabOrder = 4
        end
        object DBEdit19: TDBEdit
          Left = 594
          Top = 61
          Width = 327
          Height = 22
          DataField = 'CLIENTE_VENDEDOR'
          DataSource = DsPedidoAnalise
          TabOrder = 5
        end
      end
      object GroupBox6: TGroupBox
        Left = 342
        Top = 120
        Width = 621
        Height = 46
        Caption = 'Outras'
        Enabled = False
        TabOrder = 4
        object Label21: TLabel
          Left = 91
          Top = 21
          Width = 69
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cliente Desde:'
        end
        object Label22: TLabel
          Left = 435
          Top = 21
          Width = 45
          Height = 14
          Alignment = taRightJustify
          Caption = 'Situa'#231#227'o:'
        end
        object DBEdit12: TDBEdit
          Left = 162
          Top = 17
          Width = 121
          Height = 22
          DataField = 'CLIENTE_DESDE'
          DataSource = DsPedidoAnalise
          TabOrder = 0
        end
        object DBEdit13: TDBEdit
          Left = 482
          Top = 17
          Width = 121
          Height = 22
          DataField = 'CLIENTE_ATIVO'
          DataSource = DsPedidoAnalise
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Duplicatas em Aberto'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DbGridRecParc: TDBGrid
        Left = 0
        Top = 0
        Width = 991
        Height = 258
        Hint = 'dois cliques para entrar na parcela.'
        Align = alClient
        Color = 16776176
        DataSource = DsParcelasGrid
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FAT_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'Fatura'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_NUMER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'N'#186
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VENCTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vencimento'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VLPARC'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VLPAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Vl.Pago'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAN_APELIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Conta'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 308
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_PAGTO'
            Title.Alignment = taCenter
            Title.Caption = 'Pagto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_STATUS'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 97
            Visible = True
          end>
      end
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 49
    Width = 999
    Height = 223
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    object TabSheet3: TTabSheet
      Caption = 'Pedidos Pendentes de An'#225'lise'
      object Label20: TLabel
        Left = 0
        Top = 192
        Width = 58
        Height = 14
        Caption = 'Quantidade:'
      end
      object Label23: TLabel
        Left = 789
        Top = 192
        Width = 87
        Height = 14
        Caption = 'Total dos Pedidos:'
      end
      object DbGrPedido: TDBGrid
        Left = 0
        Top = 0
        Width = 991
        Height = 183
        Align = alTop
        Color = 16776176
        DataSource = DsPedidoAnalise
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PED_CODIGO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ccSituacao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DTENTRADA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Entrada'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_RAZAO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Raz'#227'o  Social'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 242
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPV_DESCRICAO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_VLTOTAL_LIQ'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Valor Pedido'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRAZO_PEDIDO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Prazo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 176
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_FONE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Telefone'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DTSAIDA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Data Sa'#237'da'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CGC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object CurTotalQuantidade: TCurrencyEdit
        Left = 62
        Top = 189
        Width = 83
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DecimalPlaces = 0
        DisplayFormat = '#######'
        ReadOnly = True
        TabOrder = 1
      end
      object CurTotalPedido: TCurrencyEdit
        Left = 878
        Top = 190
        Width = 83
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = '###,###,###,##0.00'
        ReadOnly = True
        TabOrder = 2
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Itens do Pedido'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 991
        Height = 194
        Align = alClient
        Color = 16776176
        DataSource = DsPedItens
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRF_PRDDESCRI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o dos Produtos'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 640
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRF_QTDE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Qtde'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CC_TOTAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ImeName = 'ttt'
            Title.Alignment = taCenter
            Title.Caption = 'Total Unit.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Observa'#231#227'o da An'#225'lise de Cr'#233'dito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ImageIndex = 2
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 991
        Height = 194
        TabStop = False
        Align = alClient
        Color = 14145495
        DataField = 'PED_OBS_ANALISE_CREDITO'
        DataSource = DsPedidoAnalise
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 999
    Height = 49
    ParentCustomHint = False
    Align = alTop
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Color = 14737632
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentBiDiMode = False
    ParentBackground = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 409
      Height = 39
      Caption = 'Filtro'
      TabOrder = 0
      object CbPendente: TCheckBox
        Left = 16
        Top = 16
        Width = 169
        Height = 17
        Caption = 'Pendentes de Libera'#231#227'o'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 0
        OnClick = CbPendenteClick
      end
      object CbLiberado: TCheckBox
        Left = 184
        Top = 16
        Width = 145
        Height = 17
        Caption = 'Liberados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = CbLiberadoClick
      end
      object CbBloqueado: TCheckBox
        Left = 272
        Top = 16
        Width = 127
        Height = 17
        Caption = 'Bloqueados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = CbBloqueadoClick
      end
    end
    object grpEmpresa: TGroupBox
      Left = 650
      Top = 0
      Width = 321
      Height = 39
      Caption = 'Multi Empresa'
      TabOrder = 1
      object chkMultiEmpresa: TCheckBox
        Left = 13
        Top = 18
        Width = 313
        Height = 17
        Caption = 'Visualizar informa'#231#245'es de todas as empresas'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkMultiEmpresaClick
      end
    end
    object GroupBox8: TGroupBox
      Left = 409
      Top = 0
      Width = 241
      Height = 39
      Caption = 'Ordena'#231#227'o'
      TabOrder = 2
      object cbOrdenacao: TComboBox
        Left = 8
        Top = 13
        Width = 204
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 0
        Text = 'PEDIDO'
        OnChange = cbOrdenacaoChange
        Items.Strings = (
          'PEDIDO'
          'ENTRADA'
          'CLIENTE'
          'VALOR')
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 272
    Width = 999
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Label11: TLabel
      Left = 440
      Top = 17
      Width = 111
      Height = 16
      Alignment = taRightJustify
      Caption = 'Saldo do Cr'#233'dito:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 256
      Top = 17
      Width = 60
      Height = 16
      Alignment = taRightJustify
      Caption = 'Utilizado:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 18
      Top = 17
      Width = 114
      Height = 16
      Alignment = taRightJustify
      Caption = 'Limite de Cr'#233'dito:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 134
      Top = 15
      Width = 121
      Height = 24
      TabStop = False
      DataField = 'CLIENTE_LIMITE_CREDITO'
      DataSource = DsPedidoAnalise
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object btnEstornar: TBitBtn
      Left = 878
      Top = 14
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = 'Estornar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnEstornarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 777
      Top = 14
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = 'Bloquear'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Bit_CancelarClick
    end
    object Bit_Gravar: TBitBtn
      Left = 677
      Top = 14
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Liberar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Bit_GravarClick
    end
    object edtLimiteDisponivel: TCurrencyEdit
      Left = 564
      Top = 15
      Width = 105
      Height = 24
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,##0.00;###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object edtLimiteUtilizado: TCurrencyEdit
      Left = 324
      Top = 15
      Width = 105
      Height = 24
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,##0.00;###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object CdsPedidoAnalise: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.ped_registro,'#13#10'T1.ped_codigo,'#13#10'T1.ped_status_analise_' +
      'credito,'#13#10'T1.ped_dtentrada,'#13#10'T2.cli_codigo,'#13#10'T2.cli_razao,'#13#10'T3.o' +
      'pv_descricao,'#13#10'T1.ped_vltotal_liq,'#13#10'T7.pcl_nome AS PRAZO_PEDIDO,' +
      #13#10'T2.cli_fone,'#13#10'T1.ped_dtsaida,'#13#10'T2.cli_cgc,'#13#10'T1.ped_obs_analise' +
      '_credito,'#13#10'CASE'#13#10'    WHEN (T2.cli_inativo = '#39'A'#39') THEN'#13#10'        '#39 +
      'ATIVO'#39#13#10'    ELSE'#13#10'        '#39'INATIVO'#39#13#10'END AS CLIENTE_ATIVO,'#13#10'(SEL' +
      'ECT coalesce(SUM(T6.fpc_vlparc),0) FROM fat_pc01 T6 WHERE T6.cli' +
      '_codigo = T1.cli_codigo AND T6.fpc_vencto < current_date AND T6.' +
      'fpc_sitpag = '#39'P'#39') AS FATURAS_VENCIDAS,'#13#10'(SELECT coalesce(SUM(T6.' +
      'fpc_vlparc),0) FROM fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_cod' +
      'igo AND T6.fpc_vencto >= current_date AND T6.fpc_sitpag = '#39'P'#39') A' +
      'S FATURAS_PENDENTES,'#13#10'coalesce(CAST((SELECT SUM(T6.fpc_vencto - ' +
      'T6.fpc_pagto) FROM fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_codi' +
      'go AND T6.fpc_sitpag = '#39'L'#39') / (SELECT COUNT(T6.fat_registro) FRO' +
      'M fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_codigo AND T6.fpc_sit' +
      'pag = '#39'L'#39') AS INTEGER),0)  AS MEDIA_ATRASO,'#13#10#13#10'T2.CLI_DTINICIO A' +
      'S CLIENTE_DESDE,'#13#10'T2.cli_limitecred AS CLIENTE_LIMITE_CREDITO,'#13#10 +
      'T4.rep_nome AS CLIENTE_VENDEDOR,'#13#10'T5.pcl_nome AS CLIENTE_PRAZO,'#13 +
      #10'CASE'#13#10'    when (t2.cli_porte = '#39'P'#39') THEN'#13#10'        '#39'PEQUENO'#39#13#10'  ' +
      '  when (t2.cli_porte = '#39'M'#39') THEN'#13#10'        '#39'MEDIO'#39#13#10'    ELSE'#13#10'   ' +
      '     '#39'GRANDE'#39#13#10'END as CLIENTE_PORTE,'#13#10'CASE'#13#10'    WHEN (T2.cli_pai' +
      's = '#39'N'#39') THEN'#13#10'        '#39'NACIONAL'#39#13#10'    ELSE'#13#10'        '#39'INTERNACIO' +
      'NAL'#39#13#10'END AS CLIENTE_NAC_INTER,'#13#10'CASE'#13#10'    WHEN (T2.cli_pessoa =' +
      ' '#39'J'#39') THEN'#13#10'        '#39'JUR'#205'DICA'#39#13#10'    ELSE'#13#10'        '#39'F'#205'SICA'#39#13#10'END ' +
      'AS CLIENTE_PESSOA,'#13#10'T8.rcl_atividade AS CLIENTE_ATIVIDADE,'#13#10'T2.C' +
      'LI_VL_ULTCOMP AS CLIENTE_ULTIMA_COMPRA,'#13#10'T2.CLI_DTULTCOM AS CLIE' +
      'NTE_DATA_ULTIMA_COMPRA,'#13#10'coalesce(T2.CLI_DESC2,0) AS CLIENTE_DES' +
      'CONTO,'#13#10'coalesce((SELECT SUM(T9.ped_vltotal_liq) FROM ped0000 T9' +
      ' WHERE T9.cli_codigo = T1.cli_codigo AND T9.ped_situacao = '#39'F'#39' A' +
      'ND T9.opv_codigo IN (SELECT T10.opv_codigo FROM opv0000 T10 WHER' +
      'E T10.opv_venda = '#39'S'#39')),0) AS PEDIDOS_ABERTOS,'#13#10'coalesce((SELECT' +
      ' SUM(T9.ped_vltotal_liq) FROM ped0000 T9 WHERE T9.cli_codigo = T' +
      '1.cli_codigo AND T9.ped_situacao = '#39'F'#39' AND T9.opv_codigo IN (SEL' +
      'ECT T10.opv_codigo FROM opv0000 T10 WHERE T10.opv_servico = '#39'S'#39')' +
      '),0) AS PEDIDOS_ORCAMENTOS,'#13#10'coalesce((SELECT MAX(T9.ped_vltotal' +
      '_liq) FROM ped0000 T9 WHERE T9.cli_codigo = T1.cli_codigo AND T9' +
      '.opv_codigo IN (SELECT T10.opv_codigo FROM opv0000 T10 WHERE T10' +
      '.opv_venda = '#39'S'#39')),0) AS MAIOR_COMPRA'#13#10#13#10'FROM'#13#10'ped0000 T1'#13#10#13#10'LEF' +
      'T JOIN cli0000 T2 ON (T2.cli_codigo = T1.cli_codigo)'#13#10'LEFT JOIN ' +
      'opv0000 T3 ON (T3.opv_codigo = T1.opv_codigo)'#13#10'LEFT JOIN rep0000' +
      ' T4 ON (T4.rep_codigo = T2.rep_codigo)'#13#10'LEFT JOIN pcl0000 T5 ON ' +
      '(T5.pcl_codigo = T2.pcl_codigo)'#13#10'LEFT JOIN pcl0000 T7 ON (T7.pcl' +
      '_codigo = T1.pcl_codigo)'#13#10'LEFT JOIN cli_atv1 T8 ON (T8.rcl_codig' +
      'o = T2.CLI_ATIVIDADE)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 20
    Params = <>
    OnCalcFields = CdsPedidoAnaliseCalcFields
    CommandText = 
      'SELECT'#13#10'T1.ped_registro,'#13#10'T1.ped_codigo,'#13#10'T1.ped_status_analise_' +
      'credito,'#13#10'T1.ped_dtentrada,'#13#10'T2.cli_codigo,'#13#10'T2.cli_razao,'#13#10'T3.o' +
      'pv_descricao,'#13#10'T1.ped_vltotal_liq,'#13#10'T7.pcl_nome AS PRAZO_PEDIDO,' +
      #13#10'T2.cli_fone,'#13#10'T1.ped_dtsaida,'#13#10'T2.cli_cgc,'#13#10'T1.ped_obs_analise' +
      '_credito,'#13#10'CASE'#13#10'    WHEN (T2.cli_inativo = '#39'A'#39') THEN'#13#10'        '#39 +
      'ATIVO'#39#13#10'    ELSE'#13#10'        '#39'INATIVO'#39#13#10'END AS CLIENTE_ATIVO,'#13#10'(SEL' +
      'ECT coalesce(SUM(T6.fpc_vlparc),0) FROM fat_pc01 T6 WHERE T6.cli' +
      '_codigo = T1.cli_codigo AND T6.fpc_vencto < current_date AND T6.' +
      'fpc_sitpag = '#39'P'#39') AS FATURAS_VENCIDAS,'#13#10'(SELECT coalesce(SUM(T6.' +
      'fpc_vlparc),0) FROM fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_cod' +
      'igo AND T6.fpc_vencto >= current_date AND T6.fpc_sitpag = '#39'P'#39') A' +
      'S FATURAS_PENDENTES,'#13#10'coalesce(CAST((SELECT SUM(T6.fpc_vencto - ' +
      'T6.fpc_pagto) FROM fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_codi' +
      'go AND T6.fpc_sitpag = '#39'L'#39') / (SELECT COUNT(T6.fat_registro) FRO' +
      'M fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_codigo AND T6.fpc_sit' +
      'pag = '#39'L'#39') AS INTEGER),0)  AS MEDIA_ATRASO,'#13#10#13#10'T2.CLI_DTINICIO A' +
      'S CLIENTE_DESDE,'#13#10'T2.cli_limitecred AS CLIENTE_LIMITE_CREDITO,'#13#10 +
      'T4.rep_nome AS CLIENTE_VENDEDOR,'#13#10'T5.pcl_nome AS CLIENTE_PRAZO,'#13 +
      #10'CASE'#13#10'    when (t2.cli_porte = '#39'P'#39') THEN'#13#10'        '#39'PEQUENO'#39#13#10'  ' +
      '  when (t2.cli_porte = '#39'M'#39') THEN'#13#10'        '#39'MEDIO'#39#13#10'    ELSE'#13#10'   ' +
      '     '#39'GRANDE'#39#13#10'END as CLIENTE_PORTE,'#13#10'CASE'#13#10'    WHEN (T2.cli_pai' +
      's = '#39'N'#39') THEN'#13#10'        '#39'NACIONAL'#39#13#10'    ELSE'#13#10'        '#39'INTERNACIO' +
      'NAL'#39#13#10'END AS CLIENTE_NAC_INTER,'#13#10'CASE'#13#10'    WHEN (T2.cli_pessoa =' +
      ' '#39'J'#39') THEN'#13#10'        '#39'JUR'#205'DICA'#39#13#10'    ELSE'#13#10'        '#39'F'#205'SICA'#39#13#10'END ' +
      'AS CLIENTE_PESSOA,'#13#10'T8.rcl_atividade AS CLIENTE_ATIVIDADE,'#13#10'T2.C' +
      'LI_VL_ULTCOMP AS CLIENTE_ULTIMA_COMPRA,'#13#10'T2.CLI_DTULTCOM AS CLIE' +
      'NTE_DATA_ULTIMA_COMPRA,'#13#10'coalesce(T2.CLI_DESC2,0) AS CLIENTE_DES' +
      'CONTO,'#13#10'coalesce((SELECT SUM(T9.ped_vltotal_liq) FROM ped0000 T9' +
      ' WHERE T9.cli_codigo = T1.cli_codigo AND T9.ped_situacao = '#39'F'#39' A' +
      'ND T9.opv_codigo IN (SELECT T10.opv_codigo FROM opv0000 T10 WHER' +
      'E T10.opv_venda = '#39'S'#39')),0) AS PEDIDOS_ABERTOS,'#13#10'coalesce((SELECT' +
      ' SUM(T9.ped_vltotal_liq) FROM ped0000 T9 WHERE T9.cli_codigo = T' +
      '1.cli_codigo AND T9.ped_situacao = '#39'F'#39' AND T9.opv_codigo IN (SEL' +
      'ECT T10.opv_codigo FROM opv0000 T10 WHERE T10.opv_servico = '#39'S'#39')' +
      '),0) AS PEDIDOS_ORCAMENTOS,'#13#10'coalesce((SELECT MAX(T9.ped_vltotal' +
      '_liq) FROM ped0000 T9 WHERE T9.cli_codigo = T1.cli_codigo AND T9' +
      '.opv_codigo IN (SELECT T10.opv_codigo FROM opv0000 T10 WHERE T10' +
      '.opv_venda = '#39'S'#39')),0) AS MAIOR_COMPRA'#13#10#13#10'FROM'#13#10'ped0000 T1'#13#10#13#10'LEF' +
      'T JOIN cli0000 T2 ON (T2.cli_codigo = T1.cli_codigo)'#13#10'LEFT JOIN ' +
      'opv0000 T3 ON (T3.opv_codigo = T1.opv_codigo)'#13#10'LEFT JOIN rep0000' +
      ' T4 ON (T4.rep_codigo = T2.rep_codigo)'#13#10'LEFT JOIN pcl0000 T5 ON ' +
      '(T5.pcl_codigo = T2.pcl_codigo)'#13#10'LEFT JOIN pcl0000 T7 ON (T7.pcl' +
      '_codigo = T1.pcl_codigo)'#13#10'LEFT JOIN cli_atv1 T8 ON (T8.rcl_codig' +
      'o = T2.CLI_ATIVIDADE)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 632
    Top = 248
    object CdsPedidoAnalisePED_REGISTRO: TIntegerField
      FieldName = 'PED_REGISTRO'
      Required = True
    end
    object CdsPedidoAnalisePED_CODIGO: TStringField
      Alignment = taCenter
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object CdsPedidoAnalisePED_STATUS_ANALISE_CREDITO: TStringField
      FieldName = 'PED_STATUS_ANALISE_CREDITO'
      Size = 1
    end
    object CdsPedidoAnalisePED_DTENTRADA: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'PED_DTENTRADA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CdsPedidoAnaliseCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object CdsPedidoAnaliseOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object CdsPedidoAnalisePED_VLTOTAL_LIQ: TFMTBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnalisePRAZO_PEDIDO: TStringField
      FieldName = 'PRAZO_PEDIDO'
      Size = 35
    end
    object CdsPedidoAnaliseCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object CdsPedidoAnalisePED_DTSAIDA: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'PED_DTSAIDA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CdsPedidoAnaliseCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object CdsPedidoAnalisePED_OBS_ANALISE_CREDITO: TBlobField
      FieldName = 'PED_OBS_ANALISE_CREDITO'
      Size = 1
    end
    object CdsPedidoAnaliseCLIENTE_ATIVO: TStringField
      FieldName = 'CLIENTE_ATIVO'
      FixedChar = True
      Size = 7
    end
    object CdsPedidoAnaliseFATURAS_VENCIDAS: TFMTBCDField
      FieldName = 'FATURAS_VENCIDAS'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnaliseFATURAS_PENDENTES: TFMTBCDField
      FieldName = 'FATURAS_PENDENTES'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnaliseMEDIA_ATRASO: TIntegerField
      FieldName = 'MEDIA_ATRASO'
    end
    object CdsPedidoAnaliseCLIENTE_DESDE: TSQLTimeStampField
      FieldName = 'CLIENTE_DESDE'
    end
    object CdsPedidoAnaliseCLIENTE_LIMITE_CREDITO: TFMTBCDField
      FieldName = 'CLIENTE_LIMITE_CREDITO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnaliseCLIENTE_VENDEDOR: TStringField
      FieldName = 'CLIENTE_VENDEDOR'
      Size = 35
    end
    object CdsPedidoAnaliseCLIENTE_PRAZO: TStringField
      FieldName = 'CLIENTE_PRAZO'
      Size = 35
    end
    object CdsPedidoAnaliseCLIENTE_PORTE: TStringField
      FieldName = 'CLIENTE_PORTE'
      FixedChar = True
      Size = 7
    end
    object CdsPedidoAnaliseCLIENTE_NAC_INTER: TStringField
      FieldName = 'CLIENTE_NAC_INTER'
      FixedChar = True
      Size = 13
    end
    object CdsPedidoAnaliseCLIENTE_PESSOA: TStringField
      FieldName = 'CLIENTE_PESSOA'
      FixedChar = True
      Size = 8
    end
    object CdsPedidoAnaliseCLIENTE_ATIVIDADE: TStringField
      FieldName = 'CLIENTE_ATIVIDADE'
    end
    object CdsPedidoAnaliseCLIENTE_ULTIMA_COMPRA: TFMTBCDField
      FieldName = 'CLIENTE_ULTIMA_COMPRA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnaliseCLIENTE_DATA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'CLIENTE_DATA_ULTIMA_COMPRA'
    end
    object CdsPedidoAnaliseCLIENTE_DESCONTO: TFMTBCDField
      FieldName = 'CLIENTE_DESCONTO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 5
    end
    object CdsPedidoAnalisePEDIDOS_ABERTOS: TFMTBCDField
      FieldName = 'PEDIDOS_ABERTOS'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnalisePEDIDOS_ORCAMENTOS: TFMTBCDField
      FieldName = 'PEDIDOS_ORCAMENTOS'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnaliseccSituacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'ccSituacao'
      Size = 15
      Calculated = True
    end
    object CdsPedidoAnaliseTotalAberto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalAberto'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
    object CdsPedidoAnaliseSaldoCredito: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SaldoCredito'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
    object CdsPedidoAnaliseMAIOR_COMPRA: TFMTBCDField
      FieldName = 'MAIOR_COMPRA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnaliseLimiteUtilizado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LimiteUtilizado'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
    object CdsPedidoAnaliseCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
  end
  object DsPedidoAnalise: TDataSource
    DataSet = CdsPedidoAnalise
    OnDataChange = DsPedidoAnaliseDataChange
    Left = 664
    Top = 248
  end
  object SqlCdsItens: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select  '#13#10'PED_CODIGO,'#13#10'PRD_REFER, '#13#10'PRF_PRDDESCRI, '#13#10'PRF_QTDE, '#13 +
      #10'PRF_PRECO, '#13#10'PRF_SITUACAO,'#13#10'PRF_QTDEFAT '#13#10'from PED_IT01'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsItensCalcFields
    CommandText = 
      'select  '#13#10'PED_CODIGO,'#13#10'PRD_REFER, '#13#10'PRF_PRDDESCRI, '#13#10'PRF_QTDE, '#13 +
      #10'PRF_PRECO, '#13#10'PRF_SITUACAO,'#13#10'PRF_QTDEFAT '#13#10'from PED_IT01'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 568
    Top = 248
    object SqlCdsItensPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 50
    end
    object SqlCdsItensPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 15
    end
    object SqlCdsItensPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsItensPRF_SITUACAO: TStringField
      FieldName = 'PRF_SITUACAO'
      Size = 1
    end
    object SqlCdsItensCC_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_SITUACAO'
      Size = 12
      Calculated = True
    end
    object SqlCdsItensPRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Precision = 15
    end
    object SqlCdsItensCC_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CC_TOTAL'
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Calculated = True
    end
  end
  object DsPedItens: TDataSource
    DataSet = SqlCdsItens
    Left = 600
    Top = 248
  end
  object CdsParcelasGrid: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT '#13#10'P1.FAT_REGISTRO,'#13#10'P1.FAT_CODIGO,'#13#10'P1.FPC_NUMER, '#13#10'P1.FP' +
      'C_VLPARC, '#13#10'P1.FPC_VENCTO, '#13#10'P1.FPC_VLPAGO,'#13#10'P1.FPC_PAGTO,'#13#10'P1.F' +
      'PC_STATUS,'#13#10'P1.FPC_PREVISAO,'#13#10'P1.FPC_SITPAG,'#13#10'P1.FPC_EXCLUSAO,'#13#10 +
      'B1.BAN_APELIDO '#13#10'FROM FAT_PC01 P1 '#13#10'LEFT JOIN BAN0000 B1 on B1.B' +
      'AN_CODIGO = P1.BAN_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT '#13#10'P1.FAT_REGISTRO,'#13#10'P1.FAT_CODIGO,'#13#10'P1.FPC_NUMER, '#13#10'P1.FP' +
      'C_VLPARC, '#13#10'P1.FPC_VENCTO, '#13#10'P1.FPC_VLPAGO,'#13#10'P1.FPC_PAGTO,'#13#10'P1.F' +
      'PC_STATUS,'#13#10'P1.FPC_PREVISAO,'#13#10'P1.FPC_SITPAG,'#13#10'P1.FPC_EXCLUSAO,'#13#10 +
      'B1.BAN_APELIDO '#13#10'FROM FAT_PC01 P1 '#13#10'LEFT JOIN BAN0000 B1 on B1.B' +
      'AN_CODIGO = P1.BAN_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 696
    Top = 248
    object CdsParcelasGridFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      Required = True
    end
    object CdsParcelasGridFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object CdsParcelasGridFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object CdsParcelasGridFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsParcelasGridFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object CdsParcelasGridFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      currency = True
      Precision = 15
    end
    object CdsParcelasGridFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object CdsParcelasGridFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object CdsParcelasGridBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 16
    end
    object CdsParcelasGridFPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      Size = 1
    end
    object CdsParcelasGridFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object CdsParcelasGridFPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      Size = 1
    end
  end
  object DsParcelasGrid: TDataSource
    DataSet = CdsParcelasGrid
    Left = 728
    Top = 248
  end
end
