inherited FormProduto: TFormProduto
  Left = 134
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos e Servi'#231'os'
  ClientHeight = 1000
  ClientWidth = 2500
  Constraints.MinHeight = 635
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDefaultPosOnly
  Visible = True
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 2506
  ExplicitHeight = 1029
  PixelsPerInch = 96
  TextHeight = 14
  object PctrlProdutos: TPageControl [0]
    Left = 0
    Top = 46
    Width = 2500
    Height = 566
    ActivePage = Tbs_Produtos
    Align = alTop
    HotTrack = True
    TabOrder = 0
    TabStop = False
    OnChange = PctrlProdutosChange
    object Tbs_FichaTec: TTabSheet
      Caption = 'Ficha T'#233'cnica'
      ImageIndex = 1
      object PAN_FTC03: TPanel
        Left = 0
        Top = 2
        Width = 1041
        Height = 29
        BevelInner = bvLowered
        BevelOuter = bvNone
        TabOrder = 0
        object Label32: TLabel
          Left = 10
          Top = 8
          Width = 43
          Height = 14
          Caption = 'Produto :'
        end
        object Label35: TLabel
          Left = 494
          Top = 8
          Width = 65
          Height = 14
          Caption = 'Data Cria'#231#227'o:'
        end
        object Label36: TLabel
          Left = 669
          Top = 8
          Width = 29
          Height = 14
          Hint = 'Tempo Unit'#225'rio de Produ'#231#227'o'
          Caption = 'T.U.P.:'
          ParentShowHint = False
          ShowHint = True
        end
        object Label115: TLabel
          Left = 797
          Top = 7
          Width = 105
          Height = 14
          Caption = 'Base da Composi'#231#227'o:'
        end
        object DbeFTC_TUP: TDBEdit
          Left = 702
          Top = 4
          Width = 73
          Height = 22
          Hint = 'Tempo Unit'#225'rio de Produ'#231#227'o (minutos)'
          DataField = 'FTC_TUP'
          DataSource = DmProducao.DsFichaTec
          MaxLength = 10
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnExit = DbeFTC_TUPExit
        end
        object EdtDescricao: TEdit
          Left = 64
          Top = 4
          Width = 418
          Height = 22
          TabStop = False
          AutoSelect = False
          CharCase = ecUpperCase
          Color = 14145495
          MaxLength = 50
          ReadOnly = True
          TabOrder = 0
        end
        object DbeBaseFormula: TDBEdit
          Left = 907
          Top = 4
          Width = 40
          Height = 22
          Hint = 'Base 1 '#233' padr'#227'o, tem base 100, 1000 p/ formula'#231#245'es quimicas'
          DataField = 'FTC_BASEFORMULA'
          DataSource = DmProducao.DsFichaTec
          MaxLength = 10
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnChange = DbeBaseFormulaChange
          OnExit = DbeFTC_TUPExit
        end
        object DbDtFTC_CRIACAO: TJvDBDateEdit
          Left = 561
          Top = 4
          Width = 90
          Height = 22
          DataField = 'FTC_CRIACAO'
          DataSource = DmProducao.DsFichaTec
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000F000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFFE00009CE600009CE60000FFFE0000}
          ImageKind = ikCustom
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 1
          OnKeyPress = DbDtFTC_CRIACAOKeyPress
        end
      end
      object PAN_FTC02: TPanel
        Left = 473
        Top = 496
        Width = 483
        Height = 33
        Cursor = crHandPoint
        BevelOuter = bvNone
        TabOrder = 1
      end
      object pcFichaTecnica: TPageControl
        Left = -2
        Top = 34
        Width = 1051
        Height = 483
        ActivePage = tsCamposTecnicos
        Align = alCustom
        Anchors = [akLeft, akBottom]
        TabOrder = 2
        OnChange = pcFichaTecnicaChange
        object tsGeral: TTabSheet
          Caption = 'Composi'#231#227'o'
          object Total: TLabel
            Left = 593
            Top = 183
            Width = 76
            Height = 14
            Caption = 'custos entrada:'
          end
          object Label127: TLabel
            Left = 785
            Top = 183
            Width = 64
            Height = 14
            Caption = 'pre'#231'o venda:'
          end
          object Label128: TLabel
            Left = 337
            Top = 180
            Width = 34
            Height = 14
            Caption = 'Totais :'
          end
          object Label102: TLabel
            Left = 437
            Top = 183
            Width = 48
            Height = 14
            Caption = 'Consumo:'
          end
          object PAN_FTC01: TPanel
            Left = 3
            Top = 418
            Width = 98
            Height = 33
            Cursor = crHandPoint
            BevelOuter = bvNone
            Caption = '11'
            TabOrder = 5
          end
          object GrpVariacoes: TGroupBox
            Left = 3
            Top = 6
            Width = 784
            Height = 52
            Caption = 'Varia'#231#245'es:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
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
              Left = 102
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
              Left = 199
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
              Left = 296
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
              Left = 392
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
              Left = 490
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
              Left = 587
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
              Left = 683
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
              Width = 96
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
              Left = 101
              Top = 26
              Width = 96
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
              Left = 198
              Top = 26
              Width = 96
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
              Left = 295
              Top = 26
              Width = 96
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
              Left = 392
              Top = 26
              Width = 96
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
              Left = 489
              Top = 26
              Width = 96
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
              Left = 586
              Top = 26
              Width = 96
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
              Left = 683
              Top = 26
              Width = 96
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
          object GrpMateria: TGroupBox
            Left = 0
            Top = 0
            Width = 1043
            Height = 173
            Align = alTop
            Caption = 'Mat'#233'rias-Primas'
            TabOrder = 1
            object laCustoTotal: TLabel
              Left = 516
              Top = 86
              Width = 59
              Height = 14
              Caption = 'Custo Total :'
            end
            object DBGridFichaTecnicaItem: TDBGrid
              Left = 2
              Top = 16
              Width = 1039
              Height = 155
              Hint = 'D'#234' duplo clique para fazer altera'#231#227'o do item.'
              Align = alClient
              Color = 16776176
              DataSource = DsItensFicha
              Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
              ParentShowHint = False
              PopupMenu = PopupMenu1
              ReadOnly = True
              ShowHint = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              OnDblClick = DBGridFichaTecnicaItemDblClick
              OnKeyDown = DBGridFichaTecnicaItemKeyDown
              Columns = <
                item
                  Expanded = False
                  FieldName = 'PRD_REFER_ITENS'
                  Title.Alignment = taCenter
                  Title.Caption = 'Refer'#234'ncia'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Width = 71
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRD_DESCRI'
                  Title.Alignment = taCenter
                  Title.Caption = 'Descri'#231#227'o'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Width = 297
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRG_DESCRICAO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Grade'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Width = 162
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PTI_SIGLA'
                  Title.Alignment = taCenter
                  Title.Caption = '*'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Width = 21
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FTI_UC'
                  Title.Alignment = taCenter
                  Title.Caption = 'Consumo'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Width = 89
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FTI_PERCENTUAL'
                  Title.Caption = 'Consumo %'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'PRD_PCUSTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Custo Entrada'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTALITEM'
                  Title.Alignment = taCenter
                  Title.Caption = 'Custo Total'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Width = 87
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'prd_pvenda'
                  Title.Alignment = taCenter
                  Title.Caption = 'P. Venda Unit'
                  Width = 95
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRD_UND'
                  Title.Alignment = taCenter
                  Title.Caption = 'UND'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'OPE_CODIGO'
                  Title.Caption = 'C'#243'digo'
                  Width = 41
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ope_descricao'
                  Title.Caption = 'Opera'#231#227'o'
                  Width = 213
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FTI_PERDA'
                  Title.Caption = 'Perda'
                  Width = 89
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'amx_Descri'
                  Title.Caption = 'Almoxarifado'
                  Visible = True
                end>
            end
          end
          object GroupBoxEtapasOpera: TGroupBox
            Left = -2
            Top = 200
            Width = 1042
            Height = 153
            TabOrder = 2
            object GrpProcesso: TGroupBox
              Left = 2
              Top = 16
              Width = 1038
              Height = 135
              Align = alClient
              Caption = 'Observa'#231#245'es para fabrica'#231#227'o'
              TabOrder = 0
              TabStop = True
              object ScrollBox1: TScrollBox
                Left = 2
                Top = 16
                Width = 1034
                Height = 117
                Align = alClient
                TabOrder = 0
                object mDescricaoEtapas: TDBMemo
                  Left = 0
                  Top = 0
                  Width = 1030
                  Height = 113
                  Align = alClient
                  DataField = 'FTC_ETAPAS'
                  DataSource = DmProducao.DsFichaTec
                  TabOrder = 0
                  OnEnter = mDescricaoEtapasEnter
                  OnExit = mDescricaoEtapasExit
                end
              end
            end
          end
          object GrpMateriaPrima: TGroupBox
            Left = -4
            Top = 320
            Width = 1044
            Height = 104
            TabOrder = 3
            TabStop = True
            object Label57: TLabel
              Left = 5
              Top = 4
              Width = 33
              Height = 14
              Caption = 'C'#243'digo'
            end
            object SpProduto: TSpeedButton
              Left = 408
              Top = 18
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
              Left = 738
              Top = 4
              Width = 45
              Height = 14
              Caption = 'Consumo'
            end
            object Label59: TLabel
              Left = 929
              Top = 4
              Width = 83
              Height = 14
              Caption = 'Data Modifica'#231#227'o'
            end
            object Label60: TLabel
              Left = 833
              Top = 4
              Width = 86
              Height = 14
              Caption = 'Consumo Anterior'
            end
            object Label61: TLabel
              Left = 114
              Top = 4
              Width = 132
              Height = 14
              Caption = 'Descri'#231#227'o da mat'#233'ria-prima'
            end
            object Label107: TLabel
              Left = 565
              Top = 4
              Width = 30
              Height = 14
              Caption = 'Grade'
            end
            object SdCadastroGrade: TSpeedButton
              Left = 580
              Top = 17
              Width = 23
              Height = 22
              Hint = 'Cadastrar Nova Grade'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000EB0A0000EB0A00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBECDB67A76723791914
                6C02146A012272155F9E5FD3E7D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF99CF990A84090A91010794000A8F001686002C7700396B011B6A0588C1
                88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CD29C048E0704A309049F0933CC6666
                FF9966FF9966FF990B89003A6C00276B0287C087FFFFFFFFFFFFFFFFFFE1F1E1
                1390170CA9180AA3160AA315539B51FFF8FFFFF7FF66FF990099000191003C6D
                011B6C05D2E5D2FFFFFFFFFFFF72B57229B0370FA92311AA2310A922539B51FF
                F9FFFFFAFF66FF99029B06009A00108900396B005F9F5FFFFFFFFFFFFF319C31
                38BF4F33CC6666FF9966FF9933CC66F9F4F9FEF7FC66FF9966FF9966FF9966FF
                99347400217515FFFFFFFFFFFF1D992342C45D539B51FCE9F9F0E4ECF1EBF0F1
                EFF1F5F3F4FFF8FCFFF8FFFFF4FF66FF991D8300156E01FFFFFFFFFFFF209C26
                58CF76539B51FDECFDF2E9F2F0EBF0ECEBECEFEEEFF8F3F8FFF8FFFFF5FF66FF
                99118E00136F01FFFFFFFFFFFF37A53979DE99539B51539B51539B518EC18EF1
                EBF1F2ECF133CC66539B51539B5133CC66109403237D19FFFFFFFFFFFF7ABF7A
                70D68D51D47C2ECA602FC960539B51F2E8F2F0E4ED66FF9914AD2B0EA72007A3
                1212900566A966FFFFFFFFFFFFE8F6E831AB368DE9B13ACF6D2FCB64539B51FE
                ECFEFCE7F766FF9916AF2E11AA220BAA1910860BDBEDDBFFFFFFFFFFFFFFFFFF
                ABE1AB3FB84F89E8AF4CD57B219827539B51539B5133CC6616B02F11AF260793
                0C98D198FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABE1AB31AC3776DC9576E19D50
                D2783BC65F30C05025B33A1193159CD49CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFE8F6E87ABF7A3CA93D25A32C229F2833A13472B872E1F2E1FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentShowHint = False
              ShowHint = True
              OnClick = SdCadastroGradeClick
            end
            object Label108: TLabel
              Left = 595
              Top = 49
              Width = 34
              Height = 14
              Caption = 'Custo :'
              Visible = False
            end
            object Label126: TLabel
              Left = 8
              Top = 49
              Width = 151
              Height = 14
              Caption = 'Material utilizado na Opera'#231#227'o :'
            end
            object Label129: TLabel
              Left = 480
              Top = 49
              Width = 47
              Height = 14
              Caption = 'Perda % :'
            end
            object Label147: TLabel
              Left = 13
              Top = 81
              Width = 67
              Height = 14
              Alignment = taRightJustify
              Caption = 'Almoxarifado:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lbPercentualConsumo: TLabel
              Left = 606
              Top = 20
              Width = 61
              Height = 14
              Caption = '% Consumo:'
              Visible = False
            end
            object EdtRefer: TEdit
              Left = 6
              Top = 17
              Width = 100
              Height = 22
              CharCase = ecUpperCase
              MaxLength = 20
              TabOrder = 0
              OnChange = EdtReferChange
              OnExit = EdtReferExit
            end
            object EdtProduto: TEdit
              Left = 112
              Top = 17
              Width = 286
              Height = 22
              TabStop = False
              AutoSelect = False
              CharCase = ecUpperCase
              Color = 14145495
              MaxLength = 50
              ReadOnly = True
              TabOrder = 1
            end
            object CurrAnterior: TCurrencyEdit
              Left = 833
              Top = 18
              Width = 95
              Height = 21
              AutoSelect = False
              AutoSize = False
              DecimalPlaces = 4
              DisplayFormat = ',0.0000;-,0.0000'
              MaxLength = 15
              TabOrder = 5
            end
            object Bit_ExcluirMateria: TBitBtn
              Left = 727
              Top = 45
              Width = 99
              Height = 24
              Cursor = crHandPoint
              Hint = '|Exclui o item da Ficha T'#233'cnica...'
              Caption = '&Excluir Material'
              Enabled = False
              Glyph.Data = {
                E6000000424DE60000000000000076000000280000000E0000000E0000000100
                04000000000070000000CE0E0000D80E00001000000000000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3300333333333333330033333333333333003333333333333300333333333333
                3300333333333333330033000000000033003300000000003300330000000000
                3300333333333333330033333333333333003333333333333300333333333333
                33003333333333333300}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 10
              TabStop = False
              OnClick = Bit_ExcluirMateriaClick
            end
            object Bit_GravarMateria: TBitBtn
              Left = 828
              Top = 45
              Width = 95
              Height = 24
              Cursor = crHandPoint
              Hint = '|Grava o Item da Ficha T'#233'cnica...'
              Caption = 'Con&firma'
              Enabled = False
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
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              OnClick = Bit_GravarMateriaClick
            end
            object Bit_CancelarMateria: TBitBtn
              Left = 929
              Top = 45
              Width = 95
              Height = 24
              Cursor = crHandPoint
              Hint = '|Cancela o Item da Ficha T'#233'cninca...'
              Cancel = True
              Caption = '&Cancel'
              Enabled = False
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333333333000033338833333333333333333F333333333333
                0000333911833333983333333388F333333F3333000033391118333911833333
                38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
                911118111118333338F3338F833338F3000033333911111111833333338F3338
                3333F8330000333333911111183333333338F333333F83330000333333311111
                8333333333338F3333383333000033333339111183333333333338F333833333
                00003333339111118333333333333833338F3333000033333911181118333333
                33338333338F333300003333911183911183333333383338F338F33300003333
                9118333911183333338F33838F338F33000033333913333391113333338FF833
                38F338F300003333333333333919333333388333338FFF830000333333333333
                3333333333333333333888330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
              OnClick = Bit_CancelarMateriaClick
            end
            object CbGrade: TComboBoxRw
              Left = 439
              Top = 17
              Width = 117
              Height = 22
              TabOrder = 3
              CharCase = ecUpperCase
              LookupSelect = 'PRG_REGISTRO,prg_descricao'
              LookupOrderBy = 'prg_descricao'
              LookupTable = 'prd_grade'
              LookupDispl = 'PRG_DESCRICAO'
              GridAutoSize = False
              LookupSource = CbGrade.InternalSource
              LookupKeyField = 'PRG_REGISTRO'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8WinTitulo = 'Grade de Produto'
              AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
              Tabela = 'prd_grade'
              CamposCarregar = 'PRG_REGISTRO,prg_descricao'
              CamposRetornar = 'PRG_REGISTRO'
              CamposOrdernar = 'prg_descricao'
              ConexaoBanco = DataCadastros.SQLConnection1
              Compartilhar = 'TABELAS'
              Localizado = False
              CodigoEmpresa = 0
              ResetaCampos = True
              MultiEmpresa = True
              Localizar = True
              CarregarCombo = True
              itemindex = 0
              style = csDropDown
            end
            object EdOperacaoCodigo: TEdit
              Left = 165
              Top = 45
              Width = 51
              Height = 22
              TabOrder = 7
              OnExit = EdOperacaoCodigoExit
            end
            object edOperacao: TSgDbSearchCombo
              Left = 220
              Top = 45
              Width = 224
              Height = 22
              TabOrder = 8
              CharCase = ecUpperCase
              LookupSelect = 'ope_codigo,ope_descricao'
              LookupOrderBy = 'ope_descricao'
              LookupTable = 'OPERACOES'
              LookupDispl = 'OPE_DESCRICAO'
              OnSelect = edOperacaoSelect
              GridAutoSize = False
              LookupSource = qOperacoes
              LookupKeyField = 'ope_codigo'
              FiltroTabela = 'ope_descricao is not null'
              ShowButton = True
              AutoF8WinTitulo = 'Opera'#231#245'es'
              AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
            end
            object DateModif: TJvDateEdit
              Left = 929
              Top = 17
              Width = 95
              Height = 22
              Glyph.Data = {
                76050000424D760500000000000036000000280000001C0000000C0000000100
                2000000000004005000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF008080800080808000808080008080800080808000808080008080
                800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
                0000800000008000000000000000800000000000000000000000800000008080
                8000FF00FF008080800080808000808080008080800080808000808080008080
                80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
                FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
                0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
                8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
                80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
                C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
                FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
                8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
                FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
                FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
                FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
                FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
                8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
                FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
                FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF008080800080808000808080008080800080808000808080008080
                80008080800080808000808080008080800080808000FF00FF00}
              ImageKind = ikCustom
              NumGlyphs = 2
              PopupColor = clBtnFace
              ShowNullDate = False
              YearDigits = dyFour
              TabOrder = 6
            end
            object CurPerda: TJvValidateEdit
              Left = 530
              Top = 45
              Width = 60
              Height = 22
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfPercent
              DecimalPlaces = 2
              DisplaySuffix = '%'
              TabOrder = 9
            end
            object CurrConsumo: TJvValidateEdit
              Left = 737
              Top = 18
              Width = 95
              Height = 21
              AutoSize = False
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfFloat
              DecimalPlaces = 5
              EditText = '0'
              MaxLength = 15
              TabOrder = 4
              ZeroEmpty = True
            end
            object CbAlmoxarifado: TComboBoxRw
              Left = 127
              Top = 78
              Width = 402
              Height = 22
              TabOrder = 13
              CharCase = ecUpperCase
              LookupSelect = 'amx_CODIGO,AMX_DESCRI'
              LookupOrderBy = 'AMX_DESCRI'
              LookupTable = 'ALMOX0000'
              LookupDispl = 'AMX_DESCRI'
              OnSelect = CbAlmoxarifadoSelect
              GridAutoSize = False
              LookupSource = CbAlmoxarifado.InternalSource
              LookupKeyField = 'amx_CODIGO'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8WinTitulo = 'Almoxarifados'
              AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
              Tabela = 'ALMOX0000'
              CamposCarregar = 'amx_CODIGO,AMX_DESCRI'
              CamposRetornar = 'amx_CODIGO'
              CamposOrdernar = 'AMX_DESCRI'
              ConexaoBanco = DataCadastros.SQLConnection1
              Compartilhar = 'TABELAS'
              Localizado = False
              CodigoEmpresa = 0
              ResetaCampos = False
              MultiEmpresa = False
              Localizar = False
              CarregarCombo = False
              itemindex = 0
              style = csDropDown
            end
            object EdAlmoxarifadoCodigo: TEdit
              Left = 82
              Top = 78
              Width = 43
              Height = 22
              CharCase = ecUpperCase
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 5
              ParentFont = False
              TabOrder = 14
              OnExit = EdAlmoxarifadoCodigoExit
            end
            object curPercentualConsumo: TJvValidateEdit
              Left = 671
              Top = 17
              Width = 60
              Height = 22
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfPercent
              DecimalPlaces = 3
              DisplaySuffix = '%'
              TabOrder = 2
              Visible = False
              OnChange = curPercentualConsumoChange
            end
          end
          object BIT_FTC_RELATORIO: TBitBtn
            Left = 3
            Top = 429
            Width = 90
            Height = 24
            Caption = '&Relat'#243'rio'
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
            TabOrder = 4
            TabStop = False
            OnClick = BIT_FTC_RELATORIOClick
          end
          object Bit_FTC_Novo: TBitBtn
            Left = 547
            Top = 428
            Width = 95
            Height = 24
            Cursor = crHandPoint
            Caption = 'Cr&iar Ficha'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333300033333300333330003333
              3300333330003333330033000000000333003300000000033300330000000003
              3300333330003333330033333000333333003333300033333300333333333333
              33003333333333333300}
            TabOrder = 6
            TabStop = False
            OnClick = Bit_FTC_NovoClick
          end
          object Bit_FTC_Copiar: TBitBtn
            Left = 648
            Top = 428
            Width = 95
            Height = 24
            Cursor = crHandPoint
            Caption = 'Copiar &Ficha'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333300033333300333330003333
              3300333330003333330033000000000333003300000000033300330000000003
              3300333330003333330033333000333333003333300033333300333333333333
              33003333333333333300}
            TabOrder = 7
            TabStop = False
            OnClick = Bit_FTC_CopiarClick
          end
          object BIT_FTC_EXCLUIR: TBitBtn
            Left = 743
            Top = 428
            Width = 95
            Height = 24
            Cursor = crHandPoint
            Hint = '|Exclui registro atual..'
            Caption = '&Excluir Ficha'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333333333333300333333333333
              3300333333333333330033000000000033003300000000003300330000000000
              3300333333333333330033333333333333003333333333333300333333333333
              33003333333333333300}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            TabStop = False
            OnClick = BIT_FTC_EXCLUIRClick
          end
          object BIT_FTC_GRAVAR: TBitBtn
            Left = 838
            Top = 428
            Width = 95
            Height = 24
            Cursor = crHandPoint
            Hint = '|Grava registro...'
            Caption = '&Gravar'
            Enabled = False
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
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            TabStop = False
            OnClick = BIT_FTC_GRAVARClick
          end
          object BIT_FTC_CANCELAR: TBitBtn
            Left = 939
            Top = 425
            Width = 95
            Height = 24
            Cursor = crHandPoint
            Hint = '|Cancela registro atual...'
            Cancel = True
            Caption = '&Cancel'
            Enabled = False
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333000033338833333333333333333F333333333333
              0000333911833333983333333388F333333F3333000033391118333911833333
              38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
              911118111118333338F3338F833338F3000033333911111111833333338F3338
              3333F8330000333333911111183333333338F333333F83330000333333311111
              8333333333338F3333383333000033333339111183333333333338F333833333
              00003333339111118333333333333833338F3333000033333911181118333333
              33338333338F333300003333911183911183333333383338F338F33300003333
              9118333911183333338F33838F338F33000033333913333391113333338FF833
              38F338F300003333333333333919333333388333338FFF830000333333333333
              3333333333333333333888330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            TabStop = False
            OnClick = Bit_FTC_CancelarClick
          end
          object currPrecoVenda: TJvValidateEdit
            Left = 855
            Top = 180
            Width = 77
            Height = 22
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfFloat
            DecimalPlaces = 4
            ReadOnly = True
            TabOrder = 11
          end
          object currCustoFicha: TJvValidateEdit
            Left = 678
            Top = 180
            Width = 93
            Height = 22
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfFloat
            DecimalPlaces = 5
            ReadOnly = True
            TabOrder = 12
          end
          object currTotalConsumo: TJvValidateEdit
            Left = 489
            Top = 180
            Width = 93
            Height = 22
            TabStop = False
            Color = clBlack
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfFloat
            DecimalPlaces = 5
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
          end
        end
        object tsProcesso: TTabSheet
          Caption = 'Engenharia de processo'
          ImageIndex = 1
          object dbProcessos: TDBGrid
            Left = 6
            Top = 0
            Width = 572
            Height = 397
            DataSource = dsProcessos
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'SEQUENCIA'
                Title.Caption = 'Sequ'#234'ncia'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OPE_DESCRICAO'
                Title.Caption = 'Opera'#231#227'o'
                Width = 214
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TEMPO_ESTIMADO'
                Title.Caption = 'Tempo Padr'#227'o'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EQP_DESCRICAO'
                Title.Caption = 'Equipamento'
                Visible = True
              end>
          end
          object dbEspecificacoes: TDBGrid
            Left = 584
            Top = 0
            Width = 459
            Height = 454
            Align = alRight
            DataSource = dsEspecifica
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ESP_NOME'
                Title.Caption = 'Caracter'#237'sticas'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ESP_PADROES'
                Title.Caption = 'Especifica'#231#245'es'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ESP_COL1'
                Title.Caption = 'Frequ'#234'ncia medi'#231#227'o'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ESP_COL2'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ESP_COL3'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ESP_COL4'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ESP_COL5'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ESP_COL6'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ESP_COL7'
                Visible = False
              end>
          end
          object btnExcluiParam: TBitBtn
            Tag = 3
            Left = 735
            Top = 430
            Width = 114
            Height = 24
            Cursor = crHandPoint
            Hint = '|Exclui registro atual..'
            Caption = '&Excluir Par'#226'metro'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333333333333300333333333333
              3300333333333333330033000000000033003300000000003300330000000000
              3300333333333333330033333333333333003333333333333300333333333333
              33003333333333333300}
            ModalResult = 1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            TabStop = False
            OnClick = btnCriarParamClick
          end
          object btnCriarParam: TBitBtn
            Tag = 1
            Left = 490
            Top = 430
            Width = 119
            Height = 24
            Cursor = crHandPoint
            Hint = 'Parametros de qualidade e/ou Medi'#231#245'es'
            Caption = 'Cr&iar Par'#226'metro'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333300033333300333330003333
              3300333330003333330033000000000333003300000000033300330000000003
              3300333330003333330033333000333333003333300033333300333333333333
              33003333333333333300}
            ModalResult = 1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            TabStop = False
            OnClick = btnCriarParamClick
          end
          object btnEditaParam: TBitBtn
            Tag = 2
            Left = 612
            Top = 430
            Width = 119
            Height = 24
            Cursor = crHandPoint
            Hint = 'Parametros de qualidade e/ou Medi'#231#245'es'
            Caption = 'Editar Par'#226'metro'
            ModalResult = 1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            TabStop = False
            OnClick = btnCriarParamClick
          end
          object btnEngProcesso: TBitBtn
            Tag = 1
            Left = 3
            Top = 403
            Width = 136
            Height = 24
            Cursor = crHandPoint
            Caption = 'Adicionar opera'#231#227'o'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333300033333300333330003333
              3300333330003333330033000000000333003300000000033300330000000003
              3300333330003333330033333000333333003333300033333300333333333333
              33003333333333333300}
            ModalResult = 1
            TabOrder = 5
            TabStop = False
            OnClick = AcoesOperacoes
          end
          object BitBtn3: TBitBtn
            Tag = 2
            Left = 141
            Top = 403
            Width = 119
            Height = 24
            Cursor = crHandPoint
            Caption = 'Editar Opera'#231#227'o'
            ModalResult = 1
            TabOrder = 6
            TabStop = False
            OnClick = AcoesOperacoes
          end
          object BitBtn4: TBitBtn
            Tag = 3
            Left = 262
            Top = 403
            Width = 123
            Height = 24
            Cursor = crHandPoint
            Hint = '|Exclui registro atual..'
            Caption = 'Excluir Opera'#231#227'o'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333333333333300333333333333
              3300333333333333330033000000000033003300000000003300330000000000
              3300333333333333330033333333333333003333333333333300333333333333
              33003333333333333300}
            ModalResult = 1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            TabStop = False
            OnClick = AcoesOperacoes
          end
          object btnEquipamentos: TBitBtn
            Tag = 1
            Left = 3
            Top = 428
            Width = 136
            Height = 24
            Cursor = crHandPoint
            Caption = 'Novo equipamento'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333300033333300333330003333
              3300333330003333330033000000000333003300000000033300330000000003
              3300333330003333330033333000333333003333300033333300333333333333
              33003333333333333300}
            ModalResult = 1
            TabOrder = 8
            TabStop = False
            OnClick = btnEquipamentosClick
          end
          object btnNovaOperacao: TBitBtn
            Tag = 1
            Left = 141
            Top = 428
            Width = 119
            Height = 24
            Cursor = crHandPoint
            Caption = 'Nova opera'#231#227'o'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333300033333300333330003333
              3300333330003333330033000000000333003300000000033300330000000003
              3300333330003333330033333000333333003333300033333300333333333333
              33003333333333333300}
            ModalResult = 1
            TabOrder = 9
            TabStop = False
            OnClick = btnNovaOperacaoClick
          end
          object btnCopiar: TBitBtn
            Tag = 1
            Left = 261
            Top = 427
            Width = 124
            Height = 24
            Cursor = crHandPoint
            Caption = 'Copiar engenharia para'
            TabOrder = 10
            TabStop = False
            OnClick = btnCopiarClick
          end
        end
        object tsCamposTecnicos: TTabSheet
          Caption = 'Campos t'#233'cnicos'
          ImageIndex = 2
          object BIT_MOLA_GRAVAR: TBitBtn
            Left = 846
            Top = 430
            Width = 95
            Height = 24
            Cursor = crHandPoint
            Hint = '|Grava registro...'
            Caption = '&Gravar'
            Enabled = False
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
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = BIT_MOLA_GRAVARClick
          end
          object BIT_MOLA_CANCELAR: TBitBtn
            Left = 947
            Top = 430
            Width = 95
            Height = 24
            Cursor = crHandPoint
            Hint = '|Cancela registro atual...'
            Cancel = True
            Caption = '&Cancelar'
            Enabled = False
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333000033338833333333333333333F333333333333
              0000333911833333983333333388F333333F3333000033391118333911833333
              38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
              911118111118333338F3338F833338F3000033333911111111833333338F3338
              3333F8330000333333911111183333333338F333333F83330000333333311111
              8333333333338F3333383333000033333339111183333333333338F333833333
              00003333339111118333333333333833338F3333000033333911181118333333
              33338333338F333300003333911183911183333333383338F338F33300003333
              9118333911183333338F33838F338F33000033333913333391113333338FF833
              38F338F300003333333333333919333333388333338FFF830000333333333333
              3333333333333333333888330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = False
            OnClick = BIT_MOLA_CANCELARClick
          end
          object TRATAMENTO_CODIGO: TPageControl
            Left = 0
            Top = 4
            Width = 1048
            Height = 420
            ActivePage = tsCampos2
            TabOrder = 2
            object tsCampos1: TTabSheet
              Caption = 'Mat'#233'ria prima'
              object Label148: TLabel
                Left = 3
                Top = 77
                Width = 80
                Height = 14
                Caption = 'Tempo Produ'#231#227'o'
              end
              object Label149: TLabel
                Left = 3
                Top = 102
                Width = 77
                Height = 14
                Caption = 'Peso Espec'#237'fico'
              end
              object Label150: TLabel
                Left = 3
                Top = 150
                Width = 90
                Height = 14
                Caption = 'Resis'#234'ncia Tra'#231#227'o'
              end
              object Label151: TLabel
                Left = 0
                Top = 125
                Width = 116
                Height = 14
                Caption = 'M'#243'dulo de Cisalhamento'
              end
              object Label153: TLabel
                Left = 3
                Top = 53
                Width = 37
                Height = 14
                Caption = 'Material'
              end
              object Label154: TLabel
                Left = 3
                Top = 30
                Width = 86
                Height = 14
                Caption = 'Sec'#231#227'o do Arame'
              end
              object Label155: TLabel
                Left = 3
                Top = 8
                Width = 75
                Height = 14
                Caption = 'Tipo de Produto'
              end
              object Label156: TLabel
                Left = 3
                Top = 174
                Width = 95
                Height = 14
                Caption = 'Tratamento T'#233'rmico'
              end
              object Label157: TLabel
                Left = 2
                Top = 196
                Width = 91
                Height = 14
                Caption = 'Tempo de T'#234'mpera'
              end
              object Label158: TLabel
                Left = 3
                Top = 268
                Width = 150
                Height = 14
                Caption = 'Temperatura para Revenimento'
              end
              object Label159: TLabel
                Left = 3
                Top = 293
                Width = 70
                Height = 14
                Caption = 'Dureza M'#237'nima'
              end
              object Label160: TLabel
                Left = 3
                Top = 220
                Width = 130
                Height = 14
                Caption = 'Temperatura para T'#234'mpera'
              end
              object Label161: TLabel
                Left = 3
                Top = 316
                Width = 74
                Height = 14
                Caption = 'Dureza M'#225'xima'
              end
              object Label162: TLabel
                Left = 3
                Top = 341
                Width = 108
                Height = 14
                Caption = 'Tratamento Superficial'
              end
              object Label163: TLabel
                Left = 281
                Top = 77
                Width = 216
                Height = 14
                Caption = 'Tempo em minutos para produ'#231#227'o de um item'
              end
              object Label165: TLabel
                Left = 281
                Top = 101
                Width = 44
                Height = 14
                Caption = 'kgf / mm'#178
              end
              object Label166: TLabel
                Left = 281
                Top = 125
                Width = 44
                Height = 14
                Caption = 'kgf / mm'#178
              end
              object Label167: TLabel
                Left = 281
                Top = 149
                Width = 44
                Height = 14
                Caption = 'kgf / mm'#178
              end
              object Label168: TLabel
                Left = 281
                Top = 196
                Width = 37
                Height = 14
                Caption = 'minutos'
              end
              object Label169: TLabel
                Left = 281
                Top = 220
                Width = 28
                Height = 14
                Caption = 'graus'
              end
              object Label170: TLabel
                Left = 281
                Top = 268
                Width = 28
                Height = 14
                Caption = 'graus'
              end
              object Label171: TLabel
                Left = 281
                Top = 293
                Width = 21
                Height = 14
                Caption = 'HRC'
              end
              object Label172: TLabel
                Left = 281
                Top = 316
                Width = 21
                Height = 14
                Caption = 'HRC'
              end
              object Label173: TLabel
                Left = 2
                Top = 244
                Width = 111
                Height = 14
                Caption = 'Tempo de Revenimento'
              end
              object Label201: TLabel
                Left = 281
                Top = 244
                Width = 37
                Height = 14
                Caption = 'minutos'
              end
              object TEMPO_PRODUCAO: TDBEdit
                Left = 154
                Top = 74
                Width = 121
                Height = 22
                Color = clInactiveBorder
                DataField = 'MMO_TEMPO_PRODUCAO'
                DataSource = dsMola
                TabOrder = 3
              end
              object PESO_ESPECIFICO: TDBEdit
                Left = 154
                Top = 98
                Width = 121
                Height = 22
                DataField = 'MMO_PESO_ESPECIFICO'
                DataSource = dsMola
                TabOrder = 4
              end
              object RES_TRACAO: TDBEdit
                Left = 154
                Top = 146
                Width = 121
                Height = 22
                DataField = 'MMO_RES_TRACAO'
                DataSource = dsMola
                TabOrder = 6
              end
              object CISALHAMENTO: TDBEdit
                Left = 154
                Top = 122
                Width = 121
                Height = 22
                DataField = 'MMO_CISALHAMENTO'
                DataSource = dsMola
                TabOrder = 5
              end
              object TEMPO_TEMPERA: TDBEdit
                Left = 154
                Top = 192
                Width = 121
                Height = 22
                DataField = 'MMO_TEMPO_TEMPERA'
                DataSource = dsMola
                TabOrder = 8
              end
              object TEMPERATURA_TEMPERA: TDBEdit
                Left = 154
                Top = 217
                Width = 121
                Height = 22
                DataField = 'MMO_TEMPERATURA_TEMPERA'
                DataSource = dsMola
                TabOrder = 9
              end
              object TEMPERATURA_REVENIMENTO: TDBEdit
                Left = 154
                Top = 265
                Width = 121
                Height = 22
                DataField = 'MMO_TEMPERATURA_REVENIMENTO'
                DataSource = dsMola
                TabOrder = 11
              end
              object DUREZA_MINIMA: TDBEdit
                Left = 154
                Top = 289
                Width = 121
                Height = 22
                DataField = 'MMO_DUREZA_MINIMA'
                DataSource = dsMola
                TabOrder = 12
              end
              object DUREZA_MAXIMA: TDBEdit
                Left = 154
                Top = 313
                Width = 121
                Height = 22
                DataField = 'MMO_DUREZA_MAXIMA'
                DataSource = dsMola
                TabOrder = 13
              end
              object TRATAMENTO_SUPERFICIAL: TDBComboBox
                Left = 154
                Top = 338
                Width = 121
                Height = 22
                DataField = 'MMO_TRATAMENTO_SUPERFICIAL'
                DataSource = dsMola
                Items.Strings = (
                  'SIM'
                  'N'#195'O')
                TabOrder = 14
                OnChange = TRATAMENTO_TERMICOChange
              end
              object TRATAMENTO_TERMICO: TDBComboBox
                Left = 154
                Top = 171
                Width = 121
                Height = 22
                DataField = 'MMO_TRATAMENTO_TERMICO'
                DataSource = dsMola
                Items.Strings = (
                  'N'#195'O'
                  'REVENIMENTO'
                  'ALIVIO DE TENS'#195'O'
                  'CEMENTA'#199#195'O'
                  'TEMPERA E REVENIMENTO'
                  'ISENTO')
                TabOrder = 7
                OnChange = TRATAMENTO_TERMICOChange
              end
              object SgDbSearchCombo2: TSgDbSearchCombo
                Left = 154
                Top = 5
                Width = 183
                Height = 22
                TabOrder = 0
                LookupSelect = 'ART_CODIGO, ART_NOME'
                LookupOrderBy = 'ART_NOME'
                LookupTable = 'ARTEFATO'
                LookupDispl = 'ART_NOME'
                GridAutoSize = False
                LookupSource = qAux
                DataField = 'ART_CODIGO'
                DataSource = dsMola
                LookupKeyField = 'ART_CODIGO'
                ShowButton = True
                AutoF8WinTitulo = 'Artefato'
                AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
                LookupDbGridColumns = 'ART_CODIGO, ART_NOME'
                LookupDbGridColumnsTitle = 'CODIGO, NOME'
                GridLeft = 0
                GridWidth = 0
                GridHeight = 100
                GridTop = 0
                GridShowWhenEnter = False
                SelectWithDoubleClick = False
                LimparCampoAoSair = True
              end
              object SgDbSearchCombo3: TSgDbSearchCombo
                Left = 154
                Top = 27
                Width = 183
                Height = 22
                TabOrder = 1
                LookupSelect = 'ARA_CODIGO, NOME'
                LookupOrderBy = 'NOME'
                LookupTable = 'ARAME'
                LookupDispl = 'NOME'
                GridAutoSize = False
                LookupSource = qAux
                DataField = 'ARA_CODIGO'
                DataSource = dsMola
                LookupKeyField = 'ARA_CODIGO'
                ShowButton = True
                AutoF8WinTitulo = 'Arame'
                AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
                LookupDbGridColumns = 'ARA_CODIGO, NOME'
                LookupDbGridColumnsTitle = 'CODIGO, NOME'
                GridLeft = 0
                GridWidth = 0
                GridHeight = 100
                GridTop = 0
                GridShowWhenEnter = False
                SelectWithDoubleClick = False
                LimparCampoAoSair = True
              end
              object SgDbSearchCombo4: TSgDbSearchCombo
                Left = 154
                Top = 50
                Width = 183
                Height = 22
                TabOrder = 2
                LookupSelect = 'CMO_CODIGO, CMO_NOME'
                LookupOrderBy = 'CMO_NOME'
                LookupTable = 'CLASSIFICACAO_MOLA'
                LookupDispl = 'CMO_NOME'
                GridAutoSize = False
                LookupSource = qAux
                DataField = 'CMO_CODIGO'
                DataSource = dsMola
                LookupKeyField = 'CMO_CODIGO'
                ShowButton = True
                AutoF8WinTitulo = 'Classifica'#231#227'o'
                AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
                LookupDbGridColumns = 'CMO_CODIGO, CMO_NOME'
                LookupDbGridColumnsTitle = 'CODIGO, NOME'
                GridLeft = 0
                GridWidth = 0
                GridHeight = 100
                GridTop = 0
                GridShowWhenEnter = False
                SelectWithDoubleClick = False
                LimparCampoAoSair = True
              end
              object edTempo_revenimento: TDBEdit
                Left = 154
                Top = 241
                Width = 121
                Height = 22
                DataField = 'MMO_TEMPO_REVENIMENTO'
                DataSource = dsMola
                TabOrder = 10
              end
              object GroupBox25: TGroupBox
                Left = 488
                Top = 3
                Width = 531
                Height = 49
                Caption = 'Incluir Arquivo'
                TabOrder = 15
                object Label330: TLabel
                  Left = 21
                  Top = 22
                  Width = 41
                  Height = 14
                  Caption = 'Arquivo:'
                end
                object IncluirArquivoFichaTecnica: TFilenameEdit
                  Left = 64
                  Top = 19
                  Width = 425
                  Height = 22
                  DialogTitle = 'Selecione um arquivo'
                  NumGlyphs = 1
                  TabOrder = 0
                  Text = ''
                  OnChange = IncluirArquivoFichaTecnicaChange
                end
                object BitBtn5: TBitBtn
                  Left = 491
                  Top = 18
                  Width = 29
                  Height = 23
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000130B0000130B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                    33033333333333333F7F3333333333333000333333333333F777333333333333
                    000333333333333F777333333333333000333333333333F77733333333333300
                    033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
                    33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
                    3333373337F3373F3333078F8F8F870333337F33F7FFF37F333307F9F8F9F703
                    33337F377777337F3333078F8F8F8703333373F337F33373333377F8F9F8F773
                    333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
                    333333773FF77333333333370007333333333333777333333333}
                  NumGlyphs = 2
                  TabOrder = 1
                  OnClick = BitBtn5Click
                end
              end
            end
            object tsCampos2: TTabSheet
              Caption = 'Dimensionais'
              ImageIndex = 1
              object Label174: TLabel
                Left = 3
                Top = 3
                Width = 59
                Height = 14
                Caption = 'Medidas mm'
              end
              object Label175: TLabel
                Left = 241
                Top = 2
                Width = 68
                Height = 14
                Caption = 'Toler'#226'ncia mm'
              end
              object Label176: TLabel
                Left = 3
                Top = 27
                Width = 109
                Height = 14
                Caption = 'Di'#226'metro do Arame (D)'
              end
              object Label177: TLabel
                Left = 230
                Top = 27
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label179: TLabel
                Left = 319
                Top = 27
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label180: TLabel
                Left = 319
                Top = 70
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label181: TLabel
                Left = 230
                Top = 70
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label182: TLabel
                Left = 3
                Top = 70
                Width = 98
                Height = 14
                Caption = 'Di'#226'metro Interno (Di)'
              end
              object Label183: TLabel
                Left = 319
                Top = 197
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label184: TLabel
                Left = 230
                Top = 197
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label185: TLabel
                Left = 3
                Top = 198
                Width = 99
                Height = 14
                Caption = 'Di'#226'metro M'#233'dio (Dm)'
              end
              object Label189: TLabel
                Left = 319
                Top = 48
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label190: TLabel
                Left = 230
                Top = 48
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label191: TLabel
                Left = 3
                Top = 48
                Width = 106
                Height = 14
                Caption = 'Di'#226'metro Externo (De)'
              end
              object Label195: TLabel
                Left = 319
                Top = 134
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label196: TLabel
                Left = 230
                Top = 134
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label197: TLabel
                Left = 3
                Top = 134
                Width = 122
                Height = 14
                Caption = 'Di'#226'metro Externo no Meio'
              end
              object Label198: TLabel
                Left = 3
                Top = 236
                Width = 39
                Height = 14
                Caption = 'V'#227'o (V)'
              end
              object Label199: TLabel
                Left = 230
                Top = 241
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label200: TLabel
                Left = 319
                Top = 241
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label225: TLabel
                Left = 3
                Top = 263
                Width = 47
                Height = 14
                Caption = 'Passo (P)'
              end
              object Label202: TLabel
                Left = 230
                Top = 263
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label203: TLabel
                Left = 319
                Top = 263
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label204: TLabel
                Left = 3
                Top = 307
                Width = 112
                Height = 14
                Caption = 'Comprimento Livre (L0)'
              end
              object Label205: TLabel
                Left = 230
                Top = 307
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label206: TLabel
                Left = 319
                Top = 307
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label207: TLabel
                Left = 3
                Top = 329
                Width = 119
                Height = 14
                Caption = 'Comprimento S'#243'lido (Lbl)'
              end
              object Label208: TLabel
                Left = 230
                Top = 329
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label209: TLabel
                Left = 319
                Top = 329
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label210: TLabel
                Left = 3
                Top = 353
                Width = 141
                Height = 14
                Caption = 'N'#250'meros de Espiras '#218'teis (lf)'
              end
              object Label211: TLabel
                Left = 230
                Top = 353
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label212: TLabel
                Left = 319
                Top = 353
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label213: TLabel
                Left = 3
                Top = 375
                Width = 147
                Height = 14
                Caption = 'N'#250'meros de Espiras Totais (lg)'
              end
              object Label214: TLabel
                Left = 230
                Top = 375
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label215: TLabel
                Left = 319
                Top = 375
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label216: TLabel
                Left = 409
                Top = 22
                Width = 145
                Height = 14
                Caption = 'Desenvolvimento (L) / mm'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label217: TLabel
                Left = 646
                Top = 22
                Width = 6
                Height = 14
                Caption = '+'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label218: TLabel
                Left = 735
                Top = 22
                Width = 4
                Height = 14
                Caption = '-'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label219: TLabel
                Left = 409
                Top = 240
                Width = 127
                Height = 14
                Caption = 'Retificado / Esquadro (Re)'
              end
              object Label220: TLabel
                Left = 409
                Top = 71
                Width = 116
                Height = 14
                Caption = 'Paralelismo M'#225'ximo (E2)'
              end
              object Label221: TLabel
                Left = 409
                Top = 94
                Width = 150
                Height = 14
                Caption = 'Perpendicularismo M'#225'ximo (E1)'
              end
              object Label222: TLabel
                Left = 409
                Top = 117
                Width = 137
                Height = 14
                Caption = 'Sentido de Enrolamento (Se)'
              end
              object Label281: TLabel
                Left = 681
                Top = 47
                Width = 53
                Height = 14
                Caption = 'Peso (Kg)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label282: TLabel
                Left = 822
                Top = 47
                Width = 14
                Height = 14
                Caption = 'Kg'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label283: TLabel
                Left = 409
                Top = 291
                Width = 66
                Height = 14
                Caption = 'Observa'#231#245'es'
              end
              object Label302: TLabel
                Left = 409
                Top = 143
                Width = 76
                Height = 14
                Caption = 'Tipo do Gancho'
              end
              object Label303: TLabel
                Left = 409
                Top = 164
                Width = 103
                Height = 14
                Caption = 'Altura do Gancho (H)'
              end
              object Label304: TLabel
                Left = 647
                Top = 164
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label305: TLabel
                Left = 736
                Top = 164
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label306: TLabel
                Left = 409
                Top = 187
                Width = 118
                Height = 14
                Caption = 'Abertura do Gancho (M)'
              end
              object Label307: TLabel
                Left = 647
                Top = 187
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label308: TLabel
                Left = 736
                Top = 187
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label309: TLabel
                Left = 409
                Top = 210
                Width = 158
                Height = 14
                Caption = 'Compr. Total por Fora do Gancho'
              end
              object Label310: TLabel
                Left = 647
                Top = 210
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label311: TLabel
                Left = 736
                Top = 210
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label315: TLabel
                Left = 3
                Top = 284
                Width = 131
                Height = 14
                Caption = 'Comprimento do Corpo (Lk)'
              end
              object Label316: TLabel
                Left = 230
                Top = 285
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label317: TLabel
                Left = 319
                Top = 285
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label164: TLabel
                Left = 3
                Top = 91
                Width = 141
                Height = 14
                Caption = 'Di'#226'metro Externo Maior (De+)'
              end
              object Label178: TLabel
                Left = 230
                Top = 91
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label186: TLabel
                Left = 319
                Top = 91
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label187: TLabel
                Left = 3
                Top = 114
                Width = 143
                Height = 14
                Caption = 'Di'#226'metro Externo Menor (De-)'
              end
              object Label188: TLabel
                Left = 230
                Top = 112
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label192: TLabel
                Left = 319
                Top = 112
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label152: TLabel
                Left = 3
                Top = 155
                Width = 133
                Height = 14
                Caption = 'Di'#226'metro Interno Maior (Di+)'
              end
              object Label193: TLabel
                Left = 3
                Top = 176
                Width = 135
                Height = 14
                Caption = 'Di'#226'metro Interno Menor (Di-)'
              end
              object Label194: TLabel
                Left = 230
                Top = 176
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label266: TLabel
                Left = 230
                Top = 157
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label313: TLabel
                Left = 319
                Top = 176
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label314: TLabel
                Left = 319
                Top = 157
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label318: TLabel
                Left = 409
                Top = 47
                Width = 63
                Height = 14
                Caption = 'Perda / mm'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label319: TLabel
                Left = 830
                Top = 164
                Width = 66
                Height = 14
                Caption = 'Tipo de Haste'
              end
              object Label320: TLabel
                Left = 830
                Top = 185
                Width = 130
                Height = 14
                Caption = 'Comp. da Haste (H.A) / mm'
              end
              object Label321: TLabel
                Left = 830
                Top = 210
                Width = 129
                Height = 14
                Caption = 'Comp. da Haste (H.B) / mm'
              end
              object Label322: TLabel
                Left = 830
                Top = 233
                Width = 84
                Height = 14
                Caption = 'Posi'#231#227'o da Haste'
              end
              object Label114: TLabel
                Left = 319
                Top = 219
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label116: TLabel
                Left = 230
                Top = 219
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label117: TLabel
                Left = 3
                Top = 220
                Width = 98
                Height = 14
                Caption = 'Di'#226'metro M'#233'dio Meio'
              end
              object Label118: TLabel
                Left = 82
                Top = 2
                Width = 91
                Height = 14
                Caption = 'Grau de Tol'#234'rancia'
              end
              object Label333: TLabel
                Left = 408
                Top = 266
                Width = 59
                Height = 14
                Caption = 'Extremidade'
              end
              object DIAMETRO_ARAME: TDBEdit
                Left = 153
                Top = 23
                Width = 71
                Height = 22
                AutoSize = False
                BiDiMode = bdRightToLeft
                DataField = 'MMO_DIAMETRO_ARAME'
                DataSource = dsMola
                ParentBiDiMode = False
                TabOrder = 1
                OnExit = DIAMETRO_ARAMEExit
              end
              object DIA_MAX: TDBEdit
                Left = 242
                Top = 23
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DIA_MAX'
                DataSource = dsMola
                TabOrder = 2
              end
              object DIA_MIN: TDBEdit
                Left = 329
                Top = 24
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DIA_MIN'
                DataSource = dsMola
                TabOrder = 3
              end
              object DI_MIN: TDBEdit
                Tag = 135
                Left = 329
                Top = 67
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DI_MIN'
                DataSource = dsMola
                TabOrder = 9
              end
              object DI_MAX: TDBEdit
                Tag = 135
                Left = 241
                Top = 67
                Width = 72
                Height = 22
                DataField = 'MMO_TOLERANCIA_DI_MAX'
                DataSource = dsMola
                TabOrder = 8
              end
              object DIAMETRO_INTERNO: TDBEdit
                Left = 153
                Top = 67
                Width = 71
                Height = 22
                Hint = 'F'#243'rmula: De - 2 x D'
                DataField = 'MMO_DIAMETRO_INTERNO'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clHotLight
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 7
                OnExit = DIAMETRO_INTERNOExit
                OnKeyPress = DIAMETRO_INTERNOKeyPress
              end
              object DM_MIN: TDBEdit
                Tag = 135
                Left = 329
                Top = 194
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DM_MIN'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 27
              end
              object DM_MAX: TDBEdit
                Tag = 135
                Left = 241
                Top = 194
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DM_MAX'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 26
              end
              object DIAMETRO_MEDIO: TDBEdit
                Left = 153
                Top = 194
                Width = 71
                Height = 22
                Hint = '((DI- + DI+) / 2) + D ou ((DE+ + De-) / 2) - D'
                DataField = 'MMO_DIAMETRO_MEDIO'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clHotLight
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 25
                OnExit = DIAMETRO_MEDIOExit
                OnKeyPress = DIAMETRO_MEDIOKeyPress
              end
              object DE_MIN: TDBEdit
                Tag = 135
                Left = 329
                Top = 45
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DE_MIN'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
              end
              object DE_MAX: TDBEdit
                Tag = 135
                Left = 241
                Top = 45
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DE_MAX'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object DIAMETRO_EXTERNO: TDBEdit
                Left = 153
                Top = 45
                Width = 71
                Height = 22
                DataField = 'MMO_DIAMETRO_EXTERNO'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clNone
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 4
                OnExit = DIAMETRO_EXTERNOExit
              end
              object DEM_MIN: TDBEdit
                Tag = 135
                Left = 329
                Top = 131
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DEM_MIN'
                DataSource = dsMola
                TabOrder = 18
              end
              object DEM_MAX: TDBEdit
                Tag = 135
                Left = 242
                Top = 131
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DEM_MAX'
                DataSource = dsMola
                TabOrder = 17
              end
              object DIAMETRO_EXTERNO_MEIO: TDBEdit
                Left = 153
                Top = 131
                Width = 71
                Height = 22
                DataField = 'MMO_DIAMETRO_EXTERNO_MEIO'
                DataSource = dsMola
                TabOrder = 16
                OnExit = DIAMETRO_EXTERNO_MEIOExit
                OnKeyPress = DIAMETRO_EXTERNO_MEIOKeyPress
              end
              object VAO: TDBEdit
                Left = 153
                Top = 238
                Width = 71
                Height = 22
                Hint = 'P - D = V'
                BiDiMode = bdLeftToRight
                DataField = 'MMO_VAO'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clHotLight
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentBiDiMode = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 31
                OnExit = VAOExit
                OnKeyPress = VAOKeyPress
              end
              object VAO_MAX: TDBEdit
                Left = 241
                Top = 238
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_VAO_MAX'
                DataSource = dsMola
                TabOrder = 32
              end
              object VAO_MIN: TDBEdit
                Left = 329
                Top = 238
                Width = 71
                Height = 22
                HelpType = htKeyword
                DataField = 'MMO_TOLERANCIA_VAO_MIN'
                DataSource = dsMola
                TabOrder = 33
              end
              object PASSO: TDBEdit
                Left = 153
                Top = 260
                Width = 71
                Height = 22
                Hint = 'V + D = P'
                DataField = 'MMO_PASSO'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clHotLight
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 34
                OnChange = PASSOChange
                OnExit = PASSOExit
                OnKeyPress = PASSOKeyPress
              end
              object PASSO_MAX: TDBEdit
                Left = 241
                Top = 260
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_PASSO_MAX'
                DataSource = dsMola
                TabOrder = 35
              end
              object PASSO_MIN: TDBEdit
                Left = 329
                Top = 260
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_PASSO_MIN'
                DataSource = dsMola
                TabOrder = 36
              end
              object COM_LIVRE: TDBEdit
                Left = 153
                Top = 304
                Width = 71
                Height = 22
                DataField = 'MMO_COM_LIVRE'
                DataSource = dsMola
                TabOrder = 40
                OnExit = COM_LIVREExit
              end
              object LIVRE_MAX: TDBEdit
                Left = 241
                Top = 304
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_LIVRE_MAX'
                DataSource = dsMola
                TabOrder = 41
              end
              object LIVRE_MIN: TDBEdit
                Left = 329
                Top = 304
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_LIVRE_MIN'
                DataSource = dsMola
                TabOrder = 42
              end
              object COM_SOLIDO: TDBEdit
                Left = 153
                Top = 326
                Width = 71
                Height = 22
                Hint = 'lg * D'
                DataField = 'MMO_COM_SOLIDO'
                DataSource = dsMola
                ParentShowHint = False
                ShowHint = True
                TabOrder = 43
                OnExit = COM_SOLIDOExit
                OnKeyPress = COM_SOLIDOKeyPress
              end
              object SOLIDO_MAX: TDBEdit
                Left = 241
                Top = 326
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_SOLIDO_MAX'
                DataSource = dsMola
                TabOrder = 44
              end
              object SOLIDO_MIN: TDBEdit
                Left = 329
                Top = 326
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_SOLIDO_MIN'
                DataSource = dsMola
                TabOrder = 45
              end
              object ESPIRAS_UTEIS: TDBEdit
                Left = 153
                Top = 348
                Width = 71
                Height = 22
                Hint = 'If = L0/P'
                DataField = 'MMO_ESPIRAIS_UTEIS'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clHotLight
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 46
                OnChange = ESPIRAS_UTEISChange
                OnExit = ESPIRAS_UTEISExit
                OnKeyPress = ESPIRAS_UTEISKeyPress
              end
              object ESPUTEIS_MAX: TDBEdit
                Left = 241
                Top = 350
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ESPUTEIS_MAX'
                DataSource = dsMola
                TabOrder = 47
              end
              object ESPUTEIS_MIN: TDBEdit
                Left = 329
                Top = 350
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ESPUTEIS_MIN'
                DataSource = dsMola
                TabOrder = 48
              end
              object ESPIRAL_TOTAL: TDBEdit
                Left = 153
                Top = 372
                Width = 71
                Height = 22
                Hint = 'lf+1,5 = lg'
                DataField = 'MMO_ESPIRAL_TOTAL'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clHotLight
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 49
                OnExit = ESPIRAL_TOTALExit
                OnKeyPress = ESPIRAL_TOTALKeyPress
              end
              object ESPT_MAX: TDBEdit
                Left = 241
                Top = 372
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ESPT_MAX'
                DataSource = dsMola
                TabOrder = 50
              end
              object ESPT_MIN: TDBEdit
                Left = 329
                Top = 372
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ESPT_MIN'
                DataSource = dsMola
                TabOrder = 51
              end
              object DESENVOLVIMENTO: TDBEdit
                Left = 569
                Top = 19
                Width = 71
                Height = 22
                Hint = 'Dm * pi(3,1416..)* lg = Desenvolvimento'
                DataField = 'MMO_DESENVOLVIMENTO'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clHotLight
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 52
                OnExit = DESENVOLVIMENTOExit
                OnKeyPress = DESENVOLVIMENTOKeyPress
              end
              object DES_MAX: TDBEdit
                Left = 657
                Top = 19
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DES_MAX'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 53
              end
              object DES_MIN: TDBEdit
                Left = 745
                Top = 19
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DES_MIN'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 54
              end
              object PARALIELISMO: TDBEdit
                Left = 570
                Top = 68
                Width = 71
                Height = 22
                DataField = 'MMO_PARALIELISMO'
                DataSource = dsMola
                TabOrder = 57
              end
              object PERPENDICULARIMO: TDBEdit
                Left = 570
                Top = 91
                Width = 71
                Height = 22
                DataField = 'MMO_PERPENDICULARIMO'
                DataSource = dsMola
                TabOrder = 58
              end
              object RETIFICADO: TDBComboBox
                Left = 570
                Top = 233
                Width = 71
                Height = 22
                DataField = 'MMO_RETIFICADO'
                DataSource = dsMola
                Items.Strings = (
                  'SIM'
                  'N'#195'O')
                TabOrder = 70
              end
              object SENTIDO: TDBComboBox
                Left = 570
                Top = 114
                Width = 71
                Height = 22
                DataField = 'MMO_SENTIDO'
                DataSource = dsMola
                Items.Strings = (
                  'DIREITA'
                  'ESQUERDA')
                TabOrder = 59
              end
              object PESOKG: TDBEdit
                Left = 746
                Top = 44
                Width = 71
                Height = 22
                Hint = '((D*D) *0,0062) * Desenvolvimento'
                DataField = 'MMO_PESO'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clHotLight
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 56
              end
              object mobservacoesMola: TDBMemo
                Left = 570
                Top = 288
                Width = 460
                Height = 93
                Hint = 'Para pular linha use Ctrl + Enter'
                DataField = 'MMO_OBSERVACAO'
                DataSource = dsMola
                ParentShowHint = False
                ShowHint = True
                TabOrder = 75
                OnKeyPress = mobservacoesMolaKeyPress
              end
              object SgDbSearchCombo8: TSgDbSearchCombo
                Left = 570
                Top = 138
                Width = 160
                Height = 22
                TabOrder = 60
                OnExit = SgDbSearchCombo8Exit
                LookupSelect = 'GAN_CODIGO, GAN_NOME, GAN_QTD_ESPIRAS'
                LookupOrderBy = 'GAN_NOME'
                LookupTable = 'GANCHO'
                LookupDispl = 'GAN_NOME'
                OnSelect = SgDbSearchCombo8Select
                GridAutoSize = False
                LookupSource = qAux
                DataField = 'GAN_CODIGO'
                DataSource = dsMola
                LookupKeyField = 'GAN_CODIGO'
                ShowButton = True
                AutoF8WinTitulo = 'Gancho'
                AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Quantidade de Espiras'
                LookupDbGridColumns = 'GAN_CODIGO, GAN_NOME, GAN_QTD_ESPIRAS'
                LookupDbGridColumnsTitle = 'CODIGO, NOME, QUANTIDADE DE ESPIRAS'
                GridLeft = 0
                GridWidth = 1000
                GridHeight = 100
                GridTop = 0
                GridShowWhenEnter = False
                SelectWithDoubleClick = False
                LimparCampoAoSair = True
              end
              object ALT_GANCHO: TDBEdit
                Left = 570
                Top = 161
                Width = 71
                Height = 22
                DataField = 'MMO_ALT_GANCHO'
                DataSource = dsMola
                TabOrder = 61
              end
              object ALT_GANCHO_MAX: TDBEdit
                Left = 658
                Top = 161
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ALT_GANCHO_MAX'
                DataSource = dsMola
                TabOrder = 62
              end
              object ALT_GANCHO_MIN: TDBEdit
                Left = 746
                Top = 159
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ALT_GANCHO_MIN'
                DataSource = dsMola
                TabOrder = 63
              end
              object ABERT_GANCHO: TDBEdit
                Left = 570
                Top = 182
                Width = 71
                Height = 22
                DataField = 'MMO_ABERT_GANCHO'
                DataSource = dsMola
                TabOrder = 64
              end
              object ABERT_GANCHO_MAX: TDBEdit
                Left = 658
                Top = 184
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ABERT_GANCHO_MIN'
                DataSource = dsMola
                TabOrder = 65
              end
              object ABERT_GANCHO_MIN: TDBEdit
                Left = 746
                Top = 182
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ABERT_GANCHO_MIN'
                DataSource = dsMola
                TabOrder = 66
              end
              object COMP_GANCHO: TDBEdit
                Left = 570
                Top = 207
                Width = 71
                Height = 22
                DataField = 'MMO_COMP_GANCHO'
                DataSource = dsMola
                TabOrder = 67
              end
              object COMP_GANCHO_MAX: TDBEdit
                Left = 658
                Top = 207
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_COMP_GANCHO_MAX'
                DataSource = dsMola
                TabOrder = 68
              end
              object COMP_GANCHO_MIN: TDBEdit
                Left = 746
                Top = 207
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_COMP_GANCHO_MIN'
                DataSource = dsMola
                TabOrder = 69
              end
              object COMP_CORPO: TDBEdit
                Left = 153
                Top = 282
                Width = 71
                Height = 22
                DataField = 'MMO_COMP_CORPO'
                DataSource = dsMola
                TabOrder = 37
                OnExit = COMP_CORPOExit
                OnKeyPress = COMP_CORPOKeyPress
              end
              object COMP_CORPO_MAX: TDBEdit
                Left = 241
                Top = 282
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_COMP_CORPO_MAX'
                DataSource = dsMola
                TabOrder = 38
              end
              object COMP_CORPO_MIN: TDBEdit
                Left = 329
                Top = 282
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_COMP_CORPO_MIN'
                DataSource = dsMola
                TabOrder = 39
              end
              object DE_MAIOR_MAX: TDBEdit
                Tag = 135
                Left = 242
                Top = 88
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DE_MAIOR_MAX'
                DataSource = dsMola
                TabOrder = 11
              end
              object DIAMETRO_EXT_MAIOR: TDBEdit
                Left = 153
                Top = 88
                Width = 71
                Height = 22
                DataField = 'MMO_DIAMETRO_EXT_MAIOR'
                DataSource = dsMola
                TabOrder = 10
                OnExit = DIAMETRO_EXT_MAIORExit
                OnKeyPress = DIAMETRO_EXT_MAIORKeyPress
              end
              object DE_MAIOR_MIN: TDBEdit
                Tag = 135
                Left = 329
                Top = 88
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DE_MAIOR_MIN'
                DataSource = dsMola
                TabOrder = 12
              end
              object DE_MENOR_MAX: TDBEdit
                Tag = 135
                Left = 242
                Top = 107
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DE_MENOR_MAX'
                DataSource = dsMola
                TabOrder = 14
              end
              object MMO_TOLERANCIA_DE_MENOR_MIN: TDBEdit
                Tag = 135
                Left = 329
                Top = 109
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DE_MENOR_MIN'
                DataSource = dsMola
                TabOrder = 15
              end
              object DIAMETRO_EXT_MENOR: TDBEdit
                Left = 153
                Top = 109
                Width = 71
                Height = 22
                DataField = 'MMO_DIAMETRO_EXT_MENOR'
                DataSource = dsMola
                TabOrder = 13
                OnExit = DIAMETRO_EXT_MAIORExit
                OnKeyPress = DIAMETRO_EXT_MENORKeyPress
              end
              object dbMmoParteDI: TDBCheckBox
                Left = 344
                Top = 0
                Width = 171
                Height = 17
                Caption = 'Iniciando do Di'#226'metro Interno'
                DataField = 'MMO_PARTE_DI'
                DataSource = dsMola
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DIAMETRO_INT_MAIOR: TDBEdit
                Left = 153
                Top = 152
                Width = 71
                Height = 22
                DataField = 'MMO_DIAMETRO_INT_MAIOR'
                DataSource = dsMola
                TabOrder = 19
                OnExit = DIAMETRO_EXT_MAIORExit
                OnKeyPress = DIAMETRO_INT_MAIORKeyPress
              end
              object DIAMETRO_INT_MENOR: TDBEdit
                Left = 153
                Top = 173
                Width = 71
                Height = 22
                DataField = 'MMO_DIAMETRO_INT_MENOR'
                DataSource = dsMola
                TabOrder = 22
                OnExit = DIAMETRO_EXT_MAIORExit
                OnKeyPress = DIAMETRO_INT_MENORKeyPress
              end
              object DI_MAIOR_MAX: TDBEdit
                Tag = 135
                Left = 242
                Top = 154
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DI_MAIOR_MAX'
                DataSource = dsMola
                TabOrder = 20
              end
              object DI_MENOR_MAX: TDBEdit
                Tag = 135
                Left = 242
                Top = 173
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DI_MENOR_MAX'
                DataSource = dsMola
                TabOrder = 23
              end
              object DI_MAIOR_MIN: TDBEdit
                Tag = 135
                Left = 329
                Top = 152
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DI_MAIOR_MIN'
                DataSource = dsMola
                TabOrder = 21
              end
              object DI_MENOR_MIN: TDBEdit
                Tag = 135
                Left = 329
                Top = 173
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_DI_MENOR_MIN'
                DataSource = dsMola
                TabOrder = 24
              end
              object PERDA: TDBEdit
                Left = 570
                Top = 44
                Width = 71
                Height = 22
                DataField = 'MMO_PERDA'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 55
                OnExit = PERDAExit
                OnKeyPress = PERDAKeyPress
              end
              object HASTEHA: TDBEdit
                Left = 963
                Top = 184
                Width = 71
                Height = 22
                DataField = 'MMO_COMPRIMENTO_HASTE_HA'
                DataSource = dsMola
                TabOrder = 72
                OnExit = HASTEHAExit
              end
              object HASTEHB: TDBEdit
                Left = 963
                Top = 207
                Width = 71
                Height = 22
                DataField = 'MMO_COMPRIMENTO_HASTE_HB'
                DataSource = dsMola
                TabOrder = 73
                OnExit = HASTEHBExit
              end
              object TIPO_HASTE: TDBComboBox
                Left = 964
                Top = 161
                Width = 71
                Height = 22
                DataField = 'MMO_TIPO_HASTE'
                DataSource = dsMola
                Items.Strings = (
                  'Amostra'
                  'Desenho')
                TabOrder = 71
              end
              object POSICAO_HASTE: TDBComboBox
                Left = 965
                Top = 230
                Width = 71
                Height = 22
                DataField = 'MMO_POSICAO_HASTE'
                DataSource = dsMola
                Items.Strings = (
                  '360/0'#176
                  '90'#176
                  '180'#176
                  '270'#176)
                TabOrder = 74
              end
              object MMO_DIAMETRO_MEDIO_MEIO_MIN: TDBEdit
                Tag = 135
                Left = 329
                Top = 216
                Width = 71
                Height = 22
                DataField = 'MMO_DIAMETRO_MEDIO_MEIO_MIN'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 30
              end
              object MMO_DIAMETRO_MEDIO_MEIO_MAX: TDBEdit
                Tag = 135
                Left = 241
                Top = 216
                Width = 71
                Height = 22
                DataField = 'MMO_DIAMETRO_MEDIO_MEIO_MAX'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 29
              end
              object MMO_DIAMETRO_MEDIO_MEIO: TDBEdit
                Left = 153
                Top = 216
                Width = 71
                Height = 22
                Hint = 'F'#243'rmula: ((DeMaior + DeMenor) / 2) - D'
                DataField = 'MMO_DIAMETRO_MEDIO_MEIO'
                DataSource = dsMola
                Font.Charset = ANSI_CHARSET
                Font.Color = clHotLight
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 28
                OnExit = MMO_DIAMETRO_MEDIO_MEIOExit
              end
              object cbGrauTolerancia: TDBComboBox
                Left = 176
                Top = -1
                Width = 50
                Height = 22
                DataField = 'MMO_GRAU_TOLERANCIA_DM'
                DataSource = dsMola
                Items.Strings = (
                  'Selecione'
                  '1'
                  '2'
                  '3')
                TabOrder = 76
                OnChange = cbGrauToleranciaChange
              end
              object BitBtn2: TBitBtn
                Left = 224
                Top = 1
                Width = 15
                Height = 17
                Glyph.Data = {
                  E6010000424DE60100000000000036000000280000000C0000000C0000000100
                  180000000000B0010000C40E0000C40E00000000000000000000C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                  D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D400000000000000000000000000
                  0000000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000000000
                  000000000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                  D4000000000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                  D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                  D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                  C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                  D4C8D0D4C8D0D4C8D0D4}
                TabOrder = 77
                OnClick = BitBtn2Click
              end
              object MMO_EXTREMIDADE_MOLA_MATERIA: TDBComboBox
                Left = 569
                Top = 260
                Width = 71
                Height = 22
                DataField = 'MMO_EXTREMIDADE_MOLA_MATERIA'
                DataSource = dsMola
                Items.Strings = (
                  'Aberta'
                  'Fechada')
                TabOrder = 78
              end
            end
            object tsCampos3: TTabSheet
              Caption = 'Caracter'#237'sticas'
              ImageIndex = 2
              object Label223: TLabel
                Left = 241
                Top = 1
                Width = 68
                Height = 14
                Caption = 'Toler'#226'ncia mm'
              end
              object Label224: TLabel
                Left = 3
                Top = 21
                Width = 114
                Height = 14
                Caption = 'Constante Especificada'
              end
              object Label226: TLabel
                Left = 3
                Top = 45
                Width = 99
                Height = 14
                Caption = 'Constante Calculada'
              end
              object Label227: TLabel
                Left = 3
                Top = 68
                Width = 91
                Height = 14
                Caption = 'Altura na Carga L1'
              end
              object Label228: TLabel
                Left = 3
                Top = 91
                Width = 91
                Height = 14
                Caption = 'Altura na Carga L2'
              end
              object Label229: TLabel
                Left = 3
                Top = 114
                Width = 91
                Height = 14
                Caption = 'Altura na Carga L3'
              end
              object Label230: TLabel
                Left = 3
                Top = 137
                Width = 91
                Height = 14
                Caption = 'Altura na Carga L4'
              end
              object Label231: TLabel
                Left = 3
                Top = 160
                Width = 45
                Height = 14
                Caption = 'Curso S1'
              end
              object Label232: TLabel
                Left = 3
                Top = 183
                Width = 45
                Height = 14
                Caption = 'Curso S2'
              end
              object Label233: TLabel
                Left = 3
                Top = 206
                Width = 45
                Height = 14
                Caption = 'Curso S3'
              end
              object Label234: TLabel
                Left = 3
                Top = 229
                Width = 45
                Height = 14
                Caption = 'Curso S4'
              end
              object Label235: TLabel
                Left = 3
                Top = 252
                Width = 44
                Height = 14
                Caption = 'Carga P1'
              end
              object Label236: TLabel
                Left = 3
                Top = 275
                Width = 44
                Height = 14
                Caption = 'Carga P2'
              end
              object Label237: TLabel
                Left = 230
                Top = 275
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label238: TLabel
                Left = 230
                Top = 252
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label239: TLabel
                Left = 230
                Top = 229
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label240: TLabel
                Left = 319
                Top = 229
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label241: TLabel
                Left = 319
                Top = 252
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label242: TLabel
                Left = 319
                Top = 275
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label243: TLabel
                Left = 319
                Top = 160
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label244: TLabel
                Left = 319
                Top = 183
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label245: TLabel
                Left = 319
                Top = 206
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label246: TLabel
                Left = 230
                Top = 206
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label247: TLabel
                Left = 230
                Top = 183
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label248: TLabel
                Left = 230
                Top = 160
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label249: TLabel
                Left = 230
                Top = 137
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label250: TLabel
                Left = 319
                Top = 137
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label251: TLabel
                Left = 319
                Top = 114
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label252: TLabel
                Left = 319
                Top = 91
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label253: TLabel
                Left = 319
                Top = 68
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label254: TLabel
                Left = 319
                Top = 45
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label255: TLabel
                Left = 230
                Top = 114
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label256: TLabel
                Left = 230
                Top = 91
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label257: TLabel
                Left = 230
                Top = 68
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label258: TLabel
                Left = 230
                Top = 45
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label259: TLabel
                Left = 230
                Top = 21
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label260: TLabel
                Left = 3
                Top = 299
                Width = 44
                Height = 14
                Caption = 'Carga P3'
              end
              object Label261: TLabel
                Left = 3
                Top = 322
                Width = 44
                Height = 14
                Caption = 'Carga P4'
              end
              object Label262: TLabel
                Left = 319
                Top = 299
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label263: TLabel
                Left = 319
                Top = 322
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label264: TLabel
                Left = 230
                Top = 322
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label265: TLabel
                Left = 230
                Top = 299
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label284: TLabel
                Left = 427
                Top = 20
                Width = 50
                Height = 14
                Caption = 'Tens'#227'o P1'
              end
              object Label285: TLabel
                Left = 622
                Top = 20
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label286: TLabel
                Left = 711
                Top = 20
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label287: TLabel
                Left = 711
                Top = 90
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label288: TLabel
                Left = 711
                Top = 67
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label289: TLabel
                Left = 711
                Top = 43
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label290: TLabel
                Left = 622
                Top = 90
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label291: TLabel
                Left = 622
                Top = 67
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label292: TLabel
                Left = 622
                Top = 43
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label293: TLabel
                Left = 427
                Top = 90
                Width = 50
                Height = 14
                Caption = 'Tens'#227'o P4'
              end
              object Label294: TLabel
                Left = 427
                Top = 67
                Width = 50
                Height = 14
                Caption = 'Tens'#227'o P3'
              end
              object Label295: TLabel
                Left = 427
                Top = 43
                Width = 50
                Height = 14
                Caption = 'Tens'#227'o P2'
              end
              object Label296: TLabel
                Left = 427
                Top = 114
                Width = 107
                Height = 14
                Caption = 'Carga na Altura S'#243'lida'
              end
              object Label297: TLabel
                Left = 427
                Top = 137
                Width = 113
                Height = 14
                Caption = 'Tens'#227'o na Altura S'#243'lida'
              end
              object Label298: TLabel
                Left = 622
                Top = 137
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label299: TLabel
                Left = 622
                Top = 114
                Width = 6
                Height = 14
                Caption = '+'
              end
              object Label300: TLabel
                Left = 711
                Top = 114
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label301: TLabel
                Left = 711
                Top = 137
                Width = 4
                Height = 14
                Caption = '-'
              end
              object Label312: TLabel
                Left = 319
                Top = 21
                Width = 4
                Height = 14
                Caption = '-'
              end
              object CONSTANTE_ESPE: TDBEdit
                Left = 153
                Top = 18
                Width = 71
                Height = 22
                DataField = 'MMO_CONSTANTE_ESPE'
                DataSource = dsMola
                TabOrder = 0
              end
              object CONSTANTE_CALCULADA: TDBEdit
                Left = 153
                Top = 42
                Width = 71
                Height = 22
                DataField = 'MMO_CONSTANTE_CALCULADA'
                DataSource = dsMola
                TabOrder = 3
              end
              object CONST_MAX: TDBEdit
                Left = 242
                Top = 17
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CONST_MAX'
                DataSource = dsMola
                TabOrder = 1
              end
              object CONST_MIN: TDBEdit
                Left = 329
                Top = 18
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CONST_MIN'
                DataSource = dsMola
                TabOrder = 2
              end
              object CONST_CALC_MAX: TDBEdit
                Left = 329
                Top = 42
                Width = 71
                Height = 22
                DataField = 'MMO_CONST_CALC_MIN'
                DataSource = dsMola
                TabOrder = 5
              end
              object CONST_CALC_MIN: TDBEdit
                Left = 241
                Top = 42
                Width = 71
                Height = 22
                DataField = 'MMO_CONST_CALC_MAX'
                DataSource = dsMola
                TabOrder = 4
              end
              object ALTURAL1: TDBEdit
                Left = 153
                Top = 65
                Width = 71
                Height = 22
                DataField = 'MMO_ALTURAL1'
                DataSource = dsMola
                TabOrder = 6
              end
              object CARGA1_MAX: TDBEdit
                Left = 241
                Top = 249
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CARGA1_MAX'
                DataSource = dsMola
                TabOrder = 31
              end
              object CARGAP1: TDBEdit
                Left = 153
                Top = 249
                Width = 71
                Height = 22
                DataField = 'MMO_CARGAP1'
                DataSource = dsMola
                TabOrder = 30
              end
              object CARGA1_MIN: TDBEdit
                Left = 329
                Top = 249
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CARGA1_MIN'
                DataSource = dsMola
                TabOrder = 32
              end
              object CURS1_MIN: TDBEdit
                Left = 329
                Top = 157
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CURS1_MIN'
                DataSource = dsMola
                TabOrder = 20
              end
              object CURS1_MAX: TDBEdit
                Left = 241
                Top = 157
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CURS1_MAX'
                DataSource = dsMola
                TabOrder = 19
              end
              object ALTURAL4: TDBEdit
                Left = 153
                Top = 134
                Width = 71
                Height = 22
                DataField = 'MMO_ALTURAL4'
                DataSource = dsMola
                TabOrder = 15
              end
              object CURSOS1: TDBEdit
                Left = 153
                Top = 157
                Width = 71
                Height = 22
                DataField = 'MMO_CURSOS1'
                DataSource = dsMola
                TabOrder = 18
              end
              object ALT3_MIN: TDBEdit
                Left = 329
                Top = 111
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ALT3_MIN'
                DataSource = dsMola
                TabOrder = 14
              end
              object ALT2_MIN: TDBEdit
                Left = 329
                Top = 88
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ALT2_MIN'
                DataSource = dsMola
                TabOrder = 11
              end
              object ALT1_MIN: TDBEdit
                Left = 329
                Top = 65
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ALT1_MIN'
                DataSource = dsMola
                TabOrder = 8
              end
              object ALT1_MAX: TDBEdit
                Left = 241
                Top = 65
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ALT1_MAX'
                DataSource = dsMola
                TabOrder = 7
              end
              object ALT2_MAX: TDBEdit
                Left = 241
                Top = 88
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ALT2_MAX'
                DataSource = dsMola
                TabOrder = 10
              end
              object ALT3_MAX: TDBEdit
                Left = 241
                Top = 111
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ALT3_MAX'
                DataSource = dsMola
                TabOrder = 13
              end
              object ALTURAL2: TDBEdit
                Left = 153
                Top = 88
                Width = 71
                Height = 22
                DataField = 'MMO_ALTURAL2'
                DataSource = dsMola
                TabOrder = 9
              end
              object ALTURAL3: TDBEdit
                Left = 153
                Top = 111
                Width = 71
                Height = 22
                DataField = 'MMO_ALTURAL3'
                DataSource = dsMola
                TabOrder = 12
              end
              object ALT4_MAX: TDBEdit
                Left = 241
                Top = 134
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ALT4_MAX'
                DataSource = dsMola
                TabOrder = 16
              end
              object ALT4_MIN: TDBEdit
                Left = 329
                Top = 134
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_ALT4_MIN'
                DataSource = dsMola
                TabOrder = 17
              end
              object CURSOS2: TDBEdit
                Left = 153
                Top = 180
                Width = 71
                Height = 22
                DataField = 'MMO_CURSOS2'
                DataSource = dsMola
                TabOrder = 21
              end
              object CURS2_MAX: TDBEdit
                Left = 241
                Top = 180
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CURS2_MAX'
                DataSource = dsMola
                TabOrder = 22
              end
              object CURS2_MIN: TDBEdit
                Left = 329
                Top = 180
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CURS2_MIN'
                DataSource = dsMola
                TabOrder = 23
              end
              object CURSOS3: TDBEdit
                Left = 153
                Top = 203
                Width = 71
                Height = 22
                DataField = 'MMO_CURSOS3'
                DataSource = dsMola
                TabOrder = 24
              end
              object CURS3_MAX: TDBEdit
                Left = 241
                Top = 203
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CURS3_MAX'
                DataSource = dsMola
                TabOrder = 25
              end
              object CURS3_MIN: TDBEdit
                Left = 329
                Top = 203
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CURS3_MIN'
                DataSource = dsMola
                TabOrder = 26
              end
              object CURSOS4: TDBEdit
                Left = 153
                Top = 226
                Width = 71
                Height = 22
                DataField = 'MMO_CURSOS4'
                DataSource = dsMola
                TabOrder = 27
              end
              object CURS4_MAX: TDBEdit
                Left = 241
                Top = 226
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CURS4_MAX'
                DataSource = dsMola
                TabOrder = 28
              end
              object CURS4_MIN: TDBEdit
                Left = 329
                Top = 226
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CURS4_MIN'
                DataSource = dsMola
                TabOrder = 29
              end
              object CARGAP2: TDBEdit
                Left = 153
                Top = 272
                Width = 71
                Height = 22
                DataField = 'MMO_CARGAP2'
                DataSource = dsMola
                TabOrder = 33
              end
              object CARGA2_MAX: TDBEdit
                Left = 241
                Top = 272
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CARGA2_MAX'
                DataSource = dsMola
                TabOrder = 34
              end
              object CARGA2_MIN: TDBEdit
                Left = 329
                Top = 272
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CARGA2_MIN'
                DataSource = dsMola
                TabOrder = 35
              end
              object CARGAP3: TDBEdit
                Left = 153
                Top = 296
                Width = 71
                Height = 22
                DataField = 'MMO_CARGAP3'
                DataSource = dsMola
                TabOrder = 36
              end
              object CARGA3_MAX: TDBEdit
                Left = 241
                Top = 296
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CARGA3_MAX'
                DataSource = dsMola
                TabOrder = 37
              end
              object CARGA3_MIN: TDBEdit
                Left = 329
                Top = 296
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CARGA3_MIN'
                DataSource = dsMola
                TabOrder = 38
              end
              object CARGAP4: TDBEdit
                Left = 153
                Top = 319
                Width = 71
                Height = 22
                DataField = 'MMO_CARGAP4'
                DataSource = dsMola
                TabOrder = 39
              end
              object CARGA4_MAX: TDBEdit
                Left = 241
                Top = 319
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CARGA4_MAX'
                DataSource = dsMola
                TabOrder = 40
              end
              object CARGA4_MIN: TDBEdit
                Left = 329
                Top = 319
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CARGA4_MIN'
                DataSource = dsMola
                TabOrder = 41
              end
              object TENSAO1: TDBEdit
                Left = 545
                Top = 17
                Width = 71
                Height = 22
                DataField = 'MMO_TENSAO1'
                DataSource = dsMola
                TabOrder = 42
              end
              object TENSAO1_MAX: TDBEdit
                Left = 633
                Top = 17
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_TENSAO1_MAX'
                DataSource = dsMola
                TabOrder = 43
              end
              object TENSAO1_MIN: TDBEdit
                Left = 721
                Top = 17
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_TENSAO1_MIN'
                DataSource = dsMola
                TabOrder = 44
              end
              object TENSAO2_MIN: TDBEdit
                Left = 721
                Top = 40
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_TENSAO2_MIN'
                DataSource = dsMola
                TabOrder = 47
              end
              object TENSAO3_MIN: TDBEdit
                Left = 721
                Top = 64
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_TENSAO3_MIN'
                DataSource = dsMola
                TabOrder = 50
              end
              object TENSAO4_MIN: TDBEdit
                Left = 721
                Top = 87
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_TENSAO4_MIN'
                DataSource = dsMola
                TabOrder = 53
              end
              object TENSAO2_MAX: TDBEdit
                Left = 633
                Top = 40
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_TENSAO2_MAX'
                DataSource = dsMola
                TabOrder = 46
              end
              object TENSAO3_MAX: TDBEdit
                Left = 633
                Top = 64
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_TENSAO3_MAX'
                DataSource = dsMola
                TabOrder = 49
              end
              object TENSAO4_MAX: TDBEdit
                Left = 633
                Top = 87
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_TENSAO4_MAX'
                DataSource = dsMola
                TabOrder = 52
              end
              object TENSAO2: TDBEdit
                Left = 545
                Top = 40
                Width = 71
                Height = 22
                DataField = 'MMO_TENSAO2'
                DataSource = dsMola
                TabOrder = 45
              end
              object TENSAO3: TDBEdit
                Left = 545
                Top = 64
                Width = 71
                Height = 22
                DataField = 'MMO_TENSAO3'
                DataSource = dsMola
                TabOrder = 48
              end
              object TENSAO4: TDBEdit
                Left = 545
                Top = 87
                Width = 71
                Height = 22
                DataField = 'MMO_TENSAO4'
                DataSource = dsMola
                TabOrder = 51
              end
              object TENSAO: TDBEdit
                Left = 545
                Top = 134
                Width = 71
                Height = 22
                DataField = 'MMO_TENSAO'
                DataSource = dsMola
                TabOrder = 57
              end
              object CARGA: TDBEdit
                Left = 545
                Top = 111
                Width = 71
                Height = 22
                DataField = 'MMO_CARGA'
                DataSource = dsMola
                TabOrder = 54
              end
              object CARGA_MAX: TDBEdit
                Left = 633
                Top = 111
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CARGA_MAX'
                DataSource = dsMola
                TabOrder = 55
              end
              object TEN_MAX: TDBEdit
                Left = 633
                Top = 134
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_TEN_MAX'
                DataSource = dsMola
                TabOrder = 58
              end
              object TEN_MIN: TDBEdit
                Left = 721
                Top = 134
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_TEN_MIN'
                DataSource = dsMola
                TabOrder = 59
              end
              object CARGA_MIN: TDBEdit
                Left = 721
                Top = 111
                Width = 71
                Height = 22
                DataField = 'MMO_TOLERANCIA_CARGA_MIN'
                DataSource = dsMola
                TabOrder = 56
              end
            end
            object tsCampos4: TTabSheet
              Caption = 'Informa'#231#245'es Diversas'
              ImageIndex = 3
              object Label267: TLabel
                Left = 2
                Top = 8
                Width = 92
                Height = 14
                Caption = 'M'#225'quina de Enrolar'
              end
              object Label268: TLabel
                Left = 2
                Top = 31
                Width = 34
                Height = 14
                Caption = 'Mandril'
              end
              object Label269: TLabel
                Left = 2
                Top = 54
                Width = 47
                Height = 14
                Caption = 'Cachimbo'
              end
              object Label270: TLabel
                Left = 2
                Top = 77
                Width = 43
                Height = 14
                Caption = 'Copiador'
              end
              object Label271: TLabel
                Left = 2
                Top = 100
                Width = 136
                Height = 14
                Caption = 'Disp. para Levantar Gancho'
              end
              object Label272: TLabel
                Left = 2
                Top = 123
                Width = 66
                Height = 14
                Caption = 'Disco Retifica'
              end
              object Label273: TLabel
                Left = 2
                Top = 146
                Width = 33
                Height = 14
                Caption = 'Outros'
              end
              object Label274: TLabel
                Left = 2
                Top = 169
                Width = 92
                Height = 14
                Caption = 'Tipo de Embalagem'
              end
              object Label275: TLabel
                Left = 2
                Top = 192
                Width = 58
                Height = 14
                Caption = 'Localiza'#231#227'o'
              end
              object Label276: TLabel
                Left = 2
                Top = 215
                Width = 115
                Height = 14
                Caption = 'Acabamento Superficial'
              end
              object Label277: TLabel
                Left = 2
                Top = 238
                Width = 130
                Height = 14
                Caption = 'Acabamento Cores-Pintura'
              end
              object Label278: TLabel
                Left = 2
                Top = 261
                Width = 108
                Height = 14
                Caption = 'Tratamento Superficial'
              end
              object Label279: TLabel
                Left = 2
                Top = 284
                Width = 26
                Height = 14
                Caption = 'Setor'
              end
              object Label280: TLabel
                Left = 2
                Top = 307
                Width = 101
                Height = 14
                Caption = 'Observa'#231#245'es Gerais'
              end
              object MAQUINA: TDBEdit
                Left = 145
                Top = 5
                Width = 312
                Height = 22
                DataField = 'MMO_MAQUINA'
                DataSource = dsMola
                TabOrder = 0
              end
              object MANDRIL: TDBEdit
                Left = 145
                Top = 28
                Width = 312
                Height = 22
                DataField = 'MMO_MANDRIL'
                DataSource = dsMola
                TabOrder = 1
              end
              object CACHIMBO: TDBEdit
                Left = 145
                Top = 51
                Width = 312
                Height = 22
                DataField = 'MMO_CACHIMBO'
                DataSource = dsMola
                TabOrder = 2
              end
              object COPIADOR: TDBEdit
                Left = 145
                Top = 74
                Width = 312
                Height = 22
                DataField = 'MMO_COPIADOR'
                DataSource = dsMola
                TabOrder = 3
              end
              object GANCHO: TDBEdit
                Left = 145
                Top = 97
                Width = 312
                Height = 22
                DataField = 'MMO_GANCHO'
                DataSource = dsMola
                TabOrder = 4
              end
              object DISCO: TDBEdit
                Left = 145
                Top = 120
                Width = 312
                Height = 22
                DataField = 'MMO_DISCO'
                DataSource = dsMola
                TabOrder = 5
              end
              object OUTROS: TDBEdit
                Left = 145
                Top = 143
                Width = 312
                Height = 22
                DataField = 'MMO_OUTROS'
                DataSource = dsMola
                TabOrder = 6
              end
              object LOCALIZACAO: TDBEdit
                Left = 145
                Top = 189
                Width = 312
                Height = 22
                DataField = 'MMO_LOCALIZACAO'
                DataSource = dsMola
                TabOrder = 7
              end
              object SETOR: TDBEdit
                Left = 145
                Top = 281
                Width = 312
                Height = 22
                DataField = 'MMO_SETOR'
                DataSource = dsMola
                TabOrder = 11
              end
              object OBSGERAIS: TDBMemo
                Left = 145
                Top = 304
                Width = 312
                Height = 89
                DataField = 'MMO_OBSGERAIS'
                DataSource = dsMola
                TabOrder = 12
              end
              object CBACABAMENTO: TSgDbSearchCombo
                Left = 145
                Top = 212
                Width = 312
                Height = 22
                TabOrder = 8
                LookupSelect = 'ASU_CODIGO, ASU_NOME'
                LookupOrderBy = 'ASU_NOME'
                LookupTable = 'ACABAMENTO_SUPERFICIAL'
                LookupDispl = 'ASU_NOME'
                GridAutoSize = False
                LookupSource = qAux
                DataField = 'ASU_CODIGO'
                DataSource = dsMola
                LookupKeyField = 'ASU_CODIGO'
                ShowButton = True
                AutoF8WinTitulo = 'Acabamento superficial'
                AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
                LookupDbGridColumns = 'ASU_CODIGO, ASU_NOME'
                LookupDbGridColumnsTitle = 'CODIGO, NOME'
                GridLeft = 0
                GridWidth = 0
                GridHeight = 100
                GridTop = 0
                GridShowWhenEnter = False
                SelectWithDoubleClick = False
                LimparCampoAoSair = True
              end
              object CBaCABAMENTOCORES: TSgDbSearchCombo
                Left = 145
                Top = 235
                Width = 312
                Height = 22
                TabOrder = 9
                LookupSelect = 'ACO_CODIGO, ACO_NOME'
                LookupOrderBy = 'ACO_NOME'
                LookupTable = 'ACABAMENTO_CORES'
                LookupDispl = 'ACO_NOME'
                GridAutoSize = False
                LookupSource = qAux
                DataField = 'ACO_CODIGO'
                DataSource = dsMola
                LookupKeyField = 'ACO_CODIGO'
                ShowButton = True
                AutoF8WinTitulo = 'Acabamento Cores-Pintura'
                AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
                LookupDbGridColumns = 'ACO_CODIGO, ACO_NOME'
                LookupDbGridColumnsTitle = 'CODIGO, NOME'
                GridLeft = 0
                GridWidth = 0
                GridHeight = 100
                GridTop = 0
                GridShowWhenEnter = False
                SelectWithDoubleClick = False
                LimparCampoAoSair = True
              end
              object TRATAMENTO_SUPERFICIAL2: TSgDbSearchCombo
                Left = 145
                Top = 258
                Width = 312
                Height = 22
                TabOrder = 10
                LookupSelect = 'TSU_CODIGO, TSU_NOME'
                LookupOrderBy = 'TSU_NOME'
                LookupTable = 'TRATAMENTO_SUPERFICIAL'
                LookupDispl = 'TSU_NOME'
                GridAutoSize = False
                LookupSource = qAux
                DataField = 'TSU_CODIGO'
                DataSource = dsMola
                LookupKeyField = 'TSU_CODIGO'
                ShowButton = True
                AutoF8WinTitulo = 'Tratamento superficial'
                AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
                LookupDbGridColumns = 'TSU_CODIGO, TSU_NOME'
                LookupDbGridColumnsTitle = 'CODIGO, NOME'
                GridLeft = 0
                GridWidth = 0
                GridHeight = 100
                GridTop = 0
                GridShowWhenEnter = False
                SelectWithDoubleClick = False
                LimparCampoAoSair = True
              end
              object TIPOEMBALAGEM: TSgDbSearchCombo
                Left = 145
                Top = 166
                Width = 312
                Height = 22
                TabOrder = 13
                LookupSelect = 'TEM_CODIGO, TEM_DESCRICAO'
                LookupOrderBy = 'TEM_DESCRICAO'
                LookupTable = 'TIPO_EMBALAGEM'
                LookupDispl = 'TEM_DESCRICAO'
                GridAutoSize = False
                LookupSource = qAux
                DataField = 'TEM_CODIGO'
                DataSource = dsMola
                LookupKeyField = 'TEM_CODIGO'
                ShowButton = True
                AutoF8WinTitulo = 'Tipo Embalagem'
                AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
                LookupDbGridColumns = 'TEM_CODIGO, TEM_NOME'
                LookupDbGridColumnsTitle = 'CODIGO, NOME'
                GridLeft = 0
                GridWidth = 0
                GridHeight = 100
                GridTop = 0
                GridShowWhenEnter = False
                SelectWithDoubleClick = False
                LimparCampoAoSair = True
              end
            end
          end
        end
        object tsQualidade: TTabSheet
          Caption = 'Qualidade'
          ImageIndex = 3
          object Label323: TLabel
            Left = 35
            Top = 16
            Width = 52
            Height = 14
            Caption = 'Par'#226'metro:'
          end
          object Label324: TLabel
            Left = 233
            Top = 45
            Width = 63
            Height = 14
            Caption = 'Valor M'#237'nimo:'
          end
          object Label325: TLabel
            Left = 429
            Top = 45
            Width = 67
            Height = 14
            Caption = 'Valor M'#225'ximo:'
          end
          object Label326: TLabel
            Left = 38
            Top = 45
            Width = 49
            Height = 14
            Caption = 'Esperado:'
          end
          object dbsPRD_REFER: TSgDbSearchCombo
            Left = 93
            Top = 13
            Width = 183
            Height = 22
            TabOrder = 0
            OnChange = dbsPRD_REFERChange
            Enabled = False
            LookupSelect = 'PAR_CODIGO, PAR_DESCRICAO'
            LookupOrderBy = 'PAR_DESCRICAO'
            LookupTable = 'PARAMETROS_DA_QUALIDADE'
            LookupDispl = 'PAR_DESCRICAO'
            GridAutoSize = False
            LookupSource = qAux
            DataField = 'PAR_CODIGO'
            DataSource = dsCQP
            LookupKeyField = 'PAR_CODIGO'
            ShowButton = True
            AutoF8WinTitulo = 'Par'#226'metros da Qualidade'
            AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
            LookupDbGridColumns = 'PAR_CODIGO, PAR_DESCRICAO'
            LookupDbGridColumnsTitle = 'CODIGO, DESCRI'#199#195'O'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridTop = 0
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            LimparCampoAoSair = True
          end
          object DBGrid6: TDBGrid
            Left = 0
            Top = 216
            Width = 1043
            Height = 238
            Align = alBottom
            DataSource = dsCQP
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PAR_DESCRICAO'
                Title.Caption = 'Descri'#231#227'o'
                Width = 346
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CQP_ESPERADO'
                Title.Caption = 'Esperado'
                Width = 157
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CQP_VALOR_MIN'
                Title.Caption = 'M'#237'nimo'
                Width = 118
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CQP_VALOR_MAX'
                Title.Caption = 'M'#225'ximo'
                Width = 112
                Visible = True
              end>
          end
          object bbAdicionarParametro: TBitBtn
            Tag = 1
            Left = 3
            Top = 186
            Width = 136
            Height = 24
            Cursor = crHandPoint
            Caption = 'Adicionar '
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333300033333300333330003333
              3300333330003333330033000000000333003300000000033300330000000003
              3300333330003333330033333000333333003333300033333300333333333333
              33003333333333333300}
            ModalResult = 1
            TabOrder = 2
            TabStop = False
            OnClick = bbAdicionarParametroClick
          end
          object bbEditarParametro: TBitBtn
            Tag = 2
            Left = 141
            Top = 186
            Width = 119
            Height = 24
            Cursor = crHandPoint
            Caption = 'Editar '
            Glyph.Data = {
              E6010000424DE60100000000000036000000280000000C0000000C0000000100
              180000000000B0010000C40E0000C40E00000000000000000000C8D0D4C8D0D4
              C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
              D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
              D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
              C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
              D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D400000000000000000000000000
              0000000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000000000
              000000000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
              D4000000000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
              D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
              C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
              D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
              D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
              C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
              D4C8D0D4C8D0D4C8D0D4}
            ModalResult = 1
            TabOrder = 3
            TabStop = False
            OnClick = bbEditarParametroClick
          end
          object bbExcluirParametro: TBitBtn
            Tag = 3
            Left = 262
            Top = 186
            Width = 123
            Height = 24
            Cursor = crHandPoint
            Hint = '|Exclui registro atual..'
            Caption = 'Excluir '
            Glyph.Data = {
              26050000424D26050000000000003604000028000000100000000F0000000100
              080000000000F0000000C40E0000C40E00000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00A4
              FFFFFFA4A4FFFFFFFFFFFFFFFF0101A4A4FFF900A4A4FFFFFFFFFFFFFF010100
              A4A4010100A4FFFFFFFFFFFFFFF901010001010101FFFFFFFFFFFFFFFFFFF901
              01010101FFFFFFFFFFFFFFFFFFFFFFF9010101A4A4FFFFFFFFFFFFFFFFFFFFF9
              01010100A4A4FFFFFFFFFFFFFFFFFF0101F9010100A4A4FFFFFFFFFFFFA4F901
              00A4F9010100A4FFFFFFFFFFFFFF0101A4FFFFF9010100FFFFFFFFFFFFFFF9FF
              FFFFFFFFF90107FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            ModalResult = 1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            TabStop = False
            OnClick = bbExcluirParametroClick
          end
          object edPRD_REFER: TDBEdit
            Left = 302
            Top = 14
            Width = 121
            Height = 22
            DataField = 'PRD_REFER'
            DataSource = dsCQP
            TabOrder = 5
            Visible = False
          end
          object dbCQP_ESPERADO: TDBEdit
            Left = 93
            Top = 42
            Width = 121
            Height = 22
            DataField = 'CQP_ESPERADO'
            DataSource = dsCQP
            Enabled = False
            TabOrder = 6
          end
          object dbCQP_VALOR_MIN: TDBEdit
            Left = 302
            Top = 42
            Width = 121
            Height = 22
            DataField = 'CQP_VALOR_MIN'
            DataSource = dsCQP
            Enabled = False
            TabOrder = 7
          end
          object dbCQP_VALOR_MAX: TDBEdit
            Left = 502
            Top = 42
            Width = 121
            Height = 22
            DataField = 'CQP_VALOR_MAX'
            DataSource = dsCQP
            Enabled = False
            TabOrder = 8
          end
          object bbGravarParametro: TBitBtn
            Tag = 3
            Left = 387
            Top = 186
            Width = 123
            Height = 24
            Cursor = crHandPoint
            Hint = '|Exclui registro atual..'
            Caption = 'Gravar'
            Glyph.Data = {
              26050000424D26050000000000003604000028000000100000000F0000000100
              080000000000F0000000C40E0000C40E00000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF0404FFFFFFFFFFFFFFFFFFFFFFFFFFFA020204
              FFFFFFFFFFFFFFFFFFFFFFFF0202020204FFFFFFFFFFFFFFFFFFFFFF02020202
              0204FFFFFFFFFFFFFFFFFFFF020202FA020204FFFFFFFFFFFFFFFFFF020204FF
              FA020204FFFFFFFFFFFFFFFFFA0204FFFFFA0202A4FFFFFFFFFFFFFFFFFFFFFF
              FFFFFA020204A4FFFFFFFFFFFFFFFFFFFFFFFFFA020204A4FFFFFFFFFFFFFFFF
              FFFFFFFFFA0202A4FFFFFFFFFFFFFFFFFFFFFFFFFFFA02A4FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            ModalResult = 1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            TabStop = False
            OnClick = bbGravarParametroClick
          end
          object bbCancelarParametro: TBitBtn
            Tag = 1
            Left = 513
            Top = 186
            Width = 136
            Height = 24
            Cursor = crHandPoint
            Caption = 'Cancelar'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFDDDDFB9893F37870EF7A72EF9E99F4E8E8FCFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D0F91B0CE50000DF0000E023
              15E72012E70000E00000DF2C1EE6E5E5FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              8F8AF20000DF2B1CE6CBC9FBFFFFFFFFFFFFFFFFFFFFFFFFBFBCFC2515E60000
              E0B1AEF6FFFFFFFFFFFFFFFFFFACA8F50000DF7068EEFFFFFFFFFFFF40404000
              00000000001D1D1CFFFFEBC4C2FC0100E20000E0CECCF9FFFFFFFFFFFF0000E0
              4E43EAFFFFFFFFFFFF2F2F2F0000000000000000000000004A47940000EA665D
              ED4235E90800E2FFFFFF958EF20000E0FFFFFFFFFFFFEAEAEA00000000000000
              00000000005B57AA0500FB6057F5FFFFFFE8E9FC0000DFB4AFF64235E9473CE9
              FFFFFFFFFFFF7272720000000000000000005B57B00A00FF3B33CAB9BB9DFFFF
              FFFFFFFF2113E56258EC1708E4847CF0FFFFFFFFFFFF0000002D2D2D0000005B
              57B70700FF4F47DA0000009D9D9DFFFFFFFFFFFF6157ED382BE81303E48B83F1
              FFFFFFD0D0D0000000B8BA9F4944AB0600FE645CE80A0C000B0B0B9E9E9EFFFF
              FFFFFFFF675DED3325E73325E75D52ECFFFFFFFFFFFFC4C5AA9B96FF0000F73F
              38BC8284660505054D4D4D989898FFFFFFFFFFFF382AE85348EB7C73F00000E2
              FFFFFFFFFFFF8B85FA0000E95852CF56583A6969680707073D3D3D919191FFFF
              FFFFFFFF0000E09B95F3EFF0FD0000DF958FF38984F10000E27973EA00000059
              5959676767000000A3A3A3D0D0D0FFFFFF6158ED0000E0FFFFFFFFFFFF6F67EE
              0000E10100E29793F3FFFFFFA5A5A53939397373733E3E3EFFFFFFFFFFFF9E99
              F40000DF948FF2FFFFFFFFFFFFFFFFFF4339E90000E1867FF1FFFFFFFFFFFFE6
              E7D7FFFFF2FFFFFFFFFFFF6056EC0000DF6159EDFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF817AF00000E00000E04236E9766DF47168F1392CE80000E00000E09A95
              F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9892F35146EB32
              24E73426E7584CEBA29DF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ModalResult = 1
            TabOrder = 10
            TabStop = False
            OnClick = bbCancelarParametroClick
          end
          object dbCQP_PAR_DESCRICAO: TDBEdit
            Left = 429
            Top = 14
            Width = 121
            Height = 22
            DataField = 'PAR_DESCRICAO'
            DataSource = dsCQP
            TabOrder = 11
            Visible = False
          end
        end
      end
    end
    object Tbs_Produtos: TTabSheet
      Caption = 'Cadastro de Produtos'
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 2492
        Height = 157
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 19
          Top = 37
          Width = 52
          Height = 14
          Caption = 'Descri'#231#227'o:'
        end
        object Label4: TLabel
          Left = 821
          Top = 36
          Width = 27
          Height = 14
          Caption = 'UND.:'
        end
        object Label3: TLabel
          Left = 15
          Top = 14
          Width = 56
          Height = 14
          Caption = 'Refer'#234'ncia:'
        end
        object lcompl: TLabel
          Left = 3
          Top = 58
          Width = 67
          Height = 14
          Caption = 'Complemento:'
        end
        object Label101: TLabel
          Left = 759
          Top = 11
          Width = 87
          Height = 14
          Caption = 'Data do Cadastro:'
        end
        object DbePrd_Descri: TDBEdit
          Left = 72
          Top = 33
          Width = 743
          Height = 22
          BiDiMode = bdLeftToRight
          CharCase = ecUpperCase
          DataField = 'PRD_DESCRI'
          DataSource = DsProdutos
          ParentBiDiMode = False
          TabOrder = 1
        end
        object DBRadClasse: TDBRadioGroup
          Left = 931
          Top = 7
          Width = 130
          Height = 56
          Caption = 'Classe'
          DataField = 'PRD_PRODSERV'
          DataSource = DsProdutos
          Items.Strings = (
            'Produto'
            'Servi'#231'o')
          TabOrder = 3
          Values.Strings = (
            'P'
            'S')
        end
        object EdtPrd_Refer: TEdit
          Left = 72
          Top = 8
          Width = 141
          Height = 22
          CharCase = ecUpperCase
          MaxLength = 20
          TabOrder = 0
          OnExit = EdtPrd_ReferExit
        end
        object Bit_AlterarRef: TBitBtn
          Left = 219
          Top = 8
          Width = 145
          Height = 22
          Caption = '&Alterar Refer'#234'ncia'
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333377F3333333333000033334224333333333333
            337337F3333333330000333422224333333333333733337F3333333300003342
            222224333333333373333337F3333333000034222A22224333333337F337F333
            7F33333300003222A3A2224333333337F3737F337F33333300003A2A333A2224
            33333337F73337F337F33333000033A33333A222433333337333337F337F3333
            0000333333333A222433333333333337F337F33300003333333333A222433333
            333333337F337F33000033333333333A222433333333333337F337F300003333
            33333333A222433333333333337F337F00003333333333333A22433333333333
            3337F37F000033333333333333A223333333333333337F730000333333333333
            333A333333333333333337330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          TabOrder = 4
          TabStop = False
          OnClick = Bit_AlterarRefClick
        end
        object Bit_Equivalencia: TBitBtn
          Left = 458
          Top = 10
          Width = 145
          Height = 22
          Caption = 'Incluir Equival'#234'ncia'
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333377F3333333333000033334224333333333333
            337337F3333333330000333422224333333333333733337F3333333300003342
            222224333333333373333337F3333333000034222A22224333333337F337F333
            7F33333300003222A3A2224333333337F3737F337F33333300003A2A333A2224
            33333337F73337F337F33333000033A33333A222433333337333337F337F3333
            0000333333333A222433333333333337F337F33300003333333333A222433333
            333333337F337F33000033333333333A222433333333333337F337F300003333
            33333333A222433333333333337F337F00003333333333333A22433333333333
            3337F37F000033333333333333A223333333333333337F730000333333333333
            333A333333333333333337330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          TabOrder = 5
          TabStop = False
          OnClick = Bit_EquivalenciaClick
        end
        object GroupBox23: TGroupBox
          Left = 931
          Top = 62
          Width = 130
          Height = 90
          TabOrder = 6
          object dbchkProdutoAtivo: TDBCheckBox
            Left = 5
            Top = 10
            Width = 97
            Height = 17
            Caption = 'Produto Ativo'
            DataField = 'PRD_STATUS'
            DataSource = DsProdutos
            TabOrder = 0
            ValueChecked = 'A'
            ValueUnchecked = 'I'
          end
          object dbchkPRD_GERENCIA_LOTE: TDBCheckBox
            Left = 5
            Top = 28
            Width = 97
            Height = 17
            Caption = 'Controle de Lote'
            DataField = 'PRD_GERENCIA_LOTE'
            DataSource = DsProdutos
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox1: TDBCheckBox
            Left = 5
            Top = 47
            Width = 116
            Height = 17
            Caption = 'Grade Obrigat'#243'ria'
            DataField = 'PRD_GRADE_OBRIGATORIO'
            DataSource = DsProdutos
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object chkEnvase: TDBCheckBox
            Left = 5
            Top = 66
            Width = 116
            Height = 17
            Caption = 'Envase'
            DataField = 'PRD_ENVASE'
            DataSource = DsProdutos
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object mComplemento: TDBMemo
          Left = 72
          Top = 58
          Width = 825
          Height = 66
          Align = alCustom
          DataField = 'PRD_COMPL'
          DataSource = DsProdutos
          MaxLength = 500
          ScrollBars = ssVertical
          TabOrder = 7
          OnKeyPress = mComplementoKeyPress
        end
        object pMedidas: TPanel
          Left = 30
          Top = 126
          Width = 809
          Height = 25
          BevelOuter = bvNone
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 8
          object lbDesc1: TLabel
            Left = 45
            Top = 7
            Width = 92
            Height = 14
            Alignment = taRightJustify
            Caption = 'QUINZE CARACT1:'
          end
          object lbDesc2: TLabel
            Left = 227
            Top = 7
            Width = 92
            Height = 14
            Alignment = taRightJustify
            Caption = 'QUINZE CARACT2:'
          end
          object lbDesc3: TLabel
            Left = 409
            Top = 7
            Width = 92
            Height = 14
            Alignment = taRightJustify
            Caption = 'QUINZE CARACT3:'
          end
          object lbDesc4: TLabel
            Left = 587
            Top = 7
            Width = 92
            Height = 14
            Alignment = taRightJustify
            Caption = 'QUINZE CARACT4:'
          end
          object DBEdit47: TDBEdit
            Left = 138
            Top = 3
            Width = 80
            Height = 22
            DataField = 'INTERNO'
            DataSource = DsProdutos
            TabOrder = 0
          end
          object DBEdit53: TDBEdit
            Left = 320
            Top = 3
            Width = 80
            Height = 22
            DataField = 'EXTERNO'
            DataSource = DsProdutos
            TabOrder = 1
          end
          object DBEdit54: TDBEdit
            Left = 502
            Top = 3
            Width = 80
            Height = 22
            DataField = 'ALTURA1'
            DataSource = DsProdutos
            TabOrder = 2
          end
          object DBEdit55: TDBEdit
            Left = 679
            Top = 3
            Width = 80
            Height = 22
            DataField = 'ALTURA2'
            DataSource = DsProdutos
            TabOrder = 3
          end
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 848
          Top = 34
          DataBinding.DataField = 'PRD_UND'
          DataBinding.DataSource = DsProdutos
          Properties.KeyFieldNames = 'PRD_UNISIGLA'
          Properties.ListColumns = <
            item
              Caption = 'Sigla'
              FieldName = 'PRD_UNISIGLA'
            end>
          Properties.ListSource = dsUnidade
          TabOrder = 2
          Width = 77
        end
        object DBEdit61: TDBEdit
          Left = 848
          Top = 8
          Width = 69
          Height = 22
          CharCase = ecUpperCase
          DataField = 'PRD_DTCADASTRO'
          DataSource = DsProdutos
          Enabled = False
          MaxLength = 7
          ReadOnly = True
          TabOrder = 9
        end
      end
      object Panel8: TPanel
        Left = -4
        Top = 491
        Width = 317
        Height = 33
        BevelOuter = bvNone
        TabOrder = 3
        object Bit_Lista: TBitBtn
          Left = 5
          Top = 7
          Width = 85
          Height = 25
          Cursor = crHandPoint
          Caption = 'C&onsulta'
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
          TabOrder = 0
          TabStop = False
          OnClick = Bit_ListaClick
        end
        object Bit_Relatorio: TBitBtn
          Left = 91
          Top = 7
          Width = 85
          Height = 25
          Cursor = crHandPoint
          Caption = '&Relat'#243'rios'
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
          TabOrder = 1
          TabStop = False
          OnClick = Bit_RelatorioClick
        end
        object btnExcel: TBitBtn
          Left = 177
          Top = 7
          Width = 85
          Height = 25
          Cursor = crHandPoint
          Caption = '&Excel'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFF88888
            8888888888873333333788888882773777738FFFFFF2FFFF3FF38FFFFFF27FF3
            FF738FFFFFF277FFF7738FFFFFF27FF7FF738FFFFFF2FF777FF38FFFFFF77777
            77738FFFFFFF722233378FFFFFFFF8F8F8FF8FFFFFF888F8878F8FFFFFF8FFF8
            68788F8888F8FF8677778FFFFFFFF88887FF888888888F6778FF}
          TabOrder = 2
          TabStop = False
          OnClick = btnExcelClick
        end
      end
      object Panel1: TPanel
        Left = 381
        Top = 494
        Width = 684
        Height = 33
        BevelOuter = bvNone
        TabOrder = 4
        object bitImportarXLS: TJvArrowButton
          Left = 110
          Top = 4
          Width = 95
          Height = 25
          DropDown = JvPopupMenu1
          Caption = 'Importar'
          FillFont.Charset = DEFAULT_CHARSET
          FillFont.Color = clWindowText
          FillFont.Height = -11
          FillFont.Name = 'Tahoma'
          FillFont.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCCCCFCFCFCFCFCFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC67
            9D703B86483C86483B86483C86483D87493C86483D8749488D53B5B5B3AFAFAD
            AEAEABADADABADADABB0AFADBBB3B72C7F3A45A15F419E5B409E5B449F5E47A1
            6045A05E47A2623A8647B0B0ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24
            7932FFFFFFFFFFFFFFFFFFFFFFFF3A9C55FFFFFFFFFFFF358242AEAEABFFFFFF
            FDFDFCFCFCFBFCFCFBFFFEFEFFFFFF24783247A863FFFFFFFFFFFF329C50FFFF
            FFFFFFFF4BAB66388344ADADABFFFFFFF8F8F8F8F8F8F8F8F8FBFAFBFFFFFF27
            793455B37043A960FFFFFFFFFFFFFFFFFF43A96058B5733A8446ADADABFFFFFF
            F6F5F5F6F5F5F6F5F5F9F7F8FFFFFF24773255B772FFFFFFFFFFFF48AD65FFFF
            FFFFFFFF58B975378344ADADABFFFFFFF3F2F2F3F2F2F3F2F2F6F4F4FFFBFF1D
            742CFFFFFFFFFFFF5BBA7661BD7B5ABA76FFFFFFFFFFFF348141ADADABFFFFFF
            F0F0EFF0F0EFF0F0EFF2F1F1FAF6F872A67B49A86268C8856FCA8A73CC8D71CC
            8C6DCA8971CF8E398445ADADABFFFFFFEEECEBEEEDECEEEDECEEEDECF2EFEFFC
            F4F874A67C2577332A7A37307F3D35824337834539854769A374ADADABFFFFFF
            EAE9E9EBEAEAEBEAEAEAE9E9F5F4F4FFFFFFFFFFFFD8EADCFFFFFFC2B7C0FFFF
            FFCCCCCCFFFFFFFFFFFFADADABFFFFFFE7E7E6E8E8E7E8E8E7E6E7E5FFFFFFCC
            CCCBA9A8A6A9A8A6FFFFFFB3B5BACCCCCCC78443CCCCCCFFFFFFAEAEABFFFFFF
            E4E3E2E5E4E3E5E4E3E4E3E2FFFFFFA6A6A4FBFBFAFFFFFFE9EBEEBCC0C4BB81
            3CF4C073BE8545CCCCCCAEAEACFFFFFFE0DFDEE1DFDEE1DFDEE0DFDEFFFFFFA5
            A5A2FFFFFFE7E8E9CFD1D4BA7E35BA8442B98545BB8646BC8747AFAFADFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9CCCECECCCCCCCCCCCCC8B9
            A8BB8747FFFFFFFFFFFFB8B8B6B0B0ADAEAEACAEAEABAEAEABADAEABAEAEABAF
            AFADB7B8B7FFFFFFBB7F36BB8542BB8747D5B58DFFFFFFFFFFFF}
        end
        object Bit_novo: TBitBtn
          Left = 207
          Top = 4
          Width = 95
          Height = 25
          Cursor = crHandPoint
          Caption = '&Novo'
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            04000000000070000000CE0E0000D80E00001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333300033333300333330003333
            3300333330003333330033000000000333003300000000033300330000000003
            3300333330003333330033333000333333003333300033333300333333333333
            33003333333333333300}
          TabOrder = 0
          TabStop = False
          OnClick = Bit_novoClick
        end
        object Bit_Excluir: TBitBtn
          Left = 302
          Top = 4
          Width = 95
          Height = 25
          Cursor = crHandPoint
          Hint = '|Exclui registro atual..'
          Caption = '&Excluir'
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            04000000000070000000CE0E0000D80E00001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333333333333300333333333333
            3300333333333333330033000000000033003300000000003300330000000000
            3300333333333333330033333333333333003333333333333300333333333333
            33003333333333333300}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TabStop = False
          OnClick = Bit_ExcluirClick
        end
        object Bit_Gravar: TBitBtn
          Left = 398
          Top = 4
          Width = 95
          Height = 25
          Cursor = crHandPoint
          Hint = '|Grava registro...'
          Caption = '&Gravar'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          TabStop = False
          OnClick = Bit_GravarClick
        end
        object Bit_Cancelar: TBitBtn
          Left = 493
          Top = 4
          Width = 95
          Height = 25
          Cursor = crHandPoint
          Hint = '|Cancela registro atual...'
          Caption = '&Cancelar'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          TabStop = False
          OnClick = Bit_CancelarClick
        end
        object Bit_Sair: TBitBtn
          Left = 587
          Top = 4
          Width = 94
          Height = 25
          Cursor = crHandPoint
          Cancel = True
          Caption = '&Sair'
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
          TabOrder = 4
          TabStop = False
          OnClick = Bit_SairClick
        end
      end
      object PgCtrl_Produtos: TPageControl
        Left = 2
        Top = 297
        Width = 875
        Height = 188
        Cursor = crHandPoint
        ActivePage = TabSheet5
        HotTrack = True
        TabOrder = 2
        OnChange = PgCtrl_ProdutosChange
        object TbS_Caract: TTabSheet
          Caption = 'Caracter'#237'sticas'
          object RichDoc: TRichEdit
            Left = 0
            Top = 0
            Width = 867
            Height = 129
            Align = alTop
            Color = 16776176
            Lines.Strings = (
              'Documento')
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
            Zoom = 100
            OnClick = RichDocClick
          end
          object BitBtn1: TBitBtn
            Left = 5
            Top = 133
            Width = 252
            Height = 25
            Cursor = crHandPoint
            Caption = '&Editar Ficha Descritiva do Produto'
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
            TabOrder = 1
            TabStop = False
            OnClick = BitBtn1Click
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Pre'#231'os'
          ImageIndex = 6
          object Panel16: TPanel
            Left = 0
            Top = 0
            Width = 867
            Height = 159
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object gbCustos: TGroupBox
              Left = 0
              Top = 0
              Width = 207
              Height = 119
              Align = alLeft
              Caption = 'Custos'
              TabOrder = 0
              object Label41: TLabel
                Left = 24
                Top = 21
                Width = 68
                Height = 14
                Caption = 'Custo Liquido:'
              end
              object Label76: TLabel
                Left = 7
                Top = 46
                Width = 86
                Height = 14
                Caption = 'Custo de Entrada:'
              end
              object Label78: TLabel
                Left = 30
                Top = 71
                Width = 62
                Height = 14
                Caption = 'Custo M'#233'dio:'
              end
              object Label81: TLabel
                Left = 2
                Top = 95
                Width = 89
                Height = 14
                Caption = 'Custo s/ Impostos:'
              end
              object DBECustoliquido: TDBEdit
                Left = 94
                Top = 16
                Width = 100
                Height = 22
                DataField = 'PRD_PCUSTO'
                DataSource = DsProdutos
                TabOrder = 0
                OnEnter = DBECustoliquidoEnter
                OnExit = DBECustoliquidoExit
              end
              object DBECustoEntrada: TDBEdit
                Left = 94
                Top = 41
                Width = 100
                Height = 22
                Hint = 'Liquido+IPI+Frete+Despesas+ST'
                Color = 14145495
                DataField = 'PRD_CUSTOCOMIPI'
                DataSource = DsProdutos
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 1
                OnEnter = DBECustoEntradaEnter
                OnExit = DBECustoEntradaExit
              end
              object DBECustoMedio: TDBEdit
                Left = 94
                Top = 66
                Width = 100
                Height = 22
                Color = 14145495
                DataField = 'PRD_PMEDIO'
                DataSource = DsProdutos
                ReadOnly = True
                TabOrder = 3
                OnExit = DBECustoMedioExit
              end
              object DBECustoCredito: TDBEdit
                Left = 94
                Top = 91
                Width = 100
                Height = 22
                Hint = 'Sem IPI'
                Color = 14145495
                DataField = 'PRD_CUSTO_CREDITO'
                DataSource = DsProdutos
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 4
              end
              object edCustoEntrada: TJvValidateEdit
                Left = 131
                Top = 41
                Width = 30
                Height = 22
                Color = 16776176
                CriticalPoints.MaxValueIncluded = False
                CriticalPoints.MinValueIncluded = False
                DisplayFormat = dfFloat
                DecimalPlaces = 4
                TabOrder = 2
                Visible = False
                OnClick = edCustoEntradaClick
                OnEnter = edCustoEntradaEnter
                OnExit = edCustoEntradaExit
              end
            end
            object gbMargens: TGroupBox
              Left = 207
              Top = 0
              Width = 248
              Height = 119
              Align = alClient
              Caption = 'Percentual'
              TabOrder = 1
              object Label82: TLabel
                Left = 15
                Top = 20
                Width = 90
                Height = 14
                Caption = 'Margem de Venda:'
              end
              object Label83: TLabel
                Left = 15
                Top = 45
                Width = 90
                Height = 14
                Caption = 'Margem de Oferta:'
              end
              object Label77: TLabel
                Left = 25
                Top = 94
                Width = 80
                Height = 14
                Caption = 'Comiss'#227'o ( % ) :'
              end
              object spMargemVenda: TSpeedButton
                Left = 213
                Top = 15
                Width = 22
                Height = 21
                Hint = 'Compor margem venda'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  0400000000000001000000000000000000001000000000000000000000000000
                  8000008000000080800080000000800080008080000080808000C0C0C0000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
                  FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
                  00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
                  F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
                  00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
                  F033777777777337F73309999990FFF0033377777777FFF77333099999000000
                  3333777777777777333333399033333333333337773333333333333903333333
                  3333333773333333333333303333333333333337333333333333}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = spMargemVendaClick
              end
              object Label85: TLabel
                Left = 25
                Top = 71
                Width = 80
                Height = 14
                Caption = 'Pre'#231'o de Oferta:'
              end
              object DBEmargemVenda: TDBEdit
                Left = 111
                Top = 14
                Width = 100
                Height = 22
                Hint = ' (Icms + Pis/cofins + IPI + Frete + Outros + Margem de Lucro)'
                Color = 14145495
                DataField = 'PRD_MARGEMVENDA'
                DataSource = DsProdutos
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 0
                OnEnter = DBEmargemVendaEnter
                OnExit = DBEmargemVendaExit
              end
              object DBEmargemOferta: TDBEdit
                Left = 111
                Top = 40
                Width = 100
                Height = 22
                DataField = 'PRD_MARGEMOFERTA'
                DataSource = DsProdutos
                TabOrder = 2
                OnExit = DBEmargemOfertaExit
              end
              object DBEcomissao: TDBEdit
                Left = 111
                Top = 90
                Width = 100
                Height = 22
                DataField = 'PRD_COMISSAO'
                DataSource = DsProdutos
                TabOrder = 3
              end
              object DBEprecoOferta: TDBEdit
                Left = 111
                Top = 66
                Width = 100
                Height = 22
                DataField = 'PRD_PRECOOFERTA'
                DataSource = DsProdutos
                TabOrder = 4
                OnExit = DBEprecoOfertaExit
              end
              object edMargemVenda: TJvValidateEdit
                Left = 144
                Top = 14
                Width = 30
                Height = 22
                Color = 16776176
                CriticalPoints.MaxValueIncluded = False
                CriticalPoints.MinValueIncluded = False
                DisplayFormat = dfFloat
                DecimalPlaces = 4
                TabOrder = 1
                Visible = False
                OnClick = edMargemVendaClick
                OnEnter = edMargemVendaEnter
                OnExit = edMargemVendaExit
              end
            end
            object gbPrecos: TGroupBox
              Left = 455
              Top = 0
              Width = 260
              Height = 119
              Align = alRight
              Caption = 'Pre'#231'os'
              TabOrder = 2
              object Label79: TLabel
                Left = 67
                Top = 19
                Width = 80
                Height = 14
                Caption = 'Pre'#231'o de Venda:'
              end
              object Label80: TLabel
                Left = 13
                Top = 70
                Width = 134
                Height = 14
                Caption = 'Imprime na Tabela de Pre'#231'o:'
              end
              object Label109: TLabel
                Left = 46
                Top = 94
                Width = 101
                Height = 14
                Caption = 'UND. Indice p/ grade:'
              end
              object lmultiplicador: TLabel
                Left = 4
                Top = 45
                Width = 71
                Height = 14
                Caption = 'Multiplicador P:'
              end
              object Label100: TLabel
                Left = 134
                Top = 46
                Width = 49
                Height = 14
                Caption = 'Desconto:'
              end
              object DBEprecoVenda: TDBEdit
                Left = 150
                Top = 16
                Width = 100
                Height = 22
                DataField = 'PRD_PVENDA'
                DataSource = DsProdutos
                TabOrder = 0
                OnEnter = DBEprecoVendaEnter
                OnExit = DBEprecoVendaExit
              end
              object DBComboBox3: TDBComboBox
                Left = 150
                Top = 66
                Width = 100
                Height = 22
                Style = csDropDownList
                CharCase = ecUpperCase
                DataField = 'PRD_TABPRECO'
                DataSource = DsProdutos
                Items.Strings = (
                  'S'
                  'N')
                TabOrder = 4
              end
              object dbcbbPRD_UND_GRADE_CALCULO: TDBComboBox
                Left = 150
                Top = 90
                Width = 100
                Height = 22
                Style = csDropDownList
                CharCase = ecUpperCase
                DataField = 'PRD_UND_GRADE_CALCULO'
                DataSource = DsProdutos
                DropDownCount = 12
                Items.Strings = (
                  'UN'
                  'PC'
                  'BD'
                  'BR'
                  'CX'
                  'EMB'
                  'FD'
                  'FR'
                  'GL'
                  'GR'
                  'LT'
                  'ML'
                  'MT'
                  'M2'
                  'M3'
                  'MIL'
                  'PCT'
                  'KG'
                  'RL'
                  'RM'
                  'CT'
                  'LA'
                  'T'
                  'PAR'
                  'CJ'
                  'TB'
                  'MM'
                  'BOB'
                  'HR'
                  'SC')
                TabOrder = 5
              end
              object DBEMultiplicador: TDBEdit
                Left = 78
                Top = 42
                Width = 50
                Height = 22
                DataField = 'PRD_MULTIPLICADOR'
                DataSource = DsProdutos
                TabOrder = 2
                OnExit = DBEprecoVendaExit
              end
              object DBEdit23: TDBEdit
                Left = 183
                Top = 41
                Width = 67
                Height = 22
                DataField = 'PRD_DESCONTO'
                DataSource = DsProdutos
                TabOrder = 3
                OnExit = DBEprecoVendaExit
              end
              object edPrecoVenda: TJvValidateEdit
                Left = 189
                Top = 16
                Width = 30
                Height = 22
                Color = 16776176
                CriticalPoints.MaxValueIncluded = False
                CriticalPoints.MinValueIncluded = False
                DisplayFormat = dfFloat
                DecimalPlaces = 4
                TabOrder = 1
                Visible = False
                OnEnter = edPrecoVendaEnter
                OnExit = edPrecoVendaExit
              end
            end
            object GroupBox14: TGroupBox
              Left = 0
              Top = 119
              Width = 867
              Height = 40
              Align = alBottom
              Caption = 'Prazo da Oferta'
              TabOrder = 3
              object Label84: TLabel
                Left = 10
                Top = 17
                Width = 76
                Height = 14
                Caption = 'In'#237'cio da Oferta:'
              end
              object Label86: TLabel
                Left = 196
                Top = 17
                Width = 68
                Height = 14
                Caption = 'Fim da Oferta:'
              end
              object DBDateEdit1: TJvDBDateEdit
                Left = 89
                Top = 13
                Width = 100
                Height = 22
                DataField = 'PRD_INICIOOFERTA'
                DataSource = DsProdutos
                Glyph.Data = {
                  76050000424D760500000000000036000000280000001C0000000C0000000100
                  2000000000004005000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF008080800080808000808080008080800080808000808080008080
                  800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
                  0000800000008000000000000000800000000000000000000000800000008080
                  8000FF00FF008080800080808000808080008080800080808000808080008080
                  80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
                  0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
                  80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
                  C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                  0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
                  FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
                  8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                  000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                  C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF008080800080808000808080008080800080808000808080008080
                  80008080800080808000808080008080800080808000FF00FF00}
                ImageKind = ikCustom
                NumGlyphs = 2
                PopupColor = clBtnFace
                ShowNullDate = False
                TabOrder = 0
              end
              object DBDateEdit2: TJvDBDateEdit
                Left = 264
                Top = 13
                Width = 100
                Height = 22
                DataField = 'PRD_FIMOFERTA'
                DataSource = DsProdutos
                Glyph.Data = {
                  76050000424D760500000000000036000000280000001C0000000C0000000100
                  2000000000004005000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF008080800080808000808080008080800080808000808080008080
                  800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
                  0000800000008000000000000000800000000000000000000000800000008080
                  8000FF00FF008080800080808000808080008080800080808000808080008080
                  80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
                  0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
                  80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
                  C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                  0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
                  FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
                  8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                  000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                  C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF008080800080808000808080008080800080808000808080008080
                  80008080800080808000808080008080800080808000FF00FF00}
                ImageKind = ikCustom
                NumGlyphs = 2
                PopupColor = clBtnFace
                ShowNullDate = False
                TabOrder = 1
              end
            end
            object gbEmpresaPreco: TGroupBox
              Left = 715
              Top = 0
              Width = 152
              Height = 119
              Align = alRight
              Caption = 'Pre'#231'o por Empresa'
              TabOrder = 4
              object cbPrecoEmpresa: TJvDBComboBox
                Left = 4
                Top = 24
                Width = 145
                Height = 22
                DataField = 'EMP_RAZAO'
                DataSource = DataCadastros.DsEmpresa
                TabOrder = 0
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
                OnChange = cbPrecoEmpresaChange
              end
              object GroupBox11: TGroupBox
                Left = 2
                Top = 52
                Width = 148
                Height = 65
                Align = alBottom
                Caption = #218'ltima Atualiz'#231#227'o'
                TabOrder = 1
                object lbUsuario: TLabel
                  Left = 7
                  Top = 20
                  Width = 49
                  Height = 14
                  Caption = 'Eudemar'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object lbAtualizado: TLabel
                  Left = 7
                  Top = 40
                  Width = 54
                  Height = 14
                  Caption = '07/07/2023'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
              end
            end
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Custos'
          ImageIndex = 4
          object GroupBox15: TGroupBox
            Left = 0
            Top = 0
            Width = 441
            Height = 159
            Align = alLeft
            Caption = 'Custos de Entrada'
            TabOrder = 0
            object Label26: TLabel
              Left = 65
              Top = 20
              Width = 28
              Height = 14
              Caption = 'Frete:'
            end
            object Label39: TLabel
              Left = 80
              Top = 45
              Width = 13
              Height = 14
              Caption = 'IPI:'
            end
            object Label64: TLabel
              Left = 23
              Top = 71
              Width = 70
              Height = 14
              Caption = 'Sub.Tribut'#225'ria:'
            end
            object Label87: TLabel
              Left = 40
              Top = 96
              Width = 53
              Height = 14
              Caption = 'Adicionais:'
            end
            object Label105: TLabel
              Left = 229
              Top = 20
              Width = 71
              Height = 14
              Caption = 'Data do Custo:'
            end
            object Label125: TLabel
              Left = 53
              Top = 122
              Width = 36
              Height = 14
              Caption = 'Outros:'
            end
            object Label144: TLabel
              Left = 208
              Top = 42
              Width = 92
              Height = 14
              Caption = 'Impostos retirados:'
            end
            object DBEdit7: TDBEdit
              Left = 94
              Top = 16
              Width = 100
              Height = 22
              Color = 14145495
              DataField = 'PRD_CUSTOFRETE'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit8: TDBEdit
              Left = 95
              Top = 41
              Width = 100
              Height = 22
              Color = 14145495
              DataField = 'PRD_CUSTOIPI'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 1
              OnExit = DBEmargemOfertaExit
            end
            object DBEdit14: TDBEdit
              Left = 95
              Top = 67
              Width = 100
              Height = 22
              Color = 14145495
              DataField = 'PRD_CUSTOSUBTRIB'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 2
              OnExit = DBEmargemOfertaExit
            end
            object DBEdit17: TDBEdit
              Left = 95
              Top = 92
              Width = 100
              Height = 22
              Hint = 'Despesas + Seguro'
              Color = 14145495
              DataField = 'PRD_CUSTOADCIONAL'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 3
              OnExit = DBEmargemOfertaExit
            end
            object dbedtPRD_DTPCUSTO: TDBEdit
              Left = 306
              Top = 16
              Width = 100
              Height = 22
              Color = 14145495
              DataField = 'PRD_DTPCUSTO'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 5
              OnExit = DBEmargemOfertaExit
            end
            object DBEdit69: TDBEdit
              Left = 94
              Top = 119
              Width = 100
              Height = 22
              Hint = 'Outros'
              Color = 14145495
              DataField = 'PRD_OUTROSCUSTOS'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 4
              OnExit = DBEmargemOfertaExit
            end
            object dbedtPRD_DTPCUSTO1: TDBEdit
              Left = 306
              Top = 40
              Width = 100
              Height = 22
              Color = 14145495
              DataField = 'PRD_IMPOSTOS_RETIRADOS'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 6
              OnExit = DBEmargemOfertaExit
            end
          end
          object GroupBox16: TGroupBox
            Left = 441
            Top = 0
            Width = 426
            Height = 159
            Align = alClient
            Caption = 'Agregar no Pre'#231'o de Venda'
            TabOrder = 1
            object Label40: TLabel
              Left = 30
              Top = 20
              Width = 105
              Height = 14
              Caption = 'Despesas Fixas (%) :'
            end
            object Label62: TLabel
              Left = 19
              Top = 44
              Width = 116
              Height = 14
              Caption = 'Ind'#237'ce sobre Venda (x) :'
            end
            object DBEdit18: TDBEdit
              Left = 141
              Top = 16
              Width = 100
              Height = 22
              Color = 14145495
              DataField = 'PRD_MGDESPFIXAS'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit19: TDBEdit
              Left = 141
              Top = 41
              Width = 100
              Height = 22
              Color = 14145495
              DataField = 'PRD_INDICESOBMARGEM'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 1
              OnExit = DBEmargemOfertaExit
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
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 867
            Height = 159
            Align = alClient
            TabOrder = 0
            object Label16: TLabel
              Left = 3
              Top = 113
              Width = 71
              Height = 14
              Caption = 'Ultima Compra:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label71: TLabel
              Left = 740
              Top = 111
              Width = 25
              Height = 14
              Caption = 'Data:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label72: TLabel
              Left = 17
              Top = 136
              Width = 56
              Height = 14
              Alignment = taRightJustify
              Caption = 'Nota Fiscal:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label73: TLabel
              Left = 739
              Top = 136
              Width = 28
              Height = 14
              Alignment = taRightJustify
              Caption = 'Valor:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBeFor_codigo: TDBEdit
              Left = 76
              Top = 110
              Width = 30
              Height = 22
              TabStop = False
              Color = 14145495
              DataField = 'FOR_CODIGO'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 0
            end
            object EdtFor: TEdit
              Left = 108
              Top = 110
              Width = 517
              Height = 22
              Color = 14145495
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 150
              Top = 49
              Width = 98
              Height = 21
              Hint = 'Qtde contada no balan'#231'o'
              TabStop = False
              Color = 14145495
              DataField = 'PRD_ESTOQUE'
              DataSource = DsProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 2
            end
            object DBEdit27: TDBEdit
              Left = 158
              Top = 57
              Width = 98
              Height = 21
              Hint = 'Qtde contada no balan'#231'o'
              TabStop = False
              Color = 14145495
              DataField = 'PRD_ESTOQUE'
              DataSource = DsProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 3
            end
            object DBEdit28: TDBEdit
              Left = 194
              Top = 30
              Width = 98
              Height = 21
              TabStop = False
              Color = 14145495
              DataField = 'PRD_ENTRADA'
              DataSource = DsProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit29: TDBEdit
              Left = 769
              Top = 109
              Width = 91
              Height = 22
              TabStop = False
              Color = 14145495
              DataField = 'PRD_DT_ULT_COMPRA'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit48: TDBEdit
              Left = 76
              Top = 133
              Width = 121
              Height = 22
              TabStop = False
              Color = 14145495
              DataField = 'PRD_NF_ULT_COMPRA'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit49: TDBEdit
              Left = 769
              Top = 133
              Width = 91
              Height = 22
              TabStop = False
              Color = 14145495
              DataField = 'PRD_VL_ULT_COMPRA'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 7
            end
            object DBGrid1: TDBGrid
              Left = 1
              Top = 1
              Width = 865
              Height = 106
              Align = alTop
              Color = 16776176
              Ctl3D = True
              DataSource = DsQFornec
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 8
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'FOR_CODIGO'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FOR_RAZAO'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Fornecedor'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Width = 328
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FOR_FONE'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Fone'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Width = 88
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FOR_CONTATO'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Contato'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Width = 106
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FOR_FONCONT'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Fone Contato'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Width = 89
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FOR_EMAIL'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Email Empresa'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = []
                  Width = 225
                  Visible = True
                end>
            end
          end
        end
        object TbS_FatorConv: TTabSheet
          Caption = 'Fator de Convers'#227'o'
          object Label17: TLabel
            Left = 5
            Top = 8
            Width = 683
            Height = 14
            Caption = 
              'Marque para converter pre'#231'os ou quantidades de produtos com unid' +
              'ades ou densidade diferentes  ( Ex.: Kg x Lt , Mil x Und, densid' +
              'ae 1,32...)'
          end
          object utilizar: TDBCheckBox
            Left = 8
            Top = 35
            Width = 351
            Height = 17
            Caption = 'Utilizar fator de convers'#227'o Na compra ou Produ'#231#227'o'
            Ctl3D = True
            DataField = 'PRD_UTILCONV'
            DataSource = DsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
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
            Left = 0
            Top = 56
            Width = 867
            Height = 103
            Align = alBottom
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
              Left = 50
              Top = 20
              Width = 80
              Height = 14
              Caption = 'Und. de Compra:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 206
              Top = 14
              Width = 174
              Height = 14
              Caption = 'Conv.Pre'#231'o/Und Compra x Estoque :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 1
              Top = 64
              Width = 131
              Height = 14
              Caption = 'Und. de Produ'#231#227'o/Estoque:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label74: TLabel
              Left = 475
              Top = 13
              Width = 180
              Height = 14
              Caption = 'Conv.Qtde Produ'#231#227'o/Peso-densidade'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 133
              Top = 17
              Width = 38
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PRD_UNDCOMP'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 383
              Top = 9
              Width = 85
              Height = 22
              DataField = 'PRD_FATORC'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 13
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit3: TDBEdit
              Left = 133
              Top = 61
              Width = 38
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PRD_UND'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object GroupBox6: TGroupBox
              Left = 176
              Top = 0
              Width = 2
              Height = 127
              Caption = 'GroupBox5'
              TabOrder = 3
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 189
              Top = 36
              Width = 279
              Height = 62
              Caption = 'Fator Compra'
              DataField = 'PRD_DIVMULT'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Items.Strings = (
                'Divisor'
                'Multiplicador')
              ParentFont = False
              TabOrder = 4
              Values.Strings = (
                'D'
                'M')
            end
            object DBEdit51: TDBEdit
              Left = 658
              Top = 9
              Width = 85
              Height = 22
              DataField = 'PRD_FATOR_PROD'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 13
              ParentFont = False
              TabOrder = 5
            end
            object DBRadioGroup2: TDBRadioGroup
              Left = 472
              Top = 36
              Width = 273
              Height = 62
              Caption = 'Fator Produ'#231#227'o'
              DataField = 'PRD_DIV_MULT_PROD'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Items.Strings = (
                'Divisor'
                'Multiplicador')
              ParentFont = False
              TabOrder = 6
              Values.Strings = (
                'D'
                'M')
            end
          end
        end
        object TbS_Variacoes: TTabSheet
          Caption = 'Varia'#231#227'o'
          object Label28: TLabel
            Left = 22
            Top = 47
            Width = 30
            Height = 14
            Caption = 'Nome:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 21
            Top = 111
            Width = 30
            Height = 14
            Caption = 'Nome:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 26
            Top = 70
            Width = 26
            Height = 14
            Caption = 'Qtde:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 26
            Top = 134
            Width = 26
            Height = 14
            Caption = 'Qtde:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 62
            Top = 28
            Width = 64
            Height = 14
            Caption = 'VARIA'#199#195'O 1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 197
            Top = 28
            Width = 64
            Height = 14
            Caption = 'VARIA'#199#195'O 2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 334
            Top = 28
            Width = 64
            Height = 14
            Caption = 'VARIA'#199#195'O 3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 469
            Top = 28
            Width = 64
            Height = 14
            Caption = 'VARIA'#199#195'O 4'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 62
            Top = 93
            Width = 64
            Height = 14
            Caption = 'VARIA'#199#195'O 5'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 197
            Top = 93
            Width = 64
            Height = 14
            Caption = 'VARIA'#199#195'O 6'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 334
            Top = 93
            Width = 64
            Height = 14
            Caption = 'VARIA'#199#195'O 7'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 469
            Top = 93
            Width = 64
            Height = 14
            Caption = 'VARIA'#199#195'O 8'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 68
            Top = 6
            Width = 496
            Height = 14
            Caption = 
              'Exclusivamente para Produtos acabados , quando tenho mais de um ' +
              'modelo ou tipo do mesmo produto.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 3
            Top = 5
            Width = 55
            Height = 14
            Caption = 'Varia'#231#227'o ='
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DbeVar1: TDBEdit
            Left = 53
            Top = 43
            Width = 92
            Height = 22
            Ctl3D = True
            DataField = 'PRD_DCVAR1'
            DataSource = DsProdutos
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
          end
          object DbeVar4: TDBEdit
            Left = 461
            Top = 41
            Width = 92
            Height = 22
            Ctl3D = True
            DataField = 'PRD_DCVAR4'
            DataSource = DsProdutos
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 3
          end
          object DbeVar5: TDBEdit
            Left = 53
            Top = 107
            Width = 92
            Height = 22
            Ctl3D = True
            DataField = 'PRD_DCVAR5'
            DataSource = DsProdutos
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 4
          end
          object DbeVar2: TDBEdit
            Left = 189
            Top = 43
            Width = 92
            Height = 22
            Ctl3D = True
            DataField = 'PRD_DCVAR2'
            DataSource = DsProdutos
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
          end
          object DbeVar3: TDBEdit
            Left = 325
            Top = 42
            Width = 92
            Height = 22
            Ctl3D = True
            DataField = 'PRD_DCVAR3'
            DataSource = DsProdutos
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
          end
          object DBEdit9: TDBEdit
            Left = 53
            Top = 67
            Width = 92
            Height = 22
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR1'
            DataSource = DsProdutos
            Enabled = False
            TabOrder = 8
          end
          object DBEdit10: TDBEdit
            Left = 190
            Top = 67
            Width = 92
            Height = 22
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR2'
            DataSource = DsProdutos
            Enabled = False
            TabOrder = 9
          end
          object DBEdit11: TDBEdit
            Left = 325
            Top = 67
            Width = 92
            Height = 22
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR3'
            DataSource = DsProdutos
            Enabled = False
            TabOrder = 10
          end
          object DBEdit12: TDBEdit
            Left = 462
            Top = 67
            Width = 92
            Height = 22
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR4'
            DataSource = DsProdutos
            Enabled = False
            TabOrder = 11
          end
          object DBEdit13: TDBEdit
            Left = 53
            Top = 131
            Width = 92
            Height = 22
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR5'
            DataSource = DsProdutos
            Enabled = False
            TabOrder = 12
          end
          object DbeVar6: TDBEdit
            Left = 189
            Top = 107
            Width = 92
            Height = 22
            Ctl3D = True
            DataField = 'PRD_DCVAR6'
            DataSource = DsProdutos
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 5
          end
          object DBEdit15: TDBEdit
            Left = 189
            Top = 131
            Width = 92
            Height = 22
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR6'
            DataSource = DsProdutos
            Enabled = False
            TabOrder = 13
          end
          object DbeVar7: TDBEdit
            Left = 325
            Top = 107
            Width = 92
            Height = 22
            Ctl3D = True
            DataField = 'PRD_DCVAR7'
            DataSource = DsProdutos
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 6
          end
          object DbeVAr8: TDBEdit
            Left = 461
            Top = 107
            Width = 92
            Height = 22
            Ctl3D = True
            DataField = 'PRD_DCVAR8'
            DataSource = DsProdutos
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 7
          end
          object DBEdit5: TDBEdit
            Left = 325
            Top = 131
            Width = 92
            Height = 22
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR7'
            DataSource = DsProdutos
            Enabled = False
            TabOrder = 14
          end
          object DBEdit6: TDBEdit
            Left = 461
            Top = 131
            Width = 92
            Height = 22
            TabStop = False
            Color = 14145495
            DataField = 'PRD_VAR8'
            DataSource = DsProdutos
            Enabled = False
            TabOrder = 15
          end
        end
        object tsPrecos: TTabSheet
          Caption = 'Tabelas'
          ImageIndex = 6
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 867
            Height = 159
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object GroupBox4: TGroupBox
              Left = 0
              Top = 0
              Width = 867
              Height = 124
              Align = alClient
              Caption = 'Tabela de Pre'#231'os'
              TabOrder = 0
              object LabTabelaVenda: TLabel
                Left = 18
                Top = 13
                Width = 80
                Height = 14
                BiDiMode = bdLeftToRight
                Caption = 'Pre'#231'o de Venda:'
                ParentBiDiMode = False
              end
              object LabTabela2: TLabel
                Left = 164
                Top = 13
                Width = 74
                Height = 14
                Caption = 'Pre'#231'o Tabela 2:'
              end
              object LabTabela3: TLabel
                Left = 310
                Top = 13
                Width = 74
                Height = 14
                Caption = 'Pre'#231'o Tabela 3:'
              end
              object lbComissao1: TLabel
                Left = 18
                Top = 83
                Width = 71
                Height = 14
                BiDiMode = bdLeftToRight
                Caption = 'Comiss'#227'o (%):'
                ParentBiDiMode = False
              end
              object lbComissao2: TLabel
                Left = 164
                Top = 83
                Width = 80
                Height = 14
                Caption = 'Comiss'#227'o 2 (%):'
              end
              object lbComissao3: TLabel
                Left = 310
                Top = 83
                Width = 80
                Height = 14
                Caption = 'Comiss'#227'o 3 (%):'
              end
              object lbVerba1: TLabel
                Left = 20
                Top = 48
                Width = 53
                Height = 14
                BiDiMode = bdLeftToRight
                Caption = 'Verba (%):'
                ParentBiDiMode = False
              end
              object lbVerba2: TLabel
                Left = 164
                Top = 48
                Width = 62
                Height = 14
                Caption = 'Verba 2 (%):'
              end
              object lbVerba3: TLabel
                Left = 310
                Top = 48
                Width = 62
                Height = 14
                Caption = 'Verba 3 (%):'
              end
              object LabTabela4: TLabel
                Left = 459
                Top = 13
                Width = 74
                Height = 14
                BiDiMode = bdLeftToRight
                Caption = 'Pre'#231'o Tabela 4:'
                ParentBiDiMode = False
              end
              object LabTabela5: TLabel
                Left = 602
                Top = 13
                Width = 74
                Height = 14
                Caption = 'Pre'#231'o Tabela 5:'
              end
              object LabTabela6: TLabel
                Left = 748
                Top = 10
                Width = 74
                Height = 14
                Caption = 'Pre'#231'o Tabela 6:'
              end
              object lbComissao4: TLabel
                Left = 459
                Top = 83
                Width = 80
                Height = 14
                BiDiMode = bdLeftToRight
                Caption = 'Comiss'#227'o 4 (%):'
                ParentBiDiMode = False
              end
              object lbComissao5: TLabel
                Left = 602
                Top = 83
                Width = 80
                Height = 14
                Caption = 'Comiss'#227'o 5 (%):'
              end
              object lbComissao6: TLabel
                Left = 748
                Top = 83
                Width = 80
                Height = 14
                Caption = 'Comiss'#227'o 6 (%):'
              end
              object lbVerba4: TLabel
                Left = 459
                Top = 48
                Width = 62
                Height = 14
                BiDiMode = bdLeftToRight
                Caption = 'Verba 4 (%):'
                ParentBiDiMode = False
              end
              object lbVerba5: TLabel
                Left = 602
                Top = 48
                Width = 62
                Height = 14
                Caption = 'Verba 5 (%):'
              end
              object lbVerba6: TLabel
                Left = 748
                Top = 48
                Width = 62
                Height = 14
                Caption = 'Verba 6 (%):'
              end
              object DBEdit20: TDBEdit
                Left = 18
                Top = 27
                Width = 100
                Height = 22
                Hint = 'Base para outras tabelas'
                DataField = 'PRD_PVENDA'
                DataSource = DsProdutos
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
              end
              object DBEdit50: TDBEdit
                Left = 164
                Top = 27
                Width = 100
                Height = 22
                DataField = 'PRD_PVENDA2'
                DataSource = DsProdutos
                TabOrder = 1
              end
              object DBEdit52: TDBEdit
                Left = 310
                Top = 27
                Width = 100
                Height = 22
                DataField = 'PRD_PVENDA3'
                DataSource = DsProdutos
                TabOrder = 2
              end
              object DBEdit38: TDBEdit
                Left = 459
                Top = 27
                Width = 100
                Height = 22
                Hint = 'Base para outras tabelas'
                DataField = 'PRD_PVENDA4'
                DataSource = DsProdutos
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
              end
              object DBEdit39: TDBEdit
                Left = 602
                Top = 27
                Width = 100
                Height = 22
                DataField = 'PRD_PVENDA5'
                DataSource = DsProdutos
                TabOrder = 4
              end
              object DBEdit40: TDBEdit
                Left = 748
                Top = 27
                Width = 100
                Height = 22
                DataField = 'PRD_PVENDA6'
                DataSource = DsProdutos
                TabOrder = 5
              end
              object DBEdit31: TDBEdit
                Left = 18
                Top = 60
                Width = 100
                Height = 22
                Hint = 'Base para outras tabelas'
                DataField = 'PRD_PERC_VENDA'
                DataSource = DsProdutos
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
              end
              object DBEdit32: TDBEdit
                Left = 164
                Top = 60
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_VENDA2'
                DataSource = DsProdutos
                TabOrder = 7
              end
              object DBEdit34: TDBEdit
                Left = 310
                Top = 60
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_VENDA3'
                DataSource = DsProdutos
                TabOrder = 8
              end
              object DBEdit35: TDBEdit
                Left = 459
                Top = 60
                Width = 100
                Height = 22
                Hint = 'Base para outras tabelas'
                DataField = 'PRD_PERC_VENDA4'
                DataSource = DsProdutos
                ParentShowHint = False
                ShowHint = True
                TabOrder = 9
              end
              object DBEdit36: TDBEdit
                Left = 602
                Top = 60
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_VENDA5'
                DataSource = DsProdutos
                TabOrder = 10
              end
              object DBEdit37: TDBEdit
                Left = 748
                Top = 60
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_VENDA6'
                DataSource = DsProdutos
                TabOrder = 11
              end
              object DBEdit41: TDBEdit
                Left = 18
                Top = 96
                Width = 100
                Height = 22
                Hint = 'Base para outras tabelas'
                DataField = 'PRD_PERC_COMISSAO'
                DataSource = DsProdutos
                ParentShowHint = False
                ShowHint = True
                TabOrder = 12
              end
              object DBEdit42: TDBEdit
                Left = 164
                Top = 96
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_COMISSAO2'
                DataSource = DsProdutos
                TabOrder = 13
              end
              object DBEdit43: TDBEdit
                Left = 310
                Top = 96
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_COMISSAO3'
                DataSource = DsProdutos
                TabOrder = 14
              end
              object DBEdit44: TDBEdit
                Left = 459
                Top = 96
                Width = 100
                Height = 22
                Hint = 'Base para outras tabelas'
                DataField = 'PRD_PERC_COMISSAO4'
                DataSource = DsProdutos
                ParentShowHint = False
                ShowHint = True
                TabOrder = 15
              end
              object DBEdit45: TDBEdit
                Left = 602
                Top = 96
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_COMISSAO5'
                DataSource = DsProdutos
                TabOrder = 16
              end
              object DBEdit46: TDBEdit
                Left = 748
                Top = 96
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_COMISSAO6'
                DataSource = DsProdutos
                TabOrder = 17
              end
            end
            object GroupBox5: TGroupBox
              Left = 0
              Top = 124
              Width = 867
              Height = 35
              Align = alBottom
              Caption = 'Hist'#243'rico da atualiza'#231#227'o das tabelas'
              TabOrder = 1
              object Label63: TLabel
                Left = 80
                Top = 14
                Width = 107
                Height = 14
                Caption = 'Usu'#225'rio que atualizou:'
              end
              object Label66: TLabel
                Left = 537
                Top = 14
                Width = 98
                Height = 14
                Caption = 'Data da atualiza'#231#227'o:'
              end
              object DBEdit56: TDBEdit
                Left = 188
                Top = 11
                Width = 30
                Height = 22
                CharCase = ecUpperCase
                Color = 14145495
                DataField = 'USU_CODIGO_ATUAL_TAB'
                DataSource = DsProdutos
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit57: TDBEdit
                Left = 222
                Top = 11
                Width = 309
                Height = 22
                CharCase = ecUpperCase
                Color = 14145495
                DataField = 'USU_LOGIN_ATUAL_TAB'
                DataSource = DsProdutos
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit58: TDBEdit
                Left = 636
                Top = 11
                Width = 100
                Height = 22
                CharCase = ecUpperCase
                Color = 14145495
                DataField = 'PRD_DATA_ATUAL_TAB'
                DataSource = DsProdutos
                ReadOnly = True
                TabOrder = 2
              end
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'C'#243'digo do Produto no Fornecedor'
          ImageIndex = 8
          object Label91: TLabel
            Left = 599
            Top = 0
            Width = 73
            Height = 14
            Caption = 'C'#243'digo Produto'
          end
          object Label92: TLabel
            Left = 599
            Top = 80
            Width = 56
            Height = 14
            Caption = 'Fornecedor'
          end
          object Label106: TLabel
            Left = 599
            Top = 40
            Width = 123
            Height = 14
            Caption = 'Descri'#231#227'o do Fornecedor'
          end
          object DBGrid4: TDBGrid
            Left = 0
            Top = 0
            Width = 593
            Height = 159
            Align = alLeft
            DataSource = dsProdutosReferencia
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PRDC_REFERENCIA'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo Produto'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FOR_RAZAO'
                Title.Alignment = taCenter
                Title.Caption = 'Fornecedor'
                Width = 321
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRDC_DESSCRICAO'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Visible = True
              end>
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 599
            Top = 96
            Width = 265
            Height = 22
            DataField = 'FOR_CODIGO'
            DataSource = dsProdutosReferencia
            KeyField = 'FOR_CODIGO'
            ListField = 'FOR_CODIGO;FOR_RAZAO'
            ListFieldIndex = 1
            ListSource = dsFornecedor
            TabOrder = 3
          end
          object DBNavigator3: TDBNavigator
            Left = 599
            Top = 128
            Width = 260
            Height = 25
            DataSource = dsProdutosReferencia
            TabOrder = 4
          end
          object dbedtPRDC_REFERENCIA: TDBEdit
            Left = 600
            Top = 14
            Width = 264
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PRDC_REFERENCIA'
            DataSource = dsProdutosReferencia
            TabOrder = 1
          end
          object dbedtPRDC_DESSCRICAO: TDBEdit
            Left = 599
            Top = 54
            Width = 264
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PRDC_DESSCRICAO'
            DataSource = dsProdutosReferencia
            TabOrder = 2
          end
        end
      end
      object pfoto: TPanel
        Left = 882
        Top = 319
        Width = 186
        Height = 169
        BevelInner = bvLowered
        BevelOuter = bvNone
        Caption = 'FOTO'
        Color = clWhite
        TabOrder = 5
        object ImgProduto: TImage
          Left = 1
          Top = 1
          Width = 184
          Height = 165
          Align = alTop
          Center = True
          Proportional = True
          Stretch = True
          ExplicitTop = 17
        end
      end
      object PageControl2: TPageControl
        Left = 3
        Top = 157
        Width = 1059
        Height = 142
        ActivePage = TabSheet10
        TabOrder = 1
        object TabSheet9: TTabSheet
          Caption = 'Organiza'#231#227'o do Produto'
          object GroupBox21: TGroupBox
            Left = 0
            Top = 0
            Width = 556
            Height = 113
            Align = alLeft
            Caption = 'Classifica'#231#227'o'
            TabOrder = 0
            object Label23: TLabel
              Left = 66
              Top = 19
              Width = 23
              Height = 14
              Caption = 'Tipo:'
            end
            object Label22: TLabel
              Left = 56
              Top = 42
              Width = 33
              Height = 14
              Caption = 'Grupo:'
            end
            object Label7: TLabel
              Left = 21
              Top = 67
              Width = 68
              Height = 14
              Caption = 'Marca / Linha:'
            end
            object Label13: TLabel
              Left = 5
              Top = 90
              Width = 84
              Height = 14
              Caption = 'C'#243'digo de Barra :'
            end
            object DBEPRD_TIPO: TDBEdit
              Left = 91
              Top = 15
              Width = 28
              Height = 22
              DataField = 'PTI_CODIGO'
              DataSource = DsProdutos
              TabOrder = 0
              OnExit = DBEPRD_TIPOExit
            end
            object CbTipo: TsgDBLookupCombo
              Left = 121
              Top = 15
              Width = 288
              Height = 22
              TabOrder = 1
              CharCase = ecUpperCase
              LookupSelect = 'PTI_CODIGO, PTI_DESCRI, PTI_SIGLA, SPED_GENCODIGO'
              LookupOrderBy = 'PTI_DESCRI'
              LookupTable = 'PRD_TIPO'
              LookupDispl = 'PTI_DESCRI'
              OnSelect = CbTipoSelect
              GridAutoSize = False
              LookupSource = qTipoProduto
              DataField = 'PTI_CODIGO'
              DataSource = DsProdutos
              LookupKeyField = 'PTI_CODIGO'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8WinTitulo = 'Tipos de Produtos'
              AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o, Sigla'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
              OnMenuNovoClick = CbTipoMenuNovoClick
              OnMenuEditaClick = CbTipoMenuNovoClick
            end
            object CbGrupo: TsgDBLookupCombo
              Left = 121
              Top = 39
              Width = 288
              Height = 22
              TabOrder = 3
              CharCase = ecUpperCase
              LookupSelect = 'PGR_CODIGO, PGR_DESCRI'
              LookupOrderBy = 'PGR_DESCRI'
              LookupTable = 'PRD_GRUPO'
              LookupDispl = 'PGR_DESCRI'
              OnSelect = CbGrupoSelect
              GridAutoSize = False
              LookupSource = qGrupo
              DataField = 'PGR_CODIGO'
              DataSource = DsProdutos
              LookupKeyField = 'PGR_CODIGO'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8WinTitulo = 'Grupos de Produtos'
              AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
              OnMenuNovoClick = CbGrupoMenuNovoClick
              OnMenuEditaClick = CbGrupoMenuNovoClick
            end
            object DBEPRD_GRUPO: TDBEdit
              Left = 91
              Top = 39
              Width = 28
              Height = 22
              DataField = 'PGR_CODIGO'
              DataSource = DsProdutos
              TabOrder = 2
              OnExit = DBEPRD_GRUPOExit
            end
            object DBEPRD_SEGMENTO: TDBEdit
              Left = 91
              Top = 63
              Width = 28
              Height = 22
              DataField = 'LIN_CODIGO'
              DataSource = DsProdutos
              TabOrder = 4
              OnExit = DBEPRD_SEGMENTOExit
            end
            object CbSegm: TsgDBLookupCombo
              Left = 121
              Top = 63
              Width = 288
              Height = 22
              TabOrder = 5
              CharCase = ecUpperCase
              LookupSelect = 'lin_codigo,lin_descri'
              LookupOrderBy = 'lin_descri'
              LookupTable = 'PRD_LINHA'
              LookupDispl = 'LIN_DESCRI'
              GridAutoSize = False
              LookupSource = qLinha
              DataField = 'LIN_CODIGO'
              DataSource = DsProdutos
              LookupKeyField = 'lin_codigo'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8WinTitulo = 'Marcas/Linhas de Produtos'
              AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
              OnMenuNovoClick = CbSegmMenuNovoClick
              OnMenuEditaClick = CbSegmMenuNovoClick
            end
            object DBEPRD_CODBAR: TDBEdit
              Left = 91
              Top = 87
              Width = 342
              Height = 22
              DataField = 'PRD_CODBARRA'
              DataSource = DsProdutos
              MaxLength = 13
              TabOrder = 6
              OnEnter = DBEPRD_CODBAREnter
              OnExit = DBEPRD_CODBARExit
              OnKeyPress = DBEPRD_CODBARKeyPress
            end
            object edSigla: TDBEdit
              Left = 436
              Top = 15
              Width = 32
              Height = 22
              TabStop = False
              Color = 14145495
              DataField = 'pti_SIGLA'
              DataSource = dsTipoProduto
              ReadOnly = True
              TabOrder = 7
            end
            object DBCheckBox4: TDBCheckBox
              Left = 439
              Top = 92
              Width = 97
              Height = 17
              Hint = 'C'#243'digo de barras vai no XML como EAN'
              Caption = 'Vai no XML'
              DataField = 'PRD_VAIXML'
              DataSource = DsProdutos
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object GroupBox22: TGroupBox
            Left = 556
            Top = 0
            Width = 495
            Height = 113
            Align = alClient
            TabOrder = 1
            object Label30: TLabel
              Left = 37
              Top = 19
              Width = 64
              Height = 14
              Caption = 'Peso Liquido:'
            end
            object Label25: TLabel
              Left = 46
              Top = 43
              Width = 59
              Height = 14
              Caption = 'Peso Bruto: '
            end
            object Label5: TLabel
              Left = 47
              Top = 67
              Width = 57
              Height = 14
              Caption = 'Embalagem:'
            end
            object Label9: TLabel
              Left = 59
              Top = 92
              Width = 44
              Height = 14
              Caption = 'Garantia:'
            end
            object DbePrd_PesoLiq: TDBEdit
              Left = 107
              Top = 16
              Width = 100
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PRD_PESOLIQ'
              DataSource = DsProdutos
              MaxLength = 7
              TabOrder = 0
              OnExit = DbePrd_PesoLiqExit
            end
            object DbePrd_PesoKg: TDBEdit
              Left = 107
              Top = 40
              Width = 100
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PRD_PESOKg'
              DataSource = DsProdutos
              MaxLength = 7
              TabOrder = 1
            end
            object DbePrd_embala: TDBEdit
              Left = 106
              Top = 64
              Width = 100
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PRD_EMBALA'
              DataSource = DsProdutos
              TabOrder = 2
            end
            object DbePrd_Garantia: TDBEdit
              Left = 106
              Top = 88
              Width = 100
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PRD_GARANTIA'
              DataSource = DsProdutos
              TabOrder = 3
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Fiscal'
          ImageIndex = 1
          object Label93: TLabel
            Left = 11
            Top = 5
            Width = 109
            Height = 14
            Caption = 'Origem da Mercadoria:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 22
            Top = 28
            Width = 98
            Height = 14
            Alignment = taRightJustify
            Caption = 'Classif.Fiscal / NCM:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton6: TSpeedButton
            Left = 314
            Top = 23
            Width = 22
            Height = 21
            Hint = 'Cadastro de Classifica'#231#227'o Fiscal'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
              FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
              00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
              F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
              00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
              F033777777777337F73309999990FFF0033377777777FFF77333099999000000
              3333777777777777333333399033333333333337773333333333333903333333
              3333333773333333333333303333333333333337333333333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton5Click
          end
          object Label38: TLabel
            Left = 349
            Top = 27
            Width = 76
            Height = 14
            Caption = 'Subs.Tribut'#225'ria:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 2
            Top = 50
            Width = 120
            Height = 14
            Caption = 'Situa'#231#227'o Tribut'#225'ria( ST ):'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label69: TLabel
            Left = 92
            Top = 74
            Width = 28
            Height = 14
            Caption = 'CEST:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label490: TLabel
            Left = 39
            Top = 95
            Width = 81
            Height = 14
            Alignment = taRightJustify
            Caption = 'CST PIS/COFINS:'
          end
          object Label33: TLabel
            Left = 699
            Top = 98
            Width = 313
            Height = 14
            Caption = 
              'ICMS (somente se aliq.exclusiva do produto diferir da aliq.da UF' +
              '):'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label130: TLabel
            Left = 376
            Top = 72
            Width = 35
            Height = 14
            Caption = 'cBenef'
          end
          object Label140: TLabel
            Left = 490
            Top = 4
            Width = 75
            Height = 14
            Caption = 'UND. Tribut'#225'ria:'
          end
          object JvDBComboBox1: TJvDBComboBox
            Left = 123
            Top = 0
            Width = 355
            Height = 22
            Hint = 'oi'
            DataField = 'PRD_ORIGEM'
            DataSource = DsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              '0 '#8211' Nacional, exceto as indicadas nos c'#243'digos  3, 4, 5 e 8'
              
                '1 '#8211' Estrangeira '#8211' Importa'#231#227'o direta, exceto a indicada no c'#243'digo' +
                ' 6'
              
                '2 '#8211' Estrangeira '#8211' Adquirida no mercado interno, exceto a indicad' +
                'a no c'#243'digo 7'
              
                '3 '#8211' Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
                'ior a 40% (quarenta por cento)'
              
                '4 '#8211' Nacional, cuja produ'#231#227'o tenha sido feita em conformidade com' +
                ' os processos produtivos b'#225'sicos de que tratam o Decreto-Lei n'#186' ' +
                '288/67, e as Leis n'#186's 8.248/91, 8.387/91, 10.176/01 e 11.484/07'
              
                '5 '#8211' Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o infer' +
                'ior ou igual a 40% (quarenta por cento)'
              
                '6 - Estrangeira - Importa'#231#227'o direta, sem similar nacional, const' +
                'ante em lista da CAMEX e g'#225's natural'
              
                '7 - Estrangeira - Adquirida no mercado interno, sem similar naci' +
                'onal, constante lista CAMEX e g'#225's natural.'
              
                '8 - Nacional, mercadoria ou bom com Conte'#250'do de Importa'#231#227'o super' +
                'ior a 70% (setenta por cento).')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'MS Sans Serif'
            ListSettings.OutfilteredValueFont.Style = []
            OnChange = JvDBComboBox1Change
          end
          object GroupBox3: TGroupBox
            Left = 684
            Top = -1
            Width = 371
            Height = 96
            Caption = 'SPED'
            TabOrder = 2
            object Label88: TLabel
              Left = 30
              Top = 20
              Width = 23
              Height = 14
              Caption = 'Tipo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label90: TLabel
              Left = 14
              Top = 44
              Width = 39
              Height = 14
              Caption = 'G'#234'nero:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label89: TLabel
              Left = 13
              Top = 68
              Width = 40
              Height = 14
              Alignment = taRightJustify
              Caption = 'Servi'#231'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBtipoSPED: TDBEdit
              Left = 58
              Top = 16
              Width = 28
              Height = 22
              Hint = 
                'preencher somente se N'#195'O deseja usar a aliquota de ICMS do estad' +
                'o.'
              TabStop = False
              CharCase = ecUpperCase
              Color = 14145495
              DataField = 'SPED_TIPCODIGO'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 5
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 0
            end
            object dblkcbbSPED_TIPCODIGO: TDBLookupComboBox
              Left = 88
              Top = 16
              Width = 275
              Height = 22
              DataField = 'SPED_TIPCODIGO'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SPED_TIPCODIGO'
              ListField = 'SPED_TIPCODIGO;SPED_TIPDESCRI'
              ListFieldIndex = 1
              ListSource = dsSpedTipo
              ParentFont = False
              TabOrder = 1
            end
            object edGeneroSPED: TDBEdit
              Left = 58
              Top = 40
              Width = 28
              Height = 22
              Hint = 
                'preencher somente se N'#195'O deseja usar a aliquota de ICMS do estad' +
                'o.'
              TabStop = False
              CharCase = ecUpperCase
              Color = 14145495
              DataField = 'SPED_GENCODIGO'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 5
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 2
            end
            object dblkcbbSPED_GENCODIGO: TDBLookupComboBox
              Left = 88
              Top = 40
              Width = 275
              Height = 22
              DataField = 'SPED_GENCODIGO'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SPED_GENCODIGO'
              ListField = 'SPED_GENCODIGO;SPED_GENDESCRI'
              ListFieldIndex = 1
              ListSource = dsSpedGenero
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit62: TDBEdit
              Left = 58
              Top = 64
              Width = 28
              Height = 22
              Hint = 
                'preencher somente se N'#195'O deseja usar a aliquota de ICMS do estad' +
                'o.'
              TabStop = False
              CharCase = ecUpperCase
              Color = 14145495
              DataField = 'SRV_REGISTRO'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 5
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 4
            end
            object dblkcbbSRV_REGISTRO: TDBLookupComboBox
              Left = 88
              Top = 64
              Width = 275
              Height = 22
              DataField = 'SRV_REGISTRO'
              DataSource = DsProdutos
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SRV_REGISTRO'
              ListField = 'SRV_CODIGO;SRV_DESCRICAO'
              ListFieldIndex = 1
              ListSource = dsSpedServico
              ParentFont = False
              TabOrder = 5
            end
          end
          object DbcLkPrd_IPI: TDBLookupComboBox
            Left = 123
            Top = 23
            Width = 191
            Height = 22
            Hint = 'obrigat'#243'rio para Nota Fiscal'
            DataField = 'IPI_CODIGO'
            DataSource = DsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'IPI_CODIGO'
            ListField = 'IPI_CODIGO;IPI_ALIQ'
            ListSource = DsPrdClassIPI
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnExit = DbcLkPrd_IPIExit
          end
          object DBEdit16: TDBEdit
            Left = 528
            Top = 18
            Width = 15
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PRD_TEMSUB'
            DataSource = DsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Visible = False
          end
          object DbePrd_ICMSubs: TDBEdit
            Left = 433
            Top = 23
            Width = 39
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PRD_ICMSUBS'
            DataSource = DsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ImeName = 'DbePrd_IcmSubs'
            MaxLength = 5
            ParentFont = False
            TabOrder = 5
          end
          object DBE_SITRIBUT: TDBEdit
            Left = 484
            Top = 20
            Width = 19
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PRD_SITRIBUT'
            DataSource = DsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 153
            Top = 46
            Width = 384
            Height = 22
            DataField = 'STB_TRIBUTACAO'
            DataSource = DsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'STB_TRIBUTACAO'
            ListField = 'STB_TRIBUTACAO;STB_DESCRICAO'
            ListFieldIndex = 1
            ListSource = DSSitTributaria
            ParentFont = False
            TabOrder = 8
          end
          object DBEdit22: TDBEdit
            Left = 123
            Top = 46
            Width = 28
            Height = 22
            Hint = 
              'preencher somente se N'#195'O deseja usar a aliquota de ICMS do estad' +
              'o.'
            TabStop = False
            CharCase = ecUpperCase
            Color = 14145495
            DataField = 'STB_TRIBUTACAO'
            DataSource = DsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 7
          end
          object DBCheckBox2: TDBCheckBox
            Left = 279
            Top = 72
            Width = 97
            Height = 17
            Caption = 'CEST Revisado'
            DataField = 'CEST_REVISAR'
            DataSource = DsProdutos
            TabOrder = 10
            ValueChecked = 'N'
            ValueUnchecked = 'S'
          end
          object DBEdit24: TsgDBLookupCombo
            Left = 123
            Top = 69
            Width = 128
            Height = 22
            TabOrder = 9
            LookupSelect = 'CEST_COD, CEST_NCM, CEST_DESCRICAO'
            LookupOrderBy = 'cest_cod'
            LookupTable = 'CEST0000'
            LookupDispl = 'CEST_COD'
            GridAutoSize = False
            LookupSource = qCest
            DataField = 'CEST_COD'
            DataSource = DsProdutos
            LookupKeyField = 'cest_cod'
            ShowButton = True
            AutoF8WinTitulo = 'Tabela CEST'
            AutoF8ColumnsTitulo = 'C'#243'digo, NCM, Descri'#231#227'o'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridTop = 0
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            LimparCampoAoSair = True
            OnMenuPesquisaClick = DBEdit24MenuPesquisaClick
          end
          object DBEdit33: TDBEdit
            Left = 123
            Top = 92
            Width = 33
            Height = 22
            DataField = 'PRD_CSTPISCOFINS'
            DataSource = DsProdutos
            TabOrder = 12
          end
          object SgDbSearchCombo1: TSgDbSearchCombo
            Left = 161
            Top = 92
            Width = 354
            Height = 22
            TabOrder = 13
            LookupSelect = 'CST,DESCRICAO'
            LookupOrderBy = 'CST'
            LookupTable = 'CSTPISCOFINS'
            LookupDispl = 'DESCRICAO'
            GridAutoSize = False
            LookupSource = qCstPC
            DataField = 'PRD_CSTPISCOFINS'
            DataSource = DsProdutos
            LookupKeyField = 'CST'
            ShowButton = True
            AutoF8WinTitulo = 'CST - PIS E COFINS'
            AutoF8ColumnsTitulo = 'CST, Descri'#231#227'o'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridTop = 0
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            LimparCampoAoSair = True
          end
          object DbePrd_ICMS: TDBEdit
            Left = 1014
            Top = 95
            Width = 40
            Height = 22
            Hint = 
              'preencher somente se N'#195'O deseja usar a aliquota de ICMS do estad' +
              'o.'
            CharCase = ecUpperCase
            DataField = 'PRD_ALIQICM'
            DataSource = DsProdutos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
          end
          object DBEdit70: TDBEdit
            Left = 418
            Top = 69
            Width = 121
            Height = 22
            DataField = 'PRD_CBENEF'
            DataSource = DsProdutos
            TabOrder = 11
          end
          object cxDBComboBox1: TcxDBComboBox
            Left = 571
            Top = 0
            Hint = 'Uso especifico para notas de Exporta'#231#227'o'
            DataBinding.DataField = 'prd_und_trib'
            DataBinding.DataSource = DsProdutos
            ParentShowHint = False
            Properties.Items.Strings = (
              '1000UN'
              'DUZIA'
              'G'
              'KG'
              'LT'
              'M2'
              'M3'
              'METRO'
              'MWHORA'
              'PARES'
              'QUILAT'
              'TON'
              'UN')
            ShowHint = True
            TabOrder = 1
            Width = 107
          end
        end
        object tsServico: TTabSheet
          Caption = 'Servi'#231'os'
          ImageIndex = 6
          object Label141: TLabel
            Left = 11
            Top = 11
            Width = 68
            Height = 14
            Alignment = taRightJustify
            Caption = 'CNAE padr'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label142: TLabel
            Left = 3
            Top = 40
            Width = 77
            Height = 14
            Hint = 'Item de servi'#231'o'
            Alignment = taRightJustify
            Caption = 'Servi'#231'o padr'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object EdCnaeCodigo: TDBEdit
            Left = 86
            Top = 8
            Width = 61
            Height = 22
            DataField = 'CNAE_Codigo'
            DataSource = DsProdutos
            TabOrder = 0
          end
          object PesqCNAE: TSgDbSearchCombo
            Left = 148
            Top = 8
            Width = 278
            Height = 22
            TabOrder = 1
            CharCase = ecUpperCase
            LookupSelect = ' cnae_codigo, cnae_Descricao'
            LookupOrderBy = 'CNAE_DESCRICAO'
            LookupTable = 'cnae'
            LookupDispl = 'CNAE_DESCRICAO'
            OnSelect = PesqCNAESelect
            GridAutoSize = False
            LookupSource = qCnae
            DataField = 'CNAE_Codigo'
            DataSource = DsProdutos
            LookupKeyField = 'CNAE_CODIGO'
            FiltroTabela = 'cnae_ativo = '#39'A'#39
            ShowButton = True
            AutoF8WinTitulo = 'CNAE'
            AutoF8ColumnsTitulo = 'C'#243'digo, CNAE'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridTop = 0
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            LimparCampoAoSair = True
          end
          object edServicoCodigo: TDBEdit
            Left = 86
            Top = 37
            Width = 61
            Height = 22
            DataField = 'SRV_CODIGO'
            DataSource = DsProdutos
            TabOrder = 2
          end
          object PesqServico: TSgDbSearchCombo
            Left = 148
            Top = 37
            Width = 276
            Height = 22
            TabOrder = 3
            CharCase = ecUpperCase
            LookupSelect = 'codigoservico, srv_codigo, srv_descricao'
            LookupOrderBy = 'srv_descricao'
            LookupTable = 'SRV0000'
            LookupDispl = 'SRV_DESCRICAO'
            GridAutoSize = False
            LookupSource = qservico
            DataField = 'SRV_CODIGO'
            DataSource = DsProdutos
            LookupKeyField = 'srv_codigo'
            ShowButton = True
            AutoF8WinTitulo = 'Item de servi'#231'o'
            AutoF8ColumnsTitulo = 'C'#243'digo, item , Servi'#231'o'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridTop = 0
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            LimparCampoAoSair = True
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Estoque'
          ImageIndex = 2
          object Label18: TLabel
            Left = 5
            Top = 4
            Width = 35
            Height = 14
            Caption = 'M'#237'nimo:'
            Color = clBtnFace
            ParentColor = False
            Transparent = True
          end
          object Label24: TLabel
            Left = 165
            Top = 4
            Width = 39
            Height = 14
            Caption = 'M'#225'ximo:'
            Color = clBtnFace
            ParentColor = False
            Transparent = True
          end
          object btnCadastroEnderecamento: TSpeedButton
            Left = 752
            Top = 1
            Width = 22
            Height = 21
            Hint = 'Cadastro de Grupo'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              0400000000000001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
              FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
              00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
              F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
              00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
              F033777777777337F73309999990FFF0033377777777FFF77333099999000000
              3333777777777777333333399033333333333337773333333333333903333333
              3333333773333333333333303333333333333337333333333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = btnCadastroEnderecamentoClick
          end
          object Label68: TLabel
            Left = 374
            Top = 3
            Width = 78
            Height = 14
            Caption = 'Endere'#231'amento:'
          end
          object DBePrd_minimo: TDBEdit
            Left = 46
            Top = 0
            Width = 100
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PRD_MINIMO'
            DataSource = DsProdutos
            TabOrder = 0
          end
          object DbePrd_Maximo: TDBEdit
            Left = 210
            Top = 0
            Width = 100
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PRD_MAXIMO'
            DataSource = DsProdutos
            MaxLength = 15
            TabOrder = 1
          end
          object sgdbEnderecamento: TSgDbSearchCombo
            Left = 516
            Top = 0
            Width = 206
            Height = 22
            TabOrder = 2
            OnChange = sgdbEnderecamentoChange
            CharCase = ecUpperCase
            LookupSelect = 'PRDE_REGISTRO, PRDE_ENDERECO, EMP_CODIGO'
            LookupOrderBy = 'PRDE_ENDERECO'
            LookupTable = 'PRD0000_ENDERECAMENTO'
            LookupDispl = 'PRDE_ENDERECO'
            OnSelect = sgdbEnderecamentoSelect
            GridAutoSize = False
            LookupSource = qRegistroEndereco
            LookupKeyField = 'PRDE_REGISTRO'
            ShowButton = True
            AutoF8WinTitulo = 'Endere'#231'amento'
            AutoF8ColumnsTitulo = 'Registro, Endereco'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridTop = 0
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            LimparCampoAoSair = True
          end
          object prdeRegistro: TEdit
            Left = 458
            Top = 0
            Width = 52
            Height = 22
            TabOrder = 3
            Text = 'prdeRegistro'
          end
          object PageControl1: TPageControl
            Left = 0
            Top = 28
            Width = 1051
            Height = 85
            ActivePage = TabSheet12
            Align = alBottom
            TabOrder = 4
            object TabSheet12: TTabSheet
              Caption = 'Estoque'
              object cxGrid2: TDBGrid
                Left = 0
                Top = 0
                Width = 1043
                Height = 56
                Align = alClient
                DataSource = DsSaldos
                TabOrder = 0
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Arial'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'AMX_CODIGO_RET'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = []
                    Title.Alignment = taCenter
                    Title.Caption = 'C'#243'digo'
                    Width = 74
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AMX_DESCRI_RET'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = []
                    Title.Alignment = taCenter
                    Title.Caption = 'Nome do Almoxarifado'
                    Width = 728
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AMX_SALDO_RET'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = []
                    Title.Alignment = taCenter
                    Title.Caption = 'Saldo'
                    Width = 119
                    Visible = True
                  end>
              end
            end
            object TabSheet13: TTabSheet
              Caption = 'Endere'#231'os'
              ImageIndex = 1
              object DBGrid8: TDBGrid
                Left = 0
                Top = 0
                Width = 1043
                Height = 56
                Align = alClient
                DataSource = dsEnderecos
                TabOrder = 0
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Arial'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PRDE_REGISTRO'
                    Title.Caption = 'C'#243'digo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRDE_ENDERECO'
                    Title.Caption = 'Endere'#231'o'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMP_RAZAO'
                    Title.Caption = 'Empresa'
                    Visible = True
                  end>
              end
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'C'#243'digo Original / Cliente'
          ImageIndex = 3
          object grCodCli: TJvDBGrid
            Left = 0
            Top = 0
            Width = 1051
            Height = 113
            Align = alClient
            DataSource = DsCodigoOriginal
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            OnEditButtonClick = grCodCliEditButtonClick
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 18
            TitleRowHeight = 18
            Columns = <
              item
                Expanded = False
                FieldName = 'PRDCO_CODIGO_ORIGINAL'
                Title.Caption = 'C'#243'digo Original / Cliente'
                Width = 154
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRDCO_DESCRICAO'
                Title.Caption = 'Descri'#231#227'o Original / Cliente'
                Width = 400
                Visible = True
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'CLI_CODIGO'
                Title.Caption = 'C'#243'd.Cliente'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLI_RAZAO'
                ReadOnly = True
                Title.Caption = 'Cliente'
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PED_CODIGO'
                Title.Caption = 'Pedido'
                Width = 98
                Visible = True
              end>
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Produto Especifico'
          ImageIndex = 4
          object Label113: TLabel
            Left = 56
            Top = 55
            Width = 78
            Height = 14
            Caption = 'Tipo de Produto:'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 56
            Top = 30
            Width = 185
            Height = 17
            Caption = 'Produto Especifico'
            DataField = 'PRD_ESPECIFICO'
            DataSource = DsProdutos
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N '
          end
          object DBComboBox2: TDBComboBox
            Left = 57
            Top = 69
            Width = 145
            Height = 22
            DataField = 'ID_PRD_ESPECIFICO'
            DataSource = DsProdutos
            Items.Strings = (
              'ARMAS'
              'VE'#205'CULOS'
              'MEDICAMENTOS'
              'COMBUST'#205'VEIS')
            TabOrder = 1
          end
          object GroupBox13: TGroupBox
            Left = 224
            Top = 10
            Width = 199
            Height = 91
            Caption = 'Medicamentos'
            TabOrder = 2
            object TLabel
              Left = 10
              Top = 33
              Width = 129
              Height = 14
              Caption = 'Redu'#231'ao da Base ICMS ST'
            end
            object DBEdit30: TDBEdit
              Left = 10
              Top = 46
              Width = 121
              Height = 22
              DataField = 'PRD_ESPECIFICO_REDST'
              DataSource = DsProdutos
              TabOrder = 0
            end
          end
          object DBCheckBox5: TDBCheckBox
            Left = 451
            Top = 18
            Width = 198
            Height = 17
            Caption = 'Capacidade Obrigat'#243'ria para Venda'
            DataField = 'PRD_CAPACIDADE_OBRIGATORIA'
            DataSource = DsProdutos
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object tsTratamentoTermico: TTabSheet
          Caption = 'Tratamento t'#233'rmico'
          ImageIndex = 5
          object Label131: TLabel
            Left = 41
            Top = 37
            Width = 40
            Height = 14
            Caption = 'Material:'
          end
          object Label132: TLabel
            Left = 32
            Top = 65
            Width = 49
            Height = 14
            Caption = 'Superf'#237'cie'
          end
          object Label136: TLabel
            Left = 260
            Top = 61
            Width = 86
            Height = 14
            Caption = 'Tamanho do gr'#227'o:'
          end
          object Label135: TLabel
            Left = 279
            Top = 37
            Width = 67
            Height = 14
            Caption = 'Profundidade:'
          end
          object Label134: TLabel
            Left = 273
            Top = 11
            Width = 73
            Height = 14
            Caption = 'Dureza n'#250'cleo:'
          end
          object Label137: TLabel
            Left = 526
            Top = 11
            Width = 21
            Height = 14
            Caption = 'EHT:'
          end
          object Label133: TLabel
            Left = 512
            Top = 37
            Width = 46
            Height = 14
            Caption = 'Desenho:'
          end
          object Label138: TLabel
            Left = 16
            Top = 13
            Width = 65
            Height = 14
            Caption = 'Tipo de pe'#231'a:'
          end
          object Label139: TLabel
            Left = 509
            Top = 63
            Width = 49
            Height = 14
            Caption = 'Processo:'
          end
          object DBEdit71: TDBEdit
            Left = 88
            Top = 33
            Width = 157
            Height = 22
            DataField = 'PRD_MATERIAL_TERM'
            DataSource = DsProdutos
            TabOrder = 1
          end
          object DBEdit72: TDBEdit
            Left = 88
            Top = 62
            Width = 157
            Height = 22
            DataField = 'PRD_DUREZASUPERFICIAL_TERM'
            DataSource = DsProdutos
            TabOrder = 2
          end
          object DBEdit75: TDBEdit
            Left = 353
            Top = 59
            Width = 121
            Height = 22
            DataField = 'PRD_TAMANHOGRAO_TERM'
            DataSource = DsProdutos
            TabOrder = 5
          end
          object DBEdit74: TDBEdit
            Left = 353
            Top = 33
            Width = 121
            Height = 22
            DataField = 'PRD_PROFUNDIDADE_TERM'
            DataSource = DsProdutos
            TabOrder = 4
          end
          object DBEdit73: TDBEdit
            Left = 353
            Top = 7
            Width = 121
            Height = 22
            DataField = 'PRD_DUREZANUCLEO_TERM'
            DataSource = DsProdutos
            TabOrder = 3
          end
          object DBEdit76: TDBEdit
            Left = 568
            Top = 7
            Width = 158
            Height = 22
            DataField = 'PRD_EHT_TERM'
            DataSource = DsProdutos
            TabOrder = 6
          end
          object DBEdit77: TDBEdit
            Left = 568
            Top = 33
            Width = 158
            Height = 22
            DataField = 'PRD_DESENHO_TERM'
            DataSource = DsProdutos
            TabOrder = 7
          end
          object DBEdit78: TDBEdit
            Left = 88
            Top = 9
            Width = 157
            Height = 22
            DataField = 'PRD_TIPOPECA_TERM'
            DataSource = DsProdutos
            TabOrder = 0
          end
          object cbProcesso: TSgDbSearchCombo
            Left = 568
            Top = 59
            Width = 345
            Height = 22
            TabOrder = 8
            CharCase = ecUpperCase
            LookupSelect = 'pro_codigo , pro_descricao'
            LookupOrderBy = 'pro_descricao'
            LookupTable = 'MODL_PROCESSOS'
            LookupDispl = 'PRO_DESCRICAO'
            GridAutoSize = False
            LookupSource = qProcessos
            DataField = 'PRO_CODIGO'
            DataSource = DsProdutos
            LookupKeyField = 'pro_codigo'
            ShowButton = True
            LookupWhere = 'pro_descricao'
            AutoF8WinTitulo = 'Pesquisar processo'
            AutoF8ColumnsTitulo = 'C'#243'digo, Processo'
            LookupDbGridColumns = 'pro_codigo , pro_descricao'
            LookupDbGridColumnsTitle = 'C'#243'digo, Descri'#231#227'o'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridTop = 0
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            LimparCampoAoSair = True
          end
        end
      end
      object BtnDuplicar: TBitBtn
        Left = 261
        Top = 498
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Hint = 'Copiar produto'
        Caption = 'Cop&iar'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888888844444444488888884FFFFFFF488888884F0000
          0F480000004FFFFFFF480FFFFF4F00000F480F00004FFFFFFF480FFFFF4F00F4
          44480F00004FFFF4F4880FFFFF4FFFF448880F00F044444488880FFFF0F08888
          88880FFFF0088888888800000088888888888888888888888888}
        Margin = 5
        ParentShowHint = False
        ShowHint = True
        Spacing = 6
        TabOrder = 6
        TabStop = False
        OnClick = BtnDuplicarClick
      end
      object pnMargem: TPanel
        Left = 1074
        Top = 317
        Width = 383
        Height = 162
        BorderStyle = bsSingle
        Color = clWhite
        ParentBackground = False
        TabOrder = 7
        Visible = False
        object Label8: TLabel
          Left = 9
          Top = 67
          Width = 62
          Height = 14
          Alignment = taRightJustify
          Caption = 'PIS/CONFINS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label119: TLabel
          Left = 61
          Top = 103
          Width = 10
          Height = 14
          Alignment = taRightJustify
          Caption = 'IPI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label120: TLabel
          Left = 47
          Top = 29
          Width = 24
          Height = 14
          Alignment = taRightJustify
          Caption = 'ICMS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label121: TLabel
          Left = 232
          Top = 29
          Width = 25
          Height = 14
          Alignment = taRightJustify
          Caption = 'Frete'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label122: TLabel
          Left = 224
          Top = 67
          Width = 33
          Height = 14
          Alignment = taRightJustify
          Caption = 'Outros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label123: TLabel
          Left = 192
          Top = 101
          Width = 65
          Height = 14
          Alignment = taRightJustify
          Caption = 'Margem lucro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label124: TLabel
          Left = 8
          Top = 2
          Width = 134
          Height = 14
          Caption = 'Composi'#231#227'o da Margem'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnConfirmarMargem: TButton
          Left = 152
          Top = 128
          Width = 75
          Height = 25
          Caption = 'Ok'
          Default = True
          TabOrder = 6
          OnClick = btnConfirmarMargemClick
        end
        object DBEdit63: TDBEdit
          Left = 77
          Top = 27
          Width = 89
          Height = 22
          DataField = 'PRD_PER_ICMS'
          DataSource = DsProdutos
          TabOrder = 0
        end
        object DBEdit64: TDBEdit
          Left = 79
          Top = 99
          Width = 89
          Height = 22
          DataField = 'PRD_PER_IPI'
          DataSource = DsProdutos
          TabOrder = 2
        end
        object DBEdit65: TDBEdit
          Left = 79
          Top = 63
          Width = 89
          Height = 22
          DataField = 'PRD_PER_PISCONFINS'
          DataSource = DsProdutos
          TabOrder = 1
        end
        object DBEdit66: TDBEdit
          Left = 263
          Top = 99
          Width = 89
          Height = 22
          DataField = 'PRD_PER_LUCRO'
          DataSource = DsProdutos
          TabOrder = 5
        end
        object DBEdit67: TDBEdit
          Left = 263
          Top = 63
          Width = 89
          Height = 22
          DataField = 'PRD_PER_OUTROS'
          DataSource = DsProdutos
          TabOrder = 4
        end
        object DBEdit68: TDBEdit
          Left = 263
          Top = 27
          Width = 89
          Height = 22
          DataField = 'PRD_PER_FRETE'
          DataSource = DsProdutos
          TabOrder = 3
        end
      end
    end
    object Tbs_Detalhe: TTabSheet
      Caption = 'Produ'#231#227'o'
      ImageIndex = 2
      object GroupBox10: TGroupBox
        Left = 0
        Top = 0
        Width = 2492
        Height = 537
        Align = alClient
        Caption = 'Ordens de produ'#231#227'o geradas para o produto'
        TabOrder = 0
        object Label65: TLabel
          Left = 774
          Top = 503
          Width = 83
          Height = 14
          Caption = 'Qtde total em OP:'
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 16
          Width = 2488
          Height = 519
          Align = alClient
          Color = 16776176
          DataSource = DsEstoqueDetalhe
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
              FieldName = 'OSV_EMISSAO'
              Title.Alignment = taCenter
              Title.Caption = 'Emiss'#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OSV_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Num.O.P'
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
              FieldName = 'CLI_RAZAO'
              Title.Alignment = taCenter
              Title.Caption = 'Cliente'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 578
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_VARIACAO'
              Title.Alignment = taCenter
              Title.Caption = 'Varia'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 126
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OSV_STATUS'
              Title.Alignment = taCenter
              Title.Caption = 'Status'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_QTDE'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 70
              Visible = True
            end>
        end
      end
    end
    object TabGrade: TTabSheet
      Caption = 'Grade'
      ImageIndex = 3
      OnShow = TabGradeShow
      object Label110: TLabel
        Left = 695
        Top = 46
        Width = 2
        Height = 14
        Caption = #39
      end
      object GroupBox8: TGroupBox
        Left = 3
        Top = 119
        Width = 1048
        Height = 389
        Caption = 'Grades Cadastradas'
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 2
          Top = 16
          Width = 1044
          Height = 371
          Align = alClient
          DataSource = DsGrade
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PRG_DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Grade'
              Width = 266
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_UND'
              Title.Alignment = taCenter
              Title.Caption = 'Und'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRG_SALDO'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRG_MEDIDA_1'
              Title.Alignment = taCenter
              Title.Caption = 'Medida 1'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRG_MEDIDA_2'
              Title.Alignment = taCenter
              Title.Caption = 'Medida 2'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRG_MEDIDA_3'
              Title.Alignment = taCenter
              Title.Caption = 'Medida 3'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRG_REDUCAO_PERCENT'
              Title.Alignment = taCenter
              Title.Caption = 'Redu'#231#227'o %'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_PRECO_BASE'
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o Venda'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRG_INDICE'
              Title.Alignment = taCenter
              Title.Caption = 'Indice'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_PRECO'
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o Aplicado'
              Width = 75
              Visible = True
            end>
        end
      end
      object GroupBox26: TGroupBox
        Left = 2
        Top = 0
        Width = 1047
        Height = 119
        Caption = 'Varia'#231#227'o de tamanhos ou cores'
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        object Label11: TLabel
          Left = 16
          Top = 27
          Width = 33
          Height = 14
          Caption = 'Grade:'
        end
        object lbMedida1: TLabel
          Left = 5
          Top = 53
          Width = 46
          Height = 14
          Alignment = taRightJustify
          Caption = 'Medida 1:'
        end
        object lbMedida2: TLabel
          Left = 187
          Top = 54
          Width = 46
          Height = 14
          Alignment = taRightJustify
          Caption = 'Medida 2:'
        end
        object lbMedida3: TLabel
          Left = 371
          Top = 54
          Width = 46
          Height = 14
          Alignment = taRightJustify
          Caption = 'Medida 3:'
        end
        object Label103: TLabel
          Left = 560
          Top = 54
          Width = 59
          Height = 14
          Alignment = taRightJustify
          Caption = 'Redu'#231#227'o% :'
        end
        object Label111: TLabel
          Left = 719
          Top = 27
          Width = 132
          Height = 14
          Caption = 'UND para c'#225'lculo do Indice:'
        end
        object Label104: TLabel
          Left = 768
          Top = 83
          Width = 64
          Height = 14
          Alignment = taRightJustify
          Caption = 'Pre'#231'o Grade:'
        end
        object Label12: TLabel
          Left = 820
          Top = 55
          Width = 31
          Height = 14
          Caption = 'Indice:'
        end
        object Label10: TLabel
          Left = 554
          Top = 28
          Width = 64
          Height = 14
          Caption = 'UND Produto:'
        end
        object DBEdit59: TDBEdit
          Left = 53
          Top = 24
          Width = 483
          Height = 22
          CharCase = ecUpperCase
          DataField = 'PRG_DESCRICAO'
          DataSource = DsGrade
          TabOrder = 0
        end
        object dbedtPRG_MEDIDA_1: TDBEdit
          Left = 53
          Top = 51
          Width = 115
          Height = 22
          DataField = 'PRG_MEDIDA_1'
          DataSource = DsGrade
          TabOrder = 1
          OnChange = dbedtPRG_MEDIDA_1Change
          OnExit = dbedtPRG_MEDIDA_1Exit
        end
        object dbedtPRG_MEDIDA_2: TDBEdit
          Left = 234
          Top = 51
          Width = 115
          Height = 22
          DataField = 'PRG_MEDIDA_2'
          DataSource = DsGrade
          TabOrder = 2
          OnChange = dbedtPRG_MEDIDA_2Change
          OnExit = dbedtPRG_MEDIDA_2Exit
        end
        object dbedtPRG_MEDIDA_3: TDBEdit
          Left = 421
          Top = 51
          Width = 115
          Height = 22
          DataField = 'PRG_MEDIDA_3'
          DataSource = DsGrade
          TabOrder = 3
          OnChange = dbedtPRG_MEDIDA_3Change
          OnExit = dbedtPRG_MEDIDA_3Exit
        end
        object dbedtPRG_REDUCAO_PERCENT: TDBEdit
          Left = 620
          Top = 51
          Width = 75
          Height = 22
          DataField = 'PRG_REDUCAO_PERCENT'
          DataSource = DsGrade
          TabOrder = 4
          OnExit = dbedtPRG_REDUCAO_PERCENTExit
        end
        object DBEdit60: TDBEdit
          Left = 854
          Top = 23
          Width = 75
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'PRD_UND_GRADE_CALCULO'
          DataSource = DsProdutos
          ReadOnly = True
          TabOrder = 7
        end
        object dbedtPRG_PRECO: TDBEdit
          Left = 834
          Top = 79
          Width = 95
          Height = 22
          DataField = 'PRG_PRECO'
          DataSource = DsGrade
          TabOrder = 6
          OnExit = dbedtPRG_REDUCAO_PERCENTExit
        end
        object dbedtPRG_INDICE: TDBEdit
          Left = 854
          Top = 51
          Width = 75
          Height = 22
          DataField = 'PRG_INDICE'
          DataSource = DsGrade
          TabOrder = 5
        end
        object DBNavigator2: TDBNavigator
          Left = 8
          Top = 87
          Width = 224
          Height = 25
          Hint = 'Incluir e Excluir grades'
          DataSource = DsGrade
          VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object DBEdit21: TDBEdit
          Left = 621
          Top = 23
          Width = 75
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'PRD_UND'
          DataSource = DsProdutos
          ReadOnly = True
          TabOrder = 9
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Compras'
      ImageIndex = 4
      OnShow = TabSheet4Show
      object dbgrdCompras: TDBGrid
        Left = 0
        Top = 49
        Width = 2492
        Height = 488
        Align = alClient
        Color = 16776176
        DataSource = dsCompras
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'EMP_CODIGO'
            Title.Caption = 'Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_EMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_NOTANUMBER'
            Title.Alignment = taCenter
            Title.Caption = 'Nr. Nota'
            Visible = True
          end
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
            Width = 183
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_PRECO'
            Title.Alignment = taCenter
            Title.Caption = 'Custo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTO_ENTRADA'
            Title.Alignment = taCenter
            Title.Caption = 'Custo Entrada'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_QTDE'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DescontoAplicado'
            Title.Alignment = taCenter
            Title.Caption = 'Desconto Aplicado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_IPIALIQ'
            Title.Alignment = taCenter
            Title.Caption = 'IPI'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_VLSUBST'
            Title.Alignment = taCenter
            Title.Caption = 'Subst. Trib.'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_IT_VALFRETE'
            Title.Alignment = taCenter
            Title.Caption = 'Frete'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_IT_VLDESP_ACES'
            Title.Alignment = taCenter
            Title.Caption = 'Desp. Aces.'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_ICMSALIQ'
            Title.Alignment = taCenter
            Title.Caption = 'ICMS'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_CFOP'
            Title.Alignment = taCenter
            Title.Caption = 'CFOP'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_FONE'
            Title.Alignment = taCenter
            Title.Caption = 'Telefone'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_CONTATO'
            Title.Alignment = taCenter
            Title.Caption = 'Contato'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_ORIGEM_MERCADORIA'
            Title.Caption = 'Origem'
            Visible = True
          end>
      end
      object GroupBox12: TGroupBox
        Left = 0
        Top = 0
        Width = 2492
        Height = 49
        Align = alTop
        Caption = 'Filtro'
        TabOrder = 1
        object Label145: TLabel
          Left = 196
          Top = 18
          Width = 6
          Height = 14
          Caption = 'a'
        end
        object Label146: TLabel
          Left = 29
          Top = 18
          Width = 43
          Height = 14
          Caption = 'Emiss'#227'o:'
        end
        object btncompras: TBitBtn
          Left = 604
          Top = 14
          Width = 99
          Height = 24
          Hint = 'Pesquisar'
          Caption = '&Pesquisar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btncomprasClick
        end
        object dtInicio: TJvDateEdit
          Left = 86
          Top = 15
          Width = 100
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76050000424D760500000000000036000000280000001C0000000C0000000100
            2000000000004005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
            0000800000008000000000000000800000000000000000000000800000008080
            8000FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
            0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
            80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
            C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
            8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FF00FF00}
          ImageKind = ikCustom
          NumGlyphs = 2
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 0
          OnExit = EditDataIExit
        end
        object dtFim: TJvDateEdit
          Left = 217
          Top = 15
          Width = 100
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76050000424D760500000000000036000000280000001C0000000C0000000100
            2000000000004005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
            0000800000008000000000000000800000000000000000000000800000008080
            8000FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
            0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
            80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
            C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
            8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FF00FF00}
          ImageKind = ikCustom
          NumGlyphs = 2
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 1
          OnExit = EditDataFExit
        end
        object chkMultiempresaCompras: TCheckBox
          Left = 336
          Top = 18
          Width = 97
          Height = 17
          Caption = 'Multiempresa'
          TabOrder = 3
          OnClick = chkMultiempresaComprasClick
        end
        object cbTipoOperacao: TComboBox
          Left = 426
          Top = 15
          Width = 161
          Height = 22
          ItemIndex = 0
          TabOrder = 4
          Text = 'Compra'
          Items.Strings = (
            'Compra'
            'Outra / Importa'#231#227'o'
            'Devolu'#231#227'o')
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Industrializa'#231#227'o'
      ImageIndex = 9
      OnShow = TabSheet8Show
      object GroupBox20: TGroupBox
        Left = 0
        Top = 0
        Width = 2492
        Height = 49
        Align = alTop
        Caption = 'Filtro'
        TabOrder = 0
        object Label328: TLabel
          Left = 196
          Top = 18
          Width = 6
          Height = 14
          Caption = 'a'
        end
        object Label329: TLabel
          Left = 29
          Top = 19
          Width = 43
          Height = 14
          Caption = 'Emiss'#227'o:'
        end
        object btnIndustrializacao: TBitBtn
          Left = 457
          Top = 14
          Width = 99
          Height = 24
          Hint = 'Pesquisar'
          Caption = '&Pesquisar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnIndustrializacaoClick
        end
        object dtInicioInd: TJvDateEdit
          Left = 86
          Top = 15
          Width = 100
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76050000424D760500000000000036000000280000001C0000000C0000000100
            2000000000004005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
            0000800000008000000000000000800000000000000000000000800000008080
            8000FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
            0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
            80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
            C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
            8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FF00FF00}
          ImageKind = ikCustom
          NumGlyphs = 2
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 0
          OnExit = EditDataIExit
        end
        object dtFimInd: TJvDateEdit
          Left = 217
          Top = 15
          Width = 100
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76050000424D760500000000000036000000280000001C0000000C0000000100
            2000000000004005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
            0000800000008000000000000000800000000000000000000000800000008080
            8000FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
            0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
            80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
            C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
            8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FF00FF00}
          ImageKind = ikCustom
          NumGlyphs = 2
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 1
          OnExit = EditDataFExit
        end
        object chkMultiempresaIndustrializacao: TCheckBox
          Left = 336
          Top = 18
          Width = 97
          Height = 17
          Caption = 'Multiempresa'
          TabOrder = 3
          OnClick = chkMultiempresaComprasClick
        end
      end
      object dbgrdIndustrializacao: TDBGrid
        Left = 0
        Top = 49
        Width = 2492
        Height = 488
        Align = alClient
        Color = 16776176
        DataSource = dsIndustrializacao
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'EMP_CODIGO'
            Title.Caption = 'Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_EMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_NOTANUMBER'
            Title.Alignment = taCenter
            Title.Caption = 'Nr. Nota'
            Visible = True
          end
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
            Width = 183
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_PRECO'
            Title.Alignment = taCenter
            Title.Caption = 'Custo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTO_ENTRADA'
            Title.Alignment = taCenter
            Title.Caption = 'Custo Entrada'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_QTDE'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DescontoAplicado'
            Title.Alignment = taCenter
            Title.Caption = 'Desconto Aplicado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_IPIALIQ'
            Title.Alignment = taCenter
            Title.Caption = 'IPI'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_VLSUBST'
            Title.Alignment = taCenter
            Title.Caption = 'Subst. Trib.'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_IT_VALFRETE'
            Title.Alignment = taCenter
            Title.Caption = 'Frete'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_IT_VLDESP_ACES'
            Title.Alignment = taCenter
            Title.Caption = 'Desp. Aces.'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_ICMSALIQ'
            Title.Alignment = taCenter
            Title.Caption = 'ICMS'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_CFOP'
            Title.Alignment = taCenter
            Title.Caption = 'CFOP'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_FONE'
            Title.Alignment = taCenter
            Title.Caption = 'Telefone'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_CONTATO'
            Title.Alignment = taCenter
            Title.Caption = 'Contato'
            Visible = True
          end>
      end
    end
    object tsVendas: TTabSheet
      Caption = 'Vendas'
      ImageIndex = 5
      object GroupBox18: TGroupBox
        Left = 0
        Top = 0
        Width = 2492
        Height = 49
        Align = alTop
        Caption = 'Filtro'
        TabOrder = 0
        object Label143: TLabel
          Left = 124
          Top = 18
          Width = 6
          Height = 14
          Caption = 'a'
        end
        object BitPesquisar: TBitBtn
          Left = 745
          Top = 15
          Width = 99
          Height = 24
          Hint = 'Pesquisar'
          Caption = '&Pesquisar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BitPesquisarClick
        end
        object BtnRelatorios: TBitBtn
          Left = 847
          Top = 14
          Width = 99
          Height = 25
          Cursor = crHandPoint
          Caption = 'Rela&t'#243'rios'
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
          TabOrder = 3
          TabStop = False
          OnClick = BtnRelatoriosClick
        end
        object EditDataI: TJvDateEdit
          Left = 14
          Top = 15
          Width = 100
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76050000424D760500000000000036000000280000001C0000000C0000000100
            2000000000004005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
            0000800000008000000000000000800000000000000000000000800000008080
            8000FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
            0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
            80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
            C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
            8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FF00FF00}
          ImageKind = ikCustom
          NumGlyphs = 2
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 0
          OnExit = EditDataIExit
        end
        object EditDataF: TJvDateEdit
          Left = 145
          Top = 15
          Width = 100
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76050000424D760500000000000036000000280000001C0000000C0000000100
            2000000000004005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
            0000800000008000000000000000800000000000000000000000800000008080
            8000FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
            0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
            80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
            C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
            8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FF00FF00}
          ImageKind = ikCustom
          NumGlyphs = 2
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 1
          OnExit = EditDataFExit
        end
        object chkmultiempresa: TCheckBox
          Left = 264
          Top = 18
          Width = 97
          Height = 17
          Caption = 'Multiempresa'
          TabOrder = 4
          OnClick = chkmultiempresaClick
        end
      end
      object GroupBox19: TGroupBox
        Left = 0
        Top = 49
        Width = 2492
        Height = 488
        Align = alClient
        Caption = 'Vendas Por Pedido'
        TabOrder = 1
        object DBGrid5: TDBGrid
          Left = 0
          Top = 16
          Width = 1051
          Height = 470
          DataSource = dsVendas
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'EMP_CODIGO'
              Title.Caption = 'Emp'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_EMISSAO'
              Title.Alignment = taCenter
              Title.Caption = 'Emiss'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_NOTANUMBER'
              Title.Alignment = taCenter
              Title.Caption = 'Fatura'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_CODIGO'
              Title.Caption = 'Empresa'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_NUM_NFE'
              Title.Alignment = taCenter
              Title.Caption = 'NFe'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NTP_CFOP'
              Title.Alignment = taCenter
              Title.Caption = 'CFOP'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Pedido'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_RAZAO'
              Title.Alignment = taCenter
              Title.Caption = 'Cliente'
              Width = 188
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_QTDE'
              Title.Alignment = taCenter
              Title.Caption = 'Quantidade'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_PRECO'
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_IPI'
              Title.Alignment = taCenter
              Title.Caption = 'Valor IPI'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_ST'
              Title.Alignment = taCenter
              Title.Caption = 'Valor ST'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_COM_IMPOSTOS'
              Title.Alignment = taCenter
              Title.Caption = 'Total c/ Imposto'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRDL_LOTE'
              Title.Alignment = taCenter
              Title.Caption = 'Lote'
              Visible = True
            end>
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Arquivos'
      ImageIndex = 6
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 2492
        Height = 49
        Align = alTop
        Caption = 'Incluir Arquivo'
        TabOrder = 0
        object Label29: TLabel
          Left = 21
          Top = 22
          Width = 41
          Height = 14
          Caption = 'Arquivo:'
        end
        object Label67: TLabel
          Left = 493
          Top = 22
          Width = 52
          Height = 14
          Caption = 'Descri'#231#227'o:'
        end
        object FilenameArquivo: TFilenameEdit
          Left = 64
          Top = 19
          Width = 425
          Height = 22
          DialogTitle = 'Selecione um arquivo'
          NumGlyphs = 1
          TabOrder = 0
          Text = ''
        end
        object EdDescricaoArquivo: TEdit
          Left = 552
          Top = 19
          Width = 289
          Height = 22
          TabOrder = 1
        end
        object btnSalvarArquivo: TBitBtn
          Left = 849
          Top = 16
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = 'Grava registro'
          Caption = '&Salvar'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          TabStop = False
          OnClick = btnSalvarArquivoClick
        end
      end
      object GroupBox24: TGroupBox
        Left = 0
        Top = 49
        Width = 2492
        Height = 488
        Align = alClient
        Caption = 
          'Arquivos - Para abrir o arquivo '#233' necess'#225'rio o software correspo' +
          'ndente'
        TabOrder = 1
        object DBGrid7: TDBGrid
          Left = 2
          Top = 16
          Width = 2488
          Height = 470
          Align = alClient
          DataSource = dsArquivo
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = pmArquivo
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDblClick = DBGrid7DblClick
          OnKeyPress = DBGrid7KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'ARQ_DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 770
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ARQ_TIPO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ARQ_DATA'
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Width = 83
              Visible = True
            end>
        end
      end
    end
    object Lotes: TTabSheet
      Caption = 'Lotes'
      ImageIndex = 7
      object dbgrdLote: TDBGrid
        Left = 0
        Top = 33
        Width = 2492
        Height = 231
        Align = alClient
        Color = 16776176
        DataSource = dsLote
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdLoteDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'PRDL_LOTE'
            Title.Alignment = taCenter
            Title.Caption = 'Lote'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_DATA_FABRICACAO'
            Title.Alignment = taCenter
            Title.Caption = 'Fabrica'#231#227'o'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_DATA_VALIDADE'
            Title.Alignment = taCenter
            Title.Caption = 'Validade'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_PRECO_MAXIMO'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o M'#225'ximo'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_QTDELOTE'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo inicial'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtde_USADA'
            Title.Alignment = taCenter
            Title.Caption = 'Usado'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_SALDO'
            Title.Alignment = taCenter
            Title.Caption = 'Estoque'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMX_DESCRI'
            Title.Caption = 'Almoxarifado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_RAZAO'
            Title.Caption = 'Fornecedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_NFE'
            Title.Caption = 'Nro.NF'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_CUSTO'
            Title.Alignment = taRightJustify
            Title.Caption = 'P.Custo'
            Width = 124
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 264
        Width = 2492
        Height = 273
        Align = alBottom
        TabOrder = 1
        object Label75: TLabel
          Left = 211
          Top = 75
          Width = 16
          Height = 14
          Caption = 'NF:'
        end
        object Label97: TLabel
          Left = 9
          Top = 247
          Width = 70
          Height = 14
          Caption = 'Pre'#231'o M'#225'ximo:'
        end
        object Label96: TLabel
          Left = 35
          Top = 218
          Width = 44
          Height = 14
          Caption = 'Validade:'
        end
        object Label95: TLabel
          Left = 22
          Top = 189
          Width = 57
          Height = 14
          Caption = 'Fabrica'#231#227'o:'
        end
        object Label98: TLabel
          Left = 42
          Top = 161
          Width = 37
          Height = 14
          Caption = 'Origem:'
        end
        object Label112: TLabel
          Left = 48
          Top = 132
          Width = 31
          Height = 14
          Alignment = taRightJustify
          Caption = 'Custo:'
        end
        object Label70: TLabel
          Left = 20
          Top = 104
          Width = 59
          Height = 14
          Caption = 'Fornecedor:'
        end
        object Label99: TLabel
          Left = 32
          Top = 75
          Width = 47
          Height = 14
          Caption = 'Cadastro:'
        end
        object Label94: TLabel
          Left = 55
          Top = 47
          Width = 24
          Height = 14
          Caption = 'Lote:'
        end
        object Label327: TLabel
          Left = 405
          Top = 10
          Width = 79
          Height = 14
          Caption = 'Total do Estoque'
        end
        object Label332: TLabel
          Left = 352
          Top = 60
          Width = 64
          Height = 14
          Caption = 'Almoxarifado'
        end
        object DBNavigator4: TDBNavigator
          Left = 8
          Top = 10
          Width = 280
          Height = 25
          Hint = 'Cadastrar e dar Manuten'#231#227'o dos lotes manualmente'
          DataSource = dsLote
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object DBEdit25: TDBEdit
          Left = 233
          Top = 72
          Width = 97
          Height = 22
          CharCase = ecUpperCase
          DataField = 'PRDL_NFE'
          DataSource = dsLote
          TabOrder = 2
        end
        object dbedtPRDL_PRECO_MAXIMO: TDBEdit
          Left = 85
          Top = 243
          Width = 97
          Height = 22
          CharCase = ecUpperCase
          DataField = 'PRDL_PRECO_MAXIMO'
          DataSource = dsLote
          TabOrder = 8
        end
        object dbedtPRDL_DESCRICAO: TDBEdit
          Left = 85
          Top = 160
          Width = 443
          Height = 20
          CharCase = ecUpperCase
          DataField = 'PRDL_DESCRICAO'
          DataSource = dsLote
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit26: TDBEdit
          Left = 85
          Top = 129
          Width = 97
          Height = 22
          CharCase = ecUpperCase
          DataField = 'PRDL_CUSTO'
          DataSource = dsLote
          TabOrder = 4
        end
        object sgDBLookupCombo1: TsgDBLookupCombo
          Left = 85
          Top = 101
          Width = 446
          Height = 22
          TabOrder = 3
          CharCase = ecUpperCase
          LookupSelect = 'for_codigo,for_razao'
          LookupOrderBy = 'for_razao'
          LookupTable = 'for0000'
          LookupDispl = 'FOR_RAZAO'
          GridAutoSize = False
          LookupSource = qFor
          DataField = 'FOR_CODIGO'
          DataSource = dsLote
          LookupKeyField = 'for_codigo'
          ShowButton = False
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridTop = 0
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          LimparCampoAoSair = True
          OnMenuPesquisaClick = sgDBLookupCombo1MenuPesquisaClick
        end
        object dbedtPRDL_LOTE: TDBEdit
          Left = 85
          Top = 44
          Width = 97
          Height = 22
          CharCase = ecUpperCase
          DataField = 'PRDL_LOTE'
          DataSource = dsLote
          TabOrder = 0
        end
        object DBDateEdit4: TJvDBDateEdit
          Left = 85
          Top = 215
          Width = 89
          Height = 22
          DataField = 'PRDL_DATA_VALIDADE'
          DataSource = dsLote
          Glyph.Data = {
            76050000424D760500000000000036000000280000001C0000000C0000000100
            2000000000004005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
            0000800000008000000000000000800000000000000000000000800000008080
            8000FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
            0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
            80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
            C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
            8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FF00FF00}
          ImageKind = ikCustom
          NumGlyphs = 2
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 7
        end
        object DBDateEdit3: TJvDBDateEdit
          Left = 85
          Top = 186
          Width = 89
          Height = 22
          DataField = 'PRDL_DATA_FABRICACAO'
          DataSource = dsLote
          Glyph.Data = {
            76050000424D760500000000000036000000280000001C0000000C0000000100
            2000000000004005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
            0000800000008000000000000000800000000000000000000000800000008080
            8000FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
            0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
            80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
            C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
            8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FF00FF00}
          ImageKind = ikCustom
          NumGlyphs = 2
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 6
        end
        object DBDateEdit5: TJvDBDateEdit
          Left = 85
          Top = 72
          Width = 100
          Height = 22
          TabStop = False
          DataField = 'PRDL_CADASTRO'
          DataSource = dsLote
          ReadOnly = True
          Color = 14145495
          Glyph.Data = {
            76050000424D760500000000000036000000280000001C0000000C0000000100
            2000000000004005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
            0000800000008000000000000000800000000000000000000000800000008080
            8000FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
            0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
            80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
            C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
            8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FF00FF00}
          ImageKind = ikCustom
          NumGlyphs = 2
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 1
        end
        object edSaldo: TMaskEdit
          Left = 490
          Top = 6
          Width = 110
          Height = 22
          Alignment = taRightJustify
          TabOrder = 10
          Text = ''
        end
        object cbAlmoxarifadoLote: TComboBoxRw
          Left = 351
          Top = 73
          Width = 180
          Height = 22
          TabOrder = 11
          CharCase = ecUpperCase
          LookupSelect = 'amx_CODIGO,AMX_DESCRI'
          LookupOrderBy = 'AMX_DESCRI'
          LookupTable = 'ALMOX0000'
          LookupDispl = 'AMX_DESCRI'
          GridAutoSize = False
          LookupSource = CbAlmoxarifado.InternalSource
          DataField = 'AMX_CODIGO'
          DataSource = dsLote
          LookupKeyField = 'amx_CODIGO'
          ShowButton = True
          LookupTableShare = 'TABELAS'
          AutoF8WinTitulo = 'Almoxarifados'
          AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridTop = 0
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          LimparCampoAoSair = True
          Tabela = 'ALMOX0000'
          CamposCarregar = 'amx_CODIGO,AMX_DESCRI'
          CamposRetornar = 'amx_CODIGO'
          CamposOrdernar = 'AMX_DESCRI'
          ConexaoBanco = DataCadastros.SQLConnection1
          Compartilhar = 'TABELAS'
          Localizado = False
          CodigoEmpresa = 0
          ResetaCampos = False
          MultiEmpresa = False
          Localizar = False
          CarregarCombo = False
          itemindex = 0
          style = csDropDown
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 2492
        Height = 33
        Align = alTop
        TabOrder = 2
        object JvArrowButton1: TJvArrowButton
          Left = 8
          Top = 4
          Width = 105
          Height = 25
          DropDown = pExportarLote
          Caption = 'Exportar'
          FillFont.Charset = DEFAULT_CHARSET
          FillFont.Color = clWindowText
          FillFont.Height = -11
          FillFont.Name = 'Tahoma'
          FillFont.Style = []
          OnClick = JvArrowButton1Click
        end
        object Label331: TLabel
          Left = 477
          Top = 9
          Width = 64
          Height = 14
          Caption = 'Almoxarifado'
        end
        object cbSemEstoque: TCheckBox
          Left = 136
          Top = 8
          Width = 91
          Height = 17
          Caption = 'Sem Estoque'
          TabOrder = 0
          OnClick = cbSemEstoqueClick
        end
        object cbApenasComEstoque: TCheckBox
          Left = 233
          Top = 8
          Width = 128
          Height = 17
          Caption = 'Apenas Com Estoque'
          TabOrder = 1
          OnClick = cbApenasComEstoqueClick
        end
        object cbLoteVencido: TCheckBox
          Left = 367
          Top = 8
          Width = 90
          Height = 17
          Caption = 'Lote Vencido'
          TabOrder = 2
          OnClick = cbLoteVencidoClick
        end
        object cbFiltroAlmoxarifado: TComboBoxRw
          Left = 546
          Top = 5
          Width = 180
          Height = 22
          TabOrder = 3
          OnChange = cbFiltroAlmoxarifadoChange
          CharCase = ecUpperCase
          LookupSelect = 'amx_CODIGO,AMX_DESCRI'
          LookupOrderBy = 'AMX_DESCRI'
          LookupTable = 'ALMOX0000'
          LookupDispl = 'AMX_DESCRI'
          GridAutoSize = False
          LookupSource = CbAlmoxarifado.InternalSource
          LookupKeyField = 'amx_CODIGO'
          ShowButton = True
          LookupTableShare = 'TABELAS'
          AutoF8WinTitulo = 'Almoxarifados'
          AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridTop = 0
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          LimparCampoAoSair = True
          Tabela = 'ALMOX0000'
          CamposCarregar = 'amx_CODIGO,AMX_DESCRI'
          CamposRetornar = 'amx_CODIGO'
          CamposOrdernar = 'AMX_DESCRI'
          ConexaoBanco = DataCadastros.SQLConnection1
          Compartilhar = 'TABELAS'
          Localizado = False
          CodigoEmpresa = 0
          ResetaCampos = False
          MultiEmpresa = False
          Localizar = False
          CarregarCombo = False
          itemindex = 0
          style = csDropDown
        end
      end
    end
    object tsMPusado: TTabSheet
      Caption = 'Usado em'
      ImageIndex = 8
      OnEnter = tsMPusadoEnter
      object pUsadoem: TPanel
        Left = 0
        Top = 0
        Width = 2492
        Height = 41
        Align = alTop
        TabOrder = 0
        object btnMP_Expotar: TJvArrowButton
          Left = 94
          Top = 8
          Width = 97
          Height = 25
          DropDown = puExportar
          Caption = 'Exportar'
          FillFont.Charset = DEFAULT_CHARSET
          FillFont.Color = clWindowText
          FillFont.Height = -11
          FillFont.Name = 'Tahoma'
          FillFont.Style = []
          OnClick = btnMP_ExpotarClick
        end
        object Button1: TButton
          Left = 9
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          TabOrder = 0
          OnClick = Button1Click
        end
      end
      object dgMPusado: TDBGrid
        Left = 0
        Top = 41
        Width = 2492
        Height = 496
        Align = alClient
        DataSource = dsMPusado
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Caption = 'Descri'#231#227'o'
            Width = 420
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_UND'
            Title.Caption = 'Unidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FTC_CRIACAO'
            Title.Caption = 'Cria'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FTI_UC'
            Title.Caption = 'Consumo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FTI_PERDA'
            Title.Caption = 'Perda'
            Visible = True
          end>
      end
    end
  end
  object GroupBox2: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 2500
    Height = 46
    Align = alTop
    TabOrder = 1
    object DBText1: TDBText
      Left = 2
      Top = 16
      Width = 97
      Height = 28
      Align = alLeft
      DataField = 'PRD_REFER'
      DataSource = DsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 3
      ExplicitTop = 15
    end
    object DBText2: TDBText
      Left = 99
      Top = 16
      Width = 726
      Height = 28
      Align = alLeft
      DataField = 'PRD_DESCRI'
      DataSource = DsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 154
    end
    object DBNavigator1: TDBNavigator
      Left = 939
      Top = 15
      Width = 120
      Height = 25
      DataSource = DsProdutos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
    object EdtPrd_codigo: TEdit
      Left = 866
      Top = 16
      Width = 63
      Height = 24
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
      TabOrder = 1
      Text = 'EdtPrd_codigo'
    end
  end
  object GrpGrade: TGroupBox [2]
    Left = 41
    Top = 618
    Width = 784
    Height = 75
    Caption = 'Itens Secund'#225'rios '
    TabOrder = 2
    Visible = False
    object DBGridGrade: TDBGrid
      Left = 2
      Top = 16
      Width = 780
      Height = 57
      Align = alClient
      Color = 16776176
      DataSource = DsItensGrade
      FixedColor = 12681984
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER_ITENS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 301
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PTI_SIGLA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = '*'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 21
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTI_UC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'UC'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_UND'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'UND'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTI_MODE1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'V1'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTI_MODE2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'V2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTI_MODE3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'V3'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTI_MODE4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'V4'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTI_MODE5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'V5'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTI_MODE6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'V6'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTI_MODE7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'V7'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 19
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTI_MODE8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'V8'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 19
          Visible = True
        end>
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 1968
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 2040
    Top = 8
  end
  inherited DBConn: TSQLConnection
    Left = 104
    Top = 9
  end
  inherited qAux: TSQLQuery
    Left = 314
    Top = 5
  end
  inherited qAux2: TSQLQuery
    Left = 354
    Top = 4
  end
  object DsQFornec: TDataSource [8]
    DataSet = CdsFornecedorAux
    Left = 1067
    Top = 619
  end
  object CdsFornecedorAux: TSqlClientDataSet [9]
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'T1.FOR_CODIGO,'#13#10'T1.FOR_RAZAO,'#13#10'T1.FOR_CONTATO,'#13#10'T1.FOR_F' +
      'ONCONT,'#13#10'T1.FOR_FONE,'#13#10'T1.FOR_EMAIL,'#13#10'T1.FOR_PRAZOVENDAS'#13#10'FROM F' +
      'OR0000 T1'#13#10'WHERE T1.FOR_CODIGO in (select t2.for_codigo from PRD' +
      '0000_CODIGO t2 where t2.prd_codigo = '#39'0001'#39')'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.FOR_CODIGO,'#13#10'T1.FOR_RAZAO,'#13#10'T1.FOR_CONTATO,'#13#10'T1.FOR_F' +
      'ONCONT,'#13#10'T1.FOR_FONE,'#13#10'T1.FOR_EMAIL,'#13#10'T1.FOR_PRAZOVENDAS'#13#10'FROM F' +
      'OR0000 T1'#13#10'WHERE T1.FOR_CODIGO in (select t2.for_codigo from PRD' +
      '0000_CODIGO t2 where t2.prd_codigo = '#39'0001'#39')'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1061
    Top = 563
    object CdsFornecedorAuxFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object SqlCdsSegm: TSqlClientDataSet [10]
    Aggregates = <>
    DataSet.CommandText = 'select * from PRD_LINHA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD_LINHA'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 2176
    Top = 283
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
  object SqlCdsfor: TSqlClientDataSet [11]
    Aggregates = <>
    DataSet.CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 2176
    Top = 452
    object SqlCdsforFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object SqlCdsforFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
  end
  object SqlCdsProduto: TSqlClientDataSet [12]
    Aggregates = <>
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
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 2072
    Top = 280
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
    object SqlCdsProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object CdsItensFicha: TClientDataSet [13]
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'DspItensFicha'
    AfterInsert = CdsItensFichaAfterInsert
    AfterScroll = CdsItensFichaAfterScroll
    Left = 1787
    Top = 177
    object CdsItensFichaFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsItensFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItensFichaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItensFichaPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItensFichaFTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItensFichaFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,#####0.00000'
      Precision = 15
    end
    object CdsItensFichaFTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,#####0.00000'
      EditFormat = '#,#####0.00000'
      Precision = 15
    end
    object CdsItensFichaFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItensFichaFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItensFichaFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItensFichaFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItensFichaFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItensFichaFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItensFichaFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsItensFichaFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsItensFichaFTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,####0.0000'
      Precision = 15
    end
    object CdsItensFichaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsItensFichaFTI_NIVEL: TIntegerField
      FieldName = 'FTI_NIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItensFichaFTI_SEQUENCIA: TIntegerField
      FieldName = 'FTI_SEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItensFichaFTI_REFER_PAI: TStringField
      FieldName = 'FTI_REFER_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsItensFichaFTI_TIPO_PI: TStringField
      FieldName = 'FTI_TIPO_PI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItensFichaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object CdsItensFichaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = []
      Size = 3
    end
    object CdsItensFichaPRD_GRADE: TStringField
      FieldName = 'PRD_GRADE'
      ProviderFlags = []
      Size = 1
    end
    object CdsItensFichaPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object CdsItensFichaPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      ProviderFlags = []
      DisplayFormat = '###,###,####0.0000'
      Precision = 15
    end
    object CdsItensFichaPRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object CdsItensFichaGrade_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'Grade_CC'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object CdsItensFichaTOTALITEM: TFMTBCDField
      FieldName = 'TOTALITEM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,####0.0000'
      Precision = 18
      Size = 6
    end
    object CdsItensFichaOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItensFichaope_descricao: TStringField
      FieldName = 'ope_descricao'
      ProviderFlags = []
      Size = 60
    end
    object CdsItensFichaprd_pvenda: TFMTBCDField
      FieldName = 'prd_pvenda'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object CdsItensFichaFTI_PERDA: TFMTBCDField
      FieldName = 'FTI_PERDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###,##0.00 %'
      Precision = 15
    end
    object CdsItensFichaAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsItensFichaamx_Descri: TStringField
      FieldName = 'amx_Descri'
      ProviderFlags = []
      Size = 60
    end
    object CdsItensFichaFTI_PERCENTUAL: TFMTBCDField
      FieldName = 'FTI_PERCENTUAL'
      DisplayFormat = '##0.000'
      EditFormat = '##0.000'
    end
  end
  object DsItensFicha: TDataSource [14]
    DataSet = CdsItensFicha
    Left = 1785
    Top = 221
  end
  object SqlCdsMaterial: TSqlClientDataSet [15]
    Aggregates = <>
    DataSet.CommandText = 'select '#13#10'P2.PRD_REFER, '#13#10'P2.PRD_DESCRI '#13#10'from PRD0000 P2'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select '#13#10'P2.PRD_REFER, '#13#10'P2.PRD_DESCRI '#13#10'from PRD0000 P2'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 2176
    Top = 398
    object SqlCdsMaterialPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object SqlCdsMaterialPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object SqlRelProdutos: TSqlClientDataSet [16]
    Aggregates = <>
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
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1740
    Top = 571
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
    object SqlRelProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlRelProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlRelProdutosFTC_ETAPAS: TBlobField
      FieldName = 'FTC_ETAPAS'
      Size = 2000
    end
  end
  object DsRelProduto: TDataSource [17]
    DataSet = SqlRelProdutos
    Left = 1746
    Top = 619
  end
  object SqlItensGrade: TSqlClientDataSet [18]
    Aggregates = <>
    DataSet.CommandText = 
      'select'#13#10'F2.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_GRADE,'#13#10'P1.PRD_UND,'#13#10'P2.PT' +
      'I_SIGLA,'#13#10'P1.PRD_PCUSTO'#13#10'from ftc_it01 F2'#13#10'left join prd0000 P1 ' +
      'on f2.prd_refer_itens = p1.prd_refer'#13#10'left join prd_tipo P2 on p' +
      '1.pti_codigo = p2.pti_codigo'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'F2.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_GRADE,'#13#10'P1.PRD_UND,'#13#10'P2.PT' +
      'I_SIGLA,'#13#10'P1.PRD_PCUSTO'#13#10'from ftc_it01 F2'#13#10'left join prd0000 P1 ' +
      'on f2.prd_refer_itens = p1.prd_refer'#13#10'left join prd_tipo P2 on p' +
      '1.pti_codigo = p2.pti_codigo'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1143
    Top = 576
    object SqlItensGradeFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      Required = True
    end
    object SqlItensGradeFTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
    end
    object SqlItensGradeFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
      Precision = 15
    end
    object SqlItensGradeFTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      Precision = 15
    end
    object SqlItensGradeFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlItensGradeFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlItensGradeFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlItensGradeFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlItensGradeFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlItensGradeFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlItensGradeFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlItensGradeFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlItensGradeFTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      Precision = 15
    end
    object SqlItensGradeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlItensGradePRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlItensGradePRD_GRADE: TStringField
      FieldName = 'PRD_GRADE'
      Size = 1
    end
    object SqlItensGradePRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlItensGradeFTI_NIVEL: TIntegerField
      FieldName = 'FTI_NIVEL'
    end
    object SqlItensGradeFTI_SEQUENCIA: TIntegerField
      FieldName = 'FTI_SEQUENCIA'
    end
    object SqlItensGradeFTI_REFER_PAI: TStringField
      FieldName = 'FTI_REFER_PAI'
      Size = 11
    end
    object SqlItensGradeFTI_TIPO_PI: TStringField
      FieldName = 'FTI_TIPO_PI'
      Size = 1
    end
    object SqlItensGradePTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlItensGradeGrade_cc: TStringField
      FieldKind = fkCalculated
      FieldName = 'Grade_cc'
      Size = 3
      Calculated = True
    end
    object SqlItensGradePRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object SqlItensGradePRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlItensGradePRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
  end
  object DsRelItens: TDataSource [19]
    DataSet = CdsRelItens
    Left = 1786
    Top = 336
  end
  object CdsRelItens: TClientDataSet [20]
    Aggregates = <>
    CommandText = 
      'Select F2.*, P1.PRD_DESCRI, P1.PRD_UND, P1.PRD_GRADE, P2.PTI_SIG' +
      'LA, case WHEN PRMT.pmt_custo_base_producao = '#39'CL'#39' THEN P1.PRD_PC' +
      'USTO WHEN PRMT.pmt_custo_base_producao = '#39'CE'#39' THEN P1.prd_custoc' +
      'omipi WHEN PRMT.pmt_custo_base_producao = '#39'CM'#39' THEN P1.prd_pmedi' +
      'o WHEN PRMT.pmt_custo_base_producao = '#39'SI'#39' THEN P1.prd_custo_cre' +
      'dito END AS PRD_PCUSTO, (case WHEN PRMT.pmt_custo_base_producao ' +
      '= '#39'CL'#39' THEN P1.PRD_PCUSTO WHEN PRMT.pmt_custo_base_producao = '#39'C' +
      'E'#39' THEN P1.prd_custocomipi WHEN PRMT.pmt_custo_base_producao = '#39 +
      'CM'#39' THEN P1.prd_pmedio WHEN PRMT.pmt_custo_base_producao = '#39'SI'#39' ' +
      'THEN P1.prd_custo_credito END  * F2.fti_uc) AS TotalItem from ft' +
      'c_it01 F2 left join prd0000 P1 on (f2.prd_refer_itens = p1.prd_r' +
      'efer and f2.emp_codigo = P1.emp_codigo ) left join PRD_TIPO P2 O' +
      'N P1.pti_codigo = P2.PTI_CODIGO left JOIN prmt0001 PRMT ON PRMT.' +
      'emp_codigo = P1.emp_codigo'
    Params = <>
    Left = 1788
    Top = 280
    object CdsRelItensFTI_ITEM: TStringField
      FieldName = 'FTI_ITEM'
      Size = 6
    end
    object CdsRelItensPRD_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsRelItensPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsRelItensPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
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
    object CdsRelItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object CdsRelItensPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
    object CdsRelItensPRD_PCUSTO: TCurrencyField
      FieldName = 'PRD_PCUSTO'
    end
    object CdsRelItensTOTALITEM: TFMTBCDField
      FieldName = 'TOTALITEM'
      Precision = 18
      Size = 6
    end
    object CdsRelItensTOTAL: TCurrencyField
      FieldName = 'TOTAL'
    end
  end
  object DsItensGrade: TDataSource [21]
    DataSet = SqlItensGrade
    Left = 1149
    Top = 624
  end
  object SqlcdsFichaTec: TSqlClientDataSet [22]
    Aggregates = <>
    DataSet.CommandText = 'SELECT PRD_REFER FROM FTC0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT PRD_REFER FROM FTC0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 2072
    Top = 505
  end
  object PopupMenu1: TPopupMenu [23]
    OnPopup = PopupMenu1Popup
    Left = 1104
    Top = 11
    object AlterarItensdaFichaTecnica1: TMenuItem
      Caption = 'Alterar este Item'
      OnClick = AlterarItensdaFichaTecnica1Click
    end
    object ExcluirItensdaFichaTcnica1: TMenuItem
      Caption = 'Excluir este Item'
      OnClick = ExcluirItensdaFichaTcnica1Click
    end
    object EditarFicha1: TMenuItem
      Caption = 'Editar Ficha'
      OnClick = EditarFicha1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object VeraFichaTcnicaDesteItem1: TMenuItem
      Caption = 'Ver a Ficha T'#233'cnica Deste Item. '
      OnClick = VeraFichaTcnicaDesteItem1Click
    end
  end
  object SqlCdsEstoqueDetalhe: TSqlClientDataSet [24]
    Aggregates = <>
    AggregatesActive = True
    DataSet.CommandText = 
      'Select V1.PED_CODIGO,V1.OSV_CODIGO,V1.PRD_REFER,V1.OSV_QTDE,V1.O' +
      'SV_QTDE1,V1.OSV_QTDE2,V1.OSV_QTDE3'#13#10',V1.OSV_QTDE4,V1.OSV_QTDE5,V' +
      '1.OSV_QTDE6,V1.OSV_QTDE7,V1.OSV_QTDE8, V1.OSV_EMISSAO,'#13#10'V1.OSV_S' +
      'TATUS,P1.PRD_DESCRI,C1.CLI_RAZAO from OSV0001 V1'#13#10'left join PRD0' +
      '000 P1 on (P1.PRD_REFER = V1.PRD_REFER)'#13#10'Left join cli0000 C1 on' +
      ' (V1.CLI_CODIGO = C1.CLI_CODIGO)'#13#10'Where V1.OSV_STATUS not in('#39'C'#39 +
      ','#39'E'#39')'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsEstoqueDetalheCalcFields
    CommandText = 
      'Select V1.PED_CODIGO,V1.OSV_CODIGO,V1.PRD_REFER,V1.OSV_QTDE,V1.O' +
      'SV_QTDE1,V1.OSV_QTDE2,V1.OSV_QTDE3'#13#10',V1.OSV_QTDE4,V1.OSV_QTDE5,V' +
      '1.OSV_QTDE6,V1.OSV_QTDE7,V1.OSV_QTDE8, V1.OSV_EMISSAO,'#13#10'V1.OSV_S' +
      'TATUS,P1.PRD_DESCRI,C1.CLI_RAZAO from OSV0001 V1'#13#10'left join PRD0' +
      '000 P1 on (P1.PRD_REFER = V1.PRD_REFER)'#13#10'Left join cli0000 C1 on' +
      ' (V1.CLI_CODIGO = C1.CLI_CODIGO)'#13#10'Where V1.OSV_STATUS not in('#39'C'#39 +
      ','#39'E'#39')'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1094
    Top = 374
    object SqlCdsEstoqueDetalheOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Required = True
      Size = 8
    end
    object SqlCdsEstoqueDetalheOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      Precision = 15
    end
    object SqlCdsEstoqueDetalheOSV_QTDE1: TFMTBCDField
      FieldName = 'OSV_QTDE1'
      Precision = 15
    end
    object SqlCdsEstoqueDetalheOSV_QTDE2: TFMTBCDField
      FieldName = 'OSV_QTDE2'
      Precision = 15
    end
    object SqlCdsEstoqueDetalheOSV_QTDE3: TFMTBCDField
      FieldName = 'OSV_QTDE3'
      Precision = 15
    end
    object SqlCdsEstoqueDetalheOSV_QTDE4: TFMTBCDField
      FieldName = 'OSV_QTDE4'
      Precision = 15
    end
    object SqlCdsEstoqueDetalheOSV_QTDE5: TFMTBCDField
      FieldName = 'OSV_QTDE5'
      Precision = 15
    end
    object SqlCdsEstoqueDetalheOSV_QTDE6: TFMTBCDField
      FieldName = 'OSV_QTDE6'
      Precision = 15
    end
    object SqlCdsEstoqueDetalheOSV_QTDE7: TFMTBCDField
      FieldName = 'OSV_QTDE7'
      Precision = 15
    end
    object SqlCdsEstoqueDetalheOSV_QTDE8: TFMTBCDField
      FieldName = 'OSV_QTDE8'
      Precision = 15
    end
    object SqlCdsEstoqueDetalheOSV_STATUS: TStringField
      FieldName = 'OSV_STATUS'
      OnGetText = SqlCdsEstoqueDetalheOSV_STATUSGetText
      Size = 1
    end
    object SqlCdsEstoqueDetalheCC_STATUS: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_STATUS'
      Calculated = True
    end
    object SqlCdsEstoqueDetalheCC_QTDE: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_QTDE'
      DisplayFormat = '#00'
      currency = False
      Calculated = True
    end
    object SqlCdsEstoqueDetalheCC_VARIACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_VARIACAO'
      Calculated = True
    end
    object SqlCdsEstoqueDetalheOSV_EMISSAO: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'OSV_EMISSAO'
    end
    object SqlCdsEstoqueDetalheCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsEstoqueDetalhePED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsEstoqueDetalhePRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlCdsEstoqueDetalhePRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
  end
  object DsEstoqueDetalhe: TDataSource [25]
    DataSet = SqlCdsEstoqueDetalhe
    Left = 1098
    Top = 432
  end
  object SqlcdsVar: TSqlClientDataSet [26]
    Aggregates = <>
    DataSet.CommandText = 
      'select '#13#10'P1.PED_CODIGO,P1.PRF_VAR1,P1.PRF_VAR2,P1.PRF_VAR3,P1.PR' +
      'F_VAR4,P1.PRF_VAR5,P1.PRF_VAR6,P1.PRF_VAR7,P1.PRF_VAR8,'#13#10'P1.PRD_' +
      'REFER,P2.PED_SITUACAO,P3.OPV_ATESTOQUE'#13#10'from PED_IT01 P1,ped0000' +
      ' p2 ,OPV0000 P3'#13#10'where P1.PED_CODIGO = P2.PED_CODIGO and P2.PED_' +
      'SITUACAO = '#39'F'#39' and P3.OPV_CODIGO = P2.OPV_CODIGO'#13#10'AND P3.OPV_ATE' +
      'STOQUE = '#39'S'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'P1.PED_CODIGO,P1.PRF_VAR1,P1.PRF_VAR2,P1.PRF_VAR3,P1.PR' +
      'F_VAR4,P1.PRF_VAR5,P1.PRF_VAR6,P1.PRF_VAR7,P1.PRF_VAR8,'#13#10'P1.PRD_' +
      'REFER,P2.PED_SITUACAO,P3.OPV_ATESTOQUE'#13#10'from PED_IT01 P1,ped0000' +
      ' p2 ,OPV0000 P3'#13#10'where P1.PED_CODIGO = P2.PED_CODIGO and P2.PED_' +
      'SITUACAO = '#39'F'#39' and P3.OPV_CODIGO = P2.OPV_CODIGO'#13#10'AND P3.OPV_ATE' +
      'STOQUE = '#39'S'#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 2064
    Top = 392
    object SqlcdsVarPRF_VAR1: TFMTBCDField
      FieldName = 'PRF_VAR1'
      Precision = 15
    end
    object SqlcdsVarPRF_VAR2: TFMTBCDField
      FieldName = 'PRF_VAR2'
      Precision = 15
    end
    object SqlcdsVarPRF_VAR3: TFMTBCDField
      FieldName = 'PRF_VAR3'
      Precision = 15
    end
    object SqlcdsVarPRF_VAR4: TFMTBCDField
      FieldName = 'PRF_VAR4'
      Precision = 15
    end
    object SqlcdsVarPRF_VAR5: TFMTBCDField
      FieldName = 'PRF_VAR5'
      Precision = 15
    end
    object SqlcdsVarPRF_VAR6: TFMTBCDField
      FieldName = 'PRF_VAR6'
      Precision = 15
    end
    object SqlcdsVarPRF_VAR7: TFMTBCDField
      FieldName = 'PRF_VAR7'
      Precision = 15
    end
    object SqlcdsVarPRF_VAR8: TFMTBCDField
      FieldName = 'PRF_VAR8'
      Precision = 15
    end
    object SqlcdsVarPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SqlcdsVarOPV_ATESTOQUE: TStringField
      FieldName = 'OPV_ATESTOQUE'
      FixedChar = True
      Size = 1
    end
    object SqlcdsVarPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlcdsVarPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DataSource1: TDataSource [27]
    DataSet = SqlProdutos
    Left = 2190
    Top = 564
  end
  object ppDBPipeline1: TppDBPipeline [28]
    DataSource = DsRelProduto
    UserName = 'DBPipeline1'
    Left = 1745
    Top = 675
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'FTC_TUP'
      FieldName = 'FTC_TUP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'FTC_CRIACAO'
      FieldName = 'FTC_CRIACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'PRD_DCVAR1'
      FieldName = 'PRD_DCVAR1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'PRD_DCVAR2'
      FieldName = 'PRD_DCVAR2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'PRD_DCVAR3'
      FieldName = 'PRD_DCVAR3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'PRD_DCVAR4'
      FieldName = 'PRD_DCVAR4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'PRD_DCVAR5'
      FieldName = 'PRD_DCVAR5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'PRD_DCVAR6'
      FieldName = 'PRD_DCVAR6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'PRD_DCVAR7'
      FieldName = 'PRD_DCVAR7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'PRD_DCVAR8'
      FieldName = 'PRD_DCVAR8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'FTC_PROC1'
      FieldName = 'FTC_PROC1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'FTC_PROC2'
      FieldName = 'FTC_PROC2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'FTC_PROC3'
      FieldName = 'FTC_PROC3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'FTC_PROC4'
      FieldName = 'FTC_PROC4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'FTC_PROC5'
      FieldName = 'FTC_PROC5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'FTC_PROC6'
      FieldName = 'FTC_PROC6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'FTC_PROC7'
      FieldName = 'FTC_PROC7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'FTC_PROC8'
      FieldName = 'FTC_PROC8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'PTI_CODIGO'
      FieldName = 'PTI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'PTI_DESCRI'
      FieldName = 'PTI_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'PGR_CODIGO'
      FieldName = 'PGR_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'PGR_DESCRI'
      FieldName = 'PGR_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'LIN_CODIGO'
      FieldName = 'LIN_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'LIN_DESCRI'
      FieldName = 'LIN_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'FTC_ETAPAS'
      FieldName = 'FTC_ETAPAS'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline [29]
    DataSource = DsRelItens
    UserName = 'DBPipeline2'
    Left = 1784
    Top = 392
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
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'PRD_UND'
      FieldName = 'PRD_UND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'PTI_SIGLA'
      FieldName = 'PTI_SIGLA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'FTI_UC'
      FieldName = 'FTI_UC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'FTI_MODE1'
      FieldName = 'FTI_MODE1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'FTI_MODE2'
      FieldName = 'FTI_MODE2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'FTI_MODE3'
      FieldName = 'FTI_MODE3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'FTI_MODE4'
      FieldName = 'FTI_MODE4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'FTI_MODE5'
      FieldName = 'FTI_MODE5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'FTI_MODE6'
      FieldName = 'FTI_MODE6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'FTI_MODE7'
      FieldName = 'FTI_MODE7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = 'FTI_MODE8'
      FieldName = 'FTI_MODE8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField14: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField15: TppField
      FieldAlias = 'PRD_REFER_ITENS'
      FieldName = 'PRD_REFER_ITENS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField16: TppField
      FieldAlias = 'PRD_PCUSTO'
      FieldName = 'PRD_PCUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField17: TppField
      FieldAlias = 'TOTALITEM'
      FieldName = 'TOTALITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField18: TppField
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
  end
  object ppRelFichaTec: TppReport [30]
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
    PrinterSetup.mmMarginTop = 25000
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
    LanguageID = 'Default'
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
    Left = 1786
    Top = 440
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 35454
      mmPrintPosition = 0
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        mmHeight = 5821
        mmLeft = 265
        mmTop = 11377
        mmWidth = 196056
        BandType = 0
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 5292
        mmLeft = 265
        mmTop = 21960
        mmWidth = 196056
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        mmHeight = 3440
        mmLeft = 14023
        mmTop = 22754
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
        mmHeight = 3440
        mmLeft = 59531
        mmTop = 22754
        mmWidth = 35454
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
        mmHeight = 3440
        mmLeft = 125674
        mmTop = 22754
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
        mmHeight = 3440
        mmLeft = 142343
        mmTop = 22754
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 149223
        mmTop = 22212
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 153720
        mmTop = 22212
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 170921
        mmTop = 21947
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 35190
        mmTop = 21682
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 10054
        mmTop = 21682
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
        mmTop = 22754
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape15'
        mmHeight = 5292
        mmLeft = 265
        mmTop = 16933
        mmWidth = 196056
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        mmLeft = 10585
        mmTop = 17463
        mmWidth = 5026
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 10055
        mmTop = 16933
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 122764
        mmTop = 16933
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
        mmLeft = 122767
        mmTop = 17463
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line37'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 143931
        mmTop = 17198
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'LIN_CODIGO'
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
        mmLeft = 144463
        mmTop = 17463
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText37'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line43'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 141284
        mmTop = 22213
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 148958
        mmTop = 22754
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'P. Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 154778
        mmTop = 22754
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Custo Material'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 22754
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 122767
        mmTop = 22212
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FTI_UC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,####0.0000'
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
        mmLeft = 123030
        mmTop = 529
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PRD_UND'
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
        mmHeight = 3440
        mmLeft = 142343
        mmTop = 529
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6348
        mmLeft = 8
        mmTop = 0
        mmWidth = 353
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6300
        mmLeft = 10054
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6300
        mmLeft = 122767
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6300
        mmLeft = 149223
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6300
        mmLeft = 153720
        mmTop = 0
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6300
        mmLeft = 170921
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line34'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 6278
        mmWidth = 196057
        BandType = 4
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line102'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6300
        mmLeft = 35190
        mmTop = 0
        mmWidth = 1764
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText38'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line44'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6300
        mmLeft = 141284
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText40'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PTI_SIGLA'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 149488
        mmTop = 0
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line32'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6300
        mmLeft = 196000
        mmTop = 0
        mmWidth = 1323
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText401'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PRD_PCUSTO'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,####0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 155840
        mmTop = 529
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTALITEM'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,####0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 173038
        mmTop = 529
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3528
        mmLeft = 36248
        mmTop = 177
        mmWidth = 85725
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 41804
      mmPrintPosition = 0
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 41275
        mmLeft = 192617
        mmTop = 0
        mmWidth = 3175
        BandType = 7
        LayerName = Foreground
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 41539
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
        mmHeight = 4498
        mmLeft = 2910
        mmTop = 1323
        mmWidth = 47361
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Custo Total: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3934
        mmLeft = 157163
        mmTop = 0
        mmWidth = 14817
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'TOTALITEM'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,####0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4146
        mmLeft = 173567
        mmTop = 0
        mmWidth = 20990
        BandType = 7
        LayerName = Foreground
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo2'
        Border.mmPadding = 0
        CharWrap = True
        DataField = 'FTC_ETAPAS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 33821
        mmLeft = 3440
        mmTop = 6879
        mmWidth = 188890
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object daDataModule1: TdaDataModule
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'ReportAfterAutoSearchDialogCreate'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure ReportAfterAutoSearchDialogCreate;'#13#10'begin'#13#10'end;       ' +
          '                         '#13#10
        raProgram.ComponentName = 'Report'
        raProgram.EventName = 'AfterAutoSearchDialogCreate'
        raProgram.EventID = 10
        raProgram.CaretPos = (
          32
          3)
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
  object CdsSaldos: TClientDataSet [31]
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'AMX_CODIGO_RET'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'AMX_DESCRI_RET'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'AMX_SALDO_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'CdsReceberIndex1'
        Fields = 'FAT_CODIGO'
      end>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspSaldos'
    StoreDefs = True
    Left = 1092
    Top = 185
    object CdsSaldosAMX_CODIGO_RET: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO_RET'
      Size = 4
    end
    object CdsSaldosAMX_DESCRI_RET: TStringField
      FieldName = 'AMX_DESCRI_RET'
      Size = 35
    end
    object CdsSaldosAMX_SALDO_RET: TFMTBCDField
      FieldName = 'AMX_SALDO_RET'
      DisplayFormat = '###,##0.00'
      Precision = 15
    end
  end
  object DspSaldos: TDataSetProvider [32]
    DataSet = SqlSaldos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1086
    Top = 137
  end
  object SqlSaldos: TSQLDataSet [33]
    CommandText = 'SELECT * FROM pcd_kardex_saldo('#39'001'#39','#39'00012'#39',null)'
    MaxBlobSize = -1
    Params = <>
    Left = 1088
    Top = 88
    object SqlSaldosAMX_CODIGO_RET: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO_RET'
      Size = 4
    end
    object SqlSaldosAMX_DESCRI_RET: TStringField
      FieldName = 'AMX_DESCRI_RET'
      Size = 35
    end
    object SqlSaldosAMX_SALDO_RET: TFMTBCDField
      FieldName = 'AMX_SALDO_RET'
      Precision = 15
    end
  end
  object DsSaldos: TDataSource [34]
    DataSet = CdsSaldos
    Left = 1097
    Top = 241
  end
  object DsGrade: TDataSource [35]
    DataSet = CdsGrade
    Left = 1636
    Top = 221
  end
  object CdsGrade: TClientDataSet [36]
    Aggregates = <>
    Params = <>
    ProviderName = 'DspGrade'
    BeforeInsert = CdsGradeBeforeInsert
    AfterInsert = CdsGradeAfterInsert
    AfterPost = CdsGradeAfterPost
    AfterDelete = CdsGradeAfterDelete
    OnCalcFields = CdsGradeCalcFields
    Left = 1636
    Top = 173
    object CdsGradePRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsGradeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsGradePRG_SALDO: TFMTBCDField
      FieldName = 'PRG_SALDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsGradePRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      Size = 100
    end
    object CdsGradePRG_PRECO: TFMTBCDField
      FieldName = 'PRG_PRECO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsGradePRG_MEDIDA_1: TFMTBCDField
      FieldName = 'PRG_MEDIDA_1'
      DisplayFormat = '###,##0.###'
      EditFormat = '###,##0.###'
      Precision = 20
      Size = 5
    end
    object CdsGradePRG_MEDIDA_2: TFMTBCDField
      FieldName = 'PRG_MEDIDA_2'
      DisplayFormat = '###,##0.###'
      EditFormat = '###,##0.###'
      Precision = 20
      Size = 5
    end
    object CdsGradePRG_MEDIDA_3: TFMTBCDField
      FieldName = 'PRG_MEDIDA_3'
      DisplayFormat = '###,##0.###'
      EditFormat = '###,##0.###'
      Precision = 20
      Size = 5
    end
    object CdsGradePRG_REDUCAO_PERCENT: TFMTBCDField
      FieldName = 'PRG_REDUCAO_PERCENT'
      DisplayFormat = '##0.00%'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsGradePRG_INDICE: TFMTBCDField
      FieldName = 'PRG_INDICE'
      DisplayFormat = '###,#0.000'
      EditFormat = '###,#0.000'
      Precision = 20
      Size = 5
    end
    object CdsGradeCC_PRECO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CC_PRECO'
      ProviderFlags = []
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object CdsGradeCC_UND: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_UND'
      ProviderFlags = []
      Size = 3
      Calculated = True
    end
    object CdsGradeCC_PRECO_BASE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CC_PRECO_BASE'
      ProviderFlags = []
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object CdsGradePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
  end
  object DspGrade: TDataSetProvider [37]
    DataSet = SqlGrade
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1635
    Top = 125
  end
  object SqlGrade: TSQLDataSet [38]
    CommandText = 'SELECT * FROM PRD_GRADE ORDER BY PRG_DESCRICAO'
    MaxBlobSize = -1
    Params = <>
    Left = 1635
    Top = 77
    object SqlGradePRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlGradeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlGradePRG_SALDO: TFMTBCDField
      FieldName = 'PRG_SALDO'
      Precision = 15
      Size = 4
    end
    object SqlGradePRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      Size = 100
    end
    object SqlGradePRG_PRECO: TFMTBCDField
      FieldName = 'PRG_PRECO'
      Precision = 15
      Size = 4
    end
    object SqlGradePRG_MEDIDA_1: TFMTBCDField
      FieldName = 'PRG_MEDIDA_1'
      Precision = 20
      Size = 5
    end
    object SqlGradePRG_MEDIDA_2: TFMTBCDField
      FieldName = 'PRG_MEDIDA_2'
      Precision = 20
      Size = 5
    end
    object SqlGradePRG_MEDIDA_3: TFMTBCDField
      FieldName = 'PRG_MEDIDA_3'
      Precision = 20
      Size = 5
    end
    object SqlGradePRG_REDUCAO_PERCENT: TFMTBCDField
      FieldName = 'PRG_REDUCAO_PERCENT'
      Precision = 20
      Size = 5
    end
    object SqlGradePRG_INDICE: TFMTBCDField
      FieldName = 'PRG_INDICE'
      Precision = 20
      Size = 5
    end
    object SqlGradePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
  end
  object CdsSpedTipo: TSqlClientDataSet [39]
    Aggregates = <>
    DataSet.CommandText = 'select * from SPED_TIPOITEM'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from SPED_TIPOITEM'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1233
    Top = 571
    object CdsSpedTipoSPED_TIPREGISTRO: TIntegerField
      FieldName = 'SPED_TIPREGISTRO'
      Required = True
    end
    object CdsSpedTipoSPED_TIPCODIGO: TStringField
      FieldName = 'SPED_TIPCODIGO'
      Size = 2
    end
    object CdsSpedTipoSPED_TIPDESCRI: TStringField
      FieldName = 'SPED_TIPDESCRI'
      Size = 40
    end
    object CdsSpedTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object dsSpedTipo: TDataSource [40]
    DataSet = CdsSpedTipo
    Left = 1233
    Top = 667
  end
  object CdsSpedServico: TSqlClientDataSet [41]
    Aggregates = <>
    DataSet.CommandText = 'SELECT * FROM SRV0000 where SRV_LANCAMENTO = '#39'S'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT * FROM SRV0000 where SRV_LANCAMENTO = '#39'S'#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 2185
    Top = 507
    object CdsSpedServicoSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
      Required = True
    end
    object CdsSpedServicoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsSpedServicoSRV_CODIGO: TStringField
      FieldName = 'SRV_CODIGO'
      Size = 4
    end
    object CdsSpedServicoSRV_DESCRICAO: TStringField
      FieldName = 'SRV_DESCRICAO'
      Size = 500
    end
    object CdsSpedServicoSRV_LANCAMENTO: TStringField
      FieldName = 'SRV_LANCAMENTO'
      Size = 1
    end
  end
  object CdsSpedGenero: TSqlClientDataSet [42]
    Aggregates = <>
    DataSet.CommandText = 'select * from SPED_GENERO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from SPED_GENERO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1329
    Top = 571
    object CdsSpedGeneroSPED_GENREGISTRO: TIntegerField
      FieldName = 'SPED_GENREGISTRO'
      Required = True
    end
    object CdsSpedGeneroSPED_GENCODIGO: TStringField
      FieldName = 'SPED_GENCODIGO'
      Size = 2
    end
    object CdsSpedGeneroSPED_GENDESCRI: TStringField
      FieldName = 'SPED_GENDESCRI'
      Size = 255
    end
    object CdsSpedGeneroEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object dsSpedServico: TDataSource [43]
    DataSet = CdsSpedServico
    Left = 1233
    Top = 619
  end
  object dsSpedGenero: TDataSource [44]
    DataSet = CdsSpedGenero
    Left = 1329
    Top = 619
  end
  object dsProdutosReferencia: TDataSource [45]
    DataSet = CdsProdutosReferencia
    Left = 1492
    Top = 438
  end
  object dsFornecedor: TDataSource [46]
    DataSet = CdsFornecedor
    Left = 1932
    Top = 614
  end
  object CdsFornecedor: TSqlClientDataSet [47]
    Aggregates = <>
    DataSet.CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000 order by FOR_RAZAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000 order by FOR_RAZAO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1932
    Top = 569
    object CdsFornecedorFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsFornecedorFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
  end
  object SQLProdutoCodigo: TSQLDataSet [48]
    CommandText = 
      'SELECT T1.*, T2.FOR_RAZAO FROM PRD0000_CODIGO T1 JOIN FOR0000 T2' +
      ' ON (T2.FOR_CODIGO = T1.FOR_CODIGO) ORDER BY T1.PRDC_REFERENCIA'
    MaxBlobSize = -1
    Params = <>
    Left = 1489
    Top = 283
    object SQLProdutoCodigoPRDC_REGISTRO: TIntegerField
      FieldName = 'PRDC_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQLProdutoCodigoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object SQLProdutoCodigoFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 10
    end
    object SQLProdutoCodigoFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      ProviderFlags = []
      Size = 40
    end
    object SQLProdutoCodigoPRDC_REFERENCIA: TStringField
      FieldName = 'PRDC_REFERENCIA'
      Size = 30
    end
    object SQLProdutoCodigoPRDC_DESSCRICAO: TStringField
      FieldName = 'PRDC_DESSCRICAO'
      Size = 500
    end
  end
  object DspProdutoCodigo: TDataSetProvider [49]
    DataSet = SQLProdutoCodigo
    Options = [poAllowCommandText]
    Left = 1489
    Top = 331
  end
  object CdsProdutosReferencia: TClientDataSet [50]
    Aggregates = <>
    Params = <>
    ProviderName = 'DspProdutoCodigo'
    BeforeInsert = CdsProdutosReferenciaBeforeInsert
    BeforePost = CdsProdutosReferenciaBeforePost
    AfterPost = CdsProdutosReferenciaAfterPost
    AfterDelete = CdsProdutosReferenciaAfterDelete
    Left = 1492
    Top = 387
    object CdsProdutosReferenciaPRDC_REGISTRO: TIntegerField
      FieldName = 'PRDC_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsProdutosReferenciaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object CdsProdutosReferenciaFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 10
    end
    object CdsProdutosReferenciaFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      ProviderFlags = []
      Size = 40
    end
    object CdsProdutosReferenciaPRDC_REFERENCIA: TStringField
      FieldName = 'PRDC_REFERENCIA'
      Size = 30
    end
    object CdsProdutosReferenciaPRDC_DESSCRICAO: TStringField
      FieldName = 'PRDC_DESSCRICAO'
      Size = 500
    end
  end
  object OpenDialog1: TOpenDialog [51]
    Filter = '*.jpg'
    Left = 1416
    Top = 8
  end
  object CdsCompras: TSqlClientDataSet [52]
    Aggregates = <>
    DataSet.CommandText = 
      'select'#13#10't3.enf_emissao,'#13#10't3.enf_notanumber,'#13#10't1.for_codigo,'#13#10't2.' +
      'for_razao,'#13#10't1.enf_preco,'#13#10'coalesce(t1.enf_preco,0) + coalesce(t' +
      '1.enf_vlsubst,0) + coalesce(t1.enf_it_vlipi,0) + coalesce(t1.enf' +
      '_it_valfrete,0) + coalesce(t1.enf_it_vlseguro,0) + coalesce(t1.e' +
      'nf_it_vldesp_aces,0) as custo_entrada,'#13#10't1.enf_qtde,'#13#10't1.enf_ipi' +
      'aliq,'#13#10't1.enf_vlsubst,'#13#10't1.enf_it_valfrete,'#13#10't1.enf_it_vldesp_ac' +
      'es,'#13#10't1.ENF_IT_DESCTO,'#13#10't1.enf_icmsaliq,'#13#10't1.enf_cfop,'#13#10't2.for_f' +
      'one,'#13#10't2.for_contato'#13#10'from enf_it01 t1'#13#10'join for0000 t2 on (t2.f' +
      'or_codigo = t1.for_codigo)'#13#10'join enf0001 t3 on (t3.enf_notanumbe' +
      'r = t1.enf_it_notanumber and t3.for_codigo = t1.for_codigo)'#13#10'whe' +
      're t1.prd_refer = '#39'0001'#39#13#10'order by t3.enf_entrada desc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = CdsComprasCalcFields
    CommandText = 
      'select'#13#10't3.enf_emissao,'#13#10't3.enf_notanumber,'#13#10't1.for_codigo,'#13#10't2.' +
      'for_razao,'#13#10't1.enf_preco,'#13#10'coalesce(t1.enf_preco,0) + coalesce(t' +
      '1.enf_vlsubst,0) + coalesce(t1.enf_it_vlipi,0) + coalesce(t1.enf' +
      '_it_valfrete,0) + coalesce(t1.enf_it_vlseguro,0) + coalesce(t1.e' +
      'nf_it_vldesp_aces,0) as custo_entrada,'#13#10't1.enf_qtde,'#13#10't1.enf_ipi' +
      'aliq,'#13#10't1.enf_vlsubst,'#13#10't1.enf_it_valfrete,'#13#10't1.enf_it_vldesp_ac' +
      'es,'#13#10't1.ENF_IT_DESCTO,'#13#10't1.enf_icmsaliq,'#13#10't1.enf_cfop,'#13#10't2.for_f' +
      'one,'#13#10't2.for_contato'#13#10'from enf_it01 t1'#13#10'join for0000 t2 on (t2.f' +
      'or_codigo = t1.for_codigo)'#13#10'join enf0001 t3 on (t3.enf_notanumbe' +
      'r = t1.enf_it_notanumber and t3.for_codigo = t1.for_codigo)'#13#10'whe' +
      're t1.prd_refer = '#39'0001'#39#13#10'order by t3.enf_entrada desc'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1412
    Top = 571
    object CdsComprasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsComprasENF_EMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'ENF_EMISSAO'
    end
    object CdsComprasENF_NOTANUMBER: TStringField
      FieldName = 'ENF_NOTANUMBER'
      Size = 10
    end
    object CdsComprasFOR_CODIGO: TStringField
      Alignment = taCenter
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object CdsComprasFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object CdsComprasENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      DisplayFormat = '#,###,###,##0.0000'
      Precision = 15
      Size = 5
    end
    object CdsComprasCUSTO_ENTRADA: TFMTBCDField
      FieldName = 'CUSTO_ENTRADA'
      DisplayFormat = '#,###,###,##0.0000'
      Precision = 15
      Size = 5
    end
    object CdsComprasENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      Precision = 15
      Size = 5
    end
    object CdsComprasENF_IPIALIQ: TFMTBCDField
      FieldName = 'ENF_IPIALIQ'
      DisplayFormat = '##0.00 %'
      Precision = 15
      Size = 5
    end
    object CdsComprasENF_VLSUBST: TFMTBCDField
      FieldName = 'ENF_VLSUBST'
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 15
      Size = 5
    end
    object CdsComprasENF_IT_VALFRETE: TFMTBCDField
      FieldName = 'ENF_IT_VALFRETE'
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 15
      Size = 5
    end
    object CdsComprasENF_IT_VLDESP_ACES: TFMTBCDField
      FieldName = 'ENF_IT_VLDESP_ACES'
      DisplayFormat = '###,###,###,##0.0000'
      Precision = 15
      Size = 5
    end
    object CdsComprasENF_ICMSALIQ: TFMTBCDField
      FieldName = 'ENF_ICMSALIQ'
      DisplayFormat = '##0.00 %'
      Precision = 15
      Size = 5
    end
    object CdsComprasENF_CFOP: TStringField
      Alignment = taCenter
      FieldName = 'ENF_CFOP'
      Size = 4
    end
    object CdsComprasFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      EditMask = '(999) 9999-9999;0; '
      Size = 11
    end
    object CdsComprasFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object CdsComprasENF_IT_DESCTO: TFMTBCDField
      FieldName = 'ENF_IT_DESCTO'
      Precision = 20
      Size = 5
    end
    object CdsComprasDescontoAplicado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DescontoAplicado'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
    object CdsComprasENF_ORIGEM_MERCADORIA: TIntegerField
      FieldName = 'ENF_ORIGEM_MERCADORIA'
    end
  end
  object dsCompras: TDataSource [53]
    DataSet = CdsCompras
    Left = 1412
    Top = 619
  end
  object dsLote: TDataSource [54]
    DataSet = cdsLotes
    Left = 1409
    Top = 432
  end
  object CdsVendas: TSqlClientDataSet [55]
    Aggregates = <>
    DataSet.CommandText = 
      'select  t3.NF_EMISSAO,     t3.NF_NOTANUMBER,    t3.NF_NUM_NFE,  ' +
      '  T1.NTP_CFOP,    t3.PED_CODIGO,    t3.CLI_CODIGO,    t2.CLI_RAZ' +
      'AO,    t1.NF_QTDE,    t1.NF_PRECO,    P.prdl_lote,    CAST((t1.N' +
      'F_QTDE * t1.NF_PRECO) AS NUMERIC(18,4)) as TOTAL,    CAST(CASE W' +
      'HEN T1.NF_IPIALIQ > 0 THEN (t1.NF_PRECO * (T1.NF_IPIALIQ / 100))' +
      ' ELSE 0 END AS NUMERIC(18,4)) AS VALOR_IPI,    CAST(CASE WHEN T1' +
      '.NF_VLSUBST > 0 THEN (T1.NF_VLSUBST / t1.NF_QTDE) ELSE 0 END AS ' +
      'NUMERIC(18,4)) AS VALOR_ST,    CAST(CAST((t1.NF_QTDE * t1.NF_PRE' +
      'CO) AS NUMERIC(18,4)) + CAST(CASE WHEN T1.NF_IPIALIQ > 0 THEN (t' +
      '1.NF_PRECO * (T1.NF_IPIALIQ / 100)) ELSE 0 END AS NUMERIC(18,4))' +
      ' + CAST(CASE WHEN T1.NF_VLSUBST > 0 THEN (T1.NF_VLSUBST / t1.NF_' +
      'QTDE) ELSE 0 END AS NUMERIC(18,4)) AS NUMERIC(18,4)) AS TOTAL_CO' +
      'M_IMPOSTOSfrom NF_IT01 t1 join NF0001 t3 on (t3.NF_NOTANUMBER = ' +
      't1.NF_IT_NOTANUMER) join CLI0000 t2 on (t2.CLI_CODIGO = t3.CLI_C' +
      'ODIGO)left outer join prd_lote p ON (P.prdl_registro = T1.prdl_r' +
      'egistro) ORDER BY T3.NF_EMISSAO DESC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 100
    Params = <>
    OnCalcFields = CdsComprasCalcFields
    CommandText = 
      'select  t3.NF_EMISSAO,     t3.NF_NOTANUMBER,    t3.NF_NUM_NFE,  ' +
      '  T1.NTP_CFOP,    t3.PED_CODIGO,    t3.CLI_CODIGO,    t2.CLI_RAZ' +
      'AO,    t1.NF_QTDE,    t1.NF_PRECO,    P.prdl_lote,    CAST((t1.N' +
      'F_QTDE * t1.NF_PRECO) AS NUMERIC(18,4)) as TOTAL,    CAST(CASE W' +
      'HEN T1.NF_IPIALIQ > 0 THEN (t1.NF_PRECO * (T1.NF_IPIALIQ / 100))' +
      ' ELSE 0 END AS NUMERIC(18,4)) AS VALOR_IPI,    CAST(CASE WHEN T1' +
      '.NF_VLSUBST > 0 THEN (T1.NF_VLSUBST / t1.NF_QTDE) ELSE 0 END AS ' +
      'NUMERIC(18,4)) AS VALOR_ST,    CAST(CAST((t1.NF_QTDE * t1.NF_PRE' +
      'CO) AS NUMERIC(18,4)) + CAST(CASE WHEN T1.NF_IPIALIQ > 0 THEN (t' +
      '1.NF_PRECO * (T1.NF_IPIALIQ / 100)) ELSE 0 END AS NUMERIC(18,4))' +
      ' + CAST(CASE WHEN T1.NF_VLSUBST > 0 THEN (T1.NF_VLSUBST / t1.NF_' +
      'QTDE) ELSE 0 END AS NUMERIC(18,4)) AS NUMERIC(18,4)) AS TOTAL_CO' +
      'M_IMPOSTOSfrom NF_IT01 t1 join NF0001 t3 on (t3.NF_NOTANUMBER = ' +
      't1.NF_IT_NOTANUMER) join CLI0000 t2 on (t2.CLI_CODIGO = t3.CLI_C' +
      'ODIGO)left outer join prd_lote p ON (P.prdl_registro = T1.prdl_r' +
      'egistro) ORDER BY T3.NF_EMISSAO DESC'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1476
    Top = 571
    object CdsVendasNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object CdsVendasNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Size = 6
    end
    object CdsVendasNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object CdsVendasNTP_CFOP: TIntegerField
      FieldName = 'NTP_CFOP'
    end
    object CdsVendasPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object CdsVendasCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsVendasCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object CdsVendasNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 20
      Size = 5
    end
    object CdsVendasNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      DisplayFormat = '###,###,##0.0000'
      Precision = 20
      Size = 5
    end
    object CdsVendasTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 20
      Size = 4
    end
    object CdsVendasVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 20
      Size = 4
    end
    object CdsVendasVALOR_ST: TFMTBCDField
      FieldName = 'VALOR_ST'
      DisplayFormat = '###,###,##0.00'
      Precision = 20
      Size = 4
    end
    object CdsVendasTOTAL_COM_IMPOSTOS: TFMTBCDField
      FieldName = 'TOTAL_COM_IMPOSTOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 20
      Size = 4
    end
    object CdsVendasPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Size = 30
    end
    object CdsVendasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object dsVendas: TDataSource [56]
    DataSet = CdsVendas
    Left = 1476
    Top = 620
  end
  object frxReport1: TfrxReport [57]
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41845.577940532400000000
    ReportOptions.LastChange = 41879.665335937500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 1476
    Top = 731
    Datasets = <
      item
        DataSet = frxdbdtstVendas
        DataSetName = 'frxdbdtstVendas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendas do Produto')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 56.692950000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 56.692950000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NFe')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 56.692950000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 56.692950000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pedido')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 963.780150000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total c/ Imposto')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 880.630490000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor ST')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 797.480830000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor IPI')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 714.331170000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pre'#231'o')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 56.692950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 56.692950000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 124.724490000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdtstVendas
        DataSetName = 'frxdbdtstVendas'
        RowCount = 0
        object frxdbFornecedorMateriaPRD_REFER: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'NF_EMISSAO'
          DataSet = frxdbdtstVendas
          DataSetName = 'frxdbdtstVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbdtstVendas."NF_EMISSAO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'NF_NOTANUMBER'
          DataSet = frxdbdtstVendas
          DataSetName = 'frxdbdtstVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbdtstVendas."NF_NOTANUMBER"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'NF_NUM_NFE'
          DataSet = frxdbdtstVendas
          DataSetName = 'frxdbdtstVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbdtstVendas."NF_NUM_NFE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'NTP_CFOP'
          DataSet = frxdbdtstVendas
          DataSetName = 'frxdbdtstVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbdtstVendas."NTP_CFOP"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'PED_CODIGO'
          DataSet = frxdbdtstVendas
          DataSetName = 'frxdbdtstVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbdtstVendas."PED_CODIGO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_RAZAO'
          DataSet = frxdbdtstVendas
          DataSetName = 'frxdbdtstVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbdtstVendas."CLI_RAZAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'NF_QTDE'
          DataSet = frxdbdtstVendas
          DataSetName = 'frxdbdtstVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstVendas."NF_QTDE"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NF_PRECO'
          DataSet = frxdbdtstVendas
          DataSetName = 'frxdbdtstVendas'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstVendas."NF_PRECO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 714.331170000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstVendas
          DataSetName = 'frxdbdtstVendas'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstVendas."TOTAL"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 797.480830000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstVendas
          DataSetName = 'frxdbdtstVendas'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstVendas."VALOR_IPI"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 880.630490000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstVendas
          DataSetName = 'frxdbdtstVendas'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstVendas."VALOR_ST"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 963.780150000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstVendas
          DataSetName = 'frxdbdtstVendas'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstVendas."TOTAL_COM_IMPOSTOS"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 166.299320000000000000
        Width = 1046.929810000000000000
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbdtstVendas."NF_QTDE">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 714.331170000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbdtstVendas."TOTAL">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 797.480830000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbdtstVendas."VALOR_IPI">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 880.630490000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbdtstVendas."VALOR_ST">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 963.780150000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbdtstVendas."TOTAL_COM_IMPOSTOS">,MasterData1,3)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object frxdbdtstVendas: TfrxDBDataset [58]
    UserName = 'frxdbdtstVendas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NF_EMISSAO=NF_EMISSAO'
      'NF_NOTANUMBER=NF_NOTANUMBER'
      'NF_NUM_NFE=NF_NUM_NFE'
      'NTP_CFOP=NTP_CFOP'
      'PED_CODIGO=PED_CODIGO'
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_RAZAO=CLI_RAZAO'
      'NF_QTDE=NF_QTDE'
      'NF_PRECO=NF_PRECO'
      'TOTAL=TOTAL'
      'VALOR_IPI=VALOR_IPI'
      'VALOR_ST=VALOR_ST'
      'TOTAL_COM_IMPOSTOS=TOTAL_COM_IMPOSTOS')
    DataSource = dsVendas
    BCDToCurrency = False
    Left = 1476
    Top = 676
  end
  object frxPDFExport1: TfrxPDFExport [59]
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 1748
    Top = 11
  end
  object frxXLSExport1: TfrxXLSExport [60]
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 1828
    Top = 11
  end
  object DsCodigoOriginal: TDataSource [61]
    DataSet = CdsCodigoOriginal
    Left = 1484
    Top = 221
  end
  object CdsCodigoOriginal: TClientDataSet [62]
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCodigoOriginal'
    BeforeInsert = CdsCodigoOriginalBeforeInsert
    AfterInsert = dAfterInsert
    BeforeEdit = CdsCodigoOriginalBeforeEdit
    BeforePost = CdsCodigoOriginalBeforePost
    AfterPost = CdsCodigoOriginalAfterPost
    BeforeDelete = CdsCodigoOriginalBeforeDelete
    AfterDelete = CdsCodigoOriginalAfterDelete
    Left = 1484
    Top = 173
    object CdsCodigoOriginalPRDCO_REGISTRO: TIntegerField
      FieldName = 'PRDCO_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsCodigoOriginalPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsCodigoOriginalPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsCodigoOriginalCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      OnSetText = CdsCodigoOriginalCLI_CODIGOSetText
      OnValidate = CdsCodigoOriginalCLI_CODIGOValidate
      Size = 5
    end
    object CdsCodigoOriginalPRDCO_DESCRICAO: TStringField
      FieldName = 'PRDCO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsCodigoOriginalCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = []
      Size = 55
    end
    object CdsCodigoOriginalPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
  end
  object DspCodigoOriginal: TDataSetProvider [63]
    DataSet = SqlCodCli
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1483
    Top = 133
  end
  object SqlArquivo: TSQLDataSet [64]
    CommandText = 'SELECT * FROM ARQUIVO ORDER BY ARQ_DESCRICAO'
    MaxBlobSize = -1
    Params = <>
    Left = 1571
    Top = 77
    object SqlArquivoARQ_REGISTRO: TIntegerField
      FieldName = 'ARQ_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlArquivoARQ_TIPO: TStringField
      FieldName = 'ARQ_TIPO'
      Size = 10
    end
    object SqlArquivoARQ_TIPO_TABELA: TStringField
      FieldName = 'ARQ_TIPO_TABELA'
      Size = 3
    end
    object SqlArquivoARQ_REGISTRO_TABELA: TStringField
      FieldName = 'ARQ_REGISTRO_TABELA'
      Size = 10
    end
    object SqlArquivoARQ_ARQUIVO: TBlobField
      FieldName = 'ARQ_ARQUIVO'
    end
    object SqlArquivoARQ_DESCRICAO: TStringField
      FieldName = 'ARQ_DESCRICAO'
      Size = 200
    end
    object SqlArquivoARQ_DATA: TDateField
      FieldName = 'ARQ_DATA'
    end
    object SqlArquivoARQ_NOME_ARQUIVO: TStringField
      FieldName = 'ARQ_NOME_ARQUIVO'
      Size = 200
    end
  end
  object DspArquivo: TDataSetProvider [65]
    DataSet = SqlArquivo
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1571
    Top = 125
  end
  object CdsArquivo: TClientDataSet [66]
    Aggregates = <>
    Params = <>
    ProviderName = 'DspArquivo'
    Left = 1572
    Top = 173
    object CdsArquivoARQ_REGISTRO: TIntegerField
      FieldName = 'ARQ_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsArquivoARQ_TIPO: TStringField
      FieldName = 'ARQ_TIPO'
      Size = 10
    end
    object CdsArquivoARQ_TIPO_TABELA: TStringField
      FieldName = 'ARQ_TIPO_TABELA'
      Size = 3
    end
    object CdsArquivoARQ_REGISTRO_TABELA: TStringField
      FieldName = 'ARQ_REGISTRO_TABELA'
      Size = 10
    end
    object CdsArquivoARQ_ARQUIVO: TBlobField
      FieldName = 'ARQ_ARQUIVO'
    end
    object CdsArquivoARQ_DESCRICAO: TStringField
      FieldName = 'ARQ_DESCRICAO'
      Size = 200
    end
    object CdsArquivoARQ_DATA: TDateField
      FieldName = 'ARQ_DATA'
    end
    object CdsArquivoARQ_NOME_ARQUIVO: TStringField
      FieldName = 'ARQ_NOME_ARQUIVO'
      Size = 200
    end
  end
  object dsArquivo: TDataSource [67]
    DataSet = CdsArquivo
    Left = 1572
    Top = 221
  end
  object pmArquivo: TPopupMenu [68]
    Left = 1508
    Top = 8
    object AbrirArquivo1: TMenuItem
      Caption = 'Abrir Arquivo'
      OnClick = AbrirArquivo1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExcluirArquivo1: TMenuItem
      Caption = 'Excluir Arquivo'
      OnClick = ExcluirArquivo1Click
    end
  end
  object SqlCdsEnderecamento: TSqlClientDataSet [69]
    Aggregates = <>
    DataSet.CommandText = 'select * from PRD0000_ENDERECAMENTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD0000_ENDERECAMENTO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 2072
    Top = 451
    object SqlCdsEnderecamentoPRDE_REGISTRO: TIntegerField
      FieldName = 'PRDE_REGISTRO'
    end
    object SqlCdsEnderecamentoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 4
    end
    object SqlCdsEnderecamentoPRDE_ENDERECO: TStringField
      FieldName = 'PRDE_ENDERECO'
      Size = 30
    end
  end
  object mnuListar: TPopupMenu [70]
    Left = 1588
    Top = 9
    object Listagem1: TMenuItem
      Caption = '&1 - Produtos'
      OnClick = Listagem1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N2CdigosdoFornecedor1: TMenuItem
      Caption = '&2 - C'#243'digos do Fornecedor'
      OnClick = N2CdigosdoFornecedor1Click
    end
    object N3Mesmoleaiutedeimportao1: TMenuItem
      Caption = '3 - Mesmo leaiute de importa'#231#227'o'
      OnClick = N3Mesmoleaiutedeimportao1Click
    end
  end
  object SqlCodCli: TSQLQuery [71]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT A.*, B.cli_razao'
      'FROM PRD_CODIGOORIGINAL A'
      '    JOIN cli0000 B ON B.cli_codigo=A.cli_codigo'
      'ORDER BY A.CLI_CODIGO')
    Left = 1480
    Top = 80
    object SqlCodCliPRDCO_REGISTRO: TIntegerField
      FieldName = 'PRDCO_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlCodCliPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlCodCliPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SqlCodCliCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlCodCliPRDCO_DESCRICAO: TStringField
      FieldName = 'PRDCO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SqlCodCliCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = []
      Size = 55
    end
    object SqlCodCliPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
  end
  object JvTransparentForm1: TJvTransparentForm [72]
    Left = 1320
    Top = 8
  end
  object qFor: TSQLQuery [73]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select for_codigo, for_razao'
      'from for0000'
      'where for_codigo='#39'-1'#39)
    Left = 2033
    Top = 91
    object qForFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object qForFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
  end
  object qCstPC: TSQLQuery [74]
    MaxBlobSize = -1
    Params = <>
    Left = 1914
    Top = 147
  end
  object SqlProdutos: TSQLQuery [75]
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PRD0000')
    Left = 1384
    Top = 85
    object SqlProdutosPRD_CODIGO: TStringField
      DisplayWidth = 5
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object SqlProdutosPRD_DTCADASTRO: TDateField
      FieldName = 'PRD_DTCADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_DESCRI_RES: TStringField
      FieldName = 'PRD_DESCRI_RES'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlProdutosPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlProdutosPRD_EMBALA: TStringField
      FieldName = 'PRD_EMBALA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlProdutosPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlProdutosPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlProdutosIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlProdutosPRD_ALIQICM: TFMTBCDField
      FieldName = 'PRD_ALIQICM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlProdutosPRD_CARACT: TMemoField
      FieldName = 'PRD_CARACT'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object SqlProdutosPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PMEDIO: TFMTBCDField
      FieldName = 'PRD_PMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PMATPRI: TFMTBCDField
      FieldName = 'PRD_PMATPRI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_MAOOBRA: TFMTBCDField
      FieldName = 'PRD_MAOOBRA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlProdutosPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_MAXIMO: TFMTBCDField
      FieldName = 'PRD_MAXIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_TEMSUB: TStringField
      FieldName = 'PRD_TEMSUB'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosPRD_SITRIBUT: TStringField
      FieldName = 'PRD_SITRIBUT'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlProdutosPRD_ICMSUBS: TFMTBCDField
      FieldName = 'PRD_ICMSUBS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_UTILCONV: TStringField
      FieldName = 'PRD_UTILCONV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosPRD_UNDCOMP: TStringField
      FieldName = 'PRD_UNDCOMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlProdutosPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_FATORC: TFMTBCDField
      FieldName = 'PRD_FATORC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlProdutosPRD_DTPCUSTO: TSQLTimeStampField
      FieldName = 'PRD_DTPCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_TABPRECO: TStringField
      FieldName = 'PRD_TABPRECO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosPRD_GARANTIA: TStringField
      FieldName = 'PRD_GARANTIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlProdutosPRD_FAMILIA: TStringField
      FieldName = 'PRD_FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object SqlProdutosPRD_CODBARRA: TStringField
      FieldName = 'PRD_CODBARRA'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object SqlProdutosPRD_VAR1: TFMTBCDField
      FieldName = 'PRD_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR2: TFMTBCDField
      FieldName = 'PRD_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR3: TFMTBCDField
      FieldName = 'PRD_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR4: TFMTBCDField
      FieldName = 'PRD_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR5: TFMTBCDField
      FieldName = 'PRD_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR6: TFMTBCDField
      FieldName = 'PRD_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR7: TFMTBCDField
      FieldName = 'PRD_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_VAR8: TFMTBCDField
      FieldName = 'PRD_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlProdutosPRD_CURVA: TStringField
      FieldName = 'PRD_CURVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosPRD_CODMERCOSUL: TStringField
      FieldName = 'PRD_CODMERCOSUL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlProdutosPRD_DTPVENDA: TDateField
      FieldName = 'PRD_DTPVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlProdutosPRD_GRADE: TStringField
      FieldName = 'PRD_GRADE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosPRD_CUSTOCOMIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOCOMIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_SALDOPRODUCAO: TFMTBCDField
      FieldName = 'PRD_SALDOPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_SIMULACAO: TFMTBCDField
      FieldName = 'PRD_SIMULACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_COMISSAO: TFMTBCDField
      FieldName = 'PRD_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR1: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR2: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR3: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR4: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR5: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR6: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR7: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR8: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_DT_ULT_COMPRA: TDateField
      FieldName = 'PRD_DT_ULT_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_VL_ULT_COMPRA: TFMTBCDField
      FieldName = 'PRD_VL_ULT_COMPRA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_NF_ULT_COMPRA: TStringField
      FieldName = 'PRD_NF_ULT_COMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlProdutosFOR_CODIGO_ANT: TStringField
      FieldName = 'FOR_CODIGO_ANT'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqlProdutosPRD_DT_ULT_COMPRA_ANT: TDateField
      FieldName = 'PRD_DT_ULT_COMPRA_ANT'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_VL_ULT_COMPRA_ANT: TFMTBCDField
      FieldName = 'PRD_VL_ULT_COMPRA_ANT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_NF_ULT_COMPRA_ANT: TStringField
      FieldName = 'PRD_NF_ULT_COMPRA_ANT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object SqlProdutosPRD_LOTE: TStringField
      FieldName = 'PRD_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlProdutosPRD_FATOR_PROD: TFMTBCDField
      FieldName = 'PRD_FATOR_PROD'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_DIV_MULT_PROD: TStringField
      FieldName = 'PRD_DIV_MULT_PROD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlProdutosSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlProdutosPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_CUSTO_CREDITO: TFMTBCDField
      FieldName = 'PRD_CUSTO_CREDITO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_MARGEMOFERTA: TFMTBCDField
      FieldName = 'PRD_MARGEMOFERTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PRECOOFERTA: TFMTBCDField
      FieldName = 'PRD_PRECOOFERTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_INICIOOFERTA: TDateField
      FieldName = 'PRD_INICIOOFERTA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_FIMOFERTA: TDateField
      FieldName = 'PRD_FIMOFERTA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_PVENDA2: TFMTBCDField
      FieldName = 'PRD_PVENDA2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA3: TFMTBCDField
      FieldName = 'PRD_PVENDA3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA4: TFMTBCDField
      FieldName = 'PRD_PVENDA4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA5: TFMTBCDField
      FieldName = 'PRD_PVENDA5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA6: TFMTBCDField
      FieldName = 'PRD_PVENDA6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosUSU_CODIGO_ATUAL_TAB: TIntegerField
      FieldName = 'USU_CODIGO_ATUAL_TAB'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosUSU_LOGIN_ATUAL_TAB: TStringField
      FieldName = 'USU_LOGIN_ATUAL_TAB'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlProdutosPRD_DATA_ATUAL_TAB: TSQLTimeStampField
      FieldName = 'PRD_DATA_ATUAL_TAB'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosSPED_GENCODIGO: TStringField
      FieldName = 'SPED_GENCODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlProdutosSPED_TIPCODIGO: TStringField
      FieldName = 'SPED_TIPCODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlProdutosPRD_UNICODIGO: TIntegerField
      FieldName = 'PRD_UNICODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SqlProdutosPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object SqlProdutosPRD_CODORIGINAL: TStringField
      FieldName = 'PRD_CODORIGINAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlProdutosPRD_CUSTOFRETE: TFMTBCDField
      FieldName = 'PRD_CUSTOFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_CUSTOIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_CUSTOSUBTRIB: TFMTBCDField
      FieldName = 'PRD_CUSTOSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_CUSTOADCIONAL: TFMTBCDField
      FieldName = 'PRD_CUSTOADCIONAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_MGDESPFIXAS: TFMTBCDField
      FieldName = 'PRD_MGDESPFIXAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_INDICESOBMARGEM: TFMTBCDField
      FieldName = 'PRD_INDICESOBMARGEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 5
    end
    object SqlProdutosSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_STATUS: TStringField
      FieldName = 'PRD_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosPRD_GERENCIA_LOTE: TStringField
      FieldName = 'PRD_GERENCIA_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlProdutosPRD_UND_GRADE_CALCULO: TStringField
      FieldName = 'PRD_UND_GRADE_CALCULO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlProdutosPRD_GRADE_OBRIGATORIO: TStringField
      FieldName = 'PRD_GRADE_OBRIGATORIO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosPRDE_REGISTRO: TIntegerField
      FieldName = 'PRDE_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosCEST_COD: TStringField
      FieldName = 'CEST_COD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object SqlProdutosCEST_REVISAR: TStringField
      FieldName = 'CEST_REVISAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqlProdutosPRD_CSTPISCOFINS: TStringField
      FieldName = 'PRD_CSTPISCOFINS'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlProdutosprd_especifico: TStringField
      FieldName = 'PRD_ESPECIFICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlProdutosid_prd_especifico: TIntegerField
      FieldName = 'ID_PRD_ESPECIFICO'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_ESPECIFICO_REDST: TSingleField
      FieldName = 'PRD_ESPECIFICO_REDST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00 %'
    end
    object SqlProdutosPRD_PERC_COMISSAO: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_VENDA: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_COMISSAO2: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO2'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_VENDA2: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA2'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_COMISSAO3: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_VENDA3: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_COMISSAO4: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO4'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_VENDA4: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA4'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_COMISSAO5: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO5'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_VENDA5: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA5'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_COMISSAO6: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO6'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_VENDA6: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA6'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object SqlProdutosInterno: TFMTBCDField
      FieldName = 'Interno'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 5
    end
    object SqlProdutosEXTERNO: TFMTBCDField
      FieldName = 'EXTERNO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 5
    end
    object SqlProdutosALTURA1: TFMTBCDField
      FieldName = 'ALTURA1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 5
    end
    object SqlProdutosALTURA2: TFMTBCDField
      FieldName = 'ALTURA2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PER_ICMS: TFMTBCDField
      FieldName = 'PRD_PER_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PER_PISCONFINS: TFMTBCDField
      FieldName = 'PRD_PER_PISCONFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PER_IPI: TFMTBCDField
      FieldName = 'PRD_PER_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PER_FRETE: TFMTBCDField
      FieldName = 'PRD_PER_FRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PER_OUTROS: TFMTBCDField
      FieldName = 'PRD_PER_OUTROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PER_LUCRO: TFMTBCDField
      FieldName = 'PRD_PER_LUCRO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_OUTROSCUSTOS: TFMTBCDField
      FieldName = 'PRD_OUTROSCUSTOS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlProdutosPRD_CBENEF: TStringField
      FieldName = 'PRD_CBENEF'
      Size = 8
    end
    object SqlProdutosPRD_TIPOPECA_TERM: TStringField
      FieldName = 'PRD_TIPOPECA_TERM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlProdutosPRD_MATERIAL_TERM: TStringField
      FieldName = 'PRD_MATERIAL_TERM'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqlProdutosPRD_DUREZASUPERFICIAL_TERM: TStringField
      FieldName = 'PRD_DUREZASUPERFICIAL_TERM'
    end
    object SqlProdutosPRD_DUREZANUCLEO_TERM: TStringField
      FieldName = 'PRD_DUREZANUCLEO_TERM'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_PROFUNDIDADE_TERM: TStringField
      FieldName = 'PRD_PROFUNDIDADE_TERM'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_TAMANHOGRAO_TERM: TStringField
      FieldName = 'PRD_TAMANHOGRAO_TERM'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRD_EHT_TERM: TStringField
      DisplayWidth = 24
      FieldName = 'PRD_EHT_TERM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqlProdutosPRD_DESENHO_TERM: TStringField
      FieldName = 'PRD_DESENHO_TERM'
      ProviderFlags = [pfInUpdate]
    end
    object SqlProdutosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object SqlProdutosprd_und_trib: TStringField
      FieldName = 'prd_und_trib'
      Size = 6
    end
    object SqlProdutosCNAE_CODIGO: TStringField
      FieldName = 'CNAE_CODIGO'
      Size = 10
    end
    object SqlProdutosPRD_IMPOSTOS_RETIRADOS: TFMTBCDField
      FieldName = 'PRD_IMPOSTOS_RETIRADOS'
      Precision = 15
    end
    object SqlProdutosSRV_CODIGO: TStringField
      FieldName = 'SRV_CODIGO'
      Size = 5
    end
    object SqlProdutosPRD_VAIXML: TStringField
      FieldName = 'PRD_VAIXML'
      Size = 1
    end
    object SqlProdutosPRD_MULTIPLICADOR: TFMTBCDField
      FieldName = 'PRD_MULTIPLICADOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqlProdutosPRD_ENVASE: TStringField
      FieldName = 'PRD_ENVASE'
      Size = 1
    end
    object SqlProdutosPRD_DESCONTO: TFMTBCDField
      FieldName = 'PRD_DESCONTO'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_CAPACIDADE_OBRIGATORIA: TStringField
      FieldName = 'PRD_CAPACIDADE_OBRIGATORIA'
      Size = 1
    end
  end
  object DspProdutos: TDataSetProvider [76]
    DataSet = SqlProdutos
    Options = [poAllowCommandText]
    Left = 1384
    Top = 133
  end
  object CdsProdutos: TClientDataSet [77]
    Aggregates = <>
    PacketRecords = 6
    Params = <>
    ProviderName = 'DspProdutos'
    AfterInsert = CdsProdutosAfterInsert
    BeforeEdit = CdsProdutosBeforeEdit
    AfterPost = CdsProdutosAfterPost
    AfterCancel = CdsProdutosAfterCancel
    AfterScroll = CdsProdutosAfterScroll
    OnCalcFields = CdsProdutosCalcFields
    OnNewRecord = CdsProdutosNewRecord
    Left = 1384
    Top = 181
    object CdsProdutosPRD_CODIGO: TStringField
      DisplayWidth = 5
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CdsProdutosPRD_DESCRI_RES: TStringField
      FieldName = 'PRD_DESCRI_RES'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsProdutosPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsProdutosPRD_EMBALA: TStringField
      FieldName = 'PRD_EMBALA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsProdutosPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsProdutosPRD_ALIQICM: TFMTBCDField
      FieldName = 'PRD_ALIQICM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsProdutosPRD_CARACT: TMemoField
      FieldName = 'PRD_CARACT'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object CdsProdutosPRD_MAXIMO: TFMTBCDField
      FieldName = 'PRD_MAXIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      ProviderFlags = [pfInUpdate]
      OnChange = CdsProdutosPRD_PVENDAChange
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PMEDIO: TFMTBCDField
      FieldName = 'PRD_PMEDIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PMATPRI: TFMTBCDField
      FieldName = 'PRD_PMATPRI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_MAOOBRA: TFMTBCDField
      FieldName = 'PRD_MAOOBRA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsProdutosPRD_TEMSUB: TStringField
      FieldName = 'PRD_TEMSUB'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosPRD_SITRIBUT: TStringField
      FieldName = 'PRD_SITRIBUT'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsProdutosPRD_ICMSUBS: TFMTBCDField
      FieldName = 'PRD_ICMSUBS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsProdutosPRD_UTILCONV: TStringField
      FieldName = 'PRD_UTILCONV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosPRD_UNDCOMP: TStringField
      FieldName = 'PRD_UNDCOMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object CdsProdutosPRD_FATORC: TFMTBCDField
      FieldName = 'PRD_FATORC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsProdutosPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosPRD_DTPCUSTO: TSQLTimeStampField
      FieldName = 'PRD_DTPCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_TABPRECO: TStringField
      FieldName = 'PRD_TABPRECO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosPRD_GARANTIA: TStringField
      FieldName = 'PRD_GARANTIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsProdutosPRD_FAMILIA: TStringField
      FieldName = 'PRD_FAMILIA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsProdutosPRD_VAR1: TFMTBCDField
      FieldName = 'PRD_VAR1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR2: TFMTBCDField
      FieldName = 'PRD_VAR2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR3: TFMTBCDField
      FieldName = 'PRD_VAR3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR4: TFMTBCDField
      FieldName = 'PRD_VAR4'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR5: TFMTBCDField
      FieldName = 'PRD_VAR5'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR6: TFMTBCDField
      FieldName = 'PRD_VAR6'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR7: TFMTBCDField
      FieldName = 'PRD_VAR7'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_VAR8: TFMTBCDField
      FieldName = 'PRD_VAR8'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      EditFormat = ',##0.000'
      currency = True
      Precision = 15
    end
    object CdsProdutosPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsProdutosPRD_FISICO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_FISICO_CC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      currency = False
      Calculated = True
    end
    object CdsProdutosPRD_ANTECIPADO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_ANTECIPADO_CC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',##0.000'
      currency = False
      Calculated = True
    end
    object CdsProdutosPRD_DTCADASTRO: TDateField
      FieldName = 'PRD_DTCADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_CURVA: TStringField
      FieldName = 'PRD_CURVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosPRD_CODMERCOSUL: TStringField
      FieldName = 'PRD_CODMERCOSUL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsProdutosPRD_DTPVENDA: TDateField
      FieldName = 'PRD_DTPVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosPRD_CODBARRA: TStringField
      FieldName = 'PRD_CODBARRA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsProdutosPRD_GRADE: TStringField
      FieldName = 'PRD_GRADE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosPRD_CUSTOCOMIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOCOMIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_SALDOPRODUCAO: TFMTBCDField
      FieldName = 'PRD_SALDOPRODUCAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_COMISSAO: TFMTBCDField
      FieldName = 'PRD_COMISSAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00%'
      EditFormat = '00%'
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR1: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR2: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR3: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR4: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR5: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR6: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR7: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_RESERVA_VAR8: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_SIMULACAO: TFMTBCDField
      FieldName = 'PRD_SIMULACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_DT_ULT_COMPRA: TDateField
      FieldName = 'PRD_DT_ULT_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_VL_ULT_COMPRA: TFMTBCDField
      FieldName = 'PRD_VL_ULT_COMPRA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_NF_ULT_COMPRA: TStringField
      FieldName = 'PRD_NF_ULT_COMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsProdutosFOR_CODIGO_ANT: TStringField
      FieldName = 'FOR_CODIGO_ANT'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsProdutosPRD_DT_ULT_COMPRA_ANT: TDateField
      FieldName = 'PRD_DT_ULT_COMPRA_ANT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_VL_ULT_COMPRA_ANT: TFMTBCDField
      FieldName = 'PRD_VL_ULT_COMPRA_ANT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_NF_ULT_COMPRA_ANT: TStringField
      FieldName = 'PRD_NF_ULT_COMPRA_ANT'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object CdsProdutosPRD_LOTE: TStringField
      FieldName = 'PRD_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsProdutosPRD_FATOR_PROD: TFMTBCDField
      FieldName = 'PRD_FATOR_PROD'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###0.00000'
      EditFormat = '###,###0.00000'
      Precision = 15
    end
    object CdsProdutosPRD_DIV_MULT_PROD: TStringField
      FieldName = 'PRD_DIV_MULT_PROD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsProdutosSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsProdutosPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000 %'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_MARGEMOFERTA: TFMTBCDField
      FieldName = 'PRD_MARGEMOFERTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PRECOOFERTA: TFMTBCDField
      FieldName = 'PRD_PRECOOFERTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_INICIOOFERTA: TDateField
      FieldName = 'PRD_INICIOOFERTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_FIMOFERTA: TDateField
      FieldName = 'PRD_FIMOFERTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_CUSTO_CREDITO: TFMTBCDField
      FieldName = 'PRD_CUSTO_CREDITO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA2: TFMTBCDField
      FieldName = 'PRD_PVENDA2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA3: TFMTBCDField
      FieldName = 'PRD_PVENDA3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA4: TFMTBCDField
      FieldName = 'PRD_PVENDA4'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA5: TFMTBCDField
      FieldName = 'PRD_PVENDA5'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA6: TFMTBCDField
      FieldName = 'PRD_PVENDA6'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosUSU_CODIGO_ATUAL_TAB: TIntegerField
      FieldName = 'USU_CODIGO_ATUAL_TAB'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosUSU_LOGIN_ATUAL_TAB: TStringField
      FieldName = 'USU_LOGIN_ATUAL_TAB'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsProdutosPRD_DATA_ATUAL_TAB: TSQLTimeStampField
      FieldName = 'PRD_DATA_ATUAL_TAB'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object CdsProdutosSPED_GENCODIGO: TStringField
      FieldName = 'SPED_GENCODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsProdutosSPED_TIPCODIGO: TStringField
      FieldName = 'SPED_TIPCODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsProdutosPRD_UNICODIGO: TIntegerField
      FieldName = 'PRD_UNICODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsProdutosPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object CdsProdutosPRD_CODORIGINAL: TStringField
      FieldName = 'PRD_CODORIGINAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsProdutosPRD_CUSTOFRETE: TFMTBCDField
      FieldName = 'PRD_CUSTOFRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_CUSTOIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_CUSTOSUBTRIB: TFMTBCDField
      FieldName = 'PRD_CUSTOSUBTRIB'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_CUSTOADCIONAL: TFMTBCDField
      FieldName = 'PRD_CUSTOADCIONAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_MGDESPFIXAS: TFMTBCDField
      FieldName = 'PRD_MGDESPFIXAS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00.000%'
      EditFormat = '00.000%'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_INDICESOBMARGEM: TFMTBCDField
      FieldName = 'PRD_INDICESOBMARGEM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.000'
      EditFormat = '##0.000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_STATUS: TStringField
      FieldName = 'PRD_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosPRD_GERENCIA_LOTE: TStringField
      FieldName = 'PRD_GERENCIA_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object CdsProdutosPRD_UND_GRADE_CALCULO: TStringField
      FieldName = 'PRD_UND_GRADE_CALCULO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsProdutosPRD_GRADE_OBRIGATORIO: TStringField
      FieldName = 'PRD_GRADE_OBRIGATORIO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosPRDE_REGISTRO: TIntegerField
      FieldName = 'PRDE_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosCEST_COD: TStringField
      FieldName = 'CEST_COD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object CdsProdutosCEST_REVISAR: TStringField
      FieldName = 'CEST_REVISAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsProdutosPRD_CSTPISCOFINS: TStringField
      FieldName = 'PRD_CSTPISCOFINS'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsProdutosPRD_ESPECIFICO: TStringField
      FieldName = 'PRD_ESPECIFICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsProdutosID_PRD_ESPECIFICO: TIntegerField
      FieldName = 'ID_PRD_ESPECIFICO'
      ProviderFlags = [pfInUpdate]
      OnGetText = CdsProdutosID_PRD_ESPECIFICOGetText
      OnSetText = CdsProdutosID_PRD_ESPECIFICOSetText
    end
    object CdsProdutosPRD_ESPECIFICO_REDST: TSingleField
      FieldName = 'PRD_ESPECIFICO_REDST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00 %'
    end
    object CdsProdutosPRD_PERC_COMISSAO: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_VENDA: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_COMISSAO2: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_VENDA2: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_COMISSAO3: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_VENDA3: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_COMISSAO4: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO4'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_VENDA4: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA4'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_COMISSAO5: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO5'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_VENDA5: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA5'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_COMISSAO6: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO6'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_VENDA6: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA6'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosInterno: TFMTBCDField
      FieldName = 'Interno'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 5
    end
    object CdsProdutosEXTERNO: TFMTBCDField
      FieldName = 'EXTERNO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 5
    end
    object CdsProdutosALTURA1: TFMTBCDField
      FieldName = 'ALTURA1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 5
    end
    object CdsProdutosALTURA2: TFMTBCDField
      FieldName = 'ALTURA2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PER_ICMS: TFMTBCDField
      FieldName = 'PRD_PER_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PER_PISCONFINS: TFMTBCDField
      FieldName = 'PRD_PER_PISCONFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PER_IPI: TFMTBCDField
      FieldName = 'PRD_PER_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PER_FRETE: TFMTBCDField
      FieldName = 'PRD_PER_FRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PER_OUTROS: TFMTBCDField
      FieldName = 'PRD_PER_OUTROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PER_LUCRO: TFMTBCDField
      FieldName = 'PRD_PER_LUCRO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.00 %'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_OUTROSCUSTOS: TFMTBCDField
      FieldName = 'PRD_OUTROSCUSTOS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsProdutosPRD_CBENEF: TStringField
      FieldName = 'PRD_CBENEF'
      Size = 8
    end
    object CdsProdutosPRD_DESENHO_TERM: TStringField
      FieldName = 'PRD_DESENHO_TERM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_EHT_TERM: TStringField
      FieldName = 'PRD_EHT_TERM'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object CdsProdutosPRD_TAMANHOGRAO_TERM: TStringField
      FieldName = 'PRD_TAMANHOGRAO_TERM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_PROFUNDIDADE_TERM: TStringField
      FieldName = 'PRD_PROFUNDIDADE_TERM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_DUREZANUCLEO_TERM: TStringField
      FieldName = 'PRD_DUREZANUCLEO_TERM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsProdutosPRD_DUREZASUPERFICIAL_TERM: TStringField
      FieldName = 'PRD_DUREZASUPERFICIAL_TERM'
    end
    object CdsProdutosPRD_MATERIAL_TERM: TStringField
      FieldName = 'PRD_MATERIAL_TERM'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsProdutosPRD_TIPOPECA_TERM: TStringField
      FieldName = 'PRD_TIPOPECA_TERM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsProdutosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object CdsProdutosprd_und_trib: TStringField
      FieldName = 'prd_und_trib'
      Size = 6
    end
    object CdsProdutosSRV_CODIGO: TStringField
      FieldName = 'SRV_CODIGO'
      Size = 5
    end
    object CdsProdutosCNAE_CODIGO: TStringField
      FieldName = 'CNAE_CODIGO'
      Size = 10
    end
    object CdsProdutosPRD_IMPOSTOS_RETIRADOS: TFMTBCDField
      FieldName = 'PRD_IMPOSTOS_RETIRADOS'
      Precision = 15
    end
    object CdsProdutosPRD_VAIXML: TStringField
      FieldName = 'PRD_VAIXML'
      Size = 1
    end
    object CdsProdutosPRD_MULTIPLICADOR: TFMTBCDField
      FieldName = 'PRD_MULTIPLICADOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object CdsProdutosPRD_ENVASE: TStringField
      FieldName = 'PRD_ENVASE'
      Size = 1
    end
    object CdsProdutosPRD_DESCONTO: TFMTBCDField
      FieldName = 'PRD_DESCONTO'
      DisplayFormat = '###.00000'
      EditFormat = '###.00000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_CAPACIDADE_OBRIGATORIA: TStringField
      FieldName = 'PRD_CAPACIDADE_OBRIGATORIA'
      Size = 1
    end
  end
  object DsProdutos: TDataSource [78]
    DataSet = CdsProdutos
    Left = 1384
    Top = 229
  end
  object DsPrdClassIPI: TDataSource [79]
    DataSet = CdsPrdClassIPI
    Left = 1652
    Top = 618
  end
  object CdsPrdClassIPI_OLD: TClientDataSet [80]
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPrdClassIPI'
    Left = 1647
    Top = 570
    object CdsPrdClassIPI_OLDIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CdsPrdClassIPI_OLDIPI_ALIQ: TFMTBCDField
      FieldName = 'IPI_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsPrdClassIPI_OLDEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPrdClassIPI_OLDIPI_APELIDO: TStringField
      FieldName = 'IPI_APELIDO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsPrdClassIPI_OLDNCM_TEMCREDITO: TStringField
      FieldName = 'NCM_TEMCREDITO'
      FixedChar = True
      Size = 1
    end
    object CdsPrdClassIPI_OLDNCM_DESC_FAMILIA: TMemoField
      FieldName = 'NCM_DESC_FAMILIA'
      BlobType = ftMemo
    end
    object CdsPrdClassIPI_OLDIPI_VALOR_POR_ITEM: TFMTBCDField
      FieldName = 'IPI_VALOR_POR_ITEM'
      DisplayFormat = '###,###,##0.0000'
      Precision = 20
      Size = 5
    end
    object CdsPrdClassIPI_OLDIPI_EX: TStringField
      FieldName = 'IPI_EX'
      FixedChar = True
      Size = 2
    end
  end
  object DspPrdClassIPI: TDataSetProvider [81]
    DataSet = CdsPrdClassIPI
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1644
    Top = 522
  end
  object dsTipoProduto: TDataSource [82]
    Left = 1556
    Top = 619
  end
  object qTipoProduto: TSQLQuery [83]
    MaxBlobSize = -1
    Params = <>
    Left = 1556
    Top = 575
  end
  object qGrupo: TSQLQuery [84]
    MaxBlobSize = -1
    Params = <>
    Left = 2036
    Top = 151
  end
  object qLinha: TSQLQuery [85]
    MaxBlobSize = -1
    Params = <>
    Left = 2156
    Top = 95
  end
  object qCest: TSQLQuery [86]
    MaxBlobSize = -1
    Params = <>
    Left = 2092
    Top = 151
  end
  object qItensFicha: TSQLQuery [87]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select'
      '    F2.*,'
      '    P1.PRD_DESCRI,'
      '    P1.PRD_UND,'
      '    P1.PRD_GRADE,'
      '    P2.PTI_SIGLA,'
      '    g1.PRG_DESCRICAO,'
      ''
      'case'
      '    WHEN PRMT.pmt_custo_base_producao = '#39'CL'#39' THEN'
      '        P1.PRD_PCUSTO'
      '    WHEN PRMT.pmt_custo_base_producao = '#39'CE'#39' THEN'
      '        P1.prd_custocomipi'
      '    WHEN PRMT.pmt_custo_base_producao = '#39'CM'#39' THEN'
      '        P1.prd_pmedio'
      '    WHEN PRMT.pmt_custo_base_producao = '#39'SI'#39' THEN'
      '        P1.prd_custo_credito'
      'END AS PRD_PCUSTO,'
      ''
      ''
      '('
      'case'
      '    WHEN PRMT.pmt_custo_base_producao = '#39'CL'#39' THEN'
      '        P1.PRD_PCUSTO'
      '    WHEN PRMT.pmt_custo_base_producao = '#39'CE'#39' THEN'
      '        P1.prd_custocomipi'
      '    WHEN PRMT.pmt_custo_base_producao = '#39'CM'#39' THEN'
      '        P1.prd_pmedio'
      '    WHEN PRMT.pmt_custo_base_producao = '#39'SI'#39' THEN'
      '        P1.prd_custo_credito'
      'END  * F2.fti_uc'
      ') AS TotalItem,'
      'fti_perda,'
      'f2.amx_codigo'
      'from ftc_it01 F2'
      'left join prd0000 P1'
      'on (f2.prd_refer_itens = p1.prd_refer)'
      'left join PRD_TIPO P2'
      'ON P1.pti_codigo = P2.PTI_CODIGO'
      'LEFT join PRD_GRADE g1'
      'on g1.PRG_REGISTRO = f2.PRG_REGISTRO'
      'left JOIN prmt0001 PRMT'
      'ON PRMT.emp_codigo = P1.emp_codigo')
    Left = 1788
    Top = 81
  end
  object DspItensFicha: TDataSetProvider [88]
    DataSet = qItensFicha
    UpdateMode = upWhereKeyOnly
    Left = 1788
    Top = 128
  end
  object DSSitTributaria: TDataSource [89]
    DataSet = CDSSitTributaria
    Left = 1272
    Top = 436
  end
  object CDSSitTributaria: TClientDataSet [90]
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPSitTributaria'
    Left = 1272
    Top = 388
    object CDSSitTributariaSTB_CODIGO: TIntegerField
      FieldName = 'STB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSSitTributariaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object CDSSitTributariaSTB_DATA_CADASTRO: TDateField
      FieldName = 'STB_DATA_CADASTRO'
    end
    object CDSSitTributariaSTB_DATA_ATUALIZA: TDateField
      FieldName = 'STB_DATA_ATUALIZA'
    end
    object CDSSitTributariaSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 3
    end
    object CDSSitTributariaSTB_DESCRICAO: TStringField
      FieldName = 'STB_DESCRICAO'
      Size = 60
    end
    object CDSSitTributariaSTB_SUBSTITUICAO: TStringField
      FieldName = 'STB_SUBSTITUICAO'
      FixedChar = True
      Size = 1
    end
    object CDSSitTributariaSTB_SUBSTITUICAO_DENTRO_UF: TStringField
      FieldName = 'STB_SUBSTITUICAO_DENTRO_UF'
      FixedChar = True
      Size = 1
    end
  end
  object DSPSitTributaria: TDataSetProvider [91]
    DataSet = SQLSitTributaria
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1272
    Top = 340
  end
  object SQLSitTributaria: TSQLQuery [92]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT T1.*  FROM SITUACAO_TRIBUTARIA T1')
    Left = 1272
    Top = 288
    object SQLSitTributariaSTB_CODIGO: TIntegerField
      FieldName = 'STB_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQLSitTributariaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object SQLSitTributariaSTB_DATA_CADASTRO: TDateField
      FieldName = 'STB_DATA_CADASTRO'
    end
    object SQLSitTributariaSTB_DATA_ATUALIZA: TDateField
      FieldName = 'STB_DATA_ATUALIZA'
    end
    object SQLSitTributariaSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 3
    end
    object SQLSitTributariaSTB_DESCRICAO: TStringField
      FieldName = 'STB_DESCRICAO'
      Size = 60
    end
    object SQLSitTributariaSTB_SUBSTITUICAO: TStringField
      FieldName = 'STB_SUBSTITUICAO'
      FixedChar = True
      Size = 1
    end
    object SQLSitTributariaSTB_SUBSTITUICAO_DENTRO_UF: TStringField
      FieldName = 'STB_SUBSTITUICAO_DENTRO_UF'
      FixedChar = True
      Size = 1
    end
  end
  object Timer1: TTimer [93]
    Left = 1164
    Top = 9
  end
  object qOperacoes: TSQLQuery [94]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select ope_codigo, ope_descricao')
    Left = 1976
    Top = 87
  end
  object qEspecifica: TSQLQuery [95]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT ESP_CODIGO, ESP_NOME, ESP_PADROES, ENG_CODIGO,ESP_COL1, E' +
        'SP_COL2, ESP_COL3, ESP_COL4,'
      'ESP_COL5, ESP_COL6, ESP_COL7 '
      'FROM ESPECIFICACOES')
    Left = 1176
    Top = 87
  end
  object dsProcessos: TDataSource [96]
    DataSet = cdsProcessos
    Left = 1304
    Top = 231
  end
  object dspProcessos: TDataSetProvider [97]
    DataSet = qProcesso
    Left = 1304
    Top = 135
  end
  object qProcesso: TSQLQuery [98]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ENG_CODIGO, OP.OPE_DESCRICAO, OP.OPE_CODIGO, '
      'EP.SEQUENCIA, EP.TEMPO_ESTIMADO,'
      ' PR.PRD_REFER, PR.PRD_DESCRI , EQ.EQP_CODIGO, eq.EQP_DESCRICAO'
      'FROM ENGENHARIA_PROCESSO ep '
      'INNER JOIN PRD0000 PR ON (pr.PRD_CODIGO = ep.prd_codigo)'
      'INNER JOIN OPERACOES OP ON (OP.OPE_CODIGO = EP.OPE_CODIGO) '
      'LEFT JOIN EQUIPAMENTO EQ ON (EQ.EQP_CODIGO = EP.EQP_CODIGO)'
      'order by sequencia')
    Left = 1304
    Top = 87
  end
  object cdsProcessos: TClientDataSet [99]
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProcessos'
    AfterScroll = cdsProcessosAfterScroll
    Left = 1304
    Top = 183
    object cdsProcessosENG_CODIGO: TIntegerField
      FieldName = 'ENG_CODIGO'
      Required = True
    end
    object cdsProcessosOPE_DESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      Size = 60
    end
    object cdsProcessosOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Required = True
    end
    object cdsProcessosSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object cdsProcessosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsProcessosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object cdsProcessosTEMPO_ESTIMADO: TIntegerField
      FieldName = 'TEMPO_ESTIMADO'
    end
    object cdsProcessosEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
    end
    object cdsProcessosEQP_DESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      Size = 60
    end
  end
  object dsEspecifica: TDataSource [100]
    DataSet = cdsEspecifica
    Left = 1168
    Top = 239
  end
  object cdsEspecifica: TClientDataSet [101]
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEspecifica'
    Left = 1168
    Top = 183
    object cdsEspecificaESP_CODIGO: TIntegerField
      FieldName = 'ESP_CODIGO'
      Required = True
    end
    object cdsEspecificaESP_NOME: TStringField
      FieldName = 'ESP_NOME'
      Size = 60
    end
    object cdsEspecificaESP_PADROES: TStringField
      FieldName = 'ESP_PADROES'
      Size = 100
    end
    object cdsEspecificaENG_CODIGO: TIntegerField
      FieldName = 'ENG_CODIGO'
    end
    object cdsEspecificaESP_COL1: TStringField
      FieldName = 'ESP_COL1'
      Size = 100
    end
    object cdsEspecificaESP_COL2: TStringField
      FieldName = 'ESP_COL2'
      Size = 100
    end
    object cdsEspecificaESP_COL3: TStringField
      FieldName = 'ESP_COL3'
      Size = 100
    end
    object cdsEspecificaESP_COL4: TStringField
      FieldName = 'ESP_COL4'
      Size = 100
    end
    object cdsEspecificaESP_COL5: TStringField
      FieldName = 'ESP_COL5'
      Size = 100
    end
    object cdsEspecificaESP_COL6: TStringField
      FieldName = 'ESP_COL6'
      Size = 100
    end
    object cdsEspecificaESP_COL7: TStringField
      FieldName = 'ESP_COL7'
      Size = 100
    end
  end
  object dspEspecifica: TDataSetProvider [102]
    DataSet = qEspecifica
    Left = 1168
    Top = 135
  end
  object JvPopupMenu1: TJvPopupMenu [103]
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 1900
    Top = 13
    object miImportarExcel: TMenuItem
      Caption = 'Importar Excel'
      OnClick = miImportarExcelClick
    end
    object miExportalExcel: TMenuItem
      Caption = 'Exportar Excel'
      OnClick = miExportalExcelClick
    end
    object miLeaiute: TMenuItem
      Caption = 'Leaiute'
      OnClick = miLeaiuteClick
    end
  end
  object SQLQuery1: TSQLQuery [104]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select ope_codigo, ope_descricao')
    Left = 2176
    Top = 340
  end
  object cdsMPusado: TClientDataSet [105]
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMPusado'
    Left = 1872
    Top = 375
    object cdsMPusadoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsMPusadoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object cdsMPusadoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = []
      Size = 3
    end
    object cdsMPusadoFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
      ProviderFlags = []
    end
    object cdsMPusadoFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
      Precision = 15
    end
    object cdsMPusadoFTI_PERDA: TFMTBCDField
      FieldName = 'FTI_PERDA'
      DisplayFormat = '#,####0.00 %'
    end
  end
  object dsMPusado: TDataSource [106]
    DataSet = cdsMPusado
    Left = 1872
    Top = 423
  end
  object qMPusado: TSQLQuery [107]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT ESP_CODIGO, ESP_NOME, ESP_PADROES, ENG_CODIGO,ESP_COL1, E' +
        'SP_COL2, ESP_COL3, ESP_COL4,'
      'ESP_COL5, ESP_COL6, ESP_COL7 '
      'FROM ESPECIFICACOES')
    Left = 1872
    Top = 279
  end
  object dspMPusado: TDataSetProvider [108]
    DataSet = qMPusado
    Left = 1872
    Top = 327
  end
  object puExportar: TPopupMenu [109]
    Left = 816
    Top = 8
    object miExcel: TMenuItem
      Caption = 'Excel'
      OnClick = miExcelClick
    end
    object miWord: TMenuItem
      Caption = 'Word'
      OnClick = miWordClick
    end
  end
  object SaveDialog1: TSaveDialog [110]
    Left = 1236
    Top = 7
  end
  object JvDBGridWordExport1: TJvDBGridWordExport [111]
    Caption = 'Exporting to MS Word...'
    Left = 652
    Top = 65535
  end
  object JvDBGridExcelExport1: TJvDBGridExcelExport [112]
    Caption = 'Exporting to MS Excel...'
    AutoFit = False
    Left = 532
    Top = 65535
  end
  object pExportarLote: TPopupMenu [113]
    Left = 1668
    Top = 7
    object miLoteExcel: TMenuItem
      Caption = 'Excel'
      OnClick = miLoteExcelClick
    end
    object miLoteWord: TMenuItem
      Caption = 'Word'
      OnClick = miLoteWordClick
    end
  end
  object frxMPusado: TfrxReport [114]
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43549.697224120370000000
    ReportOptions.LastChange = 43551.665108796290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxMPusadoGetValue
    Left = 1868
    Top = 519
    Datasets = <
      item
        DataSet = fdsMPusado
        DataSetName = 'fdsMPusado'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object wFrxRazao: TfrxMemoView
          AllowVectorExport = True
          Left = 7.779530000000000000
          Top = 1.559059999999999000
          Width = 559.370440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 589.472790000000000000
          Top = 3.779530000000001000
          Width = 124.724490000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 42.488250000000000000
          Width = 642.520100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia : [REFER] - [PRODUTO]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 22.456710000000000000
          Width = 559.370440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TITULO]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = fdsMPusado
        DataSetName = 'fdsMPusado'
        RowCount = 0
        Stretched = True
        object fdsMPusadoPRD_REFER: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 0.779529999999994100
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = fdsMPusado
          DataSetName = 'fdsMPusado'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsMPusado."PRD_REFER"]')
        end
        object fdsMPusadoPRD_DESCRI: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 0.779529999999994100
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_DESCRI'
          DataSet = fdsMPusado
          DataSetName = 'fdsMPusado'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsMPusado."PRD_DESCRI"]')
        end
        object fdsMPusadoPRD_UND: TfrxMemoView
          AllowVectorExport = True
          Left = 448.016080000000000000
          Top = 0.779529999999994100
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_UND'
          DataSet = fdsMPusado
          DataSetName = 'fdsMPusado'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsMPusado."PRD_UND"]')
        end
        object fdsMPusadoFTC_CRIACAO: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 0.779529999999994100
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'FTC_CRIACAO'
          DataSet = fdsMPusado
          DataSetName = 'fdsMPusado'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsMPusado."FTC_CRIACAO"]')
        end
        object fdsMPusadoFTI_PERDA: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 0.779529999999994100
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'FTI_PERDA'
          DataSet = fdsMPusado
          DataSetName = 'fdsMPusado'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsMPusado."FTI_PERDA"]')
        end
        object fdsMPusadoFTI_UC: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 0.779529999999994100
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'FTI_UC'
          DataSet = fdsMPusado
          DataSetName = 'fdsMPusado'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsMPusado."FTI_UC"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 10.338590000000000000
          Top = 4.204700000000003000
          Width = 86.929190000000010000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 101.047310000000000000
          Top = 4.204700000000003000
          Width = 86.929190000000010000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 449.016080000000000000
          Top = 4.204700000000003000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'UN')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 543.252320000000100000
          Top = 4.204700000000003000
          Width = 86.929190000000010000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Consumo')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 633.961040000000000000
          Top = 4.204700000000003000
          Width = 86.929190000000010000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Perda')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Criado')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.661409999999990000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object fdsMPusado: TfrxDBDataset [115]
    UserName = 'fdsMPusado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'PRD_UND=PRD_UND'
      'FTC_CRIACAO=FTC_CRIACAO'
      'FTI_UC=FTI_UC'
      'FTI_PERDA=FTI_PERDA')
    DataSet = cdsMPusado
    BCDToCurrency = False
    Left = 1868
    Top = 471
  end
  object qProcessos: TSQLQuery [116]
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
    Left = 2095
    Top = 92
    object qProcessosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object qProcessosPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      Size = 100
    end
  end
  object qCnae: TSQLQuery [117]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select cnae_registro, cnae_codigo, cnae_Descricao'
      'from cnae'
      '')
    SQLConnection = frmBaseDB.DBConn
    Left = 1975
    Top = 152
  end
  object qservico: TSQLQuery [118]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT srv_codigo, srv_descricao'
      'FROM SRV0000'
      ''
      '')
    SQLConnection = frmBaseDB.DBConn
    Left = 1911
    Top = 92
  end
  object dsUnidade: TDataSource [119]
    DataSet = cdsUnidade
    Left = 1708
    Top = 223
  end
  object cdsUnidade: TClientDataSet [120]
    Aggregates = <>
    Params = <>
    ProviderName = 'dspunidade'
    Left = 1708
    Top = 175
    object cdsUnidadePRD_UNICODIGO: TIntegerField
      FieldName = 'PRD_UNICODIGO'
    end
    object cdsUnidadePRD_UNISIGLA: TStringField
      FieldName = 'PRD_UNISIGLA'
      Size = 6
    end
    object cdsUnidadePRD_UNIDESCRI: TStringField
      FieldName = 'PRD_UNIDESCRI'
      Size = 30
    end
  end
  object dspunidade: TDataSetProvider [121]
    DataSet = qUnidade
    Left = 1708
    Top = 127
  end
  object qUnidade: TSQLQuery [122]
    Params = <>
    SQL.Strings = (
      'select * from PRD_UNIDADE')
    Left = 1708
    Top = 79
  end
  object dsMola: TDataSource [123]
    DataSet = cdsMola
    Left = 1720
    Top = 424
  end
  object qMola: TSQLQuery [124]
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM MOLA_MATERIA')
    Left = 1720
    Top = 280
  end
  object cdsMola: TClientDataSet [125]
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMola'
    BeforeInsert = cdsMolaBeforeInsert
    BeforeEdit = cdsMolaBeforeEdit
    BeforePost = cdsMolaBeforePost
    Left = 1720
    Top = 376
    object cdsMolaMMO_CODIGO: TIntegerField
      FieldName = 'MMO_CODIGO'
      Required = True
    end
    object cdsMolaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object cdsMolaART_CODIGO: TIntegerField
      FieldName = 'ART_CODIGO'
    end
    object cdsMolaARA_CODIGO: TIntegerField
      FieldName = 'ARA_CODIGO'
    end
    object cdsMolaCMO_CODIGO: TIntegerField
      FieldName = 'CMO_CODIGO'
    end
    object cdsMolaGAN_CODIGO: TIntegerField
      FieldName = 'GAN_CODIGO'
      OnChange = cdsMolaGAN_CODIGOChange
    end
    object cdsMolaACO_CODIGO: TIntegerField
      FieldName = 'ACO_CODIGO'
    end
    object cdsMolaASU_CODIGO: TIntegerField
      FieldName = 'ASU_CODIGO'
    end
    object cdsMolaTSU_CODIGO: TIntegerField
      FieldName = 'TSU_CODIGO'
    end
    object cdsMolaMMO_TEMPO_PRODUCAO: TIntegerField
      FieldName = 'MMO_TEMPO_PRODUCAO'
    end
    object cdsMolaMMO_PESO_ESPECIFICO: TFMTBCDField
      FieldName = 'MMO_PESO_ESPECIFICO'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_CISALHAMENTO: TFMTBCDField
      FieldName = 'MMO_CISALHAMENTO'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_RES_TRACAO: TFMTBCDField
      FieldName = 'MMO_RES_TRACAO'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TRATAMENTO_TERMICO: TStringField
      FieldName = 'MMO_TRATAMENTO_TERMICO'
      OnGetText = cdsMolaMMO_TRATAMENTO_TERMICOGetText
      Size = 1
    end
    object cdsMolaMMO_TEMPO_TEMPERA: TIntegerField
      FieldName = 'MMO_TEMPO_TEMPERA'
    end
    object cdsMolaMMO_TEMPERATURA_TEMPERA: TFMTBCDField
      FieldName = 'MMO_TEMPERATURA_TEMPERA'
      Precision = 18
      Size = 2
    end
    object cdsMolaMMO_TEMPO_REVENIMENTO: TIntegerField
      FieldName = 'MMO_TEMPO_REVENIMENTO'
    end
    object cdsMolaMMO_TEMPERATURA_REVENIMENTO: TFMTBCDField
      FieldName = 'MMO_TEMPERATURA_REVENIMENTO'
      Precision = 18
      Size = 2
    end
    object cdsMolaMMO_DUREZA_MINIMA: TIntegerField
      FieldName = 'MMO_DUREZA_MINIMA'
    end
    object cdsMolaMMO_DUREZA_MAXIMA: TIntegerField
      FieldName = 'MMO_DUREZA_MAXIMA'
    end
    object cdsMolaMMO_TRATAMENTO_SUPERFICIAL: TStringField
      FieldName = 'MMO_TRATAMENTO_SUPERFICIAL'
      OnGetText = cdsMolaMMO_TRATAMENTO_SUPERFICIALGetText
      Size = 1
    end
    object cdsMolaMMO_DIAMETRO_ARAME: TStringField
      FieldName = 'MMO_DIAMETRO_ARAME'
      Size = 50
    end
    object cdsMolaMMO_TOLERANCIA_DIA_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DIA_MIN'
      Precision = 18
      Size = 2
    end
    object cdsMolaMMO_TOLERANCIA_DIA_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DIA_MAX'
      Precision = 18
      Size = 2
    end
    object cdsMolaMMO_DIAMETRO_INTERNO: TFMTBCDField
      FieldName = 'MMO_DIAMETRO_INTERNO'
      Precision = 18
      Size = 2
    end
    object cdsMolaMMO_TOLERANCIA_DI_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DI_MIN'
      Precision = 18
      Size = 2
    end
    object cdsMolaMMO_TOLERANCIA_DI_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DI_MAX'
      Precision = 18
      Size = 2
    end
    object cdsMolaMMO_DIAMETRO_MEDIO: TFMTBCDField
      FieldName = 'MMO_DIAMETRO_MEDIO'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_DM_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DM_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_DM_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DM_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_DIAMETRO_EXTERNO: TFMTBCDField
      FieldName = 'MMO_DIAMETRO_EXTERNO'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_DE_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DE_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_DE_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DE_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_DIAMETRO_EXTERNO_MEIO: TFMTBCDField
      FieldName = 'MMO_DIAMETRO_EXTERNO_MEIO'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_DEM_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DEM_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_DEM_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DEM_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_VAO: TFMTBCDField
      FieldName = 'MMO_VAO'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_VAO_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_VAO_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_VAO_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_VAO_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_PASSO: TFMTBCDField
      FieldName = 'MMO_PASSO'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_PASSO_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_PASSO_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_PASSO_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_PASSO_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_COM_LIVRE: TFMTBCDField
      FieldName = 'MMO_COM_LIVRE'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_LIVRE_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_LIVRE_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_LIVRE_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_LIVRE_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_COM_SOLIDO: TFMTBCDField
      FieldName = 'MMO_COM_SOLIDO'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_SOLIDO_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_SOLIDO_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_SOLIDO_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_SOLIDO_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_ESPIRAIS_UTEIS: TFMTBCDField
      FieldName = 'MMO_ESPIRAIS_UTEIS'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_ESPUTEIS_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ESPUTEIS_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_ESPUTEIS_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ESPUTEIS_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_ESPIRAL_TOTAL: TFMTBCDField
      FieldName = 'MMO_ESPIRAL_TOTAL'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_ESPT_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ESPT_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_ESPT_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ESPT_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_DESENVOLVIMENTO: TFMTBCDField
      FieldName = 'MMO_DESENVOLVIMENTO'
      DisplayFormat = '##,###0.000'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_DES_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DES_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_DES_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DES_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_RETIFICADO: TStringField
      FieldName = 'MMO_RETIFICADO'
      OnGetText = cdsMolaMMO_RETIFICADOGetText
      Size = 1
    end
    object cdsMolaMMO_PARALIELISMO: TIntegerField
      FieldName = 'MMO_PARALIELISMO'
    end
    object cdsMolaMMO_PERPENDICULARIMO: TFMTBCDField
      FieldName = 'MMO_PERPENDICULARIMO'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_SENTIDO: TStringField
      FieldName = 'MMO_SENTIDO'
    end
    object cdsMolaMMO_PESO: TFMTBCDField
      FieldName = 'MMO_PESO'
      DisplayFormat = '##,####0.000'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_OBSERVACAO: TBlobField
      FieldName = 'MMO_OBSERVACAO'
      Size = 1
    end
    object cdsMolaMMO_CONSTANTE_ESPE: TFMTBCDField
      FieldName = 'MMO_CONSTANTE_ESPE'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CONST_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CONST_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CONST_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CONST_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_CONSTANTE_CALCULADA: TFMTBCDField
      FieldName = 'MMO_CONSTANTE_CALCULADA'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_CONST_CALC_MIN: TFMTBCDField
      FieldName = 'MMO_CONST_CALC_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_CONST_CALC_MAX: TFMTBCDField
      FieldName = 'MMO_CONST_CALC_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_ALTURAL1: TFMTBCDField
      FieldName = 'MMO_ALTURAL1'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_ALT1_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ALT1_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_ALT1_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ALT1_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_ALTURAL2: TFMTBCDField
      FieldName = 'MMO_ALTURAL2'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_ALT2_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ALT2_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_ALT2_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ALT2_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_ALTURAL3: TFMTBCDField
      FieldName = 'MMO_ALTURAL3'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_ALT3_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ALT3_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_ALT3_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ALT3_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_ALTURAL4: TFMTBCDField
      FieldName = 'MMO_ALTURAL4'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_ALT4_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ALT4_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_ALT4_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ALT4_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_CURSOS1: TFMTBCDField
      FieldName = 'MMO_CURSOS1'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CURS1_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CURS1_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CURS1_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CURS1_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_CURSOS2: TFMTBCDField
      FieldName = 'MMO_CURSOS2'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CURS2_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CURS2_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CURS2_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CURS2_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_CURSOS3: TFMTBCDField
      FieldName = 'MMO_CURSOS3'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CURS3_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CURS3_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CURS3_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CURS3_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_CURSOS4: TFMTBCDField
      FieldName = 'MMO_CURSOS4'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CURS4_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CURS4_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CURS4_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CURS4_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_CARGAP1: TFMTBCDField
      FieldName = 'MMO_CARGAP1'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CARGA1_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CARGA1_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CARGA1_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CARGA1_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_CARGAP2: TFMTBCDField
      FieldName = 'MMO_CARGAP2'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CARGA2_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CARGA2_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CARGA2_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CARGA2_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_CARGAP3: TFMTBCDField
      FieldName = 'MMO_CARGAP3'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CARGA3_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CARGA3_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CARGA3_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CARGA3_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_CARGAP4: TFMTBCDField
      FieldName = 'MMO_CARGAP4'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CARGA4_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CARGA4_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CARGA4_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CARGA4_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TENSAO1: TFMTBCDField
      FieldName = 'MMO_TENSAO1'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_TENSAO1_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_TENSAO1_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_TENSAO1_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_TENSAO1_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TENSAO2: TFMTBCDField
      FieldName = 'MMO_TENSAO2'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_TENSAO2_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_TENSAO2_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_TENSAO2_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_TENSAO2_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TENSAO3: TFMTBCDField
      FieldName = 'MMO_TENSAO3'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_TENSAO3_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_TENSAO3_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_TENSAO3_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_TENSAO3_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TENSAO4: TFMTBCDField
      FieldName = 'MMO_TENSAO4'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_TENSAO4_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_TENSAO4_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_TENSAO4_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_TENSAO4_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_CARGA: TFMTBCDField
      FieldName = 'MMO_CARGA'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CARGA_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CARGA_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_CARGA_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_CARGA_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TENSAO: TFMTBCDField
      FieldName = 'MMO_TENSAO'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_TEN_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_TEN_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_TEN_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_TEN_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_MAQUINA: TStringField
      FieldName = 'MMO_MAQUINA'
      Size = 100
    end
    object cdsMolaMMO_MANDRIL: TStringField
      FieldName = 'MMO_MANDRIL'
      Size = 100
    end
    object cdsMolaMMO_CACHIMBO: TStringField
      FieldName = 'MMO_CACHIMBO'
      Size = 100
    end
    object cdsMolaMMO_COPIADOR: TStringField
      FieldName = 'MMO_COPIADOR'
      Size = 100
    end
    object cdsMolaMMO_GANCHO: TStringField
      FieldName = 'MMO_GANCHO'
      Size = 100
    end
    object cdsMolaMMO_DISCO: TStringField
      FieldName = 'MMO_DISCO'
      Size = 100
    end
    object cdsMolaMMO_OUTROS: TStringField
      FieldName = 'MMO_OUTROS'
      Size = 100
    end
    object cdsMolaMMO_LOCALIZACAO: TStringField
      FieldName = 'MMO_LOCALIZACAO'
      Size = 100
    end
    object cdsMolaMMO_SETOR: TStringField
      FieldName = 'MMO_SETOR'
      Size = 100
    end
    object cdsMolaMMO_OBSGERAIS: TBlobField
      FieldName = 'MMO_OBSGERAIS'
      Size = 1
    end
    object cdsMolaMMO_COMP_CORPO: TFMTBCDField
      FieldName = 'MMO_COMP_CORPO'
      Size = 0
    end
    object cdsMolaMMO_TOLERANCIA_COMP_CORPO_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_COMP_CORPO_MAX'
      Size = 0
    end
    object cdsMolaMMO_TOLERANCIA_COMP_CORPO_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_COMP_CORPO_MIN'
      Size = 0
    end
    object cdsMolaMMO_ALT_GANCHO: TStringField
      FieldName = 'MMO_ALT_GANCHO'
      Size = 50
    end
    object cdsMolaMMO_TOLERANCIA_ALT_GANCHO_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ALT_GANCHO_MAX'
      Size = 0
    end
    object cdsMolaMMO_TOLERANCIA_ALT_GANCHO_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ALT_GANCHO_MIN'
      Size = 0
    end
    object cdsMolaMMO_ABERT_GANCHO: TStringField
      FieldName = 'MMO_ABERT_GANCHO'
      Size = 50
    end
    object cdsMolaMMO_TOLERANCIA_ABERT_GANCHO_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ABERT_GANCHO_MAX'
      Size = 0
    end
    object cdsMolaMMO_TOLERANCIA_ABERT_GANCHO_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_ABERT_GANCHO_MIN'
      Size = 0
    end
    object cdsMolaMMO_COMP_GANCHO: TFMTBCDField
      FieldName = 'MMO_COMP_GANCHO'
      Size = 0
    end
    object cdsMolaMMO_TOLERANCIA_COMP_GANCHO_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_COMP_GANCHO_MAX'
      Size = 0
    end
    object cdsMolaMMO_TOLERANCIA_COMP_GANCHO_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_COMP_GANCHO_MIN'
      Size = 0
    end
    object cdsMolaMMO_TIPOEMBALAGEM: TStringField
      FieldName = 'MMO_TIPOEMBALAGEM'
      Size = 100
    end
    object cdsMolaMMO_DIAMETRO_EXT_MAIOR: TFMTBCDField
      FieldName = 'MMO_DIAMETRO_EXT_MAIOR'
      Size = 0
    end
    object cdsMolaMMO_TOLERANCIA_DE_MAIOR_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DE_MAIOR_MIN'
      Size = 0
    end
    object cdsMolaMMO_TOLERANCIA_DE_MAIOR_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DE_MAIOR_MAX'
    end
    object cdsMolaMMO_DIAMETRO_EXT_MENOR: TFMTBCDField
      FieldName = 'MMO_DIAMETRO_EXT_MENOR'
      Size = 0
    end
    object cdsMolaMMO_TOLERANCIA_DE_MENOR_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DE_MENOR_MIN'
    end
    object cdsMolaMMO_TOLERANCIA_DE_MENOR_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DE_MENOR_MAX'
    end
    object cdsMolaMMO_PARTE_DI: TStringField
      FieldName = 'MMO_PARTE_DI'
      Size = 1
    end
    object cdsMolaMMO_TOLERANCIA_DI_MENOR_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DI_MENOR_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_DI_MENOR_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DI_MENOR_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_DI_MAIOR_MIN: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DI_MAIOR_MIN'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_TOLERANCIA_DI_MAIOR_MAX: TFMTBCDField
      FieldName = 'MMO_TOLERANCIA_DI_MAIOR_MAX'
      Precision = 18
      Size = 5
    end
    object cdsMolaMMO_PERDA: TFMTBCDField
      FieldName = 'MMO_PERDA'
      DisplayFormat = '##,###0.000'
    end
    object cdsMolaMMO_TIPO_HASTE: TStringField
      FieldName = 'MMO_TIPO_HASTE'
      OnGetText = cdsMolaMMO_TIPO_HASTEGetText
      Size = 1
    end
    object cdsMolaMMO_COMPRIMENTO_HASTE_HA: TFMTBCDField
      FieldName = 'MMO_COMPRIMENTO_HASTE_HA'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
    end
    object cdsMolaMMO_COMPRIMENTO_HASTE_HB: TFMTBCDField
      FieldName = 'MMO_COMPRIMENTO_HASTE_HB'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Size = 0
    end
    object cdsMolaMMO_POSICAO_HASTE: TStringField
      FieldName = 'MMO_POSICAO_HASTE'
      OnGetText = cdsMolaMMO_POSICAO_HASTEGetText
      Size = 1
    end
    object cdsMolaTEM_CODIGO: TIntegerField
      FieldName = 'TEM_CODIGO'
    end
    object cdsMolaMMO_DIAMETRO_INT_MENOR: TStringField
      DisplayWidth = 50
      FieldName = 'MMO_DIAMETRO_INT_MENOR'
      FixedChar = True
      Size = 50
    end
    object cdsMolaMMO_DIAMETRO_INT_MAIOR: TStringField
      DisplayWidth = 50
      FieldName = 'MMO_DIAMETRO_INT_MAIOR'
      FixedChar = True
      Size = 50
    end
    object cdsMolaMMO_DIAMETRO_MEDIO_MEIO: TFMTBCDField
      FieldName = 'MMO_DIAMETRO_MEDIO_MEIO'
      Precision = 18
      Size = 2
    end
    object cdsMolaMMO_DIAMETRO_MEDIO_MEIO_MIN: TFMTBCDField
      FieldName = 'MMO_DIAMETRO_MEDIO_MEIO_MIN'
      Precision = 18
      Size = 2
    end
    object cdsMolaMMO_DIAMETRO_MEDIO_MEIO_MAX: TFMTBCDField
      FieldName = 'MMO_DIAMETRO_MEDIO_MEIO_MAX'
      Precision = 18
      Size = 2
    end
    object cdsMolaMMO_GRAU_TOLERANCIA_DM: TIntegerField
      FieldName = 'MMO_GRAU_TOLERANCIA_DM'
    end
    object cdsMolaMMO_ARQUIVO_FICHA_TECNICA: TStringField
      FieldName = 'MMO_ARQUIVO_FICHA_TECNICA'
      Size = 1024
    end
    object cdsMolaMMO_EXTREMIDADE_MOLA_MATERIA: TStringField
      FieldName = 'MMO_EXTREMIDADE_MOLA_MATERIA'
      OnGetText = cdsMolaMMO_EXTREMIDADE_MOLA_MATERIAGetText
      Size = 1
    end
  end
  object dspMola: TDataSetProvider [126]
    DataSet = qMola
    Left = 1720
    Top = 328
  end
  object dsGancho: TDataSource [127]
    DataSet = cdsGancho
    Left = 1232
    Top = 232
  end
  object cdsGancho: TClientDataSet [128]
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGancho'
    AfterOpen = cdsGanchoAfterOpen
    BeforeInsert = cdsMolaBeforeInsert
    BeforeEdit = cdsMolaBeforeEdit
    BeforePost = cdsMolaBeforePost
    Left = 1232
    Top = 184
    object cdsGanchoGAN_CODIGO: TIntegerField
      FieldName = 'GAN_CODIGO'
      Required = True
    end
    object cdsGanchoGAN_NOME: TStringField
      FieldName = 'GAN_NOME'
      Size = 100
    end
    object cdsGanchoGAN_QTD_ESPIRAS: TSingleField
      FieldName = 'GAN_QTD_ESPIRAS'
      Required = True
    end
  end
  object qGancho: TSQLQuery [129]
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from gancho')
    Left = 1232
    Top = 88
  end
  object dspGancho: TDataSetProvider [130]
    DataSet = qGancho
    Left = 1232
    Top = 136
  end
  object QParametros: TSQLQuery [131]
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PARAMETROS_DA_QUALIDADE')
    Left = 1640
    Top = 280
  end
  object dspParametros: TDataSetProvider [132]
    DataSet = QParametros
    Left = 1640
    Top = 328
  end
  object dsParametros: TDataSource [133]
    DataSet = cdsParametros
    Left = 1640
    Top = 424
  end
  object cdsParametros: TClientDataSet [134]
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametros'
    BeforeInsert = cdsMolaBeforeInsert
    BeforeEdit = cdsMolaBeforeEdit
    BeforePost = cdsMolaBeforePost
    Left = 1640
    Top = 376
    object cdsParametrosPAR_CODIGO: TIntegerField
      FieldName = 'PAR_CODIGO'
    end
    object cdsParametrosPAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Size = 255
    end
  end
  object dsCQP: TDataSource [135]
    DataSet = cdsCQP
    Left = 1574
    Top = 426
  end
  object cdsCQP: TClientDataSet [136]
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PRD_REFER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PAR_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'CQP_ESPERADO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CQP_VALOR_MIN'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CQP_VALOR_MAX'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PAR_DESCRICAO'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspCQP'
    StoreDefs = True
    Left = 1574
    Top = 378
    object cdsCQPPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsCQPPAR_CODIGO: TIntegerField
      FieldName = 'PAR_CODIGO'
    end
    object cdsCQPCQP_ESPERADO: TStringField
      FieldName = 'CQP_ESPERADO'
      Size = 60
    end
    object cdsCQPCQP_VALOR_MIN: TStringField
      FieldName = 'CQP_VALOR_MIN'
      Size = 60
    end
    object cdsCQPCQP_VALOR_MAX: TStringField
      FieldName = 'CQP_VALOR_MAX'
      Size = 60
    end
    object cdsCQPPAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Size = 255
    end
  end
  object dspCQP: TDataSetProvider [137]
    DataSet = qCQP
    Left = 1574
    Top = 330
  end
  object qCQP: TSQLQuery [138]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CONTROLE_DE_QUALIDADE_PRODUTO CQP'
      
        'JOIN PARAMETROS_DA_QUALIDADE PQ ON PQ.PAR_CODIGO = CQP.PAR_CODIG' +
        'O')
    Left = 1574
    Top = 282
    object qCQPPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object qCQPPAR_CODIGO: TIntegerField
      FieldName = 'PAR_CODIGO'
    end
    object qCQPCQP_ESPERADO: TStringField
      FieldName = 'CQP_ESPERADO'
      Size = 60
    end
    object qCQPCQP_VALOR_MIN: TStringField
      FieldName = 'CQP_VALOR_MIN'
      Size = 60
    end
    object qCQPCQP_VALOR_MAX: TStringField
      FieldName = 'CQP_VALOR_MAX'
      Size = 60
    end
    object qCQPPAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Size = 255
    end
  end
  object CdsIndustrializacao: TSqlClientDataSet [139]
    Aggregates = <>
    DataSet.CommandText = 
      'select'#13#10't3.enf_emissao,'#13#10't3.enf_notanumber,'#13#10't1.for_codigo,'#13#10't2.' +
      'for_razao,'#13#10't1.enf_preco,'#13#10'coalesce(t1.enf_preco,0) + coalesce(t' +
      '1.enf_vlsubst,0) + coalesce(t1.enf_it_vlipi,0) + coalesce(t1.enf' +
      '_it_valfrete,0) + coalesce(t1.enf_it_vlseguro,0) + coalesce(t1.e' +
      'nf_it_vldesp_aces,0) as custo_entrada,'#13#10't1.enf_qtde,'#13#10't1.enf_ipi' +
      'aliq,'#13#10't1.enf_vlsubst,'#13#10't1.enf_it_valfrete,'#13#10't1.enf_it_vldesp_ac' +
      'es,'#13#10't1.ENF_IT_DESCTO,'#13#10't1.enf_icmsaliq,'#13#10't1.enf_cfop,'#13#10't2.for_f' +
      'one,'#13#10't2.for_contato'#13#10'from enf_it01 t1'#13#10'join for0000 t2 on (t2.f' +
      'or_codigo = t1.for_codigo)'#13#10'join enf0001 t3 on (t3.enf_notanumbe' +
      'r = t1.enf_it_notanumber and t3.for_codigo = t1.for_codigo)'#13#10'whe' +
      're t1.prd_refer = '#39'0001'#39#13#10'order by t3.enf_entrada desc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = CdsIndustrializacaoCalcFields
    CommandText = 
      'select'#13#10't3.enf_emissao,'#13#10't3.enf_notanumber,'#13#10't1.for_codigo,'#13#10't2.' +
      'for_razao,'#13#10't1.enf_preco,'#13#10'coalesce(t1.enf_preco,0) + coalesce(t' +
      '1.enf_vlsubst,0) + coalesce(t1.enf_it_vlipi,0) + coalesce(t1.enf' +
      '_it_valfrete,0) + coalesce(t1.enf_it_vlseguro,0) + coalesce(t1.e' +
      'nf_it_vldesp_aces,0) as custo_entrada,'#13#10't1.enf_qtde,'#13#10't1.enf_ipi' +
      'aliq,'#13#10't1.enf_vlsubst,'#13#10't1.enf_it_valfrete,'#13#10't1.enf_it_vldesp_ac' +
      'es,'#13#10't1.ENF_IT_DESCTO,'#13#10't1.enf_icmsaliq,'#13#10't1.enf_cfop,'#13#10't2.for_f' +
      'one,'#13#10't2.for_contato'#13#10'from enf_it01 t1'#13#10'join for0000 t2 on (t2.f' +
      'or_codigo = t1.for_codigo)'#13#10'join enf0001 t3 on (t3.enf_notanumbe' +
      'r = t1.enf_it_notanumber and t3.for_codigo = t1.for_codigo)'#13#10'whe' +
      're t1.prd_refer = '#39'0001'#39#13#10'order by t3.enf_entrada desc'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1836
    Top = 571
    object CdsIndustrializacaoENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
    end
    object CdsIndustrializacaoENF_NOTANUMBER: TStringField
      FieldName = 'ENF_NOTANUMBER'
      Size = 10
    end
    object CdsIndustrializacaoFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object CdsIndustrializacaoFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 70
    end
    object CdsIndustrializacaoENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      Precision = 18
      Size = 5
    end
    object CdsIndustrializacaoCUSTO_ENTRADA: TFMTBCDField
      FieldName = 'CUSTO_ENTRADA'
      Precision = 18
      Size = 5
    end
    object CdsIndustrializacaoENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      Precision = 18
      Size = 5
    end
    object CdsIndustrializacaoENF_IPIALIQ: TFMTBCDField
      FieldName = 'ENF_IPIALIQ'
      Precision = 18
      Size = 5
    end
    object CdsIndustrializacaoENF_VLSUBST: TFMTBCDField
      FieldName = 'ENF_VLSUBST'
      Precision = 18
      Size = 5
    end
    object CdsIndustrializacaoENF_IT_VALFRETE: TFMTBCDField
      FieldName = 'ENF_IT_VALFRETE'
      Precision = 18
      Size = 5
    end
    object CdsIndustrializacaoENF_IT_VLDESP_ACES: TFMTBCDField
      FieldName = 'ENF_IT_VLDESP_ACES'
      Precision = 18
      Size = 5
    end
    object CdsIndustrializacaoENF_IT_DESCTO: TFMTBCDField
      FieldName = 'ENF_IT_DESCTO'
      Precision = 18
      Size = 5
    end
    object CdsIndustrializacaoENF_ICMSALIQ: TFMTBCDField
      FieldName = 'ENF_ICMSALIQ'
      Precision = 18
      Size = 5
    end
    object CdsIndustrializacaoENF_CFOP: TStringField
      FieldName = 'ENF_CFOP'
      Size = 4
    end
    object CdsIndustrializacaoFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      Size = 11
    end
    object CdsIndustrializacaoDescontoAplicado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DescontoAplicado'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
    object CdsIndustrializacaoFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object CdsIndustrializacaoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object dsIndustrializacao: TDataSource [140]
    DataSet = CdsIndustrializacao
    Left = 1836
    Top = 619
  end
  object qAuxF: TFDQuery [141]
    Connection = DBInicio.FDACConn
    Left = 440
    Top = 10
  end
  object CdsPrdClassIPI: TFDQuery [142]
    Connection = DBInicio.FDACConn
    Left = 1644
    Top = 479
    object CdsPrdClassIPIIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CdsPrdClassIPIIPI_ALIQ: TFMTBCDField
      FieldName = 'IPI_ALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsPrdClassIPIEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPrdClassIPIIPI_APELIDO: TStringField
      FieldName = 'IPI_APELIDO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsPrdClassIPINCM_TEMCREDITO: TStringField
      FieldName = 'NCM_TEMCREDITO'
      FixedChar = True
      Size = 1
    end
    object CdsPrdClassIPINCM_DESC_FAMILIA: TMemoField
      FieldName = 'NCM_DESC_FAMILIA'
      BlobType = ftMemo
    end
    object CdsPrdClassIPIIPI_VALOR_POR_ITEM: TFMTBCDField
      FieldName = 'IPI_VALOR_POR_ITEM'
      Precision = 20
      Size = 5
    end
    object CdsPrdClassIPIIPI_EX: TStringField
      FieldName = 'IPI_EX'
      FixedChar = True
      Size = 2
    end
  end
  object qRegistroEndereco: TSQLQuery [143]
    Params = <>
    Left = 2156
    Top = 151
  end
  inherited qAux3: TSQLQuery
    Left = 394
    Top = 4
  end
  object cdsLotes: TFDQuery
    BeforeInsert = CdsLotesBeforeInsert
    BeforePost = CdsLotesBeforePost
    AfterPost = CdsLotesAfterPost
    AfterDelete = CdsLotesAfterDelete
    OnCalcFields = CdsLotesCalcFields
    CachedUpdates = True
    Connection = DBInicio.FDACConn
    Left = 1408
    Top = 383
    object cdsLotesPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLotesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsLotesPRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsLotesPRDL_DATA_FABRICACAOGetText
    end
    object cdsLotesPRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsLotesPRDL_DATA_FABRICACAOGetText
    end
    object cdsLotesPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsLotesPRDL_PRECO_MAXIMO: TFMTBCDField
      FieldName = 'PRDL_PRECO_MAXIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object cdsLotesPRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      Precision = 20
      Size = 5
    end
    object cdsLotesPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsLotesPRDL_CADASTRO: TDateField
      FieldName = 'PRDL_CADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLotesPRDL_DESCRICAO: TStringField
      FieldName = 'PRDL_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsLotesPRDL_CUSTO: TFMTBCDField
      FieldName = 'PRDL_CUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object cdsLotesPRDL_NFE: TStringField
      DisplayWidth = 10
      FieldName = 'PRDL_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsLotesFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsLotesFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      ProviderFlags = []
      Size = 40
    end
    object cdsLotesPRDL_QTDELOTE: TFMTBCDField
      FieldName = 'PRDL_QTDELOTE'
      ProviderFlags = []
      Precision = 15
    end
    object cdsLotesQtde_USADA: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'Qtde_USADA'
      ProviderFlags = []
      Precision = 15
    end
    object cdsLotesAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object cdsLotesAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 60
    end
  end
  object cdsEnderecos: TClientDataSet
    Aggregates = <>
    PacketRecords = 6
    Params = <>
    ProviderName = 'dspEnderecos'
    AfterInsert = CdsProdutosAfterInsert
    BeforeEdit = CdsProdutosBeforeEdit
    AfterPost = CdsProdutosAfterPost
    AfterCancel = CdsProdutosAfterCancel
    AfterScroll = CdsProdutosAfterScroll
    OnCalcFields = CdsProdutosCalcFields
    OnNewRecord = CdsProdutosNewRecord
    Left = 1952
    Top = 373
    object cdsEnderecosPRDE_REGISTRO: TIntegerField
      FieldName = 'PRDE_REGISTRO'
    end
    object cdsEnderecosPRDE_ENDERECO: TStringField
      FieldName = 'PRDE_ENDERECO'
      Size = 30
    end
    object cdsEnderecosEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      Size = 70
    end
  end
  object dsEnderecos: TDataSource
    DataSet = cdsEnderecos
    Left = 1952
    Top = 429
  end
  object dspEnderecos: TDataSetProvider
    DataSet = qEnderecos
    Left = 1948
    Top = 327
  end
  object qEnderecos: TSQLQuery
    Params = <>
    Left = 1948
    Top = 279
  end
  object dsRegistroEndereco: TDataSource
    DataSet = qRegistroEndereco
    Left = 2160
    Top = 188
  end
end
