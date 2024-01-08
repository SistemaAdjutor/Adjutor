object FormProduto: TFormProduto
  Left = -1
  Top = -1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 547
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 0
    Top = 4
    Width = 67
    Height = 13
    Caption = 'Refer'#234'ncia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PctrlProdutos: TPageControl
    Left = 0
    Top = 31
    Width = 793
    Height = 516
    ActivePage = Tbs_FichaTec
    HotTrack = True
    TabOrder = 0
    OnChange = PctrlProdutosChange
    object Tbs_Produtos: TTabSheet
      Caption = 'Cadastro de Produtos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox8: TGroupBox
        Left = 613
        Top = 192
        Width = 172
        Height = 58
        TabOrder = 4
        object Label6: TLabel
          Left = 4
          Top = 16
          Width = 114
          Height = 13
          Caption = 'Tabela de Pre'#231'o(S/N)?:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 6
          Top = 40
          Width = 80
          Height = 13
          Caption = 'Pre'#231'o de Venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBComboBox2: TDBComboBox
          Left = 127
          Top = 11
          Width = 41
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'PRD_TABPRECO'
          DataSource = DataCadastros.DsProdutos
          Items.Strings = (
            'S'
            'N')
          TabOrder = 0
        end
        object DBePrd_pvenda: TDBEdit
          Left = 89
          Top = 33
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_PVENDA'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object GrpPosicaoEstoque: TGroupBox
        Left = 2
        Top = 133
        Width = 603
        Height = 101
        Caption = 'Posi'#231#227'o do Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Panel3: TPanel
          Left = 4
          Top = 15
          Width = 98
          Height = 15
          Caption = 'Saldo Inicial'
          Color = 12681984
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Panel5: TPanel
          Left = 103
          Top = 15
          Width = 98
          Height = 15
          Caption = 'Entradas'
          Color = 12681984
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Panel9: TPanel
          Left = 202
          Top = 15
          Width = 98
          Height = 15
          Caption = 'Sa'#237'das'
          Color = 12681984
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Panel10: TPanel
          Left = 301
          Top = 15
          Width = 98
          Height = 15
          Caption = 'Saldo Atual'
          Color = 12681984
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Panel12: TPanel
          Left = 499
          Top = 15
          Width = 98
          Height = 15
          Caption = 'Atual+Compra'
          Color = 12681984
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit7: TDBEdit
          Left = 5
          Top = 30
          Width = 98
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_ESTOQUE'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit8: TDBEdit
          Left = 104
          Top = 30
          Width = 98
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_ENTRADA'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit14: TDBEdit
          Left = 203
          Top = 30
          Width = 98
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_SAIDA'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit17: TDBEdit
          Left = 302
          Top = 30
          Width = 98
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_FISICO_CC'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit18: TDBEdit
          Left = 401
          Top = 30
          Width = 98
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_PENDENTE'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object Panel11: TPanel
          Left = 400
          Top = 15
          Width = 98
          Height = 15
          Caption = 'Compra Aberta'
          Color = 12681984
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit19: TDBEdit
          Left = 500
          Top = 30
          Width = 98
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_ANTECIPADO_CC'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DbeQtdeVar1: TDBEdit
          Left = 5
          Top = 74
          Width = 73
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_VAR1'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DbeQtdeVar2: TDBEdit
          Left = 79
          Top = 74
          Width = 74
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_VAR2'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object DbeQtdeVar3: TDBEdit
          Left = 153
          Top = 74
          Width = 74
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_VAR3'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object DbeQtdeVar4: TDBEdit
          Left = 227
          Top = 74
          Width = 74
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_VAR4'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object DbeQtdeVar5: TDBEdit
          Left = 301
          Top = 74
          Width = 74
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_VAR5'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object DbeQtdeVar6: TDBEdit
          Left = 375
          Top = 74
          Width = 74
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_VAR6'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
        object DbeQtdeVar7: TDBEdit
          Left = 449
          Top = 74
          Width = 74
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_VAR7'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
        end
        object DbeQtdeVar8: TDBEdit
          Left = 524
          Top = 74
          Width = 74
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PRD_VAR8'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 19
        end
        object DbeNomeV1: TDBEdit
          Left = 5
          Top = 53
          Width = 73
          Height = 21
          TabStop = False
          Color = 16579817
          Ctl3D = True
          DataField = 'PRD_DCVAR1'
          DataSource = DataCadastros.DsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 20
        end
        object DbeNomeV2: TDBEdit
          Left = 79
          Top = 53
          Width = 74
          Height = 21
          TabStop = False
          Color = 16579817
          Ctl3D = True
          DataField = 'PRD_DCVAR2'
          DataSource = DataCadastros.DsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 21
        end
        object DbeNomeV3: TDBEdit
          Left = 153
          Top = 53
          Width = 74
          Height = 21
          TabStop = False
          Color = 16579817
          Ctl3D = True
          DataField = 'PRD_DCVAR3'
          DataSource = DataCadastros.DsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 22
        end
        object DbeNomeV4: TDBEdit
          Left = 227
          Top = 53
          Width = 74
          Height = 21
          TabStop = False
          Color = 16579817
          Ctl3D = True
          DataField = 'PRD_DCVAR4'
          DataSource = DataCadastros.DsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 23
        end
        object DbeNomeV5: TDBEdit
          Left = 301
          Top = 53
          Width = 74
          Height = 21
          TabStop = False
          Color = 16579817
          Ctl3D = True
          DataField = 'PRD_DCVAR5'
          DataSource = DataCadastros.DsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 24
        end
        object DbeNomeV6: TDBEdit
          Left = 375
          Top = 53
          Width = 74
          Height = 21
          TabStop = False
          Color = 16579817
          Ctl3D = True
          DataField = 'PRD_DCVAR6'
          DataSource = DataCadastros.DsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 25
        end
        object DbeNomeV7: TDBEdit
          Left = 449
          Top = 53
          Width = 74
          Height = 21
          TabStop = False
          Color = 16579817
          Ctl3D = True
          DataField = 'PRD_DCVAR7'
          DataSource = DataCadastros.DsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 26
        end
        object DbeNomeV8: TDBEdit
          Left = 524
          Top = 53
          Width = 74
          Height = 21
          TabStop = False
          Color = 16579817
          Ctl3D = True
          DataField = 'PRD_DCVAR8'
          DataSource = DataCadastros.DsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 27
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 90
        Width = 784
        Height = 43
        Caption = 'Classifica'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label23: TLabel
          Left = 6
          Top = 20
          Width = 24
          Height = 13
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 296
          Top = 20
          Width = 32
          Height = 13
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 529
          Top = 20
          Width = 51
          Height = 13
          Caption = 'Segmento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEPRD_TIPO: TDBEdit
          Left = 30
          Top = 16
          Width = 28
          Height = 21
          DataField = 'PTI_CODIGO'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = DBEPRD_TIPOExit
        end
        object CbTipo: TComboBox
          Left = 59
          Top = 16
          Width = 170
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = CbTipoClick
          OnExit = CbTipoExit
        end
        object DBEPRD_GRUPO: TDBEdit
          Left = 328
          Top = 16
          Width = 28
          Height = 21
          DataField = 'PGR_CODIGO'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnExit = DBEPRD_GRUPOExit
        end
        object CbGrupo: TComboBox
          Left = 356
          Top = 16
          Width = 170
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = CbGrupoClick
          OnExit = CbGrupoExit
        end
        object DBEPRD_SEGMENTO: TDBEdit
          Left = 580
          Top = 16
          Width = 31
          Height = 21
          DataField = 'LIN_CODIGO'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnExit = DBEPRD_SEGMENTOExit
        end
        object CbSegm: TComboBox
          Left = 611
          Top = 16
          Width = 170
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = CbSegmClick
          OnExit = CbSegmExit
        end
        object EdtSigla: TEdit
          Left = 230
          Top = 16
          Width = 22
          Height = 21
          TabStop = False
          Color = 14145495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 2
          Text = 'BB'
        end
      end
      object GroupBox7: TGroupBox
        Left = 1
        Top = 0
        Width = 784
        Height = 90
        Caption = 'Dados descritivos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 37
          Top = 17
          Width = 51
          Height = 13
          Caption = 'Descri'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 471
          Top = 17
          Width = 43
          Height = 13
          Caption = 'Unidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 635
          Top = 17
          Width = 77
          Height = 13
          Caption = 'Peso Bruto (Kg):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 21
          Top = 41
          Width = 67
          Height = 13
          Caption = 'Complemento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 29
          Top = 65
          Width = 58
          Height = 13
          Caption = 'Embalagem:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 185
          Top = 65
          Width = 43
          Height = 13
          Caption = 'Garantia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 364
          Top = 64
          Width = 82
          Height = 13
          Caption = 'C'#243'digo de Barra :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 431
          Top = 13
          Width = 23
          Height = 22
          Hint = 'Busca descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object Label29: TLabel
          Left = 372
          Top = 41
          Width = 74
          Height = 13
          Caption = 'C'#243'digo Original:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 625
          Top = 41
          Width = 86
          Height = 13
          Caption = 'Peso Liquido (Kg):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DbePrd_Descri: TDBEdit
          Left = 90
          Top = 13
          Width = 340
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_DESCRI'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DbePrd_PesoKg: TDBEdit
          Left = 714
          Top = 13
          Width = 63
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_PESOKg'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 7
          ParentFont = False
          TabOrder = 2
        end
        object DBePrd_comple: TDBEdit
          Left = 90
          Top = 37
          Width = 240
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_COMPL'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DbePrd_embala: TDBEdit
          Left = 90
          Top = 61
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_EMBALA'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DbePrd_Garantia: TDBEdit
          Left = 230
          Top = 61
          Width = 100
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_GARANTIA'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBComboBox1: TDBComboBox
          Left = 516
          Top = 13
          Width = 54
          Height = 21
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'PRD_UND'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'UN'
            'P'#199
            'BR'
            'CX'
            'EMB'
            'FD'
            'GR'
            'LT'
            'MT'
            'MIL'
            'PCT'
            'KG'
            'RL'
            'CT'
            'LA')
          ParentFont = False
          TabOrder = 1
        end
        object DBEPRD_CODBAR: TDBEdit
          Left = 449
          Top = 61
          Width = 121
          Height = 21
          DataField = 'PRD_CODBARRA'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 13
          ParentFont = False
          TabOrder = 8
          OnEnter = DBEPRD_CODBAREnter
          OnExit = DBEPRD_CODBARExit
          OnKeyPress = DBEPRD_CODBARKeyPress
        end
        object Edt_CodOriginal: TDBEdit
          Left = 449
          Top = 37
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_CODORIGINAL'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DbePrd_PesoLiq: TDBEdit
          Left = 714
          Top = 37
          Width = 63
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_PESOLIQ'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 7
          ParentFont = False
          TabOrder = 5
        end
      end
      object GroupBox3: TGroupBox
        Left = 613
        Top = 133
        Width = 172
        Height = 60
        Caption = 'Estoque '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label18: TLabel
          Left = 26
          Top = 38
          Width = 38
          Height = 13
          Caption = 'M'#237'nimo:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label24: TLabel
          Left = 26
          Top = 16
          Width = 39
          Height = 13
          Caption = 'M'#225'ximo:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object DBePrd_minimo: TDBEdit
          Left = 66
          Top = 34
          Width = 75
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_MINIMO'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = DBePrd_minimoEnter
        end
        object DbePrd_Maximo: TDBEdit
          Left = 66
          Top = 12
          Width = 75
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_MAXIMO'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          TabOrder = 0
          OnClick = DbePrd_MaximoClick
          OnEnter = DbePrd_MaximoEnter
        end
      end
      object GroupBox5: TGroupBox
        Left = 613
        Top = 250
        Width = 172
        Height = 105
        Caption = 'Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        object Label10: TLabel
          Left = 15
          Top = 19
          Width = 66
          Height = 13
          Caption = 'Aquisi'#231#227'o Liq:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 49
          Top = 64
          Width = 32
          Height = 13
          Caption = 'M'#233'dio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label62: TLabel
          Left = 5
          Top = 42
          Width = 76
          Height = 13
          Caption = 'Aquisi'#231#227'o c/IPI:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBePrd_pcusto: TDBEdit
          Left = 81
          Top = 14
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_PCUSTO'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBePrd_medio: TDBEdit
          Left = 81
          Top = 60
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_PMEDIO'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEPRD_CUSTOCOMIPI: TDBEdit
          Left = 81
          Top = 37
          Width = 80
          Height = 21
          DataField = 'PRD_CUSTOCOMIPI'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object PgCtrl_Produtos: TPageControl
        Left = 2
        Top = 236
        Width = 604
        Height = 213
        ActivePage = TbS_Caract
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HotTrack = True
        ParentFont = False
        TabOrder = 6
        OnChange = PgCtrl_ProdutosChange
        object TbS_Caract: TTabSheet
          Caption = 'Caracter'#237'sticas'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 596
            Height = 185
            Align = alClient
            Caption = 'Panel6'
            TabOrder = 0
            object ImgProduto: TImage
              Left = 424
              Top = 5
              Width = 168
              Height = 176
              Stretch = True
            end
            object BitBtn1: TBitBtn
              Left = 5
              Top = 157
              Width = 415
              Height = 25
              Cursor = crHandPoint
              Caption = '&Editar Ficha Descritiva do Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
                000333FFF3777777777F3000330FFFFFFF033777FF7F3FF3FF7F07B7030F00F0
                0F0377777F7F7737737F0BBB030FFFFFFF0377777F7F3FFFF37F07B7030F0000
                FF037777737F7777337F3000330FFFFFFF033777337F3FF3FF7F3333330F00F0
                00033333337F7737777F3333330FFFF0FF033FFFFF7F3FF7F3730000030F08F0
                F03377777F7F7737F7330999030FFFF0033377777F7FFFF77333099903000000
                333377777F7777773333099903333333333377777F33FFFFFFF3000003300000
                00337777733777777733333333330CCC033333333333777773333333333330C0
                3333333333333777333333333333330333333333333333733333}
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 1
              TabStop = False
              OnClick = BitBtn1Click
            end
            object RichDoc: TRichEdit
              Left = 3
              Top = 4
              Width = 417
              Height = 151
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Lines.Strings = (
                'Documento')
              ParentFont = False
              ReadOnly = True
              ScrollBars = ssBoth
              TabOrder = 0
              Zoom = 100
            end
          end
        end
        object TbS_Fornec: TTabSheet
          Caption = 'Fornecedores'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 596
            Height = 185
            Align = alClient
            Caption = 'Panel7'
            TabOrder = 1
            OnEnter = Panel7Enter
            object Label16: TLabel
              Left = 129
              Top = 158
              Width = 89
              Height = 13
              Caption = 'Ultimo Fornecedor:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBeFor_codigo: TDBEdit
              Left = 220
              Top = 155
              Width = 30
              Height = 21
              TabStop = False
              Color = 14145495
              DataField = 'FOR_CODIGO'
              DataSource = DataCadastros.DsProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 0
            end
            object EdtFor: TEdit
              Left = 250
              Top = 155
              Width = 343
              Height = 21
              TabStop = False
              Color = 14145495
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMenuBar
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
          end
          object DBGrid1: TDBGrid
            Left = 3
            Top = 2
            Width = 590
            Height = 146
            Color = 16776176
            Ctl3D = True
            DataSource = DsQFornec
            FixedColor = 12681984
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'FOR_CODIGO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FOR_RAZAO'
                Title.Alignment = taCenter
                Title.Caption = 'Fornecedor'
                Width = 328
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FOR_FONE'
                Title.Alignment = taCenter
                Title.Caption = 'Fone Empresa'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FOR_CONTATO'
                Title.Alignment = taCenter
                Title.Caption = 'Contato'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FOR_FONCONT'
                Title.Alignment = taCenter
                Title.Caption = 'Fone Contato'
                Width = 89
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FOR_EMAIL'
                Title.Alignment = taCenter
                Title.Caption = 'Email Empresa'
                Width = 225
                Visible = True
              end>
          end
        end
        object TbS_FatorConv: TTabSheet
          Caption = 'Fator de Convers'#227'o'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label17: TLabel
            Left = 5
            Top = 8
            Width = 486
            Height = 13
            Caption = 
              'Utilizado em algumas mat'#233'rias-primas as quais compro em uma medi' +
              'da e fa'#231'o o custo em outra medida.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object utilizar: TDBCheckBox
            Left = 8
            Top = 35
            Width = 189
            Height = 17
            Caption = 'Utilizar fator de convers'#227'o'
            Ctl3D = True
            DataField = 'PRD_UTILCONV'
            DataSource = DataCadastros.DsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object GroupBox1: TGroupBox
            Left = 7
            Top = 52
            Width = 422
            Height = 88
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            object Label19: TLabel
              Left = 33
              Top = 28
              Width = 96
              Height = 13
              Caption = 'Und. de Compra:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 214
              Top = 20
              Width = 34
              Height = 13
              Caption = 'Fator:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 27
              Top = 56
              Width = 104
              Height = 13
              Caption = 'Und. de Trabalho:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 132
              Top = 25
              Width = 40
              Height = 21
              CharCase = ecUpperCase
              DataField = 'PRD_UNDCOMP'
              DataSource = DataCadastros.DsProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 252
              Top = 17
              Width = 100
              Height = 21
              DataField = 'PRD_FATORC'
              DataSource = DataCadastros.DsProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 13
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit3: TDBEdit
              Left = 132
              Top = 53
              Width = 40
              Height = 21
              CharCase = ecUpperCase
              DataField = 'PRD_UND'
              DataSource = DataCadastros.DsProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object Rad_divisor: TRadioButton
              Left = 213
              Top = 56
              Width = 68
              Height = 17
              Caption = 'Divisor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              TabStop = True
            end
            object Rad_multi: TRadioButton
              Left = 301
              Top = 56
              Width = 92
              Height = 17
              Caption = 'Mutiplicador'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              TabStop = True
            end
            object GroupBox6: TGroupBox
              Left = 200
              Top = 0
              Width = 2
              Height = 120
              Caption = 'GroupBox5'
              TabOrder = 5
            end
          end
        end
        object TbS_Variacoes: TTabSheet
          Caption = 'Varia'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label28: TLabel
            Left = 15
            Top = 47
            Width = 37
            Height = 13
            Caption = 'Nome:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 14
            Top = 117
            Width = 37
            Height = 13
            Caption = 'Nome:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 19
            Top = 70
            Width = 32
            Height = 13
            Caption = 'Qtde:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 19
            Top = 140
            Width = 32
            Height = 13
            Caption = 'Qtde:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label45: TLabel
            Left = 62
            Top = 28
            Width = 63
            Height = 13
            Caption = 'VARIA'#199#195'O 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 197
            Top = 28
            Width = 63
            Height = 13
            Caption = 'VARIA'#199#195'O 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 334
            Top = 28
            Width = 63
            Height = 13
            Caption = 'VARIA'#199#195'O 3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 469
            Top = 28
            Width = 63
            Height = 13
            Caption = 'VARIA'#199#195'O 4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 62
            Top = 99
            Width = 63
            Height = 13
            Caption = 'VARIA'#199#195'O 5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 197
            Top = 99
            Width = 63
            Height = 13
            Caption = 'VARIA'#199#195'O 6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 334
            Top = 99
            Width = 63
            Height = 13
            Caption = 'VARIA'#199#195'O 7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 469
            Top = 99
            Width = 63
            Height = 13
            Caption = 'VARIA'#199#195'O 8'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 68
            Top = 6
            Width = 489
            Height = 13
            Caption = 
              'Exclusivamente para Produtos acabados , quando tenho mais de um ' +
              'modelo ou tipo do mesmo produto.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 3
            Top = 5
            Width = 62
            Height = 13
            Caption = 'Varia'#231#227'o ='
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DbeVar1: TDBEdit
            Left = 53
            Top = 43
            Width = 92
            Height = 21
            Ctl3D = True
            DataField = 'PRD_DCVAR1'
            DataSource = DataCadastros.DsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
          end
          object DbeVar4: TDBEdit
            Left = 461
            Top = 41
            Width = 92
            Height = 21
            Ctl3D = True
            DataField = 'PRD_DCVAR4'
            DataSource = DataCadastros.DsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 3
          end
          object DbeVar5: TDBEdit
            Left = 53
            Top = 113
            Width = 92
            Height = 21
            Ctl3D = True
            DataField = 'PRD_DCVAR5'
            DataSource = DataCadastros.DsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 4
          end
          object DbeVar2: TDBEdit
            Left = 189
            Top = 43
            Width = 92
            Height = 21
            Ctl3D = True
            DataField = 'PRD_DCVAR2'
            DataSource = DataCadastros.DsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
          end
          object DbeVar3: TDBEdit
            Left = 325
            Top = 42
            Width = 92
            Height = 21
            Ctl3D = True
            DataField = 'PRD_DCVAR3'
            DataSource = DataCadastros.DsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
          end
          object DBEdit9: TDBEdit
            Left = 53
            Top = 67
            Width = 92
            Height = 21
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR1'
            DataSource = DataCadastros.DsProdutos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object DBEdit10: TDBEdit
            Left = 190
            Top = 67
            Width = 92
            Height = 21
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR2'
            DataSource = DataCadastros.DsProdutos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object DBEdit11: TDBEdit
            Left = 325
            Top = 67
            Width = 92
            Height = 21
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR3'
            DataSource = DataCadastros.DsProdutos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object DBEdit12: TDBEdit
            Left = 462
            Top = 67
            Width = 92
            Height = 21
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR4'
            DataSource = DataCadastros.DsProdutos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object DBEdit13: TDBEdit
            Left = 53
            Top = 137
            Width = 92
            Height = 21
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR5'
            DataSource = DataCadastros.DsProdutos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object DbeVar6: TDBEdit
            Left = 189
            Top = 113
            Width = 92
            Height = 21
            Ctl3D = True
            DataField = 'PRD_DCVAR6'
            DataSource = DataCadastros.DsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 5
          end
          object DBEdit15: TDBEdit
            Left = 189
            Top = 137
            Width = 92
            Height = 21
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR6'
            DataSource = DataCadastros.DsProdutos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object DbeVar7: TDBEdit
            Left = 325
            Top = 113
            Width = 92
            Height = 21
            Ctl3D = True
            DataField = 'PRD_DCVAR7'
            DataSource = DataCadastros.DsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 6
          end
          object DbeVAr8: TDBEdit
            Left = 461
            Top = 113
            Width = 92
            Height = 21
            Ctl3D = True
            DataField = 'PRD_DCVAR8'
            DataSource = DataCadastros.DsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 7
          end
          object DBEdit5: TDBEdit
            Left = 325
            Top = 137
            Width = 92
            Height = 21
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR7'
            DataSource = DataCadastros.DsProdutos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
          end
          object DBEdit6: TDBEdit
            Left = 461
            Top = 137
            Width = 92
            Height = 21
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR8'
            DataSource = DataCadastros.DsProdutos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
          end
        end
      end
      object GroupBox4: TGroupBox
        Left = 613
        Top = 356
        Width = 172
        Height = 130
        Caption = 'Fiscal'
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        object Label34: TLabel
          Left = 5
          Top = 16
          Width = 53
          Height = 13
          Caption = 'Class.Fisc.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 32
          Top = 62
          Width = 77
          Height = 13
          Caption = 'ICMS Exclusivo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 21
          Top = 107
          Width = 88
          Height = 13
          Caption = 'Valor Substitui'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 7
          Top = 86
          Width = 102
          Height = 13
          Caption = 'Tem Sub.Trib.(S/N)?:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 154
          Top = 63
          Width = 8
          Height = 13
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 156
          Top = 109
          Width = 8
          Height = 13
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 17
          Top = 39
          Width = 92
          Height = 13
          Caption = 'Situa'#231#227'o Tribut'#225'ria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DbcLkPrd_IPI: TDBLookupComboBox
          Left = 60
          Top = 12
          Width = 108
          Height = 21
          DataField = 'IPI_CODIGO'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'IPI_CODIGO'
          ListField = 'IPI_CODIGO;IPI_ALIQ'
          ListSource = DataCadastros.DsPrdClassIPI
          ParentFont = False
          TabOrder = 0
        end
        object DbePrd_ICMS: TDBEdit
          Left = 111
          Top = 58
          Width = 40
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_ALIQICM'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 2
        end
        object DbePrd_ICMSubs: TDBEdit
          Left = 111
          Top = 104
          Width = 40
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_ICMSUBS'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = 'DbePrd_IcmSubs'
          MaxLength = 5
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit16: TDBEdit
          Left = 111
          Top = 81
          Width = 15
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_TEMSUB'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 111
          Top = 35
          Width = 20
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRD_SITRIBUT'
          DataSource = DataCadastros.DsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel8: TPanel
        Left = 4
        Top = 451
        Width = 180
        Height = 33
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Color = 12681984
        TabOrder = 8
        object Bit_Lista: TBitBtn
          Left = 5
          Top = 4
          Width = 85
          Height = 25
          Cursor = crHandPoint
          Caption = 'C&onsulta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            CA010000424DCA01000000000000760000002800000027000000110000000100
            04000000000054010000CE0E0000D80E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888888888880887777777777777777888888888888888888
            8880800000000000000007888888888888888888888080888888888888880788
            8888888888888888888080FF8FF8FF8FF8FF0788888888888888888888808088
            88888888888807888888888888888888888080FF8FF8FF8FF8FF078888888888
            888888888880808888888888888807888888888888888888888080FF8FF8FF8F
            F8FF078888888888888888888880808888888888888807888888888888888888
            888080FF8FF8FF8FF8FF07888888888888888888888080000000000000000788
            8888888888888888888080FF7FF7FF7FF7FF0788888888888888888888808000
            0000000000000788888888888888888888808080CCCCCCCCCCCC078888888888
            8888888888808000000000000000088888888888888888888880888888888888
            8888888888888888888888888880}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
          TabStop = False
          OnClick = Bit_ListaClick
        end
        object Bit_Relatorio: TBitBtn
          Left = 90
          Top = 4
          Width = 85
          Height = 25
          Cursor = crHandPoint
          Caption = '&Relat'#243'rios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
          TabStop = False
          OnClick = Bit_RelatorioClick
        end
      end
      object Panel1: TPanel
        Left = 216
        Top = 451
        Width = 390
        Height = 33
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = 'Panel1'
        Color = 12681984
        TabOrder = 9
        object Bit_Cancelar: TBitBtn
          Left = 290
          Top = 4
          Width = 95
          Height = 25
          Cursor = crHandPoint
          Hint = '|Cancela registro atual...'
          Caption = '&Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          TabOrder = 3
          TabStop = False
          OnClick = Bit_CancelarClick
        end
        object Bit_Sair: TBitBtn
          Left = 290
          Top = 4
          Width = 94
          Height = 25
          Cursor = crHandPoint
          Caption = '&Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 4
          TabStop = False
          OnClick = Bit_SairClick
        end
        object Bit_novo: TBitBtn
          Left = 5
          Top = 4
          Width = 95
          Height = 25
          Cursor = crHandPoint
          Caption = '&Novo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            04000000000070000000CE0E0000D80E00001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333300033333300333330003333
            3300333330003333330033000000000333003300000000033300330000000003
            3300333330003333330033333000333333003333300033333300333333333333
            33003333333333333300}
          ParentFont = False
          TabOrder = 0
          TabStop = False
          OnClick = Bit_novoClick
        end
        object Bit_Excluir: TBitBtn
          Left = 100
          Top = 4
          Width = 95
          Height = 25
          Cursor = crHandPoint
          Hint = '|Exclui registro atual..'
          Caption = '&Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            04000000000070000000CE0E0000D80E00001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333333333333300333333333333
            3300333333333333330033000000000033003300000000003300330000000000
            3300333333333333330033333333333333003333333333333300333333333333
            33003333333333333300}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TabStop = False
          OnClick = Bit_ExcluirClick
        end
        object Bit_Gravar: TBitBtn
          Left = 195
          Top = 4
          Width = 95
          Height = 25
          Cursor = crHandPoint
          Hint = '|Grava registro...'
          Caption = '&Gravar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          TabOrder = 2
          TabStop = False
          OnClick = Bit_GravarClick
        end
      end
    end
    object Tbs_FichaTec: TTabSheet
      Caption = 'Ficha T'#233'cnica'
      ImageIndex = 1
      object PAN_FTC01: TPanel
        Left = 1
        Top = 454
        Width = 98
        Height = 33
        Cursor = crHandPoint
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Caption = '11'
        Color = 12681984
        TabOrder = 0
        object BIT_FTC_RELATORIO: TBitBtn
          Left = 4
          Top = 4
          Width = 90
          Height = 25
          Caption = '&Relat'#243'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
          TabStop = False
          OnClick = BIT_FTC_RELATORIOClick
        end
      end
      object PAN_FTC02: TPanel
        Left = 300
        Top = 454
        Width = 483
        Height = 33
        Cursor = crHandPoint
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Color = 12681984
        TabOrder = 1
        object BIT_FTC_CANCELAR: TBitBtn
          Left = 384
          Top = 4
          Width = 95
          Height = 25
          Cursor = crHandPoint
          Hint = '|Cancela registro atual...'
          Caption = '&Cancelar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          TabOrder = 4
          TabStop = False
          OnClick = Bit_FTC_CancelarClick
        end
        object BIT_FTC_EXCLUIR: TBitBtn
          Left = 194
          Top = 4
          Width = 95
          Height = 25
          Cursor = crHandPoint
          Hint = '|Exclui registro atual..'
          Caption = '&Excluir Ficha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            04000000000070000000CE0E0000D80E00001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333333333333300333333333333
            3300333333333333330033000000000033003300000000003300330000000000
            3300333333333333330033333333333333003333333333333300333333333333
            33003333333333333300}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          TabStop = False
          OnClick = BIT_FTC_EXCLUIRClick
        end
        object BIT_FTC_GRAVAR: TBitBtn
          Left = 289
          Top = 4
          Width = 95
          Height = 25
          Cursor = crHandPoint
          Hint = '|Grava registro...'
          Caption = '&Gravar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          TabStop = False
          OnClick = BIT_FTC_GRAVARClick
        end
        object Bit_FTC_Novo: TBitBtn
          Left = 4
          Top = 4
          Width = 95
          Height = 25
          Cursor = crHandPoint
          Caption = '&Criar Ficha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            04000000000070000000CE0E0000D80E00001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333300033333300333330003333
            3300333330003333330033000000000333003300000000033300330000000003
            3300333330003333330033333000333333003333300033333300333333333333
            33003333333333333300}
          ParentFont = False
          TabOrder = 0
          TabStop = False
          OnClick = Bit_FTC_NovoClick
        end
        object Bit_FTC_Copiar: TBitBtn
          Left = 99
          Top = 4
          Width = 95
          Height = 25
          Cursor = crHandPoint
          Caption = 'Copiar &Ficha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            04000000000070000000CE0E0000D80E00001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333300033333300333330003333
            3300333330003333330033000000000333003300000000033300330000000003
            3300333330003333330033333000333333003333300033333300333333333333
            33003333333333333300}
          ParentFont = False
          TabOrder = 1
          TabStop = False
          OnClick = Bit_FTC_CopiarClick
        end
      end
      object PAN_FTC03: TPanel
        Left = 0
        Top = 2
        Width = 784
        Height = 81
        BevelInner = bvLowered
        BevelOuter = bvNone
        TabOrder = 2
        object Label32: TLabel
          Left = 10
          Top = 8
          Width = 53
          Height = 13
          Caption = 'Produto :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 487
          Top = 8
          Width = 83
          Height = 13
          Caption = 'Data Cria'#231#227'o :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 664
          Top = 8
          Width = 42
          Height = 13
          Hint = 'Tempo Unit'#225'rio de Produ'#231#227'o'
          Caption = 'T.U.P.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object GrpVariacoes: TGroupBox
          Left = 3
          Top = 25
          Width = 778
          Height = 52
          Caption = 'Varia'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Label37: TLabel
            Left = 6
            Top = 13
            Width = 16
            Height = 13
            Caption = 'V1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label42: TLabel
            Left = 101
            Top = 13
            Width = 16
            Height = 13
            Caption = 'V2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label43: TLabel
            Left = 197
            Top = 13
            Width = 16
            Height = 13
            Caption = 'V3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label44: TLabel
            Left = 293
            Top = 13
            Width = 16
            Height = 13
            Caption = 'V4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label53: TLabel
            Left = 388
            Top = 13
            Width = 16
            Height = 13
            Caption = 'V5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label54: TLabel
            Left = 485
            Top = 13
            Width = 16
            Height = 13
            Caption = 'V6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label55: TLabel
            Left = 581
            Top = 13
            Width = 16
            Height = 13
            Caption = 'V7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label56: TLabel
            Left = 676
            Top = 13
            Width = 16
            Height = 13
            Caption = 'V8'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DbeFTCvar1: TDBEdit
            Left = 4
            Top = 26
            Width = 95
            Height = 21
            TabStop = False
            AutoSelect = False
            Color = 14145495
            Ctl3D = True
            DataField = 'PRD_DCVAR1'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
          end
          object DbeFTCvar2: TDBEdit
            Left = 100
            Top = 26
            Width = 95
            Height = 21
            TabStop = False
            AutoSelect = False
            Color = 14145495
            Ctl3D = True
            DataField = 'PRD_DCVAR2'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 1
          end
          object DbeFTCvar3: TDBEdit
            Left = 196
            Top = 26
            Width = 95
            Height = 21
            TabStop = False
            AutoSelect = False
            Color = 14145495
            Ctl3D = True
            DataField = 'PRD_DCVAR3'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 2
          end
          object DbeFTCvar4: TDBEdit
            Left = 292
            Top = 26
            Width = 95
            Height = 21
            TabStop = False
            AutoSelect = False
            Color = 14145495
            Ctl3D = True
            DataField = 'PRD_DCVAR4'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 3
          end
          object DbeFTCvar5: TDBEdit
            Left = 388
            Top = 26
            Width = 95
            Height = 21
            TabStop = False
            AutoSelect = False
            Color = 14145495
            Ctl3D = True
            DataField = 'PRD_DCVAR5'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 4
          end
          object DbeFTCvar6: TDBEdit
            Left = 484
            Top = 26
            Width = 95
            Height = 21
            TabStop = False
            AutoSelect = False
            Color = 14145495
            Ctl3D = True
            DataField = 'PRD_DCVAR6'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 5
          end
          object DbeFTCvar7: TDBEdit
            Left = 580
            Top = 26
            Width = 95
            Height = 21
            TabStop = False
            AutoSelect = False
            Color = 14145495
            Ctl3D = True
            DataField = 'PRD_DCVAR7'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 6
          end
          object DbeFTCvar8: TDBEdit
            Left = 676
            Top = 26
            Width = 95
            Height = 21
            TabStop = False
            AutoSelect = False
            Color = 14145495
            Ctl3D = True
            DataField = 'PRD_DCVAR8'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 7
          end
        end
        object DbDtFTC_CRIACAO: TDBDateEdit
          Left = 571
          Top = 4
          Width = 90
          Height = 21
          DataField = 'FTC_CRIACAO'
          DataSource = DmProducao.DsFichaTec
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          TabOrder = 1
          YearDigits = dyFour
          OnExit = DbDtFTC_CRIACAOExit
        end
        object DbeFTC_TUP: TDBEdit
          Left = 707
          Top = 4
          Width = 73
          Height = 21
          Hint = 'Tempo Unit'#225'rio de Produ'#231#227'o'
          DataField = 'FTC_TUP'
          DataSource = DmProducao.DsFichaTec
          MaxLength = 10
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object EdtDescricao: TEdit
          Left = 64
          Top = 4
          Width = 418
          Height = 21
          TabStop = False
          AutoSelect = False
          CharCase = ecUpperCase
          Color = 14145495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 50
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object GrpMateriaPrima: TGroupBox
        Left = 0
        Top = 84
        Width = 784
        Height = 295
        Caption = 'Materia-Prima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object PanMaterial: TPanel
          Left = 425
          Top = 6
          Width = 358
          Height = 288
          TabOrder = 1
          object Label57: TLabel
            Left = 4
            Top = 6
            Width = 40
            Height = 13
            Caption = 'Material:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label61: TLabel
            Left = 4
            Top = 49
            Width = 130
            Height = 13
            Caption = 'Descri'#231#227'o da Mat'#233'ria-Prima'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object SpProduto: TSpeedButton
            Left = 79
            Top = 19
            Width = 24
            Height = 21
            Hint = 'Busca Material'
            Flat = True
            Glyph.Data = {
              42020000424D4202000000000000420000002800000010000000100000000100
              1000030000000002000000000000000000000000000000000000007C0000E003
              00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7CCE39734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E1F7C1042CE398C311F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F104210423E53FF67BF6710422925
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EBF67FF67FF67FF7FFF7F524A
              8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C3E53BF67FF67FF67FF7FFF7FFF67
              29251F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF673F4FBF67FF67FF7FFF67FF67
              4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF67BF673F4FFF67FF67FF67FF67
              4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF7FBF67BF673F4FBF67794E
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF67FF67FF673E531F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpProdutoClick
          end
          object Label58: TLabel
            Left = 4
            Top = 92
            Width = 44
            Height = 13
            Caption = 'Consumo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel
            Left = 4
            Top = 132
            Width = 85
            Height = 13
            Caption = 'Consumo anterior:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label59: TLabel
            Left = 4
            Top = 174
            Width = 87
            Height = 13
            Caption = 'Data Modifica'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object EdtRefer: TEdit
            Left = 4
            Top = 19
            Width = 74
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 11
            ParentFont = False
            TabOrder = 0
            OnChange = EdtReferChange
            OnClick = EdtReferClick
            OnEnter = EdtReferEnter
            OnExit = EdtReferExit
          end
          object EdtProduto: TEdit
            Left = 4
            Top = 63
            Width = 350
            Height = 21
            TabStop = False
            AutoSelect = False
            CharCase = ecUpperCase
            Color = 14145495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 50
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object CurrConsumo: TCurrencyEdit
            Left = 4
            Top = 105
            Width = 95
            Height = 21
            AutoSize = False
            DecimalPlaces = 4
            DisplayFormat = ',0.0000;-,0.0000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 2
            OnClick = CurrConsumoClick
            OnEnter = CurrConsumoClick
          end
          object CurrAnterior: TCurrencyEdit
            Left = 4
            Top = 145
            Width = 95
            Height = 21
            AutoSelect = False
            AutoSize = False
            DecimalPlaces = 4
            DisplayFormat = ',0.0000;-,0.0000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 3
            OnClick = CurrAnteriorClick
            OnEnter = CurrAnteriorClick
          end
          object DateModif: TDateEdit
            Left = 4
            Top = 188
            Width = 95
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            ParentFont = False
            YearDigits = dyFour
            TabOrder = 4
          end
          object GrpVarConsumo: TGroupBox
            Left = 4
            Top = 214
            Width = 350
            Height = 36
            Caption = 'Consumo Varia'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object ChkV1: TCheckBox
              Left = 4
              Top = 15
              Width = 36
              Height = 17
              Caption = 'V&1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object ChkV2: TCheckBox
              Left = 47
              Top = 15
              Width = 36
              Height = 17
              Caption = 'V&2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object ChkV3: TCheckBox
              Left = 91
              Top = 15
              Width = 35
              Height = 17
              Caption = 'V&3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object ChkV4: TCheckBox
              Left = 135
              Top = 15
              Width = 34
              Height = 17
              Caption = 'V&4'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object ChkV5: TCheckBox
              Left = 178
              Top = 15
              Width = 36
              Height = 17
              Caption = 'V&5'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
            object ChkV6: TCheckBox
              Left = 222
              Top = 15
              Width = 36
              Height = 17
              Caption = 'V&6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
            end
            object ChkV7: TCheckBox
              Left = 266
              Top = 15
              Width = 35
              Height = 17
              Caption = 'V&7'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
            end
            object ChkV8: TCheckBox
              Left = 310
              Top = 15
              Width = 35
              Height = 17
              Caption = 'V&8'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
            end
          end
          object PanMenu: TPanel
            Left = 4
            Top = 253
            Width = 350
            Height = 31
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 6
            object Bit_GravarMateria: TBitBtn
              Left = 206
              Top = 3
              Width = 100
              Height = 25
              Cursor = crHandPoint
              Hint = '|Grava o Item da Ficha T'#233'cnica...'
              Caption = 'Con&firma'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
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
              TabOrder = 0
              OnClick = Bit_GravarMateriaClick
            end
            object Bit_CancelarMateria: TBitBtn
              Left = 106
              Top = 3
              Width = 100
              Height = 25
              Cursor = crHandPoint
              Hint = '|Cancela o Item da Ficha T'#233'cninca...'
              Caption = '&Cancelar'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
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
              OnClick = Bit_CancelarMateriaClick
            end
            object Bit_ExcluirMateria: TBitBtn
              Left = 5
              Top = 3
              Width = 100
              Height = 25
              Cursor = crHandPoint
              Hint = '|Exclui o item da Ficha T'#233'cnica...'
              Caption = '&Excluir Material'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                E6000000424DE60000000000000076000000280000000E0000000E0000000100
                04000000000070000000CE0E0000D80E00001000000000000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3300333333333333330033333333333333003333333333333300333333333333
                3300333333333333330033000000000033003300000000003300330000000000
                3300333333333333330033333333333333003333333333333300333333333333
                33003333333333333300}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              TabStop = False
              OnClick = Bit_ExcluirMateriaClick
            end
          end
        end
        object TreeViewMateria: TTreeView
          Left = 2
          Top = 13
          Width = 424
          Height = 277
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HideSelection = False
          Indent = 19
          ParentFont = False
          RowSelect = True
          TabOrder = 0
          OnChange = TreeViewMateriaChange
          OnClick = TreeViewMateriaClick
          OnDblClick = TreeViewMateriaDblClick
          OnKeyPress = TreeViewMateriaKeyPress
        end
      end
      object GrpProcesso: TGroupBox
        Left = 0
        Top = 379
        Width = 784
        Height = 73
        Caption = 'PROCESSO DE PRODU'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object ScrollBox1: TScrollBox
          Left = 4
          Top = 14
          Width = 776
          Height = 55
          VertScrollBar.Position = 85
          TabOrder = 0
          object DbeFtc_proc1: TDBEdit
            Left = 0
            Top = -85
            Width = 754
            Height = 16
            BorderStyle = bsNone
            DataField = 'FTC_PROC1'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DbeFtc_proc2: TDBEdit
            Left = 0
            Top = -68
            Width = 754
            Height = 16
            BorderStyle = bsNone
            DataField = 'FTC_PROC2'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DbeFtc_proc3: TDBEdit
            Left = 0
            Top = -51
            Width = 754
            Height = 16
            BorderStyle = bsNone
            DataField = 'FTC_PROC3'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEFtc_proc4: TDBEdit
            Left = 0
            Top = -34
            Width = 755
            Height = 17
            BorderStyle = bsNone
            DataField = 'FTC_PROC4'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEFtc_proc5: TDBEdit
            Left = 0
            Top = -16
            Width = 754
            Height = 16
            BorderStyle = bsNone
            DataField = 'FTC_PROC5'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object DBEFtc_proc6: TDBEdit
            Left = 0
            Top = 1
            Width = 754
            Height = 16
            BorderStyle = bsNone
            DataField = 'FTC_PROC6'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object DBEFtc_Proc7: TDBEdit
            Left = 0
            Top = 18
            Width = 754
            Height = 16
            BorderStyle = bsNone
            DataField = 'FTC_PROC7'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DBEFtc_Proc8: TDBEdit
            Left = 0
            Top = 35
            Width = 754
            Height = 16
            BorderStyle = bsNone
            DataField = 'FTC_PROC8'
            DataSource = DmProducao.DsFichaTec
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
        end
      end
    end
  end
  object EdtPrd_Refer: TEdit
    Left = 69
    Top = 0
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 11
    ParentFont = False
    TabOrder = 1
    Text = 'EDTPRD_REFER'
    OnClick = EdtPrd_ReferClick
    OnEnter = EdtPrd_ReferEnter
    OnExit = EdtPrd_ReferExit
  end
  object DBNavigator1: TDBNavigator
    Left = 618
    Top = 0
    Width = 120
    Height = 25
    DataSource = DataCadastros.DsProdutos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 2
    OnClick = DBNavigator1Click
  end
  object EdtPrd_codigo: TEdit
    Left = 742
    Top = 0
    Width = 45
    Height = 21
    AutoSize = False
    Color = clBtnFace
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 4
    ParentFont = False
    TabOrder = 3
    Text = 'EdtPrd_codigo'
  end
  object TPanel
    Left = 0
    Top = 26
    Width = 791
    Height = 4
    Color = clHighlight
    TabOrder = 4
  end
  object DsQFornec: TDataSource
    DataSet = CdsFornecedorAux
    Left = 643
    Top = 65535
  end
  object CdsFornecedorAux: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT '#13#10'FOR0000.FOR_CODIGO, '#13#10'FOR0000.FOR_RAZAO, '#13#10'FOR0000.FOR_' +
      'CONTATO, '#13#10'FOR0000.FOR_FONCONT, '#13#10'For_prod.PRD_REFER,'#13#10'FOR0000.F' +
      'OR_FONE, FOR0000.FOR_EMAIL,'#13#10'FOR0000.FOR_PRAZOVENDAS'#13#10'FROM FOR00' +
      '00'#13#10'JOIN FOR_PROD ON FOR0000.FOR_CODIGO = FOR_PROD.FOR_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT '#13#10'FOR0000.FOR_CODIGO, '#13#10'FOR0000.FOR_RAZAO, '#13#10'FOR0000.FOR_' +
      'CONTATO, '#13#10'FOR0000.FOR_FONCONT, '#13#10'For_prod.PRD_REFER,'#13#10'FOR0000.F' +
      'OR_FONE, FOR0000.FOR_EMAIL,'#13#10'FOR0000.FOR_PRAZOVENDAS'#13#10'FROM FOR00' +
      '00'#13#10'JOIN FOR_PROD ON FOR0000.FOR_CODIGO = FOR_PROD.FOR_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 613
    Top = 65535
    object CdsFornecedorAuxFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object CdsFornecedorAuxFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object CdsFornecedorAuxFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object CdsFornecedorAuxFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      EditMask = '!\(9999\) 9999-9999;0;_'
      Size = 11
    end
    object CdsFornecedorAuxPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsFornecedorAuxFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      EditMask = '!\(9999\) 9999-9999;0;_'
      Size = 11
    end
    object CdsFornecedorAuxFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Size = 35
    end
    object CdsFornecedorAuxFOR_PRAZOVENDAS: TStringField
      FieldName = 'FOR_PRAZOVENDAS'
      Size = 30
    end
  end
  object SqlcdsFichaTec: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 621
    Top = 161
  end
  object SqlCdsTipo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from PRD_TIPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD_TIPO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 174
    object SqlCdsTipoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsTipoPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object SqlCdsTipoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsGrupo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select PGR_CODIGO, PGR_DESCRI, EMP_CODIGO from PRD_GRUPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select PGR_CODIGO, PGR_DESCRI, EMP_CODIGO from PRD_GRUPO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 202
    object SqlCdsGrupoPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsGrupoPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object SqlCdsGrupoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsSegm: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from PRD_LINHA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD_LINHA'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 440
    Top = 65532
    object SqlCdsSegmLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object SqlCdsSegmLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object SqlCdsSegmEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsfor: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 582
    object SqlCdsforFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsforFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
  end
  object SqlCdsProduto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'P2.PRD_REFER, '#13#10'P2.PRD_DESCRI, '#13#10'P2.PRD_DCVAR1, '#13#10'P2.PR' +
      'D_DCVAR2, '#13#10'P2.PRD_DCVAR3, '#13#10'P2.PRD_DCVAR4, '#13#10'P2.PRD_DCVAR5, '#13#10'P' +
      '2.PRD_DCVAR6, '#13#10'P2.PRD_DCVAR7, '#13#10'P2.PRD_DCVAR8 '#13#10'from PRD0000 P2'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'P2.PRD_REFER, '#13#10'P2.PRD_DESCRI, '#13#10'P2.PRD_DCVAR1, '#13#10'P2.PR' +
      'D_DCVAR2, '#13#10'P2.PRD_DCVAR3, '#13#10'P2.PRD_DCVAR4, '#13#10'P2.PRD_DCVAR5, '#13#10'P' +
      '2.PRD_DCVAR6, '#13#10'P2.PRD_DCVAR7, '#13#10'P2.PRD_DCVAR8 '#13#10'from PRD0000 P2'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 654
    Top = 161
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsProdutoPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
  end
  object SqlCdsItensFicha: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'F2.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_GRADE,'#13#10'P1.PRD_UND,'#13#10'P1.PR' +
      'D_PCUSTO,'#13#10'T1.PTI_SIGLA'#13#10'FROM FTC_IT01 F2'#13#10'LEFT JOIN PRD0000  P1' +
      ' ON P1.PRD_REFER = F2.PRD_REFER_ITENS'#13#10'LEFT JOIN PRD_TIPO T1 ON ' +
      '(P1.pti_codigo = T1.PTI_CODIGO)'#13#10'WHERE F2.PRD_REFER = '#39'0940'#39#13#10'OR' +
      'DER BY'#13#10'F2.PRD_REFER,F2.FTI_REGISTRO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'F2.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_GRADE,'#13#10'P1.PRD_UND,'#13#10'P1.PR' +
      'D_PCUSTO,'#13#10'T1.PTI_SIGLA'#13#10'FROM FTC_IT01 F2'#13#10'LEFT JOIN PRD0000  P1' +
      ' ON P1.PRD_REFER = F2.PRD_REFER_ITENS'#13#10'LEFT JOIN PRD_TIPO T1 ON ' +
      '(P1.pti_codigo = T1.PTI_CODIGO)'#13#10'WHERE F2.PRD_REFER = '#39'0940'#39#13#10'OR' +
      'DER BY'#13#10'F2.PRD_REFER,F2.FTI_REGISTRO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 493
    object SqlCdsItensFichaFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      Required = True
    end
    object SqlCdsItensFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensFichaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensFichaFTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
    end
    object SqlCdsItensFichaFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      Precision = 15
    end
    object SqlCdsItensFichaFTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      Precision = 15
    end
    object SqlCdsItensFichaFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlCdsItensFichaFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlCdsItensFichaFTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      Precision = 15
    end
    object SqlCdsItensFichaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsItensFichaFTI_SEQUENCIA: TIntegerField
      FieldName = 'FTI_SEQUENCIA'
    end
    object SqlCdsItensFichaFTI_REFER_PAI: TStringField
      FieldName = 'FTI_REFER_PAI'
      Size = 11
    end
    object SqlCdsItensFichaFTI_TIPO_PI: TStringField
      FieldName = 'FTI_TIPO_PI'
      Size = 1
    end
    object SqlCdsItensFichaFTI_NIVEL: TIntegerField
      FieldName = 'FTI_NIVEL'
    end
    object SqlCdsItensFichaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsItensFichaPRD_GRADE: TStringField
      FieldName = 'PRD_GRADE'
      Size = 1
    end
    object SqlCdsItensFichaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsItensFichaPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsItensFichaPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object DsItensFicha: TDataSource
    DataSet = SqlCdsItensFicha
    Left = 524
    Top = 65535
  end
  object SqlCdsMaterial: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'P2.PRD_REFER, '#13#10'P2.PRD_DESCRI,'#13#10'T1.PTI_SIGLA'#13#10'FROM PRD00' +
      '00 P2'#13#10'LEFT JOIN PRD_TIPO T1 ON (P2.PTI_CODIGO = T1.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'P2.PRD_REFER, '#13#10'P2.PRD_DESCRI,'#13#10'T1.PTI_SIGLA'#13#10'FROM PRD00' +
      '00 P2'#13#10'LEFT JOIN PRD_TIPO T1 ON (P2.PTI_CODIGO = T1.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 536
    Top = 160
    object SqlCdsMaterialPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsMaterialPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsMaterialPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object SqlRelProdutos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'F1.PRD_REFER,'#13#10'F1.ftc_tup,'#13#10'F1.ftc_criacao,'#13#10'F1.FTC_PROC' +
      '1,'#13#10'F1.FTC_PROC2,'#13#10'F1.FTC_PROC3,'#13#10'F1.FTC_PROC4,'#13#10'F1.FTC_PROC5,'#13#10 +
      'F1.FTC_PROC6,'#13#10'F1.FTC_PROC7,'#13#10'F1.FTC_PROC8,'#13#10'P1.PRD_DESCRI,'#13#10'P1.' +
      'prd_dcvar1,'#13#10'P1.prd_dcvar2,'#13#10'P1.prd_dcvar3,'#13#10'P1.prd_dcvar4,'#13#10'P1.' +
      'prd_dcvar5,'#13#10'P1.prd_dcvar6,'#13#10'P1.prd_dcvar7, '#13#10'P1.prd_dcvar8,'#13#10'P1' +
      '.pti_codigo,'#13#10'T1.pti_descri,'#13#10'P1.pgr_codigo,'#13#10'G1.pgr_descri,'#13#10'P1' +
      '.lin_codigo,'#13#10'L1.lin_descri'#13#10'from FTC0000 F1'#13#10'left join prd0000 ' +
      '  P1 on f1.prd_refer  = p1.prd_refer'#13#10'left join prd_tipo  T1 on ' +
      'P1.pti_codigo = T1.pti_codigo'#13#10'left join prd_grupo G1 on P1.pgr_' +
      'codigo = G1.pgr_codigo'#13#10'left join prd_linha L1 on P1.lin_codigo ' +
      '= L1.lin_codigo'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'F1.PRD_REFER,'#13#10'F1.ftc_tup,'#13#10'F1.ftc_criacao,'#13#10'F1.FTC_PROC' +
      '1,'#13#10'F1.FTC_PROC2,'#13#10'F1.FTC_PROC3,'#13#10'F1.FTC_PROC4,'#13#10'F1.FTC_PROC5,'#13#10 +
      'F1.FTC_PROC6,'#13#10'F1.FTC_PROC7,'#13#10'F1.FTC_PROC8,'#13#10'P1.PRD_DESCRI,'#13#10'P1.' +
      'prd_dcvar1,'#13#10'P1.prd_dcvar2,'#13#10'P1.prd_dcvar3,'#13#10'P1.prd_dcvar4,'#13#10'P1.' +
      'prd_dcvar5,'#13#10'P1.prd_dcvar6,'#13#10'P1.prd_dcvar7, '#13#10'P1.prd_dcvar8,'#13#10'P1' +
      '.pti_codigo,'#13#10'T1.pti_descri,'#13#10'P1.pgr_codigo,'#13#10'G1.pgr_descri,'#13#10'P1' +
      '.lin_codigo,'#13#10'L1.lin_descri'#13#10'from FTC0000 F1'#13#10'left join prd0000 ' +
      '  P1 on f1.prd_refer  = p1.prd_refer'#13#10'left join prd_tipo  T1 on ' +
      'P1.pti_codigo = T1.pti_codigo'#13#10'left join prd_grupo G1 on P1.pgr_' +
      'codigo = G1.pgr_codigo'#13#10'left join prd_linha L1 on P1.lin_codigo ' +
      '= L1.lin_codigo'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 230
    object SqlRelProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object SqlRelProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlRelProdutosFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
    end
    object SqlRelProdutosFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
    end
    object SqlRelProdutosPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object SqlRelProdutosFTC_PROC1: TStringField
      FieldName = 'FTC_PROC1'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC2: TStringField
      FieldName = 'FTC_PROC2'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC3: TStringField
      FieldName = 'FTC_PROC3'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC4: TStringField
      FieldName = 'FTC_PROC4'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC5: TStringField
      FieldName = 'FTC_PROC5'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC6: TStringField
      FieldName = 'FTC_PROC6'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC7: TStringField
      FieldName = 'FTC_PROC7'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC8: TStringField
      FieldName = 'FTC_PROC8'
      Size = 75
    end
    object SqlRelProdutosPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlRelProdutosPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object SqlRelProdutosPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object SqlRelProdutosPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object SqlRelProdutosLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 2
    end
    object SqlRelProdutosLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
  end
  object DsRelProduto: TDataSource
    DataSet = SqlRelProdutos
    Left = 260
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DsRelProduto
    UserName = 'DBPipeline1'
    Left = 291
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'FTC_TUP'
      FieldName = 'FTC_TUP'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'FTC_CRIACAO'
      FieldName = 'FTC_CRIACAO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'PRD_DCVAR1'
      FieldName = 'PRD_DCVAR1'
      FieldLength = 12
      DisplayWidth = 12
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'PRD_DCVAR2'
      FieldName = 'PRD_DCVAR2'
      FieldLength = 12
      DisplayWidth = 12
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'PRD_DCVAR3'
      FieldName = 'PRD_DCVAR3'
      FieldLength = 12
      DisplayWidth = 12
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'PRD_DCVAR4'
      FieldName = 'PRD_DCVAR4'
      FieldLength = 12
      DisplayWidth = 12
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'PRD_DCVAR5'
      FieldName = 'PRD_DCVAR5'
      FieldLength = 12
      DisplayWidth = 12
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'PRD_DCVAR6'
      FieldName = 'PRD_DCVAR6'
      FieldLength = 12
      DisplayWidth = 12
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'PRD_DCVAR7'
      FieldName = 'PRD_DCVAR7'
      FieldLength = 12
      DisplayWidth = 12
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'PRD_DCVAR8'
      FieldName = 'PRD_DCVAR8'
      FieldLength = 12
      DisplayWidth = 12
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'FTC_PROC1'
      FieldName = 'FTC_PROC1'
      FieldLength = 75
      DisplayWidth = 75
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'FTC_PROC2'
      FieldName = 'FTC_PROC2'
      FieldLength = 75
      DisplayWidth = 75
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'FTC_PROC3'
      FieldName = 'FTC_PROC3'
      FieldLength = 75
      DisplayWidth = 75
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'FTC_PROC4'
      FieldName = 'FTC_PROC4'
      FieldLength = 75
      DisplayWidth = 75
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'FTC_PROC5'
      FieldName = 'FTC_PROC5'
      FieldLength = 75
      DisplayWidth = 75
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'FTC_PROC6'
      FieldName = 'FTC_PROC6'
      FieldLength = 75
      DisplayWidth = 75
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'FTC_PROC7'
      FieldName = 'FTC_PROC7'
      FieldLength = 75
      DisplayWidth = 75
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'FTC_PROC8'
      FieldName = 'FTC_PROC8'
      FieldLength = 75
      DisplayWidth = 75
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'PTI_CODIGO'
      FieldName = 'PTI_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'PTI_DESCRI'
      FieldName = 'PTI_DESCRI'
      FieldLength = 25
      DisplayWidth = 25
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'PGR_CODIGO'
      FieldName = 'PGR_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'PGR_DESCRI'
      FieldName = 'PGR_DESCRI'
      FieldLength = 25
      DisplayWidth = 25
      Position = 23
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'LIN_CODIGO'
      FieldName = 'LIN_CODIGO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'LIN_DESCRI'
      FieldName = 'LIN_DESCRI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 25
    end
  end
  object DsRelItens: TDataSource
    DataSet = CdsRelItens
    Left = 350
    Top = 65535
  end
  object ppRelFichaTec: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELFICHATEC.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 406
    Top = 65535
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 35454
      mmPrintPosition = 0
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        mmHeight = 8467
        mmLeft = 0
        mmTop = 16933
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 30427
        mmLeft = 0
        mmTop = 0
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape14'
        mmHeight = 8467
        mmLeft = 174625
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape13'
        mmHeight = 8467
        mmLeft = 153194
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape12'
        mmHeight = 8467
        mmLeft = 131763
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape101'
        mmHeight = 8467
        mmLeft = 110331
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape10'
        mmHeight = 8467
        mmLeft = 88900
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape9'
        mmHeight = 8467
        mmLeft = 67469
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape8'
        mmHeight = 8467
        mmLeft = 46038
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape7'
        mmHeight = 8467
        mmLeft = 0
        mmTop = 21960
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape6'
        mmHeight = 8467
        mmLeft = 24606
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 11377
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 30162
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 794
        mmWidth = 29210
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 6615
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable11: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 794
        mmWidth = 28222
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable12: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 168011
        mmTop = 6615
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'REFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1570
        mmTop = 12171
        mmWidth = 21731
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_REFER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 24606
        mmTop = 12171
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 46831
        mmTop = 12171
        mmWidth = 91811
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Mat'#233'ria-Prima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 14552
        mmTop = 30692
        mmWidth = 16439
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Descri'#231#227'o da Mat'#233'ria-Prima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 59531
        mmTop = 30692
        mmWidth = 35454
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Consumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 128385
        mmTop = 30692
        mmWidth = 10724
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'UND'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 148432
        mmTop = 30692
        mmWidth = 6138
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 156369
        mmTop = 30692
        mmWidth = 3457
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 161396
        mmTop = 30692
        mmWidth = 3457
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 166423
        mmTop = 30692
        mmWidth = 3457
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 171450
        mmTop = 30692
        mmWidth = 3457
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 176477
        mmTop = 30692
        mmWidth = 3457
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 181505
        mmTop = 30692
        mmWidth = 3457
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 186532
        mmTop = 30692
        mmWidth = 3457
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 191559
        mmTop = 30692
        mmWidth = 3457
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'T.U.P.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 140759
        mmTop = 12171
        mmWidth = 9737
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTC_TUP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 155311
        mmTop = 12171
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 122767
        mmTop = 30427
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 145786
        mmTop = 30427
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 155840
        mmTop = 30427
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 160867
        mmTop = 30427
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 165894
        mmTop = 30427
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 170921
        mmTop = 30427
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 175948
        mmTop = 30427
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 180975
        mmTop = 30427
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 186002
        mmTop = 30427
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line201'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 191030
        mmTop = 30427
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'VARIA'#199#213'ES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 24077
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 25400
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_DCVAR1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 25400
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 46831
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_DCVAR2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 46831
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 67998
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_DCVAR3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 67998
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 89694
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_DCVAR4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 89694
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 111125
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_DCVAR5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 111125
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 132557
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_DCVAR6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 132557
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 153988
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_DCVAR7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 153988
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'V8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 175419
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_DCVAR8'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 175419
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 139700
        mmTop = 11642
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 153194
        mmTop = 11377
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 174625
        mmTop = 11377
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 46038
        mmTop = 11642
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 24606
        mmTop = 11642
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 35190
        mmTop = 30162
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 10054
        mmTop = 30162
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 31221
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape15'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 16933
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'TIPO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 17463
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText32'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PTI_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 17463
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText33'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PTI_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 17463
        mmWidth = 48683
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 9260
        mmTop = 16933
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 64294
        mmTop = 16933
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'GRUPO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 17463
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line35'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 78052
        mmTop = 17198
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText34'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PGR_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 78846
        mmTop = 17463
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText35'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PGR_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 84931
        mmTop = 17463
        mmWidth = 37306
        BandType = 0
        LayerName = Foreground
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line36'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 124884
        mmTop = 16933
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'SEGMENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 125677
        mmTop = 17463
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line37'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 145786
        mmTop = 17198
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText36'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'LIN_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 146844
        mmTop = 17463
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText37'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'LIN_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 152929
        mmTop = 17463
        mmWidth = 37306
        BandType = 0
        LayerName = Foreground
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line41'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 110331
        mmTop = 30427
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'P.Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 111125
        mmTop = 30692
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_REFER_ITENS'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 10848
        mmTop = 529
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTI_UC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 123825
        mmTop = 529
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_UND'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 146579
        mmTop = 529
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTI_MODE1'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 156369
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTI_MODE2'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 161396
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTI_MODE3'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 166423
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTI_MODE4'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 171450
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTI_MODE5'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 176477
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTI_MODE6'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 181505
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTI_MODE7'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 186532
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTI_MODE8'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 191559
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 10054
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 122767
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 145786
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 155840
        mmTop = 0
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 160867
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 165894
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 170921
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 175948
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 180975
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line301'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 186002
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line32'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 191030
        mmTop = 0
        mmWidth = 1323
        BandType = 4
        LayerName = Foreground
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 193411
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line34'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 5291
        mmWidth = 196057
        BandType = 4
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line102'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 35190
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 35983
        mmTop = 529
        mmWidth = 73554
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText38'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTI_ITEM'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 529
        mmTop = 529
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line42'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 110331
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText39'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'PRD_PCUSTO'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3387
        mmLeft = 110861
        mmTop = 529
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 41804
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        Caption = 'PROCESSO DE PRODU'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4374
        mmLeft = 5027
        mmTop = 529
        mmWidth = 47413
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTC_PROC1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 5821
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTC_PROC2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 10319
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText26'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTC_PROC3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 14817
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText27'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTC_PROC4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 19315
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText28'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTC_PROC5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 23813
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText29'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTC_PROC6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 28310
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText30'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTC_PROC7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 32808
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText31'
        HyperlinkEnabled = False
        Border.mmPadding = 0
        DataField = 'FTC_PROC8'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 37306
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 41275
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line39'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 41275
        mmLeft = 193146
        mmTop = 0
        mmWidth = 3175
        BandType = 7
        LayerName = Foreground
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 41539
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object CdsRelItens: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 65535
    object CdsRelItensFTI_ITEM: TStringField
      FieldName = 'FTI_ITEM'
      Size = 6
    end
    object CdsRelItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsRelItensPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsRelItensPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsRelItensPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsRelItensPRD_GRADE: TStringField
      FieldName = 'PRD_GRADE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRelItensFTI_UC: TCurrencyField
      FieldName = 'FTI_UC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      currency = False
    end
    object CdsRelItensFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRelItensFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRelItensFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRelItensFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRelItensFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRelItensFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRelItensFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRelItensFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsRelItensPRD_PCUSTO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_PCUSTO'
      Calculated = True
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DsRelItens
    UserName = 'DBPipeline2'
    Left = 380
    Top = 65535
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'FTI_ITEM'
      FieldName = 'FTI_ITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'PRD_REFER_ITENS'
      FieldName = 'PRD_REFER_ITENS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'PRD_UND'
      FieldName = 'PRD_UND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'PRD_GRADE'
      FieldName = 'PRD_GRADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'PRD_PCUSTO'
      FieldName = 'PRD_PCUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'FTI_UC'
      FieldName = 'FTI_UC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'FTI_MODE1'
      FieldName = 'FTI_MODE1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'FTI_MODE2'
      FieldName = 'FTI_MODE2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'FTI_MODE3'
      FieldName = 'FTI_MODE3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'FTI_MODE4'
      FieldName = 'FTI_MODE4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = 'FTI_MODE5'
      FieldName = 'FTI_MODE5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField14: TppField
      FieldAlias = 'FTI_MODE6'
      FieldName = 'FTI_MODE6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField15: TppField
      FieldAlias = 'FTI_MODE7'
      FieldName = 'FTI_MODE7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField16: TppField
      FieldAlias = 'FTI_MODE8'
      FieldName = 'FTI_MODE8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
  end
end
