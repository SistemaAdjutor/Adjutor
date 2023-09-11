inherited FormProduto: TFormProduto
  Left = 134
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos e Servi'#231'os'
  ClientHeight = 607
  ClientWidth = 971
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDefaultPosOnly
  Visible = True
  OnActivate = nil
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 977
  ExplicitHeight = 632
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox2: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 971
    Height = 46
    Align = alTop
    TabOrder = 3
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
      ExplicitLeft = 103
      ExplicitTop = 15
    end
  end
  object PctrlProdutos: TPageControl [1]
    Left = 0
    Top = 46
    Width = 971
    Height = 566
    ActivePage = Tbs_FichaTec
    Align = alTop
    HotTrack = True
    TabOrder = 0
    TabStop = False
    OnChange = PctrlProdutosChange
    object Tbs_FichaTec: TTabSheet
      Caption = 'Ficha T'#233'cnica'
      ImageIndex = 1
      object GrpGrade: TGroupBox
        Left = 0
        Top = 190
        Width = 784
        Height = 75
        Caption = 'Itens Secund'#225'rios '
        TabOrder = 7
        object DBGridGrade: TDBGrid
          Left = 3
          Top = 22
          Width = 778
          Height = 59
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
              Width = 367
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
      object GrpVariacoes: TGroupBox
        Left = 0
        Top = 32
        Width = 784
        Height = 52
        Caption = 'Varia'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
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
        Top = 34
        Width = 953
        Height = 255
        Caption = 'Mat'#233'rias-Primas'
        TabOrder = 1
        object Label114: TLabel
          Left = 756
          Top = 233
          Width = 62
          Height = 14
          Caption = 'Custo Total : '
        end
        object DBGridFichaTecnicaItem: TDBGrid
          Left = 2
          Top = 15
          Width = 949
          Height = 211
          Hint = 'D'#234' duplo clique na grade p/fazer altera'#231#227'o do item !'
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
              Title.Font.Style = [fsBold]
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
              Title.Font.Style = [fsBold]
              Width = 370
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRG_DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Grade'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 177
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
              Title.Font.Style = [fsBold]
              Width = 21
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_PCUSTO'
              Title.Alignment = taCenter
              Title.Caption = 'Custo'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FTI_UC'
              Title.Alignment = taCenter
              Title.Caption = 'UC'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTALITEM'
              Title.Alignment = taCenter
              Title.Caption = 'Custo do Material'
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
              FieldName = 'PRD_UND'
              Title.Alignment = taCenter
              Title.Caption = 'UND'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
      object GrpProcesso: TGroupBox
        Left = 0
        Top = 295
        Width = 953
        Height = 116
        Caption = 'PROCESSO DE PRODU'#199#195'O:'
        TabOrder = 2
        TabStop = True
        object ScrollBox1: TScrollBox
          Left = 2
          Top = 16
          Width = 949
          Height = 98
          Align = alClient
          TabOrder = 0
          object DbeFtc_proc1: TDBEdit
            Left = 2
            Top = 0
            Width = 925
            Height = 17
            BorderStyle = bsNone
            DataField = 'FTC_PROC1'
            DataSource = DmProducao.DsFichaTec
            TabOrder = 0
          end
          object DbeFtc_proc2: TDBEdit
            Left = 2
            Top = 19
            Width = 925
            Height = 17
            BorderStyle = bsNone
            DataField = 'FTC_PROC2'
            DataSource = DmProducao.DsFichaTec
            TabOrder = 1
          end
          object DbeFtc_proc3: TDBEdit
            Left = 2
            Top = 38
            Width = 925
            Height = 17
            BorderStyle = bsNone
            DataField = 'FTC_PROC3'
            DataSource = DmProducao.DsFichaTec
            TabOrder = 2
          end
          object DBEFtc_proc4: TDBEdit
            Left = 2
            Top = 57
            Width = 925
            Height = 17
            BorderStyle = bsNone
            DataField = 'FTC_PROC4'
            DataSource = DmProducao.DsFichaTec
            TabOrder = 3
          end
          object DBEFtc_proc5: TDBEdit
            Left = 2
            Top = 76
            Width = 925
            Height = 17
            BorderStyle = bsNone
            DataField = 'FTC_PROC5'
            DataSource = DmProducao.DsFichaTec
            TabOrder = 4
          end
          object DBEFtc_proc6: TDBEdit
            Left = 2
            Top = 95
            Width = 925
            Height = 16
            BorderStyle = bsNone
            DataField = 'FTC_PROC6'
            DataSource = DmProducao.DsFichaTec
            TabOrder = 5
          end
          object DBEFtc_Proc7: TDBEdit
            Left = 2
            Top = 113
            Width = 925
            Height = 17
            BorderStyle = bsNone
            DataField = 'FTC_PROC7'
            DataSource = DmProducao.DsFichaTec
            TabOrder = 6
          end
          object DBEFtc_Proc8: TDBEdit
            Left = 2
            Top = 132
            Width = 925
            Height = 17
            BorderStyle = bsNone
            DataField = 'FTC_PROC8'
            DataSource = DmProducao.DsFichaTec
            TabOrder = 7
          end
        end
      end
      object GrpMateriaPrima: TGroupBox
        Left = 0
        Top = 411
        Width = 953
        Height = 86
        Caption = 'Materia-Prima'
        TabOrder = 3
        TabStop = True
        object Label57: TLabel
          Left = 5
          Top = 12
          Width = 37
          Height = 14
          Caption = 'Material'
        end
        object SpProduto: TSpeedButton
          Left = 462
          Top = 25
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
          Left = 660
          Top = 12
          Width = 45
          Height = 14
          Caption = 'Consumo'
        end
        object Label59: TLabel
          Left = 851
          Top = 12
          Width = 83
          Height = 14
          Caption = 'Data Modifica'#231#227'o'
        end
        object Label60: TLabel
          Left = 755
          Top = 12
          Width = 86
          Height = 14
          Caption = 'Consumo Anterior'
        end
        object Label61: TLabel
          Left = 114
          Top = 12
          Width = 107
          Height = 14
          Caption = 'Descri'#231#227'o do Material:'
        end
        object Label107: TLabel
          Left = 490
          Top = 12
          Width = 30
          Height = 14
          Caption = 'Grade'
        end
        object SdCadastroGrade: TSpeedButton
          Left = 633
          Top = 25
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
          Left = 492
          Top = 44
          Width = 28
          Height = 14
          Caption = 'Custo'
          Visible = False
        end
        object EdtRefer: TEdit
          Left = 5
          Top = 25
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
          Top = 25
          Width = 348
          Height = 22
          TabStop = False
          AutoSelect = False
          CharCase = ecUpperCase
          Color = 14145495
          MaxLength = 50
          ReadOnly = True
          TabOrder = 1
        end
        object CurrConsumo: TCurrencyEdit
          Left = 659
          Top = 25
          Width = 95
          Height = 21
          AutoSize = False
          DecimalPlaces = 4
          DisplayFormat = ',0.0000;-,0.0000'
          MaxLength = 15
          TabOrder = 3
        end
        object CurrAnterior: TCurrencyEdit
          Left = 755
          Top = 25
          Width = 95
          Height = 21
          AutoSelect = False
          AutoSize = False
          DecimalPlaces = 4
          DisplayFormat = ',0.0000;-,0.0000'
          MaxLength = 15
          TabOrder = 4
        end
        object DateModif: TDateEdit
          Left = 851
          Top = 25
          Width = 95
          Height = 22
          NumGlyphs = 2
          YearDigits = dyFour
          TabOrder = 5
        end
        object CbGrade: TComboBoxRw
          Left = 490
          Top = 25
          Width = 119
          Height = 22
          TabOrder = 2
          CharCase = ecUpperCase
          LookupSelect = 'prg_descricao'
          LookupOrderBy = 'prg_descricao'
          LookupTable = 'prd_grade'
          GridAutoSize = False
          LookupSource = CbGrade.InternalSource
          LookupKeyField = 'PRG_REGISTRO'
          ShowButton = True
          LookupTableShare = 'TABELAS'
          AutoF8WinTitulo = 'Grades'
          AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          Tabela = 'prd_grade'
          CamposCarregar = 'prg_descricao'
          CamposRetornar = 'PRG_REGISTRO'
          CamposOrdernar = 'prg_descricao'
          ConexaoBanco = DBConn
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
        object CurCustoFicha: TCurrencyEdit
          Left = 491
          Top = 57
          Width = 95
          Height = 21
          AutoSize = False
          DecimalPlaces = 4
          DisplayFormat = ',0.0000;-,0.0000'
          MaxLength = 15
          TabOrder = 6
          Visible = False
        end
        object Bit_ExcluirMateria: TBitBtn
          Left = 651
          Top = 55
          Width = 95
          Height = 25
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
          TabOrder = 7
          TabStop = False
          OnClick = Bit_ExcluirMateriaClick
        end
        object Bit_GravarMateria: TBitBtn
          Left = 750
          Top = 55
          Width = 95
          Height = 25
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
          TabOrder = 8
          OnClick = Bit_GravarMateriaClick
        end
        object Bit_CancelarMateria: TBitBtn
          Left = 851
          Top = 55
          Width = 95
          Height = 25
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
          TabOrder = 9
          OnClick = Bit_CancelarMateriaClick
        end
      end
      object PAN_FTC03: TPanel
        Left = 0
        Top = 2
        Width = 784
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
          Left = 487
          Top = 8
          Width = 68
          Height = 14
          Caption = 'Data Cria'#231#227'o :'
        end
        object Label36: TLabel
          Left = 664
          Top = 8
          Width = 29
          Height = 14
          Hint = 'Tempo Unit'#225'rio de Produ'#231#227'o'
          Caption = 'T.U.P.:'
          ParentShowHint = False
          ShowHint = True
        end
        object DbDtFTC_CRIACAO: TDBDateEdit
          Left = 571
          Top = 4
          Width = 90
          Height = 22
          DataField = 'FTC_CRIACAO'
          DataSource = DmProducao.DsFichaTec
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          TabOrder = 1
          YearDigits = dyFour
          OnKeyPress = DbDtFTC_CRIACAOKeyPress
        end
        object DbeFTC_TUP: TDBEdit
          Left = 707
          Top = 4
          Width = 73
          Height = 22
          Hint = 'Tempo Unit'#225'rio de Produ'#231#227'o'
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
      end
      object PAN_FTC01: TPanel
        Left = 1
        Top = 496
        Width = 98
        Height = 33
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = '11'
        TabOrder = 4
        object BIT_FTC_RELATORIO: TBitBtn
          Left = 4
          Top = 4
          Width = 90
          Height = 25
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
          TabOrder = 0
          TabStop = False
          OnClick = BIT_FTC_RELATORIOClick
        end
      end
      object PAN_FTC02: TPanel
        Left = 473
        Top = 496
        Width = 483
        Height = 33
        Cursor = crHandPoint
        BevelOuter = bvNone
        TabOrder = 5
        object BIT_FTC_EXCLUIR: TBitBtn
          Left = 194
          Top = 4
          Width = 95
          Height = 25
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
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            04000000000070000000CE0E0000D80E00001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333300033333300333330003333
            3300333330003333330033000000000333003300000000033300330000000003
            3300333330003333330033333000333333003333300033333300333333333333
            33003333333333333300}
          TabOrder = 1
          TabStop = False
          OnClick = Bit_FTC_CopiarClick
        end
        object BIT_FTC_CANCELAR: TBitBtn
          Left = 384
          Top = 4
          Width = 95
          Height = 25
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
          TabOrder = 4
          TabStop = False
          OnClick = Bit_FTC_CancelarClick
        end
      end
      object NumEdit2: TCurrencyEdit
        Left = 822
        Top = 264
        Width = 104
        Height = 19
        TabStop = False
        AutoSize = False
        Color = clBtnFace
        DecimalPlaces = 4
        DisplayFormat = '###,###,####0.0000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
    end
    object Tbs_Produtos: TTabSheet
      Caption = 'Cadastro de Produtos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 963
        Height = 157
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 21
          Top = 33
          Width = 52
          Height = 14
          Caption = 'Descri'#231#227'o:'
        end
        object Label4: TLabel
          Left = 721
          Top = 33
          Width = 27
          Height = 14
          Caption = 'UND.:'
        end
        object Label8: TLabel
          Left = 6
          Top = 57
          Width = 67
          Height = 14
          Caption = 'Complemento:'
        end
        object Label3: TLabel
          Left = 18
          Top = 11
          Width = 56
          Height = 14
          Caption = 'Refer'#234'ncia:'
        end
        object DbePrd_Descri: TDBEdit
          Left = 72
          Top = 29
          Width = 643
          Height = 22
          BiDiMode = bdLeftToRight
          CharCase = ecUpperCase
          DataField = 'PRD_DESCRI'
          DataSource = DsProdutos
          ParentBiDiMode = False
          TabOrder = 1
        end
        object DBRadClasse: TDBRadioGroup
          Left = 824
          Top = 5
          Width = 130
          Height = 58
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
        object DBMemo1: TDBMemo
          Left = 72
          Top = 54
          Width = 744
          Height = 99
          DataField = 'PRD_COMPL'
          DataSource = DsProdutos
          ScrollBars = ssVertical
          TabOrder = 2
          OnKeyPress = DBMemo1KeyPress
        end
        object EdtPrd_Refer: TEdit
          Left = 72
          Top = 4
          Width = 141
          Height = 22
          CharCase = ecUpperCase
          MaxLength = 20
          TabOrder = 0
          OnExit = EdtPrd_ReferExit
        end
        object Bit_AlterarRef: TBitBtn
          Left = 219
          Top = 5
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
          Left = 365
          Top = 5
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
          Left = 825
          Top = 63
          Width = 129
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
            Top = 37
            Width = 97
            Height = 17
            Caption = 'Gerencia Lote'
            DataField = 'PRD_GERENCIA_LOTE'
            DataSource = DsProdutos
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox1: TDBCheckBox
            Left = 5
            Top = 65
            Width = 116
            Height = 17
            Caption = 'Grade Obrigat'#243'ria'
            DataField = 'PRD_GRADE_OBRIGATORIO'
            DataSource = DsProdutos
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object DBComboBox1: TcxDBComboBox
          Left = 749
          Top = 28
          DataBinding.DataField = 'PRD_UND'
          DataBinding.DataSource = DsProdutos
          Properties.Items.Strings = (
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
            'SC'
            'KIT'
            'KWH'
            'FL'
            'EX')
          TabOrder = 7
          Width = 68
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
        Left = 471
        Top = 494
        Width = 486
        Height = 33
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 4
        object Bit_novo: TBitBtn
          Left = 5
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
          Left = 100
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
          Left = 195
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
          Left = 291
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
          Left = 387
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
        Left = 1
        Top = 301
        Width = 760
        Height = 188
        Cursor = crHandPoint
        ActivePage = tsPrecos
        HotTrack = True
        TabOrder = 2
        OnChange = PgCtrl_ProdutosChange
        object TbS_Caract: TTabSheet
          Caption = 'Caracter'#237'sticas'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object RichDoc: TRichEdit
            Left = 0
            Top = 0
            Width = 752
            Height = 129
            Align = alTop
            Color = 16776176
            Lines.Strings = (
              'Documento')
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
            Zoom = 100
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
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel16: TPanel
            Left = 0
            Top = 0
            Width = 752
            Height = 159
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object GroupBox11: TGroupBox
              Left = 0
              Top = 0
              Width = 265
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
                Hint = 'Liquido+IPI+Frete+Despesas'
                Color = 14145495
                DataField = 'PRD_CUSTOCOMIPI'
                DataSource = DsProdutos
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 1
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
                TabOrder = 2
              end
              object DBECustoCredito: TDBEdit
                Left = 94
                Top = 91
                Width = 100
                Height = 22
                Hint = 'Liquido - IPI - ICMS - PIS - COFINS'
                Color = 14145495
                DataField = 'PRD_CUSTO_CREDITO'
                DataSource = DsProdutos
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 3
              end
            end
            object GroupBox12: TGroupBox
              Left = 265
              Top = 0
              Width = 239
              Height = 119
              Align = alClient
              Caption = 'Margens'
              TabOrder = 1
              object Label82: TLabel
                Left = 21
                Top = 21
                Width = 90
                Height = 14
                Caption = 'Margem de Venda:'
              end
              object Label83: TLabel
                Left = 21
                Top = 47
                Width = 90
                Height = 14
                Caption = 'Margem de Oferta:'
              end
              object Label77: TLabel
                Left = 31
                Top = 70
                Width = 80
                Height = 14
                Caption = 'Comiss'#227'o ( % ) :'
              end
              object DBEmargemVenda: TDBEdit
                Left = 114
                Top = 16
                Width = 100
                Height = 22
                DataField = 'PRD_MARGEMVENDA'
                DataSource = DsProdutos
                TabOrder = 0
                OnExit = DBEmargemVendaExit
              end
              object DBEmargemOferta: TDBEdit
                Left = 114
                Top = 42
                Width = 100
                Height = 22
                DataField = 'PRD_MARGEMOFERTA'
                DataSource = DsProdutos
                TabOrder = 1
                OnExit = DBEmargemOfertaExit
              end
              object DBEcomissao: TDBEdit
                Left = 114
                Top = 66
                Width = 100
                Height = 22
                DataField = 'PRD_COMISSAO'
                DataSource = DsProdutos
                TabOrder = 2
              end
            end
            object gbPrecos: TGroupBox
              Left = 504
              Top = 0
              Width = 248
              Height = 119
              Align = alRight
              Caption = 'Pre'#231'os'
              TabOrder = 2
              object Label79: TLabel
                Left = 56
                Top = 21
                Width = 80
                Height = 14
                Caption = 'Pre'#231'o de Venda:'
              end
              object Label85: TLabel
                Left = 56
                Top = 47
                Width = 80
                Height = 14
                Caption = 'Pre'#231'o de Oferta:'
              end
              object Label80: TLabel
                Left = 6
                Top = 70
                Width = 130
                Height = 14
                Caption = 'Utilizar na Tabela de Pre'#231'o:'
              end
              object Label109: TLabel
                Left = 78
                Top = 94
                Width = 58
                Height = 14
                Caption = 'UND. Indice:'
              end
              object DBEprecoVenda: TDBEdit
                Left = 139
                Top = 16
                Width = 100
                Height = 22
                DataField = 'PRD_PVENDA'
                DataSource = DsProdutos
                TabOrder = 0
                OnExit = DBEprecoVendaExit
              end
              object DBEprecoOferta: TDBEdit
                Left = 139
                Top = 42
                Width = 100
                Height = 22
                DataField = 'PRD_PRECOOFERTA'
                DataSource = DsProdutos
                TabOrder = 1
                OnExit = DBEprecoOfertaExit
              end
              object DBComboBox3: TDBComboBox
                Left = 139
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
                TabOrder = 2
              end
              object dbcbbPRD_UND_GRADE_CALCULO: TDBComboBox
                Left = 139
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
                TabOrder = 3
              end
            end
            object GroupBox14: TGroupBox
              Left = 0
              Top = 119
              Width = 752
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
              object DBDateEdit1: TDBDateEdit
                Left = 89
                Top = 13
                Width = 100
                Height = 22
                DataField = 'PRD_INICIOOFERTA'
                DataSource = DsProdutos
                NumGlyphs = 2
                TabOrder = 0
              end
              object DBDateEdit2: TDBDateEdit
                Left = 264
                Top = 13
                Width = 100
                Height = 22
                DataField = 'PRD_FIMOFERTA'
                DataSource = DsProdutos
                NumGlyphs = 2
                TabOrder = 1
              end
            end
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Custos'
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox15: TGroupBox
            Left = 0
            Top = 0
            Width = 369
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
              Top = 46
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
              Top = 98
              Width = 53
              Height = 14
              Caption = 'Adicionais:'
            end
            object Label105: TLabel
              Left = 24
              Top = 122
              Width = 71
              Height = 14
              Caption = 'Data do Custo:'
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
              OnExit = DBEmargemVendaExit
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
              Color = 14145495
              DataField = 'PRD_CUSTOADCIONAL'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 3
              OnExit = DBEmargemOfertaExit
            end
            object dbedtPRD_DTPCUSTO: TDBEdit
              Left = 95
              Top = 116
              Width = 100
              Height = 22
              Color = 14145495
              DataField = 'PRD_DTPCUSTO'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 4
              OnExit = DBEmargemOfertaExit
            end
          end
          object GroupBox16: TGroupBox
            Left = 369
            Top = 0
            Width = 383
            Height = 159
            Align = alClient
            Caption = 'Agregar no Pre'#231'o de Venda'
            TabOrder = 1
            object Label40: TLabel
              Left = 22
              Top = 20
              Width = 105
              Height = 14
              Caption = 'Despesas Fixas (%) :'
            end
            object Label62: TLabel
              Left = 11
              Top = 44
              Width = 116
              Height = 14
              Caption = 'Ind'#237'ce sobre Venda (x) :'
            end
            object DBEdit18: TDBEdit
              Left = 129
              Top = 16
              Width = 100
              Height = 22
              Color = 14145495
              DataField = 'PRD_MGDESPFIXAS'
              DataSource = DsProdutos
              ReadOnly = True
              TabOrder = 0
              OnExit = DBEmargemVendaExit
            end
            object DBEdit19: TDBEdit
              Left = 129
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
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 752
            Height = 159
            Align = alClient
            TabOrder = 1
            OnEnter = Panel7Enter
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
              Left = 629
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
              Left = 628
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
              Left = 658
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
              Left = 658
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
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 752
            Height = 106
            Color = 16776176
            Ctl3D = True
            DataSource = DsQFornec
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
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
        object TbS_FatorConv: TTabSheet
          Caption = 'Fator de Convers'#227'o'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label17: TLabel
            Left = 5
            Top = 8
            Width = 498
            Height = 14
            Caption = 
              'Utilizado em algumas mat'#233'rias-primas as quais compro em uma medi' +
              'da e fa'#231'o o custo em outra medida.'
          end
          object utilizar: TDBCheckBox
            Left = 8
            Top = 35
            Width = 189
            Height = 17
            Caption = 'Utilizar fator de convers'#227'o'
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
            Width = 752
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
              Left = 37
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
              Left = 192
              Top = 19
              Width = 59
              Height = 14
              Caption = 'Fator Pre'#231'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 31
              Top = 48
              Width = 85
              Height = 14
              Caption = 'Und. de Trabalho:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label74: TLabel
              Left = 545
              Top = 20
              Width = 98
              Height = 14
              Caption = 'Fator Prod./Estoque:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 117
              Top = 17
              Width = 40
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
              Left = 255
              Top = 15
              Width = 100
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
              Left = 117
              Top = 45
              Width = 40
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
              Left = 182
              Top = 36
              Width = 283
              Height = 62
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
              Left = 647
              Top = 15
              Width = 100
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
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
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
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 752
            Height = 159
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object GroupBox4: TGroupBox
              Left = 0
              Top = 0
              Width = 752
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
                Left = 136
                Top = 13
                Width = 74
                Height = 14
                Caption = 'Pre'#231'o Tabela 2:'
              end
              object LabTabela3: TLabel
                Left = 259
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
                Left = 136
                Top = 83
                Width = 80
                Height = 14
                Caption = 'Comiss'#227'o 2 (%):'
              end
              object lbComissao3: TLabel
                Left = 259
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
                Left = 138
                Top = 48
                Width = 62
                Height = 14
                Caption = 'Verba 2 (%):'
              end
              object lbVerba3: TLabel
                Left = 261
                Top = 48
                Width = 62
                Height = 14
                Caption = 'Verba 3 (%):'
              end
              object LabTabela4: TLabel
                Left = 398
                Top = 13
                Width = 74
                Height = 14
                BiDiMode = bdLeftToRight
                Caption = 'Pre'#231'o Tabela 4:'
                ParentBiDiMode = False
              end
              object LabTabela5: TLabel
                Left = 516
                Top = 13
                Width = 74
                Height = 14
                Caption = 'Pre'#231'o Tabela 5:'
              end
              object LabTabela6: TLabel
                Left = 636
                Top = 13
                Width = 74
                Height = 14
                Caption = 'Pre'#231'o Tabela 6:'
              end
              object lbComissao4: TLabel
                Left = 398
                Top = 83
                Width = 80
                Height = 14
                BiDiMode = bdLeftToRight
                Caption = 'Comiss'#227'o 4 (%):'
                ParentBiDiMode = False
              end
              object lbComissao5: TLabel
                Left = 516
                Top = 83
                Width = 80
                Height = 14
                Caption = 'Comiss'#227'o 5 (%):'
              end
              object lbComissao6: TLabel
                Left = 636
                Top = 83
                Width = 80
                Height = 14
                Caption = 'Comiss'#227'o 6 (%):'
              end
              object lbVerba4: TLabel
                Left = 398
                Top = 48
                Width = 62
                Height = 14
                BiDiMode = bdLeftToRight
                Caption = 'Verba 4 (%):'
                ParentBiDiMode = False
              end
              object lbVerba5: TLabel
                Left = 516
                Top = 48
                Width = 62
                Height = 14
                Caption = 'Verba 5 (%):'
              end
              object lbVerba6: TLabel
                Left = 636
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
                Left = 136
                Top = 27
                Width = 100
                Height = 22
                DataField = 'PRD_PVENDA2'
                DataSource = DsProdutos
                TabOrder = 1
              end
              object DBEdit52: TDBEdit
                Left = 259
                Top = 27
                Width = 100
                Height = 22
                DataField = 'PRD_PVENDA3'
                DataSource = DsProdutos
                TabOrder = 2
              end
              object DBEdit38: TDBEdit
                Left = 398
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
                Left = 516
                Top = 27
                Width = 100
                Height = 22
                DataField = 'PRD_PVENDA5'
                DataSource = DsProdutos
                TabOrder = 4
              end
              object DBEdit40: TDBEdit
                Left = 636
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
                Left = 136
                Top = 60
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_VENDA2'
                DataSource = DsProdutos
                TabOrder = 7
              end
              object DBEdit34: TDBEdit
                Left = 259
                Top = 60
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_VENDA3'
                DataSource = DsProdutos
                TabOrder = 8
              end
              object DBEdit35: TDBEdit
                Left = 398
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
                Left = 516
                Top = 60
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_VENDA5'
                DataSource = DsProdutos
                TabOrder = 10
              end
              object DBEdit37: TDBEdit
                Left = 636
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
                Left = 136
                Top = 96
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_COMISSAO2'
                DataSource = DsProdutos
                TabOrder = 13
              end
              object DBEdit43: TDBEdit
                Left = 259
                Top = 96
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_COMISSAO3'
                DataSource = DsProdutos
                TabOrder = 14
              end
              object DBEdit44: TDBEdit
                Left = 398
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
                Left = 516
                Top = 96
                Width = 100
                Height = 22
                DataField = 'PRD_PERC_COMISSAO5'
                DataSource = DsProdutos
                TabOrder = 16
              end
              object DBEdit46: TDBEdit
                Left = 636
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
              Width = 752
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
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label91: TLabel
            Left = 480
            Top = 0
            Width = 73
            Height = 14
            Caption = 'C'#243'digo Produto'
          end
          object Label92: TLabel
            Left = 480
            Top = 80
            Width = 56
            Height = 14
            Caption = 'Fornecedor'
          end
          object Label106: TLabel
            Left = 480
            Top = 40
            Width = 123
            Height = 14
            Caption = 'Descri'#231#227'o do Fornecedor'
          end
          object DBGrid4: TDBGrid
            Left = 0
            Top = 0
            Width = 465
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
            Left = 480
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
            Left = 480
            Top = 128
            Width = 260
            Height = 25
            DataSource = dsProdutosReferencia
            TabOrder = 4
          end
          object dbedtPRDC_REFERENCIA: TDBEdit
            Left = 481
            Top = 14
            Width = 264
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PRDC_REFERENCIA'
            DataSource = dsProdutosReferencia
            TabOrder = 1
          end
          object dbedtPRDC_DESSCRICAO: TDBEdit
            Left = 480
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
      object Panel18: TPanel
        Left = 768
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
          Height = 136
          Align = alTop
          Center = True
          Proportional = True
          Stretch = True
        end
        object btnAddImage: TSpeedButton
          Left = 160
          Top = 144
          Width = 23
          Height = 22
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
          OnClick = btnAddImageClick
        end
        object btnRemoveImage: TSpeedButton
          Left = 136
          Top = 144
          Width = 23
          Height = 22
          Glyph.Data = {
            FE050000424DFE05000000000000360400002800000017000000130000000100
            080000000000C8010000C40E0000C40E000000010000000100004F4650005044
            5C005C53500061575400625855006B605C0067567B0070656100786C68007B6F
            6B00786B740081747000857873008B7E79008C7F7A008D807B008F817C003D23
            9F00583DAA004424BB004626BC004E30B9004F31B90075648A005E46A5006F57
            A6006D50BC00795EBC007860A1003210C4003714C8003815C9003B18CC002B04
            D4002C05D5002D06D7002E07D8002900DF003009D900340CDC00350DDD00350E
            DE004019DA00421BDD005735CB004823D7004C26DA005C38DD007553DA007654
            DC008670A3008C6CD7008262DB008F6FDA0096888200A2928C00AA9A9400AD9D
            96009E88AC00B09DA400BDABA400B5A2A900C3B0A900C1ACB200B699D800FFFF
            FF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000414141414141
            4141414141414141414141414141414141004141414141414141414141414141
            4141414141414141410041414141414141414141414141414141414141414141
            41004141414141413805364141414141414141370D4141414100414141414133
            2511043E41414141414118233741414141004141414141402526010941414141
            3F13251B414141414100414141414141342520021041413F1F233A4141414141
            410041414141414141312516030F3B1F233A4141414141414100414141414141
            4141312515001D223A4141414141414141004141414141414141413025222106
            414141414141414141004141414141414141413F242514070E41414141414141
            410041414141414141413F1F231A282C0A0B3C41414141414100414141414141
            413F1F253241412B2D1708394141414141004141414141413D1E251941414141
            2F271C0C4141414141004141414141411E251241414141414135254141414141
            410041414141412A251341414141414141414141414141414100414141414129
            2E41414141414141414141414141414141004141414141414141414141414141
            4141414141414141410041414141414141414141414141414141414141414141
            4100}
          OnClick = btnRemoveImageClick
        end
      end
      object PageControl2: TPageControl
        Left = 1
        Top = 159
        Width = 953
        Height = 142
        ActivePage = TabSheet10
        TabOrder = 1
        object TabSheet9: TTabSheet
          Caption = 'Organiza'#231#227'o do Produto'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox21: TGroupBox
            Left = 0
            Top = 0
            Width = 489
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
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
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
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
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
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
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
          end
          object GroupBox22: TGroupBox
            Left = 489
            Top = 0
            Width = 456
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
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
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
            Top = 15
            Width = 110
            Height = 14
            Caption = 'Subs.Tribut'#225'ria.(S/N)?:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label6: TLabel
            Left = 105
            Top = 50
            Width = 15
            Height = 14
            Caption = 'ST:'
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
            Left = 587
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
          object JvDBComboBox1: TJvDBComboBox
            Left = 123
            Top = 0
            Width = 414
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
              '0 '#8211' Nacional, exceto as indicadas nos c'#243'digos 3 a 5;'
              
                '1 '#8211' Estrangeira '#8211' Importa'#231#227'o direta, exceto a indicada no c'#243'digo' +
                ' 6;'
              
                '2 '#8211' Estrangeira '#8211' Adquirida no mercado interno, exceto a indicad' +
                'a no c'#243'digo 7;'
              
                '3 '#8211' Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
                'ior a 40% (quarenta por cento);'
              
                '4 '#8211' Nacional, cuja produ'#231#227'o tenha sido feita em conformidade com' +
                ' os processos produtivos b'#225'sicos de que tratam o Decreto-Lei n'#186' ' +
                '288/67, e as Leis n'#186's 8.248/91, 8.387/91, 10.176/01 e 11.484/07;'
              
                '5 '#8211' Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o infer' +
                'ior ou igual a 40% (quarenta por cento);'
              
                '6 '#8211' Estrangeira '#8211' Importa'#231#227'o direta, sem similar nacional, const' +
                'ante em lista de Resolu'#231#227'o CAMEX;'
              
                '7 - Estrangeira '#8211' Adquirida no mercado interno, sem similar naci' +
                'onal, constante em lista de Resolu'#231#227'o CAMEX.";'
              
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
            Left = 549
            Top = -2
            Width = 393
            Height = 96
            Caption = 'SPED'
            TabOrder = 1
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
              Caption = 'Genero:'
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
            object DBEdit23: TDBEdit
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
              Width = 300
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
            object DBEdit61: TDBEdit
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
              Width = 300
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
              Width = 300
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
            TabOrder = 2
            OnExit = DbcLkPrd_IPIExit
          end
          object DBEdit16: TDBEdit
            Left = 465
            Top = 12
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
            TabOrder = 3
            Visible = False
          end
          object DbePrd_ICMSubs: TDBEdit
            Left = 431
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
            TabOrder = 4
          end
          object DBE_SITRIBUT: TDBEdit
            Left = 486
            Top = 23
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
            TabOrder = 5
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
            TabOrder = 6
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
            TabOrder = 10
          end
          object DBCheckBox2: TDBCheckBox
            Left = 279
            Top = 72
            Width = 97
            Height = 17
            Caption = 'CEST Revisado'
            DataField = 'CEST_REVISAR'
            DataSource = DsProdutos
            TabOrder = 11
            ValueChecked = 'N'
            ValueUnchecked = 'S'
          end
          object DBEdit24: TsgDBLookupCombo
            Left = 123
            Top = 69
            Width = 128
            Height = 22
            TabOrder = 7
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
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            OnMenuPesquisaClick = DBEdit24MenuPesquisaClick
          end
          object DBEdit33: TDBEdit
            Left = 123
            Top = 92
            Width = 33
            Height = 22
            DataField = 'PRD_CSTPISCOFINS'
            DataSource = DsProdutos
            TabOrder = 8
          end
          object SgDbSearchCombo1: TSgDbSearchCombo
            Left = 161
            Top = 92
            Width = 354
            Height = 22
            TabOrder = 9
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
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
          end
          object DbePrd_ICMS: TDBEdit
            Left = 902
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
            TabOrder = 12
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Estoque'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label18: TLabel
            Left = 8
            Top = 4
            Width = 77
            Height = 14
            Caption = 'Estoque M'#237'nimo:'
            Color = clBtnFace
            ParentColor = False
            Transparent = True
          end
          object Label24: TLabel
            Left = 195
            Top = 3
            Width = 81
            Height = 14
            Caption = 'Estoque M'#225'ximo:'
            Color = clBtnFace
            ParentColor = False
            Transparent = True
          end
          object btnCadastroEnderecamento: TSpeedButton
            Left = 921
            Top = 0
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
            Left = 476
            Top = 3
            Width = 78
            Height = 14
            Caption = 'Endere'#231'amento:'
          end
          object DBePrd_minimo: TDBEdit
            Left = 87
            Top = 0
            Width = 100
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PRD_MINIMO'
            DataSource = DsProdutos
            TabOrder = 0
          end
          object DbePrd_Maximo: TDBEdit
            Left = 279
            Top = 0
            Width = 100
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PRD_MAXIMO'
            DataSource = DsProdutos
            MaxLength = 15
            TabOrder = 1
          end
          object GroupBox17: TGroupBox
            Left = 0
            Top = 19
            Width = 945
            Height = 94
            Align = alBottom
            Caption = 'Estoque'
            TabOrder = 4
            object cxGrid2: TDBGrid
              Left = 2
              Top = 16
              Width = 941
              Height = 76
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
          object cbbEnderecamento: TComboBox
            Left = 606
            Top = 0
            Width = 314
            Height = 22
            CharCase = ecUpperCase
            TabOrder = 3
            OnClick = cbbEnderecamentoClick
            OnExit = cbbEnderecamentoExit
          end
          object dbedtPRDE_REGISTRO: TDBEdit
            Left = 551
            Top = 0
            Width = 51
            Height = 22
            DataField = 'PRDE_REGISTRO'
            DataSource = DsProdutos
            TabOrder = 2
            OnExit = dbedtPRDE_REGISTROExit
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'C'#243'digo Original / Cliente'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grCodCli: TJvDBGrid
            Left = 0
            Top = 0
            Width = 945
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
                Width = 214
                Visible = True
              end>
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Produto Especifico'
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
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
            Width = 617
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
        end
      end
      object BtnDuplicar: TBitBtn
        Left = 261
        Top = 498
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Hint = 'Copiar Pedido'
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
    end
    object Tbs_Detalhe: TTabSheet
      Caption = 'Produ'#231#227'o'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox10: TGroupBox
        Left = 0
        Top = 0
        Width = 963
        Height = 537
        Align = alClient
        Caption = 'Ordens de produ'#231#227'o geradas para o produto'
        TabOrder = 0
        object Label65: TLabel
          Left = 790
          Top = 503
          Width = 80
          Height = 14
          Caption = 'Qtde total em OP'
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 16
          Width = 959
          Height = 473
          Align = alTop
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
              Width = 493
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
              FieldName = 'CC_STATUS'
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
        object CTotalProd: TCurrencyEdit
          Left = 872
          Top = 499
          Width = 80
          Height = 21
          AutoSize = False
          Color = 16776176
          DisplayFormat = '#00'
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object TabGrade: TTabSheet
      Caption = 'Grade'
      ImageIndex = 3
      OnShow = TabGradeShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label10: TLabel
        Left = 10
        Top = 8
        Width = 36
        Height = 14
        Caption = 'C'#243'digo:'
      end
      object Label11: TLabel
        Left = 129
        Top = 8
        Width = 33
        Height = 14
        Caption = 'Grade:'
      end
      object Label12: TLabel
        Left = 820
        Top = 32
        Width = 31
        Height = 14
        Caption = 'Indice:'
      end
      object Label100: TLabel
        Left = 0
        Top = 32
        Width = 46
        Height = 14
        Alignment = taRightJustify
        Caption = 'Medida 1:'
      end
      object Label101: TLabel
        Left = 185
        Top = 32
        Width = 46
        Height = 14
        Alignment = taRightJustify
        Caption = 'Medida 2:'
      end
      object Label102: TLabel
        Left = 368
        Top = 32
        Width = 46
        Height = 14
        Alignment = taRightJustify
        Caption = 'Medida 3:'
      end
      object Label103: TLabel
        Left = 586
        Top = 32
        Width = 46
        Height = 14
        Alignment = taRightJustify
        Caption = 'Redu'#231#227'o:'
      end
      object Label104: TLabel
        Left = 775
        Top = 58
        Width = 64
        Height = 14
        Alignment = taRightJustify
        Caption = 'Pre'#231'o Grade:'
      end
      object Label110: TLabel
        Left = 695
        Top = 46
        Width = 2
        Height = 14
        Caption = #39
      end
      object Label111: TLabel
        Left = 484
        Top = 58
        Width = 148
        Height = 14
        Caption = 'UND. para o Calculo do  Indice:'
      end
      object DBNavigator2: TDBNavigator
        Left = 49
        Top = 58
        Width = 224
        Height = 25
        DataSource = DsGrade
        VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
        TabOrder = 8
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 95
        Width = 963
        Height = 442
        Align = alBottom
        Caption = 'Grades Cadastradas'
        TabOrder = 9
        object DBGrid3: TDBGrid
          Left = 2
          Top = 16
          Width = 959
          Height = 424
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
              Width = 238
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
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRG_MEDIDA_1'
              Title.Alignment = taCenter
              Title.Caption = 'Medida 1'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRG_MEDIDA_2'
              Title.Alignment = taCenter
              Title.Caption = 'Medida 2'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRG_MEDIDA_3'
              Title.Alignment = taCenter
              Title.Caption = 'Medida 3'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRG_REDUCAO_PERCENT'
              Title.Alignment = taCenter
              Title.Caption = 'Redu'#231#227'o %'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_PRECO_BASE'
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o Venda'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRG_INDICE'
              Title.Alignment = taCenter
              Title.Caption = 'Indice'
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_PRECO'
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o Aplicado'
              Width = 79
              Visible = True
            end>
        end
      end
      object DBEdit21: TDBEdit
        Left = 48
        Top = 5
        Width = 61
        Height = 22
        TabStop = False
        Color = 14145495
        DataField = 'PRG_REGISTRO'
        DataSource = DsGrade
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit59: TDBEdit
        Left = 165
        Top = 5
        Width = 779
        Height = 22
        CharCase = ecUpperCase
        DataField = 'PRG_DESCRICAO'
        DataSource = DsGrade
        TabOrder = 1
      end
      object dbedtPRG_INDICE: TDBEdit
        Left = 853
        Top = 29
        Width = 91
        Height = 22
        DataField = 'PRG_INDICE'
        DataSource = DsGrade
        TabOrder = 6
      end
      object dbedtPRG_MEDIDA_2: TDBEdit
        Left = 231
        Top = 29
        Width = 115
        Height = 22
        DataField = 'PRG_MEDIDA_2'
        DataSource = DsGrade
        TabOrder = 3
        OnExit = dbedtPRG_MEDIDA_2Exit
      end
      object dbedtPRG_MEDIDA_3: TDBEdit
        Left = 421
        Top = 29
        Width = 115
        Height = 22
        DataField = 'PRG_MEDIDA_3'
        DataSource = DsGrade
        TabOrder = 4
        OnExit = dbedtPRG_MEDIDA_3Exit
      end
      object dbedtPRG_MEDIDA_1: TDBEdit
        Left = 48
        Top = 29
        Width = 115
        Height = 22
        DataField = 'PRG_MEDIDA_1'
        DataSource = DsGrade
        TabOrder = 2
        OnExit = dbedtPRG_MEDIDA_1Exit
      end
      object dbedtPRG_REDUCAO_PERCENT: TDBEdit
        Left = 638
        Top = 29
        Width = 75
        Height = 22
        DataField = 'PRG_REDUCAO_PERCENT'
        DataSource = DsGrade
        TabOrder = 5
        OnExit = dbedtPRG_REDUCAO_PERCENTExit
      end
      object dbedtPRG_PRECO: TDBEdit
        Left = 843
        Top = 54
        Width = 101
        Height = 22
        DataField = 'PRG_PRECO'
        DataSource = DsGrade
        TabOrder = 7
        OnExit = dbedtPRG_REDUCAO_PERCENTExit
      end
      object DBEdit60: TDBEdit
        Left = 638
        Top = 54
        Width = 75
        Height = 22
        TabStop = False
        Color = 14145495
        DataField = 'PRD_UND_GRADE_CALCULO'
        DataSource = DsProdutos
        ReadOnly = True
        TabOrder = 10
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Compras'
      ImageIndex = 4
      OnShow = TabSheet4Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbgrdCompras: TDBGrid
        Left = 0
        Top = 0
        Width = 963
        Height = 537
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox18: TGroupBox
        Left = 0
        Top = 0
        Width = 963
        Height = 49
        Align = alTop
        Caption = 'Filtro'
        TabOrder = 0
        object EditDataI: TDateEdit
          Left = 14
          Top = 15
          Width = 100
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 0
          OnExit = EditDataIExit
        end
        object EditDataF: TDateEdit
          Left = 145
          Top = 15
          Width = 100
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 1
          OnExit = EditDataFExit
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
      end
      object GroupBox19: TGroupBox
        Left = 0
        Top = 49
        Width = 963
        Height = 488
        Align = alClient
        Caption = 'Vendas Por Pedido'
        TabOrder = 1
        object DBGrid5: TDBGrid
          Left = 2
          Top = 16
          Width = 959
          Height = 470
          Align = alClient
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
            end>
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Arquivos'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 963
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
        Width = 963
        Height = 488
        Align = alClient
        Caption = 
          'Arquivos - Para abrir o arquivo '#233' necess'#225'rio o software correspo' +
          'ndente'
        TabOrder = 1
        object DBGrid7: TDBGrid
          Left = 2
          Top = 16
          Width = 959
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbgrdLote: TDBGrid
        Left = 0
        Top = 0
        Width = 963
        Height = 264
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
            FieldName = 'PRDL_SALDO'
            Title.Alignment = taCenter
            Title.Caption = 'Estoque'
            Width = 81
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
        Width = 963
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
          Left = 32
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
        object DBNavigator4: TDBNavigator
          Left = 0
          Top = 10
          Width = 240
          Height = 25
          DataSource = dsLote
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
        object DBDateEdit4: TDBDateEdit
          Left = 85
          Top = 215
          Width = 89
          Height = 22
          DataField = 'PRDL_DATA_VALIDADE'
          DataSource = dsLote
          NumGlyphs = 2
          TabOrder = 7
        end
        object DBDateEdit3: TDBDateEdit
          Left = 85
          Top = 186
          Width = 89
          Height = 22
          DataField = 'PRDL_DATA_FABRICACAO'
          DataSource = dsLote
          NumGlyphs = 2
          TabOrder = 6
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
          OnChange = sgDBLookupCombo1Change
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
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          OnMenuPesquisaClick = sgDBLookupCombo1MenuPesquisaClick
        end
        object DBDateEdit5: TDBDateEdit
          Left = 85
          Top = 72
          Width = 100
          Height = 22
          TabStop = False
          DataField = 'PRDL_CADASTRO'
          DataSource = dsLote
          ReadOnly = True
          Color = 14145495
          NumGlyphs = 2
          TabOrder = 1
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
      end
    end
  end
  object DBNavigator1: TDBNavigator [2]
    Left = 835
    Top = 15
    Width = 120
    Height = 25
    DataSource = DsProdutos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object EdtPrd_codigo: TEdit [3]
    Left = 808
    Top = 18
    Width = 22
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
    TabOrder = 2
    Text = 'EdtPrd_codigo'
    Visible = False
  end
  inherited coCalcula: TACBrCalculadora
    Left = 1736
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1784
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver220.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=22.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'Database=C:\JobDados\Recimar.fdb'
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
    Left = 1648
    Top = 145
  end
  object DsQFornec: TDataSource
    DataSet = CdsFornecedorAux
    Left = 907
    Top = 467
  end
  object CdsFornecedorAux: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
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
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1581
    Top = 139
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
  object SqlCdsSegm: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
    DataSet.CommandText = 'select * from PRD_LINHA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD_LINHA'
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1512
    Top = 219
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
    Connection = DBConn
    DataSet.CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000'
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 840
    Top = 460
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
  object SqlCdsProduto: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
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
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1328
    Top = 184
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
  object CdsItensFicha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspItensFicha'
    AfterInsert = CdsItensFichaAfterInsert
    AfterScroll = CdsItensFichaAfterScroll
    Left = 419
    Top = 117
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
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
      Precision = 15
    end
    object CdsItensFichaFTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      ProviderFlags = [pfInUpdate]
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
      DisplayFormat = '###,###,####0.0000'
      Precision = 18
      Size = 6
    end
  end
  object DsItensFicha: TDataSource
    DataSet = CdsItensFicha
    Left = 505
    Top = 197
  end
  object SqlCdsMaterial: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
    DataSet.CommandText = 'select '#13#10'P2.PRD_REFER, '#13#10'P2.PRD_DESCRI '#13#10'from PRD0000 P2'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select '#13#10'P2.PRD_REFER, '#13#10'P2.PRD_DESCRI '#13#10'from PRD0000 P2'
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1184
    Top = 438
    object SqlCdsMaterialPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object SqlCdsMaterialPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object SqlRelProdutos: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
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
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1196
    Top = 187
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
      Size = 80
    end
    object SqlRelProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsRelProduto: TDataSource
    DataSet = SqlRelProdutos
    Left = 1290
    Top = 243
  end
  object SqlItensGrade: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
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
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1311
    Top = 176
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
  object DsRelItens: TDataSource
    DataSet = CdsRelItens
    Left = 1050
    Top = 392
  end
  object CdsRelItens: TClientDataSet
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
    Left = 1220
    Top = 296
    object CdsRelItensFTI_ITEM: TStringField
      FieldName = 'FTI_ITEM'
      Size = 6
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
  object DsItensGrade: TDataSource
    DataSet = SqlItensGrade
    Left = 1461
    Top = 272
  end
  object SqlcdsFichaTec: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
    DataSet.CommandText = 'SELECT PRD_REFER FROM FTC0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT PRD_REFER FROM FTC0000'
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1000
    Top = 73
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 640
    Top = 179
    object AlterarItensdaFichaTecnica1: TMenuItem
      Caption = 'Alterar este Item'
      OnClick = AlterarItensdaFichaTecnica1Click
    end
    object ExcluirItensdaFichaTcnica1: TMenuItem
      Caption = 'Excluir este Item'
      OnClick = ExcluirItensdaFichaTcnica1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object VeraFichaTcnicaDesteItem1: TMenuItem
      Caption = 'Ver a Ficha T'#233'cnica Deste Item. '
      OnClick = VeraFichaTcnicaDesteItem1Click
    end
  end
  object SqlCdsEstoqueDetalhe: TSqlClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Connection = DBConn
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
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 878
    Top = 382
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
  object DsEstoqueDetalhe: TDataSource
    DataSet = SqlCdsEstoqueDetalhe
    Left = 962
    Top = 400
  end
  object SqlcdsVar: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
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
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1600
    Top = 216
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
  object DataSource1: TDataSource
    DataSet = SqlProdutos
    Left = 1086
    Top = 324
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DsRelProduto
    UserName = 'DBPipeline1'
    Left = 1345
    Top = 219
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
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DsRelItens
    UserName = 'DBPipeline2'
    Left = 1160
    Top = 312
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
  object ppRelFichaTec: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 1226
    Top = 392
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
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
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
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
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
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
        Caption = 'REFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
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
        Caption = 'Mat'#233'ria-Prima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
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
        Caption = 'Descri'#231#227'o da Mat'#233'ria-Prima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
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
        Caption = 'Consumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
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
        Caption = 'UND'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
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
        Caption = 'T.U.P.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
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
        Caption = 'Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
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
        Caption = 'TIPO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
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
        Caption = 'GRUPO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
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
        Caption = 'SEGMENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
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
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
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
        Caption = 'P. Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
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
        Caption = 'Custo Material'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
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
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
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
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 0
        mmTop = 0
        mmWidth = 0
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
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
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
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
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
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
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
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
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 5292
        mmWidth = 196057
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 41804
      mmPrintPosition = 0
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 1852
        mmWidth = 190500
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 10319
        mmWidth = 190765
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 14817
        mmWidth = 191030
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 19315
        mmWidth = 190765
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 23813
        mmWidth = 191294
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 28310
        mmWidth = 191559
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 32808
        mmWidth = 191294
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText31'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC8'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 37306
        mmWidth = 191559
        BandType = 7
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.Weight = 1.000000000000000000
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
        Border.Weight = 1.000000000000000000
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
        Caption = 'PROCESSO DE PRODU'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4498
        mmLeft = 1852
        mmTop = 10055
        mmWidth = 47361
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Custo Total: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 156901
        mmTop = 529
        mmWidth = 14815
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL'
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
        mmLeft = 172773
        mmTop = 529
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground
      end
    end
    object daDataModule1: TdaDataModule
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650621
        5265706F727441667465724175746F5365617263684469616C6F674372656174
        650B50726F6772616D54797065070B747450726F63656475726506536F757263
        65065B70726F636564757265205265706F727441667465724175746F53656172
        63684469616C6F674372656174653B0D0A626567696E0D0A656E643B20202020
        202020202020202020202020202020202020202020202020202020200D0A0D43
        6F6D706F6E656E744E616D6506065265706F7274094576656E744E616D65061B
        41667465724175746F5365617263684469616C6F67437265617465074576656E
        744944020A084361726574506F730102200203000000}
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
  object CdsSaldos: TClientDataSet
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
    Left = 996
    Top = 249
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
  object DspSaldos: TDataSetProvider
    DataSet = SqlSaldos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 950
    Top = 225
  end
  object SqlSaldos: TSQLDataSet
    CommandText = 'SELECT * FROM pcd_kardex_saldo('#39'001'#39','#39'00012'#39',null)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 896
    Top = 248
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
  object DsSaldos: TDataSource
    DataSet = CdsSaldos
    Left = 1041
    Top = 233
  end
  object DsGrade: TDataSource
    DataSet = CdsGrade
    Left = 1564
    Top = 293
  end
  object CdsGrade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspGrade'
    BeforeInsert = CdsGradeBeforeInsert
    AfterInsert = CdsGradeAfterInsert
    AfterPost = CdsGradeAfterPost
    AfterDelete = CdsGradeAfterDelete
    OnCalcFields = CdsGradeCalcFields
    Left = 1532
    Top = 261
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
      Precision = 20
      Size = 5
    end
    object CdsGradePRG_MEDIDA_2: TFMTBCDField
      FieldName = 'PRG_MEDIDA_2'
      Precision = 20
      Size = 5
    end
    object CdsGradePRG_MEDIDA_3: TFMTBCDField
      FieldName = 'PRG_MEDIDA_3'
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
  object DspGrade: TDataSetProvider
    DataSet = SqlGrade
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1499
    Top = 261
  end
  object SqlGrade: TSQLDataSet
    CommandText = 'SELECT * FROM PRD_GRADE ORDER BY PRG_DESCRICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 1467
    Top = 261
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
  object CdsSpedTipo: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
    DataSet.CommandText = 'select * from SPED_TIPOITEM'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from SPED_TIPOITEM'
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1649
    Top = 339
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
  object dsSpedTipo: TDataSource
    DataSet = CdsSpedTipo
    Left = 1713
    Top = 363
  end
  object CdsSpedServico: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
    DataSet.CommandText = 'SELECT * FROM SRV0000 where SRV_LANCAMENTO = '#39'S'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT * FROM SRV0000 where SRV_LANCAMENTO = '#39'S'#39
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1649
    Top = 283
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
  object CdsSpedGenero: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
    DataSet.CommandText = 'select * from SPED_GENERO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from SPED_GENERO'
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1713
    Top = 307
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
  object dsSpedServico: TDataSource
    DataSet = CdsSpedServico
    Left = 1129
    Top = 403
  end
  object dsSpedGenero: TDataSource
    DataSet = CdsSpedGenero
    Left = 985
    Top = 339
  end
  object dsProdutosReferencia: TDataSource
    DataSet = CdsProdutosReferencia
    Left = 1156
    Top = 470
  end
  object dsFornecedor: TDataSource
    DataSet = CdsFornecedor
    Left = 1484
    Top = 78
  end
  object CdsFornecedor: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
    DataSet.CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000 order by FOR_RAZAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000 order by FOR_RAZAO'
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1580
    Top = 73
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
  object SQLProdutoCodigo: TSQLDataSet
    CommandText = 
      'SELECT T1.*, T2.FOR_RAZAO FROM PRD0000_CODIGO T1 JOIN FOR0000 T2' +
      ' ON (T2.FOR_CODIGO = T1.FOR_CODIGO) ORDER BY T1.PRDC_REFERENCIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 1241
    Top = 347
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
  object DspProdutoCodigo: TDataSetProvider
    DataSet = SQLProdutoCodigo
    Options = [poAllowCommandText]
    Left = 1313
    Top = 371
  end
  object CdsProdutosReferencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspProdutoCodigo'
    BeforeInsert = CdsProdutosReferenciaBeforeInsert
    BeforePost = CdsProdutosReferenciaBeforePost
    AfterPost = CdsProdutosReferenciaAfterPost
    AfterDelete = CdsProdutosReferenciaAfterDelete
    Left = 1156
    Top = 243
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
  object OpenDialog1: TOpenDialog
    Filter = '*.jpg'
    Left = 1256
    Top = 8
  end
  object CdsCompras: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
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
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1276
    Top = 203
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
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 5
    end
    object CdsComprasENF_IT_VALFRETE: TFMTBCDField
      FieldName = 'ENF_IT_VALFRETE'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 5
    end
    object CdsComprasENF_IT_VLDESP_ACES: TFMTBCDField
      FieldName = 'ENF_IT_VLDESP_ACES'
      DisplayFormat = '###,###,###,##0.00'
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
  end
  object dsCompras: TDataSource
    DataSet = CdsCompras
    Left = 1708
    Top = 131
  end
  object dsLote: TDataSource
    DataSet = CdsLotes
    Left = 809
    Top = 320
  end
  object CdsLotes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspLotes'
    BeforeInsert = CdsLotesBeforeInsert
    BeforePost = CdsLotesBeforePost
    AfterPost = CdsLotesAfterPost
    AfterDelete = CdsLotesAfterDelete
    Left = 876
    Top = 331
    object CdsLotesPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsLotesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsLotesPRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
      ProviderFlags = [pfInUpdate]
      OnGetText = CdsLotesPRDL_DATA_FABRICACAOGetText
    end
    object CdsLotesPRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
      ProviderFlags = [pfInUpdate]
      OnGetText = CdsLotesPRDL_DATA_FABRICACAOGetText
    end
    object CdsLotesPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsLotesPRDL_PRECO_MAXIMO: TFMTBCDField
      FieldName = 'PRDL_PRECO_MAXIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object CdsLotesPRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      Precision = 20
      Size = 5
    end
    object CdsLotesPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsLotesPRDL_CADASTRO: TDateField
      FieldName = 'PRDL_CADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsLotesPRDL_DESCRICAO: TStringField
      FieldName = 'PRDL_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsLotesPRDL_CUSTO: TFMTBCDField
      FieldName = 'PRDL_CUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object CdsLotesPRDL_NFE: TStringField
      DisplayWidth = 10
      FieldName = 'PRDL_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsLotesFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsLotesFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      ProviderFlags = []
      Size = 40
    end
  end
  object DspLotes: TDataSetProvider
    DataSet = QLotes
    Options = [poAllowCommandText]
    Left = 881
    Top = 307
  end
  object QLotes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select A.*, B.for_razao'
      'from PRD_LOTE A'
      '    LEFT JOIN for0000 B ON B.for_codigo=A.for_codigo'
      'WHERE A.prdl_registro='#39'-1'#39)
    SQLConnection = DBConn
    Left = 937
    Top = 331
    object QLotesPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QLotesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object QLotesPRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object QLotesPRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object QLotesPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QLotesPRDL_PRECO_MAXIMO: TFMTBCDField
      FieldName = 'PRDL_PRECO_MAXIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object QLotesPRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      Precision = 20
      Size = 5
    end
    object QLotesPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QLotesPRDL_CADASTRO: TDateField
      FieldName = 'PRDL_CADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object QLotesPRDL_DESCRICAO: TStringField
      FieldName = 'PRDL_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QLotesPRDL_CUSTO: TFMTBCDField
      FieldName = 'PRDL_CUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object QLotesPRDL_NFE: TStringField
      DisplayWidth = 10
      FieldName = 'PRDL_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QLotesFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object QLotesFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      ProviderFlags = []
      Size = 40
    end
  end
  object CdsVendas: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
    DataSet.CommandText = 
      'select'#13#10'    t3.NF_EMISSAO,'#13#10'    t3.NF_NOTANUMBER,'#13#10'    t3.NF_NUM' +
      '_NFE,'#13#10'    T1.NTP_CFOP,'#13#10'    t3.PED_CODIGO,'#13#10'    t3.CLI_CODIGO,'#13 +
      #10'    t2.CLI_RAZAO,'#13#10'    t1.NF_QTDE,'#13#10'    t1.NF_PRECO,'#13#10'    CAST(' +
      '(t1.NF_QTDE * t1.NF_PRECO) AS NUMERIC(18,4)) as TOTAL,'#13#10'    CAST' +
      '(CASE WHEN T1.NF_IPIALIQ > 0 THEN (t1.NF_PRECO * (T1.NF_IPIALIQ ' +
      '/ 100)) ELSE 0 END AS NUMERIC(18,4)) AS VALOR_IPI,'#13#10'    CAST(CAS' +
      'E WHEN T1.NF_VLSUBST > 0 THEN (T1.NF_VLSUBST / t1.NF_QTDE) ELSE ' +
      '0 END AS NUMERIC(18,4)) AS VALOR_ST,'#13#10'    CAST(CAST((t1.NF_QTDE ' +
      '* t1.NF_PRECO) AS NUMERIC(18,4)) + CAST(CASE WHEN T1.NF_IPIALIQ ' +
      '> 0 THEN (t1.NF_PRECO * (T1.NF_IPIALIQ / 100)) ELSE 0 END AS NUM' +
      'ERIC(18,4)) + CAST(CASE WHEN T1.NF_VLSUBST > 0 THEN (T1.NF_VLSUB' +
      'ST / t1.NF_QTDE) ELSE 0 END AS NUMERIC(18,4)) AS NUMERIC(18,4)) ' +
      'AS TOTAL_COM_IMPOSTOS'#13#10'from'#13#10'NF_IT01 t1'#13#10'join NF0001 t3 on (t3.N' +
      'F_NOTANUMBER = t1.NF_IT_NOTANUMER)'#13#10'join CLI0000 t2 on (t2.CLI_C' +
      'ODIGO = t3.CLI_CODIGO)'#13#10#13#10'ORDER BY T3.NF_EMISSAO DESC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 100
    Params = <>
    OnCalcFields = CdsComprasCalcFields
    CommandText = 
      'select'#13#10'    t3.NF_EMISSAO,'#13#10'    t3.NF_NOTANUMBER,'#13#10'    t3.NF_NUM' +
      '_NFE,'#13#10'    T1.NTP_CFOP,'#13#10'    t3.PED_CODIGO,'#13#10'    t3.CLI_CODIGO,'#13 +
      #10'    t2.CLI_RAZAO,'#13#10'    t1.NF_QTDE,'#13#10'    t1.NF_PRECO,'#13#10'    CAST(' +
      '(t1.NF_QTDE * t1.NF_PRECO) AS NUMERIC(18,4)) as TOTAL,'#13#10'    CAST' +
      '(CASE WHEN T1.NF_IPIALIQ > 0 THEN (t1.NF_PRECO * (T1.NF_IPIALIQ ' +
      '/ 100)) ELSE 0 END AS NUMERIC(18,4)) AS VALOR_IPI,'#13#10'    CAST(CAS' +
      'E WHEN T1.NF_VLSUBST > 0 THEN (T1.NF_VLSUBST / t1.NF_QTDE) ELSE ' +
      '0 END AS NUMERIC(18,4)) AS VALOR_ST,'#13#10'    CAST(CAST((t1.NF_QTDE ' +
      '* t1.NF_PRECO) AS NUMERIC(18,4)) + CAST(CASE WHEN T1.NF_IPIALIQ ' +
      '> 0 THEN (t1.NF_PRECO * (T1.NF_IPIALIQ / 100)) ELSE 0 END AS NUM' +
      'ERIC(18,4)) + CAST(CASE WHEN T1.NF_VLSUBST > 0 THEN (T1.NF_VLSUB' +
      'ST / t1.NF_QTDE) ELSE 0 END AS NUMERIC(18,4)) AS NUMERIC(18,4)) ' +
      'AS TOTAL_COM_IMPOSTOS'#13#10'from'#13#10'NF_IT01 t1'#13#10'join NF0001 t3 on (t3.N' +
      'F_NOTANUMBER = t1.NF_IT_NOTANUMER)'#13#10'join CLI0000 t2 on (t2.CLI_C' +
      'ODIGO = t3.CLI_CODIGO)'#13#10#13#10'ORDER BY T3.NF_EMISSAO DESC'
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1300
    Top = 307
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
  end
  object dsVendas: TDataSource
    DataSet = CdsVendas
    Left = 1356
    Top = 324
  end
  object frxReport1: TfrxReport
    Version = '5.3.16'
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
    Left = 1028
    Top = 11
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vendas do Produto')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
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
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 56.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo37: TfrxMemoView
          Top = 56.692950000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 75.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo8: TfrxMemoView
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
          HAlign = haCenter
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
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
          HAlign = haCenter
          Memo.UTF8W = (
            'NFe')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
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
          HAlign = haCenter
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
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
          HAlign = haCenter
          Memo.UTF8W = (
            'Pedido')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
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
          HAlign = haCenter
          Memo.UTF8W = (
            'Total c/ Imposto')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
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
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor ST')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
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
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor IPI')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
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
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
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
          HAlign = haCenter
          Memo.UTF8W = (
            'Pre'#231'o')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
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
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
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
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 124.724490000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdtstVendas
        DataSetName = 'frxdbdtstVendas'
        RowCount = 0
        object frxdbFornecedorMateriaPRD_REFER: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxdbdtstVendas."NF_EMISSAO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxdbdtstVendas."NF_NOTANUMBER"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxdbdtstVendas."NF_NUM_NFE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxdbdtstVendas."NTP_CFOP"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxdbdtstVendas."PED_CODIGO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxdbdtstVendas."CLI_RAZAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstVendas."NF_QTDE"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstVendas."NF_PRECO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstVendas."TOTAL"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstVendas."VALOR_IPI"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstVendas."VALOR_ST"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstVendas."TOTAL_COM_IMPOSTOS"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 166.299320000000000000
        Width = 1046.929810000000000000
        object Memo28: TfrxMemoView
          Left = 506.457020000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 570.709030000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbdtstVendas."NF_QTDE">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
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
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbdtstVendas."TOTAL">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
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
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbdtstVendas."VALOR_IPI">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
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
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbdtstVendas."VALOR_ST">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
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
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbdtstVendas."TOTAL_COM_IMPOSTOS">,MasterData1,3)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Top = 22.677180000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object frxdbdtstVendas: TfrxDBDataset
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
    Left = 1772
    Top = 124
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
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
    Left = 1100
    Top = 19
  end
  object frxXLSExport1: TfrxXLSExport
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
    Left = 1172
    Top = 19
  end
  object DsCodigoOriginal: TDataSource
    DataSet = CdsCodigoOriginal
    Left = 1332
    Top = 141
  end
  object CdsCodigoOriginal: TClientDataSet
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
    Left = 1292
    Top = 93
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
  end
  object DspCodigoOriginal: TDataSetProvider
    DataSet = SqlCodCli
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1211
    Top = 141
  end
  object SqlArquivo: TSQLDataSet
    CommandText = 'SELECT * FROM ARQUIVO ORDER BY ARQ_DESCRICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 995
    Top = 117
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
  object DspArquivo: TDataSetProvider
    DataSet = SqlArquivo
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1051
    Top = 101
  end
  object CdsArquivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspArquivo'
    Left = 1092
    Top = 117
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
  object dsArquivo: TDataSource
    DataSet = CdsArquivo
    Left = 1132
    Top = 101
  end
  object pmArquivo: TPopupMenu
    Left = 1460
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
  object SqlCdsEnderecamento: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
    DataSet.CommandText = 'select * from PRD0000_ENDERECAMENTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD0000_ENDERECAMENTO'
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1104
    Top = 179
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
  object mnuListar: TPopupMenu
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
  end
  object SqlCodCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT A.*, B.cli_razao'
      'FROM PRD_CODIGOORIGINAL A'
      '    JOIN cli0000 B ON B.cli_codigo=A.cli_codigo'
      'ORDER BY A.CLI_CODIGO')
    SQLConnection = DBConn
    Left = 1216
    Top = 88
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
  end
  object JvTransparentForm1: TJvTransparentForm
    Left = 800
    Top = 280
  end
  object qFor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select for_codigo, for_razao'
      'from for0000'
      'where for_codigo='#39'-1'#39)
    SQLConnection = DBConn
    Left = 1137
    Top = 531
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
  object qCstPC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 730
    Top = 179
  end
  object SqlProdutos: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PRD0000')
    SQLConnection = DBConn
    Left = 512
    Top = 13
    object SqlProdutosPRD_CODIGO: TStringField
      DisplayWidth = 5
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object SqlProdutosPRD_DTCADASTRO: TDateField
      FieldName = 'PRD_DTCADASTRO'
    end
    object SqlProdutosPRD_DESCRI_RES: TStringField
      FieldName = 'PRD_DESCRI_RES'
      Size = 35
    end
    object SqlProdutosPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlProdutosPRD_EMBALA: TStringField
      FieldName = 'PRD_EMBALA'
      Size = 10
    end
    object SqlProdutosPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object SqlProdutosPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlProdutosIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object SqlProdutosPRD_ALIQICM: TFMTBCDField
      FieldName = 'PRD_ALIQICM'
      Precision = 15
    end
    object SqlProdutosLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 3
    end
    object SqlProdutosPRD_CARACT: TMemoField
      FieldName = 'PRD_CARACT'
      BlobType = ftMemo
      Size = 1
    end
    object SqlProdutosPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      Precision = 15
    end
    object SqlProdutosPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 15
    end
    object SqlProdutosPRD_PMEDIO: TFMTBCDField
      FieldName = 'PRD_PMEDIO'
      Precision = 15
    end
    object SqlProdutosPRD_PMATPRI: TFMTBCDField
      FieldName = 'PRD_PMATPRI'
      Precision = 15
    end
    object SqlProdutosPRD_MAOOBRA: TFMTBCDField
      FieldName = 'PRD_MAOOBRA'
      Precision = 15
    end
    object SqlProdutosPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlProdutosPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlProdutosPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlProdutosFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlProdutosPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlProdutosPRD_MAXIMO: TFMTBCDField
      FieldName = 'PRD_MAXIMO'
      Precision = 15
    end
    object SqlProdutosPRD_TEMSUB: TStringField
      FieldName = 'PRD_TEMSUB'
      Size = 1
    end
    object SqlProdutosPRD_SITRIBUT: TStringField
      FieldName = 'PRD_SITRIBUT'
      Size = 2
    end
    object SqlProdutosPRD_ICMSUBS: TFMTBCDField
      FieldName = 'PRD_ICMSUBS'
      Precision = 15
    end
    object SqlProdutosPRD_UTILCONV: TStringField
      FieldName = 'PRD_UTILCONV'
      Size = 1
    end
    object SqlProdutosPRD_UNDCOMP: TStringField
      FieldName = 'PRD_UNDCOMP'
      Size = 3
    end
    object SqlProdutosPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      Precision = 15
    end
    object SqlProdutosPRD_FATORC: TFMTBCDField
      FieldName = 'PRD_FATORC'
      Precision = 15
    end
    object SqlProdutosPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      Size = 1
    end
    object SqlProdutosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlProdutosPRD_DTPCUSTO: TSQLTimeStampField
      FieldName = 'PRD_DTPCUSTO'
    end
    object SqlProdutosPRD_TABPRECO: TStringField
      FieldName = 'PRD_TABPRECO'
      Size = 1
    end
    object SqlProdutosPRD_GARANTIA: TStringField
      FieldName = 'PRD_GARANTIA'
      Size = 10
    end
    object SqlProdutosPRD_FAMILIA: TStringField
      FieldName = 'PRD_FAMILIA'
      Size = 5
    end
    object SqlProdutosPRD_CODBARRA: TStringField
      FieldName = 'PRD_CODBARRA'
      Size = 13
    end
    object SqlProdutosPRD_VAR1: TFMTBCDField
      FieldName = 'PRD_VAR1'
      Precision = 15
    end
    object SqlProdutosPRD_VAR2: TFMTBCDField
      FieldName = 'PRD_VAR2'
      Precision = 15
    end
    object SqlProdutosPRD_VAR3: TFMTBCDField
      FieldName = 'PRD_VAR3'
      Precision = 15
    end
    object SqlProdutosPRD_VAR4: TFMTBCDField
      FieldName = 'PRD_VAR4'
      Precision = 15
    end
    object SqlProdutosPRD_VAR5: TFMTBCDField
      FieldName = 'PRD_VAR5'
      Precision = 15
    end
    object SqlProdutosPRD_VAR6: TFMTBCDField
      FieldName = 'PRD_VAR6'
      Precision = 15
    end
    object SqlProdutosPRD_VAR7: TFMTBCDField
      FieldName = 'PRD_VAR7'
      Precision = 15
    end
    object SqlProdutosPRD_VAR8: TFMTBCDField
      FieldName = 'PRD_VAR8'
      Precision = 15
    end
    object SqlProdutosPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlProdutosPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object SqlProdutosPRD_CURVA: TStringField
      FieldName = 'PRD_CURVA'
      Size = 1
    end
    object SqlProdutosPRD_CODMERCOSUL: TStringField
      FieldName = 'PRD_CODMERCOSUL'
      Size = 15
    end
    object SqlProdutosPRD_DTPVENDA: TDateField
      FieldName = 'PRD_DTPVENDA'
    end
    object SqlProdutosAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object SqlProdutosPRD_GRADE: TStringField
      FieldName = 'PRD_GRADE'
      Size = 1
    end
    object SqlProdutosPRD_CUSTOCOMIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOCOMIPI'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      Precision = 15
    end
    object SqlProdutosPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      Precision = 15
    end
    object SqlProdutosPRD_SALDOPRODUCAO: TFMTBCDField
      FieldName = 'PRD_SALDOPRODUCAO'
      Precision = 15
    end
    object SqlProdutosPRD_SIMULACAO: TFMTBCDField
      FieldName = 'PRD_SIMULACAO'
      Precision = 15
    end
    object SqlProdutosPRD_COMISSAO: TFMTBCDField
      FieldName = 'PRD_COMISSAO'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR1: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR1'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR2: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR2'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR3: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR3'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR4: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR4'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR5: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR5'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR6: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR6'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR7: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR7'
      Precision = 15
    end
    object SqlProdutosPRD_RESERVA_VAR8: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR8'
      Precision = 15
    end
    object SqlProdutosPRD_DT_ULT_COMPRA: TDateField
      FieldName = 'PRD_DT_ULT_COMPRA'
    end
    object SqlProdutosPRD_VL_ULT_COMPRA: TFMTBCDField
      FieldName = 'PRD_VL_ULT_COMPRA'
      Precision = 15
    end
    object SqlProdutosPRD_NF_ULT_COMPRA: TStringField
      FieldName = 'PRD_NF_ULT_COMPRA'
      Size = 6
    end
    object SqlProdutosFOR_CODIGO_ANT: TStringField
      FieldName = 'FOR_CODIGO_ANT'
      Size = 4
    end
    object SqlProdutosPRD_DT_ULT_COMPRA_ANT: TDateField
      FieldName = 'PRD_DT_ULT_COMPRA_ANT'
    end
    object SqlProdutosPRD_VL_ULT_COMPRA_ANT: TFMTBCDField
      FieldName = 'PRD_VL_ULT_COMPRA_ANT'
      Precision = 15
    end
    object SqlProdutosPRD_NF_ULT_COMPRA_ANT: TStringField
      FieldName = 'PRD_NF_ULT_COMPRA_ANT'
      Size = 6
    end
    object SqlProdutosPRD_LOTE: TStringField
      FieldName = 'PRD_LOTE'
      Size = 15
    end
    object SqlProdutosPRD_FATOR_PROD: TFMTBCDField
      FieldName = 'PRD_FATOR_PROD'
      Precision = 15
    end
    object SqlProdutosPRD_DIV_MULT_PROD: TStringField
      FieldName = 'PRD_DIV_MULT_PROD'
      FixedChar = True
      Size = 1
    end
    object SqlProdutosSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 2
    end
    object SqlProdutosPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
    end
    object SqlProdutosPRD_CUSTO_CREDITO: TFMTBCDField
      FieldName = 'PRD_CUSTO_CREDITO'
      Precision = 15
    end
    object SqlProdutosPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
      Precision = 15
    end
    object SqlProdutosPRD_MARGEMOFERTA: TFMTBCDField
      FieldName = 'PRD_MARGEMOFERTA'
      Precision = 15
    end
    object SqlProdutosPRD_PRECOOFERTA: TFMTBCDField
      FieldName = 'PRD_PRECOOFERTA'
      Precision = 15
    end
    object SqlProdutosPRD_INICIOOFERTA: TDateField
      FieldName = 'PRD_INICIOOFERTA'
    end
    object SqlProdutosPRD_FIMOFERTA: TDateField
      FieldName = 'PRD_FIMOFERTA'
    end
    object SqlProdutosPRD_PVENDA2: TFMTBCDField
      FieldName = 'PRD_PVENDA2'
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA3: TFMTBCDField
      FieldName = 'PRD_PVENDA3'
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA4: TFMTBCDField
      FieldName = 'PRD_PVENDA4'
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA5: TFMTBCDField
      FieldName = 'PRD_PVENDA5'
      Precision = 15
    end
    object SqlProdutosPRD_PVENDA6: TFMTBCDField
      FieldName = 'PRD_PVENDA6'
      Precision = 15
    end
    object SqlProdutosUSU_CODIGO_ATUAL_TAB: TIntegerField
      FieldName = 'USU_CODIGO_ATUAL_TAB'
    end
    object SqlProdutosUSU_LOGIN_ATUAL_TAB: TStringField
      FieldName = 'USU_LOGIN_ATUAL_TAB'
      Size = 15
    end
    object SqlProdutosPRD_DATA_ATUAL_TAB: TSQLTimeStampField
      FieldName = 'PRD_DATA_ATUAL_TAB'
    end
    object SqlProdutosPRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      Precision = 15
    end
    object SqlProdutosSPED_GENCODIGO: TStringField
      FieldName = 'SPED_GENCODIGO'
      Size = 2
    end
    object SqlProdutosSPED_TIPCODIGO: TStringField
      FieldName = 'SPED_TIPCODIGO'
      Size = 2
    end
    object SqlProdutosPRD_UNICODIGO: TIntegerField
      FieldName = 'PRD_UNICODIGO'
    end
    object SqlProdutosPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object SqlProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlProdutosPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 500
    end
    object SqlProdutosPRD_CODORIGINAL: TStringField
      FieldName = 'PRD_CODORIGINAL'
      Size = 50
    end
    object SqlProdutosPRD_CUSTOFRETE: TFMTBCDField
      FieldName = 'PRD_CUSTOFRETE'
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_CUSTOIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOIPI'
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_CUSTOSUBTRIB: TFMTBCDField
      FieldName = 'PRD_CUSTOSUBTRIB'
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_CUSTOADCIONAL: TFMTBCDField
      FieldName = 'PRD_CUSTOADCIONAL'
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_MGDESPFIXAS: TFMTBCDField
      FieldName = 'PRD_MGDESPFIXAS'
      Precision = 15
      Size = 5
    end
    object SqlProdutosPRD_INDICESOBMARGEM: TFMTBCDField
      FieldName = 'PRD_INDICESOBMARGEM'
      Precision = 15
      Size = 5
    end
    object SqlProdutosSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
    end
    object SqlProdutosPRD_FOTO: TBlobField
      FieldName = 'PRD_FOTO'
      Size = 1
    end
    object SqlProdutosPRD_STATUS: TStringField
      FieldName = 'PRD_STATUS'
      Size = 1
    end
    object SqlProdutosPRD_GERENCIA_LOTE: TStringField
      FieldName = 'PRD_GERENCIA_LOTE'
      Size = 1
    end
    object SqlProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlProdutosPRD_UND_GRADE_CALCULO: TStringField
      FieldName = 'PRD_UND_GRADE_CALCULO'
      Size = 3
    end
    object SqlProdutosPRD_GRADE_OBRIGATORIO: TStringField
      FieldName = 'PRD_GRADE_OBRIGATORIO'
      Size = 1
    end
    object SqlProdutosPRDE_REGISTRO: TIntegerField
      FieldName = 'PRDE_REGISTRO'
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
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_VENDA: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_COMISSAO2: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO2'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_VENDA2: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA2'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_COMISSAO3: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO3'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_VENDA3: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA3'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_COMISSAO4: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO4'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_VENDA4: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA4'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_COMISSAO5: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO5'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_VENDA5: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA5'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_COMISSAO6: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO6'
      Precision = 18
      Size = 5
    end
    object SqlProdutosPRD_PERC_VENDA6: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA6'
      Precision = 18
      Size = 5
    end
  end
  object DspProdutos: TDataSetProvider
    DataSet = SqlProdutos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 616
    Top = 13
  end
  object CdsProdutos: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspProdutos'
    AfterInsert = CdsProdutosAfterInsert
    BeforeEdit = CdsProdutosBeforeEdit
    AfterPost = CdsProdutosAfterPost
    AfterCancel = CdsProdutosAfterCancel
    AfterScroll = CdsProdutosAfterScroll
    OnCalcFields = CdsProdutosCalcFields
    OnNewRecord = CdsProdutosNewRecord
    Left = 712
    Top = 13
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
      Size = 3
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
    end
    object CdsProdutosPRD_CURVA: TStringField
      FieldName = 'PRD_CURVA'
      Size = 1
    end
    object CdsProdutosPRD_CODMERCOSUL: TStringField
      FieldName = 'PRD_CODMERCOSUL'
      Size = 15
    end
    object CdsProdutosPRD_DTPVENDA: TDateField
      FieldName = 'PRD_DTPVENDA'
    end
    object CdsProdutosAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
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
      Size = 15
    end
    object CdsProdutosPRD_FATOR_PROD: TFMTBCDField
      FieldName = 'PRD_FATOR_PROD'
      DisplayFormat = '###,###0.000'
      Precision = 15
    end
    object CdsProdutosPRD_DIV_MULT_PROD: TStringField
      FieldName = 'PRD_DIV_MULT_PROD'
      FixedChar = True
      Size = 1
    end
    object CdsProdutosSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 2
    end
    object CdsProdutosPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
    end
    object CdsProdutosPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_MARGEMOFERTA: TFMTBCDField
      FieldName = 'PRD_MARGEMOFERTA'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PRECOOFERTA: TFMTBCDField
      FieldName = 'PRD_PRECOOFERTA'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_INICIOOFERTA: TDateField
      FieldName = 'PRD_INICIOOFERTA'
    end
    object CdsProdutosPRD_FIMOFERTA: TDateField
      FieldName = 'PRD_FIMOFERTA'
    end
    object CdsProdutosPRD_CUSTO_CREDITO: TFMTBCDField
      FieldName = 'PRD_CUSTO_CREDITO'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA2: TFMTBCDField
      FieldName = 'PRD_PVENDA2'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA3: TFMTBCDField
      FieldName = 'PRD_PVENDA3'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA4: TFMTBCDField
      FieldName = 'PRD_PVENDA4'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA5: TFMTBCDField
      FieldName = 'PRD_PVENDA5'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosPRD_PVENDA6: TFMTBCDField
      FieldName = 'PRD_PVENDA6'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
    end
    object CdsProdutosUSU_CODIGO_ATUAL_TAB: TIntegerField
      FieldName = 'USU_CODIGO_ATUAL_TAB'
    end
    object CdsProdutosUSU_LOGIN_ATUAL_TAB: TStringField
      FieldName = 'USU_LOGIN_ATUAL_TAB'
      Size = 15
    end
    object CdsProdutosPRD_DATA_ATUAL_TAB: TSQLTimeStampField
      FieldName = 'PRD_DATA_ATUAL_TAB'
    end
    object CdsProdutosPRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object CdsProdutosSPED_GENCODIGO: TStringField
      FieldName = 'SPED_GENCODIGO'
      Size = 2
    end
    object CdsProdutosSPED_TIPCODIGO: TStringField
      FieldName = 'SPED_TIPCODIGO'
      Size = 2
    end
    object CdsProdutosPRD_UNICODIGO: TIntegerField
      FieldName = 'PRD_UNICODIGO'
    end
    object CdsProdutosPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object CdsProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object CdsProdutosPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 500
    end
    object CdsProdutosPRD_CODORIGINAL: TStringField
      FieldName = 'PRD_CODORIGINAL'
      Size = 50
    end
    object CdsProdutosPRD_CUSTOFRETE: TFMTBCDField
      FieldName = 'PRD_CUSTOFRETE'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_CUSTOIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOIPI'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_CUSTOSUBTRIB: TFMTBCDField
      FieldName = 'PRD_CUSTOSUBTRIB'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_CUSTOADCIONAL: TFMTBCDField
      FieldName = 'PRD_CUSTOADCIONAL'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_MGDESPFIXAS: TFMTBCDField
      FieldName = 'PRD_MGDESPFIXAS'
      DisplayFormat = '00.000%'
      EditFormat = '00.000%'
      Precision = 15
      Size = 5
    end
    object CdsProdutosPRD_INDICESOBMARGEM: TFMTBCDField
      FieldName = 'PRD_INDICESOBMARGEM'
      DisplayFormat = '##0.000'
      EditFormat = '##0.000'
      Precision = 15
      Size = 5
    end
    object CdsProdutosSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
    end
    object CdsProdutosPRD_FOTO: TBlobField
      FieldName = 'PRD_FOTO'
      Size = 1
    end
    object CdsProdutosPRD_STATUS: TStringField
      FieldName = 'PRD_STATUS'
      Size = 1
    end
    object CdsProdutosPRD_GERENCIA_LOTE: TStringField
      FieldName = 'PRD_GERENCIA_LOTE'
      Size = 1
    end
    object CdsProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object CdsProdutosPRD_UND_GRADE_CALCULO: TStringField
      FieldName = 'PRD_UND_GRADE_CALCULO'
      Size = 3
    end
    object CdsProdutosPRD_GRADE_OBRIGATORIO: TStringField
      FieldName = 'PRD_GRADE_OBRIGATORIO'
      Size = 1
    end
    object CdsProdutosPRDE_REGISTRO: TIntegerField
      FieldName = 'PRDE_REGISTRO'
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
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_VENDA: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_COMISSAO2: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO2'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_VENDA2: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA2'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_COMISSAO3: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO3'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_VENDA3: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA3'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_COMISSAO4: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO4'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_VENDA4: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA4'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_COMISSAO5: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO5'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_VENDA5: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA5'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_COMISSAO6: TFMTBCDField
      FieldName = 'PRD_PERC_COMISSAO6'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object CdsProdutosPRD_PERC_VENDA6: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA6'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
  end
  object DsProdutos: TDataSource
    DataSet = CdsProdutos
    Left = 776
    Top = 13
  end
  object DsPrdClassIPI: TDataSource
    DataSet = CdsPrdClassIPI
    Left = 1660
    Top = 506
  end
  object CdsPrdClassIPI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPrdClassIPI'
    Left = 1567
    Top = 506
    object CdsPrdClassIPIIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CdsPrdClassIPIIPI_ALIQ: TFMTBCDField
      FieldName = 'IPI_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
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
    object CdsPrdClassIPINCM_DESC_FAMILIA: TStringField
      FieldName = 'NCM_DESC_FAMILIA'
      Size = 80
    end
    object CdsPrdClassIPIIPI_VALOR_POR_ITEM: TFMTBCDField
      FieldName = 'IPI_VALOR_POR_ITEM'
      DisplayFormat = '###,###,##0.0000'
      Precision = 20
      Size = 5
    end
    object CdsPrdClassIPIIPI_EX: TStringField
      FieldName = 'IPI_EX'
      FixedChar = True
      Size = 2
    end
  end
  object DspPrdClassIPI: TDataSetProvider
    DataSet = SqlPrdClassIPI
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1492
    Top = 506
  end
  object SqlPrdClassIPI: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 1393
    Top = 506
    object SqlPrdClassIPIIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object SqlPrdClassIPIIPI_ALIQ: TFMTBCDField
      FieldName = 'IPI_ALIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlPrdClassIPIEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlPrdClassIPIIPI_APELIDO: TStringField
      FieldName = 'IPI_APELIDO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlPrdClassIPINCM_TEMCREDITO: TStringField
      FieldName = 'NCM_TEMCREDITO'
      FixedChar = True
      Size = 1
    end
    object SqlPrdClassIPINCM_DESC_FAMILIA: TStringField
      FieldName = 'NCM_DESC_FAMILIA'
      Size = 80
    end
    object SqlPrdClassIPIIPI_VALOR_POR_ITEM: TFMTBCDField
      FieldName = 'IPI_VALOR_POR_ITEM'
      Precision = 20
      Size = 5
    end
    object SqlPrdClassIPIIPI_EX: TStringField
      FieldName = 'IPI_EX'
      FixedChar = True
      Size = 2
    end
  end
  object dsTipoProduto: TDataSource
    Left = 1548
    Top = 459
  end
  object qTipoProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 1468
    Top = 455
  end
  object qGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 1636
    Top = 455
  end
  object qLinha: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 1716
    Top = 447
  end
  object qCest: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 1732
    Top = 503
  end
  object qItensFicha: TSQLQuery
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
      ') AS TotalItem'
      ''
      'from ftc_it01 F2'
      'left join prd0000 P1'
      'on (f2.prd_refer_itens = p1.prd_refer)'
      'left join PRD_TIPO P2'
      'ON P1.pti_codigo = P2.PTI_CODIGO'
      'LEFT join PRD_GRADE g1'
      'on g1.PRG_REGISTRO = f2.PRG_REGISTRO'
      'left JOIN prmt0001 PRMT'
      'ON PRMT.emp_codigo = P1.emp_codigo')
    SQLConnection = DBConn
    Left = 204
    Top = 145
    object qItensFichaFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qItensFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
    end
    object qItensFichaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      ProviderFlags = [pfInUpdate]
    end
    object qItensFichaPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object qItensFichaFTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
      ProviderFlags = [pfInUpdate]
    end
    object qItensFichaFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
      Precision = 15
    end
    object qItensFichaFTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qItensFichaFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qItensFichaFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qItensFichaFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qItensFichaFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qItensFichaFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qItensFichaFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qItensFichaFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object qItensFichaFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object qItensFichaFTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object qItensFichaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qItensFichaFTI_NIVEL: TIntegerField
      FieldName = 'FTI_NIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object qItensFichaFTI_SEQUENCIA: TIntegerField
      FieldName = 'FTI_SEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object qItensFichaFTI_REFER_PAI: TStringField
      FieldName = 'FTI_REFER_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qItensFichaFTI_TIPO_PI: TStringField
      FieldName = 'FTI_TIPO_PI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qItensFichaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object qItensFichaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = []
      Size = 3
    end
    object qItensFichaPRD_GRADE: TStringField
      FieldName = 'PRD_GRADE'
      ProviderFlags = []
      Size = 1
    end
    object qItensFichaPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object qItensFichaPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      ProviderFlags = []
      Precision = 15
    end
    object qItensFichaPRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object qItensFichaTOTALITEM: TFMTBCDField
      FieldName = 'TOTALITEM'
      Precision = 18
      Size = 6
    end
  end
  object DspItensFicha: TDataSetProvider
    DataSet = qItensFicha
    UpdateMode = upWhereKeyOnly
    Left = 292
    Top = 161
  end
  object DSSitTributaria: TDataSource
    DataSet = CDSSitTributaria
    Left = 1240
    Top = 564
  end
  object CDSSitTributaria: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPSitTributaria'
    Left = 1128
    Top = 564
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
  object DSPSitTributaria: TDataSetProvider
    DataSet = SQLSitTributaria
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 432
    Top = 556
  end
  object SQLSitTributaria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT T1.*  FROM SITUACAO_TRIBUTARIA T1')
    SQLConnection = DBConn
    Left = 376
    Top = 560
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
end
