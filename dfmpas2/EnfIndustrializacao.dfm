object FrmEnfIndustrializacao: TFrmEnfIndustrializacao
  Left = 236
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Gerenciador de Industrializa'#231#227'o'
  ClientHeight = 714
  ClientWidth = 978
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter1: TSplitter
    Left = 0
    Top = 368
    Width = 978
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 448
    ExplicitWidth = 10
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 184
    Width = 978
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = 8
    ExplicitTop = 175
    ExplicitWidth = 993
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 576
    Width = 978
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 181
    ExplicitWidth = 8
  end
  object grpNotaFiscalEntrada: TGroupBox
    Left = 0
    Top = 57
    Width = 978
    Height = 127
    Align = alTop
    Caption = 'Notas Fiscais de Entrada'
    TabOrder = 0
    object dbgrdNotaEntrada: TDBGrid
      Left = 2
      Top = 16
      Width = 974
      Height = 109
      Align = alClient
      Color = 16776176
      DataSource = dsNotaEntrada
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = pmImpressaoIndividual
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnCellClick = dbgrdNotaEntradaCellClick
      OnDrawColumnCell = dbgrdNotaEntradaDrawColumnCell
      OnDblClick = dbgrdNotaEntradaDblClick
      OnMouseUp = dbgrdNotaEntradaMouseUp
      Columns = <
        item
          Expanded = False
          FieldName = 'ENF_NOTANUMBER'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nota Fiscal'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_MODELO_NF'
          Title.Alignment = taCenter
          Title.Caption = 'Produ'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_SERIE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'S'#233'rie'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_EMISSAO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_ENTRADA'
          Title.Caption = 'Entrada'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FOR_CODIGO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FOR_RAZAO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Fornecedor'
          Width = 431
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_CODIGO'
          ReadOnly = True
          Title.Caption = 'C'#243'd. Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_RAZAO'
          ReadOnly = True
          Title.Caption = 'Raz'#227'o Social'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPE_NATUREZA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'CFOP'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_TOT_PROD'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Total Produtos'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_TOT_NOTA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Total Nota'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE_PRODUTOS'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Produtos'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE_PRODUTOS_RETORNO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Retornado'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IC_Percentual'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = '% Retorno'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Status'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_OBS_INDUST'
          ReadOnly = True
          Title.Caption = 'Observa'#231#245'es'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_PESO_TOTAL'
          ReadOnly = True
          Title.Caption = 'Peso Total'
          Visible = True
        end>
    end
  end
  object grpFiltro: TGroupBox
    Left = 0
    Top = 0
    Width = 978
    Height = 57
    Align = alTop
    Caption = 'Filtro'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 53
      Height = 14
      Caption = 'Nota Fiscal'
    end
    object Label2: TLabel
      Left = 152
      Top = 16
      Width = 106
      Height = 14
      Caption = 'Fornecedor ou Cliente'
    end
    object Label3: TLabel
      Left = 469
      Top = 18
      Width = 40
      Height = 14
      Caption = 'Emiss'#227'o'
    end
    object Label4: TLabel
      Left = 565
      Top = 34
      Width = 17
      Height = 14
      Caption = 'At'#233
    end
    object Label5: TLabel
      Left = 687
      Top = 15
      Width = 42
      Height = 14
      Caption = 'Situa'#231#227'o'
    end
    object edtNotaFiscal: TEdit
      Left = 15
      Top = 30
      Width = 114
      Height = 22
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtNotaFiscalKeyPress
    end
    object edtFornecedor: TEdit
      Left = 152
      Top = 30
      Width = 313
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object BitLocalizarNota: TBitBtn
      Left = 864
      Top = 26
      Width = 107
      Height = 25
      Cursor = crHandPoint
      Hint = 'Busca Notas j'#225' Cadastradas'
      Caption = '&Localizar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
        00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
        9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
        E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
        FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
        B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
        FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
        DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
        B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
        BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
        D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
        6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TabStop = False
      OnClick = BitLocalizarNotaClick
    end
    object cbbSitucao: TComboBox
      Left = 688
      Top = 29
      Width = 169
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 1
      TabOrder = 5
      Text = 'PENDENTE'
      Items.Strings = (
        'TODAS'
        'PENDENTE'
        'CONCLUIDA')
    end
    object DataDe: TJvDateEdit
      Left = 469
      Top = 31
      Width = 92
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
      TabOrder = 2
    end
    object DataAte: TJvDateEdit
      Left = 589
      Top = 30
      Width = 92
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
      TabOrder = 3
    end
  end
  object grpItens: TGroupBox
    Left = 0
    Top = 371
    Width = 978
    Height = 205
    Align = alBottom
    TabOrder = 2
    object Splitter4: TSplitter
      Left = 2
      Top = 124
      Width = 974
      Height = 4
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 125
      ExplicitWidth = 989
    end
    object grpObsItem: TGroupBox
      Left = 2
      Top = 128
      Width = 974
      Height = 75
      Align = alBottom
      Caption = 'Observa'#231#227'o'
      TabOrder = 0
      object DBMemo1: TDBMemo
        Left = 2
        Top = 16
        Width = 970
        Height = 57
        Align = alClient
        Color = 14145495
        DataField = 'ENF_OBS_INDUSTRIALIZACAO'
        DataSource = dsNotaItem
        ReadOnly = True
        TabOrder = 0
      end
    end
    object pcIEOP: TPageControl
      Left = 2
      Top = 16
      Width = 974
      Height = 108
      ActivePage = TabSheet4
      Align = alClient
      TabOrder = 1
      object TabSheet4: TTabSheet
        Caption = 'Itens de Entrada'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbgrdItemNota: TDBGrid
          Left = 0
          Top = 0
          Width = 966
          Height = 79
          Align = alClient
          Color = 14680063
          DataSource = dsNotaItem
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnCellClick = dbgrdItemNotaCellClick
          OnDrawColumnCell = dbgrdItemNotaDrawColumnCell
          OnDblClick = dbgrdItemNotaDblClick
          OnKeyPress = dbgrdItemNotaKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'ITT_DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Situa'#231#227'o'
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BOTAO'
              Title.Caption = 'Produ'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_REFER'
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_DESCRI'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 368
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENF_QTDE'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde Produtos'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENF_QUANTIDADE_IND_RETORNO'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde Retorno'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENF_IT_QTD_ENV_PCP_DEMANDA'
              Title.Caption = 'Enviado PCP'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENF_PRECO'
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AMX_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AMX_DESCRI'
              Title.Alignment = taCenter
              Title.Caption = 'Almoxarifado'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENF_CFOP'
              Title.Alignment = taCenter
              Title.Caption = 'CFOP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IC_Percentual'
              Title.Alignment = taCenter
              Title.Caption = '% Retorno'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESO'
              Title.Caption = 'Peso do Item'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESOTOTAL'
              Title.Caption = 'Peso Total'
              Visible = True
            end>
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'O.P.'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbGridOP: TDBGrid
          Left = 0
          Top = 0
          Width = 966
          Height = 79
          Align = alClient
          Color = 14680063
          DataSource = dsOP
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnCellClick = dbGridOPCellClick
          OnDrawColumnCell = dbGridOPDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'BOTAO'
              Title.Caption = 'Produ'#231#227'o'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_REFER'
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_DESCRI'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 368
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRF_QTDE'
              Title.Caption = 'Qtde. Enviada'
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENF_QUANTIDADE_IND_RETORNO'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde Retorno'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENF_CFOP'
              Title.Alignment = taCenter
              Title.Caption = 'CFOP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IC_Percentual'
              Title.Alignment = taCenter
              Title.Caption = '% Retorno'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESO'
              Title.Caption = 'Peso do Item'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESOTOTAL'
              Title.Caption = 'Peso Total'
              Visible = True
            end>
        end
      end
    end
  end
  object grpItensRetorno: TGroupBox
    Left = 0
    Top = 579
    Width = 978
    Height = 105
    Align = alBottom
    Caption = 'Itens de Retorno'
    TabOrder = 3
    object dbgrdRetorno: TDBGrid
      Left = 2
      Top = 16
      Width = 974
      Height = 87
      Align = alClient
      Color = 13828050
      DataSource = dsRetorno
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
          FieldName = 'PED_DTENTRADA'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'Pedido'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_QTDEFAT'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Faturada'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_NOTANUMBER'
          Title.Alignment = taCenter
          Title.Caption = 'Fatura'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o NF'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_NUM_NFE'
          Title.Alignment = taCenter
          Title.Caption = 'NFe'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPE_NATUREZA'
          Title.Alignment = taCenter
          Title.Caption = 'CFOP'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_RAZAO'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Width = 321
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITT_DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Situa'#231#227'o'
          Width = 111
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 684
    Width = 978
    Height = 30
    Align = alBottom
    TabOrder = 4
    DesignSize = (
      978
      30)
    object btnImprimir: TJvArrowButton
      Left = 760
      Top = 4
      Width = 102
      Height = 25
      Anchors = [akTop, akRight]
      DropDown = PopupMenuImpressao
      Caption = '&Impress'#227'o'
      Enabled = False
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'MS Sans Serif'
      FillFont.Style = []
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
      OnClick = RomaneioPlanilha1Click
      ExplicitLeft = 758
    end
    object BitBtn1: TBitBtn
      Left = 654
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Relat'#243'rio'
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
      OnClick = BitBtn1Click
    end
    object Bit_Sair: TBitBtn
      Left = 868
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      NumGlyphs = 2
      TabOrder = 1
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object pcObservacoes: TPageControl
    Left = 0
    Top = 187
    Width = 978
    Height = 181
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 5
    object TabSheet1: TTabSheet
      Caption = 'Observa'#231#245'es da Industrializa'#231#227'o'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mmEnfObsIndust: TDBMemo
        Left = 0
        Top = 0
        Width = 970
        Height = 152
        Align = alClient
        Color = 14145495
        DataField = 'ENF_OBS_INDUST'
        DataSource = dsNotaEntrada
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Observa'#231#245'es dos Dados Adicionais'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mmEnfDadosAdicionais: TDBMemo
        Left = 0
        Top = 0
        Width = 970
        Height = 152
        Align = alClient
        Color = 14145495
        DataField = 'ENF_DADOS_ADICIONAIS'
        DataSource = dsNotaEntrada
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Observa'#231#245'es dos Dados Adicionais do Fisco'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mmEnfDadosAdicionaisFisco: TDBMemo
        Left = 0
        Top = 0
        Width = 970
        Height = 152
        Align = alClient
        Color = 14145495
        DataField = 'ENF_DADOS_ADICIONAIS_FISCO'
        DataSource = dsNotaEntrada
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object SqlCdsEntradaNota: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'  T1.ENF_ENTRADA, T1.ENF_XML, T1.ENF_OBS_INDUST, T1.enf_' +
      'notanumber,'#13#10'    T1.enf_modelo_nf,'#13#10'    T1.enf_serie,'#13#10'    T1.en' +
      'f_emissao,'#13#10'    T1.for_codigo,'#13#10'    T2.for_razao,'#13#10'  T2.FOR_CGC ' +
      ',  T1.ope_natureza,'#13#10'    T1.enf_tot_prod,'#13#10'    T1.enf_tot_nota,'#13 +
      #10't1.ENF_DADOS_ADICIONAIS,'#13#10' t1.ENF_DADOS_ADICIONAIS_FISCO,   (SE' +
      'LECT SUM(T3.enf_qtde) FROM enf_it01 T3 WHERE T3.enf_it_notanumbe' +
      'r = T1.enf_notanumber AND T3.for_codigo = T1.for_codigo) AS QTDE' +
      '_PRODUTOS,'#13#10'    (SELECT SUM(T3.enf_quantidade_ind_retorno) FROM ' +
      'enf_it01 T3 WHERE T3.enf_it_notanumber = T1.enf_notanumber AND T' +
      '3.for_codigo = T1.for_codigo) AS QTDE_PRODUTOS_RETORNO'#13#10'FROM enf' +
      '0001 T1'#13#10'JOIN for0000 T2 ON (T2.for_codigo = T1.for_codigo)'#13#10'WHE' +
      'RE T1.enf_industrializacao = '#39'S'#39
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    PacketRecords = 50
    Params = <>
    OnCalcFields = SqlCdsEntradaNotaCalcFields
    CommandText = 
      'SELECT'#13#10'  T1.ENF_ENTRADA, T1.ENF_XML, T1.ENF_OBS_INDUST, T1.enf_' +
      'notanumber,'#13#10'    T1.enf_modelo_nf,'#13#10'    T1.enf_serie,'#13#10'    T1.en' +
      'f_emissao,'#13#10'    T1.for_codigo,'#13#10'    T2.for_razao,'#13#10'  T2.FOR_CGC ' +
      ',  T1.ope_natureza,'#13#10'    T1.enf_tot_prod,'#13#10'    T1.enf_tot_nota,'#13 +
      #10't1.ENF_DADOS_ADICIONAIS,'#13#10' t1.ENF_DADOS_ADICIONAIS_FISCO,   (SE' +
      'LECT SUM(T3.enf_qtde) FROM enf_it01 T3 WHERE T3.enf_it_notanumbe' +
      'r = T1.enf_notanumber AND T3.for_codigo = T1.for_codigo) AS QTDE' +
      '_PRODUTOS,'#13#10'    (SELECT SUM(T3.enf_quantidade_ind_retorno) FROM ' +
      'enf_it01 T3 WHERE T3.enf_it_notanumber = T1.enf_notanumber AND T' +
      '3.for_codigo = T1.for_codigo) AS QTDE_PRODUTOS_RETORNO'#13#10'FROM enf' +
      '0001 T1'#13#10'JOIN for0000 T2 ON (T2.for_codigo = T1.for_codigo)'#13#10'WHE' +
      'RE T1.enf_industrializacao = '#39'S'#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 480
    Top = 193
    object SqlCdsEntradaNotaENF_NOTANUMBER: TStringField
      FieldName = 'ENF_NOTANUMBER'
      Size = 10
    end
    object SqlCdsEntradaNotaENF_MODELO_NF: TStringField
      FieldName = 'ENF_MODELO_NF'
      Size = 2
    end
    object SqlCdsEntradaNotaENF_SERIE: TStringField
      FieldName = 'ENF_SERIE'
      Size = 3
    end
    object SqlCdsEntradaNotaENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
    end
    object SqlCdsEntradaNotaFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 6
    end
    object SqlCdsEntradaNotaFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsEntradaNotaFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      Size = 14
    end
    object SqlCdsEntradaNotaOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object SqlCdsEntradaNotaENF_TOT_PROD: TFMTBCDField
      FieldName = 'ENF_TOT_PROD'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 20
      Size = 5
    end
    object SqlCdsEntradaNotaENF_TOT_NOTA: TFMTBCDField
      FieldName = 'ENF_TOT_NOTA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 20
      Size = 5
    end
    object SqlCdsEntradaNotaQTDE_PRODUTOS: TFMTBCDField
      FieldName = 'QTDE_PRODUTOS'
      Precision = 20
      Size = 5
    end
    object SqlCdsEntradaNotaQTDE_PRODUTOS_RETORNO: TFMTBCDField
      FieldName = 'QTDE_PRODUTOS_RETORNO'
      Precision = 20
      Size = 5
    end
    object SqlCdsEntradaNotaIC_Percentual: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'IC_Percentual'
      DisplayFormat = '##0.00%'
      Calculated = True
    end
    object SqlCdsEntradaNotaENF_DADOS_ADICIONAIS: TBlobField
      FieldName = 'ENF_DADOS_ADICIONAIS'
      Size = 1
    end
    object SqlCdsEntradaNotaSTATUS: TStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS'
      Calculated = True
    end
    object SqlCdsEntradaNotaENF_DADOS_ADICIONAIS_FISCO: TBlobField
      FieldName = 'ENF_DADOS_ADICIONAIS_FISCO'
      Size = 1
    end
    object SqlCdsEntradaNotaENF_OBS_INDUST: TMemoField
      FieldName = 'ENF_OBS_INDUST'
      OnGetText = SqlCdsEntradaNotaENF_OBS_INDUSTGetText
      BlobType = ftMemo
      Size = 1
    end
    object SqlCdsEntradaNotaENF_XML: TBlobField
      FieldName = 'ENF_XML'
      Size = 1
    end
    object SqlCdsEntradaNotaENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
    end
    object SqlCdsEntradaNotaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsEntradaNotaCLI_RAZAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_RAZAO'
      Size = 70
      Calculated = True
    end
    object SqlCdsEntradaNotaCLI_CGC: TStringField
      DisplayWidth = 18
      FieldKind = fkCalculated
      FieldName = 'CLI_CGC'
      Size = 18
      Calculated = True
    end
    object SqlCdsEntradaNotaENF_PESO_TOTAL: TFMTBCDField
      FieldName = 'ENF_PESO_TOTAL'
    end
    object SqlCdsEntradaNotaENF_ENVIADO_PCP_DEMANDA: TStringField
      FieldName = 'ENF_ENVIADO_PCP_DEMANDA'
      Size = 1
    end
    object SqlCdsEntradaNotaENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
    end
  end
  object SqlCdsNotaItem: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT '#13#10't1.enf_registro,'#13#10'    t1.prd_refer,'#13#10'    t1.prd_descri,' +
      #13#10'    t1.enf_qtde,'#13#10'    t1.enf_quantidade_ind_retorno,'#13#10'    t1.e' +
      'nf_preco,'#13#10'    t1.amx_codigo,'#13#10'    t2.amx_descri,'#13#10'    t1.enf_cf' +
      'op,'#13#10'    t1.itt_registro,'#13#10'    t3.itt_descricao,'#13#10'    t1.enf_obs' +
      '_industrializacao'#13#10'FROM'#13#10'enf_it01 T1'#13#10'left join almox0000 t2 on ' +
      '(t2.amx_codigo = t1.amx_codigo)'#13#10'left join ind_tiporetorno t3 on' +
      ' (t3.itt_registro = t1.itt_registro)'#13#10'WHERE T1.enf_it_notanumber' +
      ' = '#39#39' and t1.for_codigo = '#39#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsNotaItemCalcFields
    CommandText = 
      'SELECT '#13#10't1.enf_registro,'#13#10'    t1.prd_refer,'#13#10'    t1.prd_descri,' +
      #13#10'    t1.enf_qtde,'#13#10'    t1.enf_quantidade_ind_retorno,'#13#10'    t1.e' +
      'nf_preco,'#13#10'    t1.amx_codigo,'#13#10'    t2.amx_descri,'#13#10'    t1.enf_cf' +
      'op,'#13#10'    t1.itt_registro,'#13#10'    t3.itt_descricao,'#13#10'    t1.enf_obs' +
      '_industrializacao'#13#10'FROM'#13#10'enf_it01 T1'#13#10'left join almox0000 t2 on ' +
      '(t2.amx_codigo = t1.amx_codigo)'#13#10'left join ind_tiporetorno t3 on' +
      ' (t3.itt_registro = t1.itt_registro)'#13#10'WHERE T1.enf_it_notanumber' +
      ' = '#39#39' and t1.for_codigo = '#39#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 784
    Top = 345
    object SqlCdsNotaItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlCdsNotaItemPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object SqlCdsNotaItemENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      Precision = 20
      Size = 5
    end
    object SqlCdsNotaItemENF_QUANTIDADE_IND_RETORNO: TFMTBCDField
      FieldName = 'ENF_QUANTIDADE_IND_RETORNO'
      Precision = 20
      Size = 5
    end
    object SqlCdsNotaItemENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      Precision = 20
      Size = 5
    end
    object SqlCdsNotaItemAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object SqlCdsNotaItemAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 60
    end
    object SqlCdsNotaItemENF_CFOP: TStringField
      FieldName = 'ENF_CFOP'
      Size = 4
    end
    object SqlCdsNotaItemIC_Percentual: TFloatField
      FieldKind = fkCalculated
      FieldName = 'IC_Percentual'
      DisplayFormat = '##0.00%'
      Calculated = True
    end
    object SqlCdsNotaItemENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
    end
    object SqlCdsNotaItemITT_REGISTRO: TIntegerField
      FieldName = 'ITT_REGISTRO'
    end
    object SqlCdsNotaItemITT_DESCRICAO: TStringField
      FieldName = 'ITT_DESCRICAO'
      Size = 255
    end
    object SqlCdsNotaItemENF_OBS_INDUSTRIALIZACAO: TBlobField
      FieldName = 'ENF_OBS_INDUSTRIALIZACAO'
    end
    object SqlCdsNotaItemPESO: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'PESO'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object SqlCdsNotaItemPESOTOTAL: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'PESOTOTAL'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object SqlCdsNotaItemENF_UCOM: TStringField
      FieldName = 'ENF_UCOM'
      Size = 5
    end
    object SqlCdsNotaItemENF_PESO_ENTRADA: TFMTBCDField
      FieldName = 'ENF_PESO_ENTRADA'
    end
    object SqlCdsNotaItemRETORNADO: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'RETORNADO'
      Calculated = True
    end
    object SqlCdsNotaItemBOTAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'BOTAO'
      Size = 1
      Calculated = True
    end
    object SqlCdsNotaItemENF_IT_ENVIADO_PCP_DEMANDA: TStringField
      FieldName = 'ENF_IT_ENVIADO_PCP_DEMANDA'
      Size = 1
    end
    object SqlCdsNotaItemENF_IT_QTD_ENV_PCP_DEMANDA: TFMTBCDField
      DisplayWidth = 18
      FieldName = 'ENF_IT_QTD_ENV_PCP_DEMANDA'
      Size = 5
    end
    object SqlCdsNotaItemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
  end
  object SqlCdsRetorno: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'    T3.ped_dtentrada,'#13#10'    T2.ped_codigo,'#13#10'    T2.prf_qt' +
      'de,'#13#10'    T2.prf_qtdefat,'#13#10'    T4.nf_notanumber,'#13#10'    T4.nf_emiss' +
      'ao,'#13#10'    T4.nf_num_nfe,'#13#10'    T4.ope_natureza,'#13#10'    T4.cli_codigo' +
      ','#13#10'    T5.cli_razao,'#13#10'    t6.itt_descricao'#13#10'FROM'#13#10'PED_IT01_INDUS' +
      'T T1'#13#10'JOIN ped_it01 T2 ON (T2.prf_registro = T1.prf_registro)'#13#10'J' +
      'OIN ped0000 T3 ON (T3.ped_codigo = T2.ped_codigo)'#13#10'LEFT join nf0' +
      '001 T4 ON (T4.ped_codigo = T2.ped_codigo)'#13#10'LEFT join cli0000 T5 ' +
      'ON (T5.cli_codigo = T3.cli_codigo)'#13#10'left join ind_tiporetorno t6' +
      ' on (t6.itt_registro = t2.itt_registro)'#13#10'WHERE T1.prf_registro =' +
      ' '#39#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'    T3.ped_dtentrada,'#13#10'    T2.ped_codigo,'#13#10'    T2.prf_qt' +
      'de,'#13#10'    T2.prf_qtdefat,'#13#10'    T4.nf_notanumber,'#13#10'    T4.nf_emiss' +
      'ao,'#13#10'    T4.nf_num_nfe,'#13#10'    T4.ope_natureza,'#13#10'    T4.cli_codigo' +
      ','#13#10'    T5.cli_razao,'#13#10'    t6.itt_descricao'#13#10'FROM'#13#10'PED_IT01_INDUS' +
      'T T1'#13#10'JOIN ped_it01 T2 ON (T2.prf_registro = T1.prf_registro)'#13#10'J' +
      'OIN ped0000 T3 ON (T3.ped_codigo = T2.ped_codigo)'#13#10'LEFT join nf0' +
      '001 T4 ON (T4.ped_codigo = T2.ped_codigo)'#13#10'LEFT join cli0000 T5 ' +
      'ON (T5.cli_codigo = T3.cli_codigo)'#13#10'left join ind_tiporetorno t6' +
      ' on (t6.itt_registro = t2.itt_registro)'#13#10'WHERE T1.prf_registro =' +
      ' '#39#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 792
    Top = 401
    object SqlCdsRetornoPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object SqlCdsRetornoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsRetornoPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 20
      Size = 5
    end
    object SqlCdsRetornoPRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Precision = 20
      Size = 5
    end
    object SqlCdsRetornoNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Size = 6
    end
    object SqlCdsRetornoNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object SqlCdsRetornoNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object SqlCdsRetornoOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object SqlCdsRetornoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsRetornoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsRetornoITT_DESCRICAO: TStringField
      FieldName = 'ITT_DESCRICAO'
      Size = 255
    end
  end
  object dsNotaEntrada: TDataSource
    DataSet = SqlCdsEntradaNota
    OnDataChange = dsNotaEntradaDataChange
    Left = 592
    Top = 193
  end
  object dsNotaItem: TDataSource
    DataSet = SqlCdsNotaItem
    OnDataChange = dsNotaItemDataChange
    Left = 864
    Top = 345
  end
  object dsRetorno: TDataSource
    DataSet = SqlCdsRetorno
    Left = 864
    Top = 401
  end
  object frxIndustrializacao: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41934.732706481500000000
    ReportOptions.LastChange = 41934.746082777790000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxIndustrializacaoGetValue
    Left = 696
    Top = 401
    Datasets = <
      item
        DataSet = frxdbNotaFiscal
        DataSetName = 'frxdbNotaFiscal'
      end
      item
        DataSet = frxdbNotaItem
        DataSetName = 'frxdbNotaItem'
      end
      item
        DataSet = frxdbRetorno
        DataSetName = 'frxdbRetorno'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 201.464750000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'ReportTitle1OnAfterPrint'
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Top = 2.779530000000000000
          Width = 120.944960000000000000
          Height = 68.031540000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Top = 75.370130000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Top = 179.008040000000000000
          Width = 721.889766220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo64: TfrxMemoView
          Left = 3.779530000000000000
          Top = 182.567100000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'REFER'#202'NCIA')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 475.000310000000000000
          Top = 182.567100000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 201.464750000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo68: TfrxMemoView
          Left = 80.826840000000000000
          Top = 182.567100000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 615.953310000000000000
          Top = 182.567100000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'PRE'#199'O UNIT R$')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 688.016390000000000000
          Top = 182.567100000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object wFrxRazao: TfrxMemoView
          Left = 129.960730000000000000
          Top = 6.559060000000000000
          Width = 487.559370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object wFrxEndereco: TfrxMemoView
          Left = 129.976500000000000000
          Top = 23.779530000000000000
          Width = 438.425480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 129.960730000000000000
          Top = 40.795300000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CEP]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 196.874150000000000000
          Top = 40.795300000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CIDADE]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 402.086890000000000000
          Top = 40.795300000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[UF]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 428.543600000000000000
          Top = 40.795300000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FONE]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 129.740260000000000000
          Top = 56.692950000000000000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'E-Mail: [EMAIL]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 695.386210000000000000
          Top = 6.000000000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 667.283860000000000000
          Top = 6.000000000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pag.:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 467.866420000000000000
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CNPJ]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 431.323130000000000000
          Top = 56.692950000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 584.929500000000000000
          Top = 56.913420000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 631.724800000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[INSCR]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Top = 105.826840000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo79: TfrxMemoView
          Top = 75.590600000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ROMANEIO DE IND'#218'STRIALIZA'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 540.472790000000000000
          Top = 182.417440000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'QTDE RETORNO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nota Fiscal:')
          ParentFont = False
        end
        object frxdbNotaFiscalENF_NOTANUMBER: TfrxMemoView
          Left = 102.047310000000000000
          Top = 113.385900000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_NOTANUMBER'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."ENF_NOTANUMBER"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 215.433210000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Modelo:')
          ParentFont = False
        end
        object frxdbNotaFiscalENF_MODELO_NF: TfrxMemoView
          Left = 313.700990000000000000
          Top = 113.385900000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_MODELO_NF'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."ENF_MODELO_NF"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 377.953000000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'S'#233'rie:')
          ParentFont = False
        end
        object frxdbNotaFiscalENF_SERIE: TfrxMemoView
          Left = 476.220780000000000000
          Top = 113.385900000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_SERIE'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."ENF_SERIE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 563.149970000000000000
          Top = 113.385900000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object frxdbNotaFiscalENF_EMISSAO: TfrxMemoView
          Left = 634.961040000000000000
          Top = 113.385900000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_EMISSAO'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."ENF_EMISSAO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object frxdbNotaFiscalFOR_CODIGO: TfrxMemoView
          Left = 102.047310000000000000
          Top = 136.063080000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."FOR_CODIGO"] - ')
          ParentFont = False
        end
        object frxdbNotaFiscalFOR_RAZAO: TfrxMemoView
          Left = 154.960730000000000000
          Top = 136.063080000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_RAZAO'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."FOR_RAZAO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 158.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CFOP:')
          ParentFont = False
        end
        object frxdbNotaFiscalOPE_NATUREZA: TfrxMemoView
          Left = 102.047310000000000000
          Top = 158.740260000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'OPE_NATUREZA'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."OPE_NATUREZA"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 154.960730000000000000
          Top = 158.740260000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Quantidade Produtos:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 359.055350000000000000
          Top = 158.740260000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Qtde Prod. Retorno:')
          ParentFont = False
        end
        object frxdbNotaFiscalIC_Percentual: TfrxMemoView
          Left = 634.961040000000000000
          Top = 158.740260000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'IC_Percentual'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."IC_Percentual"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 563.149970000000000000
          Top = 158.740260000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Percentual:')
          ParentFont = False
        end
        object frxdbNotaFiscalQTDE_PRODUTOS: TfrxMemoView
          Left = 272.126160000000000000
          Top = 158.740260000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'QTDE_PRODUTOS'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."QTDE_PRODUTOS"]')
          ParentFont = False
          WordWrap = False
        end
        object frxdbNotaFiscalQTDE_PRODUTOS_RETORNO: TfrxMemoView
          Left = 464.882190000000000000
          Top = 158.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'QTDE_PRODUTOS_RETORNO'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."QTDE_PRODUTOS_RETORNO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxdbNotaItem
        DataSetName = 'frxdbNotaItem'
        RowCount = 0
        object frxdbNotaItemPRD_REFER: TfrxMemoView
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frxdbNotaItem
          DataSetName = 'frxdbNotaItem'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbNotaItem."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbNotaItemPRD_DESCRI: TfrxMemoView
          Left = 79.370130000000000000
          Width = 389.291590000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxdbNotaItem
          DataSetName = 'frxdbNotaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbNotaItem."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxdbNotaItemENF_QTDE: TfrxMemoView
          Left = 472.441250000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'ENF_QTDE'
          DataSet = frxdbNotaItem
          DataSetName = 'frxdbNotaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbNotaItem."ENF_QTDE"]')
          ParentFont = False
        end
        object frxdbNotaItemENF_QUANTIDADE_IND_RETORNO: TfrxMemoView
          Left = 540.472790000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ENF_QUANTIDADE_IND_RETORNO'
          DataSet = frxdbNotaItem
          DataSetName = 'frxdbNotaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbNotaItem."ENF_QUANTIDADE_IND_RETORNO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 616.063390000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ENF_PRECO'
          DataSet = frxdbNotaItem
          DataSetName = 'frxdbNotaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbNotaItem."ENF_PRECO"]')
          ParentFont = False
        end
        object frxdbNotaItemENF_CFOP: TfrxMemoView
          Left = 687.874460000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DataField = 'ENF_CFOP'
          DataSet = frxdbNotaItem
          DataSetName = 'frxdbNotaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbNotaItem."ENF_CFOP"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 374.173470000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 468.661720000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbNotaItem."ENF_QTDE">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 540.472790000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxdbNotaItem."ENF_QUANTIDADE_IND_RETORNO">,MasterData1,3)' +
              ']')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = -3.779530000000000000
          Top = 22.677180000000000000
          Width = 721.889766220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Width = 721.889766220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxdbNotaFiscal: TfrxDBDataset
    UserName = 'frxdbNotaFiscal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENF_NOTANUMBER=ENF_NOTANUMBER'
      'ENF_MODELO_NF=ENF_MODELO_NF'
      'ENF_SERIE=ENF_SERIE'
      'ENF_EMISSAO=ENF_EMISSAO'
      'FOR_CODIGO=FOR_CODIGO'
      'FOR_RAZAO=FOR_RAZAO'
      'FOR_CGC=FOR_CGC'
      'OPE_NATUREZA=OPE_NATUREZA'
      'ENF_TOT_PROD=ENF_TOT_PROD'
      'ENF_TOT_NOTA=ENF_TOT_NOTA'
      'QTDE_PRODUTOS=QTDE_PRODUTOS'
      'QTDE_PRODUTOS_RETORNO=QTDE_PRODUTOS_RETORNO'
      'IC_Percentual=IC_Percentual'
      'ENF_DADOS_ADICIONAIS=ENF_DADOS_ADICIONAIS'
      'STATUS=STATUS'
      'ENF_DADOS_ADICIONAIS_FISCO=ENF_DADOS_ADICIONAIS_FISCO'
      'ENF_OBS_INDUST=ENF_OBS_INDUST'
      'ENF_XML=ENF_XML'
      'ENF_ENTRADA=ENF_ENTRADA'
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_RAZAO=CLI_RAZAO'
      'CLI_CGC=CLI_CGC')
    DataSet = SqlCdsEntradaNota
    BCDToCurrency = False
    Left = 832
    Top = 193
  end
  object frxdbNotaItem: TfrxDBDataset
    UserName = 'frxdbNotaItem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'ENF_QTDE=ENF_QTDE'
      'ENF_QUANTIDADE_IND_RETORNO=ENF_QUANTIDADE_IND_RETORNO'
      'ENF_PRECO=ENF_PRECO'
      'AMX_CODIGO=AMX_CODIGO'
      'AMX_DESCRI=AMX_DESCRI'
      'ENF_CFOP=ENF_CFOP'
      'IC_Percentual=IC_Percentual'
      'ENF_REGISTRO=ENF_REGISTRO'
      'ITT_REGISTRO=ITT_REGISTRO'
      'ITT_DESCRICAO=ITT_DESCRICAO'
      'ENF_OBS_INDUSTRIALIZACAO=ENF_OBS_INDUSTRIALIZACAO'
      'PESO=PESO'
      'PESOTOTAL=PESOTOTAL'
      'ENF_UCOM=ENF_UCOM'
      'ENF_PESO_ENTRADA=ENF_PESO_ENTRADA'
      'RETORNADO=RETORNADO')
    DataSet = SqlCdsNotaItem
    BCDToCurrency = False
    Left = 936
    Top = 345
  end
  object frxdbRetorno: TfrxDBDataset
    UserName = 'frxdbRetorno'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PED_DTENTRADA=PED_DTENTRADA'
      'PED_CODIGO=PED_CODIGO'
      'PRF_QTDE=PRF_QTDE'
      'PRF_QTDEFAT=PRF_QTDEFAT'
      'NF_NOTANUMBER=NF_NOTANUMBER'
      'NF_EMISSAO=NF_EMISSAO'
      'NF_NUM_NFE=NF_NUM_NFE'
      'OPE_NATUREZA=OPE_NATUREZA'
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_RAZAO=CLI_RAZAO'
      'ITT_DESCRICAO=ITT_DESCRICAO')
    DataSet = SqlCdsRetorno
    BCDToCurrency = False
    Left = 936
    Top = 401
  end
  object SqlCdsItensRelatorio: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT     t0.enf_notanumber,     t0.enf_entrada,     t4.for_cod' +
      'igo,     t4.for_razao,     t1.enf_registro,     t1.prd_refer,   ' +
      '  t1.prd_descri,     t1.enf_qtde,     t1.enf_quantidade_ind_reto' +
      'rno,     t1.enf_preco,     t1.amx_codigo,     t2.amx_descri,    ' +
      ' t1.enf_cfop,     t3.itt_registro,     t3.itt_descricao  FROM  e' +
      'nf_it01 T1  join for0000 t4 on (t4.for_codigo = t1.for_codigo)  ' +
      'join enf0001 t0 on (t0.enf_notanumber = t1.enf_it_notanumber and' +
      ' t0.for_codigo = t1.for_codigo and t0.enf_industrializacao = '#39'S'#39 +
      '  and  (SELECT SUM(T3.enf_qtde) FROM enf_it01 T3 WHERE T3.enf_it' +
      '_notanumber = T0.enf_notanumber AND T3.for_codigo = T0.for_codig' +
      'o) > (SELECT SUM(T3.enf_quantidade_ind_retorno) FROM enf_it01 T3' +
      ' WHERE T3.enf_it_notanumber = T0.enf_notanumber AND T3.for_codig' +
      'o = T0.for_codigo) )  left join almox0000 t2 on (t2.amx_codigo =' +
      ' t1.amx_codigo)  left join ind_tiporetorno t3 on (t3.itt_registr' +
      'o = t1.itt_registro)  ORDER BY t3.itt_descricao, t0.enf_entrada,' +
      ' t0.enf_notanumber'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT     t0.enf_notanumber,     t0.enf_entrada,     t4.for_cod' +
      'igo,     t4.for_razao,     t1.enf_registro,     t1.prd_refer,   ' +
      '  t1.prd_descri,     t1.enf_qtde,     t1.enf_quantidade_ind_reto' +
      'rno,     t1.enf_preco,     t1.amx_codigo,     t2.amx_descri,    ' +
      ' t1.enf_cfop,     t3.itt_registro,     t3.itt_descricao  FROM  e' +
      'nf_it01 T1  join for0000 t4 on (t4.for_codigo = t1.for_codigo)  ' +
      'join enf0001 t0 on (t0.enf_notanumber = t1.enf_it_notanumber and' +
      ' t0.for_codigo = t1.for_codigo and t0.enf_industrializacao = '#39'S'#39 +
      '  and  (SELECT SUM(T3.enf_qtde) FROM enf_it01 T3 WHERE T3.enf_it' +
      '_notanumber = T0.enf_notanumber AND T3.for_codigo = T0.for_codig' +
      'o) > (SELECT SUM(T3.enf_quantidade_ind_retorno) FROM enf_it01 T3' +
      ' WHERE T3.enf_it_notanumber = T0.enf_notanumber AND T3.for_codig' +
      'o = T0.for_codigo) )  left join almox0000 t2 on (t2.amx_codigo =' +
      ' t1.amx_codigo)  left join ind_tiporetorno t3 on (t3.itt_registr' +
      'o = t1.itt_registro)  ORDER BY t3.itt_descricao, t0.enf_entrada,' +
      ' t0.enf_notanumber'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 592
    Top = 409
    object SqlCdsItensRelatorioENF_NOTANUMBER: TStringField
      FieldName = 'ENF_NOTANUMBER'
      Size = 10
    end
    object SqlCdsItensRelatorioENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
    end
    object SqlCdsItensRelatorioFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsItensRelatorioFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsItensRelatorioENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
    end
    object SqlCdsItensRelatorioPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlCdsItensRelatorioPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object SqlCdsItensRelatorioENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensRelatorioENF_QUANTIDADE_IND_RETORNO: TFMTBCDField
      FieldName = 'ENF_QUANTIDADE_IND_RETORNO'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensRelatorioENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensRelatorioAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object SqlCdsItensRelatorioAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 60
    end
    object SqlCdsItensRelatorioENF_CFOP: TStringField
      FieldName = 'ENF_CFOP'
      Size = 4
    end
    object SqlCdsItensRelatorioITT_REGISTRO: TIntegerField
      FieldName = 'ITT_REGISTRO'
    end
    object SqlCdsItensRelatorioITT_DESCRICAO: TStringField
      FieldName = 'ITT_DESCRICAO'
      Size = 255
    end
  end
  object frxRelatorio: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42024.375327280090000000
    ReportOptions.LastChange = 42025.479049201400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxRelatorioGetValue
    Left = 592
    Top = 502
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object frxDBDataset1PED_DTENTRADA: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_ENTRADA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ENF_ENTRADA"]')
          ParentFont = False
        end
        object frxDBDataset1PED_CODIGO: TfrxMemoView
          Left = 75.590600000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_NOTANUMBER'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ENF_NOTANUMBER"]')
          ParentFont = False
        end
        object frxDBDataset1PRF_QTDE: TfrxMemoView
          Left = 400.630180000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_QTDE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ENF_QTDE"]')
          ParentFont = False
        end
        object frxDBDataset1PRF_QTDEFAT: TfrxMemoView
          Left = 476.220780000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ENF_QUANTIDADE_IND_RETORNO"]')
          ParentFont = False
        end
        object frxDBDataset1OPE_NATUREZA: TfrxMemoView
          Left = 551.811380000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_CFOP'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ENF_CFOP"]')
          ParentFont = False
        end
        object frxDBDataset1CLI_RAZAO: TfrxMemoView
          Left = 585.827150000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_RAZAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."FOR_RAZAO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1PRD_REFER: TfrxMemoView
          Left = 151.181200000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_REFER"] - [frxDBDataset1."PRD_DESCRI"]')
          ParentFont = False
          Wysiwyg = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = -3.779530000000000000
          Top = 72.590600000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object wFrxRazao: TfrxMemoView
          Left = 126.181200000000000000
          Top = 3.779530000000000000
          Width = 487.559370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object wFrxEndereco: TfrxMemoView
          Left = 126.196970000000000000
          Top = 21.000000000000000000
          Width = 438.425480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 126.181200000000000000
          Top = 38.015770000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CEP]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 193.094620000000000000
          Top = 38.015770000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CIDADE]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 398.307360000000000000
          Top = 38.015770000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[UF]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 424.764070000000000000
          Top = 38.015770000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FONE]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 125.960730000000000000
          Top = 53.913420000000000000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'E-Mail: [EMAIL]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 691.606680000000000000
          Top = 3.220470000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 663.504330000000000000
          Top = 3.220470000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pag.:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 464.086890000000000000
          Top = 53.913420000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CNPJ]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 427.543600000000000000
          Top = 53.913420000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 581.149970000000000000
          Top = 54.133890000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 627.945270000000000000
          Top = 53.913420000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[INSCR]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = -3.779530000000000000
          Top = 72.811070000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE IND'#218'STRIALIZA'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Left = -3.779530000000000000
          Top = 102.047310000000000000
          Width = 721.889766220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo64: TfrxMemoView
          Top = 105.606370000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'EMISS'#195'O')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 153.740260000000000000
          Top = 105.606370000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = -3.779530000000000000
          Top = 124.504020000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo68: TfrxMemoView
          Left = 77.047310000000000000
          Top = 105.606370000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 555.732840000000000000
          Top = 105.606370000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 400.630180000000000000
          Top = 105.826840000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 476.220780000000000000
          Top = 105.826840000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE RETORNO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 585.827150000000000000
          Top = 105.826840000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FORNECEDOR')
          ParentFont = False
        end
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 68.031540000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."ITT_DESCRICAO"'
        object frxDBDataset1ITT_DESCRICAO: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          Memo.UTF8W = (
            'Situa'#231#227'o: [frxDBDataset1."ITT_DESCRICAO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 400.630180000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."ENF_QTDE">,MasterData1,1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 476.220780000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDataset1."ENF_QUANTIDADE_IND_RETORNO">,MasterData1,1)' +
              ']')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 302.362400000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total do Grupo:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 22.677180000000000000
          Width = 721.889766220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object SysMemo4: TfrxSysMemoView
          Left = 400.630180000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."ENF_QTDE">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 476.220780000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDataset1."ENF_QUANTIDADE_IND_RETORNO">,MasterData1,3)' +
              ']')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Geral:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Width = 721.889766220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 721.889766220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENF_NOTANUMBER=ENF_NOTANUMBER'
      'ENF_ENTRADA=ENF_ENTRADA'
      'FOR_CODIGO=FOR_CODIGO'
      'FOR_RAZAO=FOR_RAZAO'
      'ENF_REGISTRO=ENF_REGISTRO'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'ENF_QTDE=ENF_QTDE'
      'ENF_QUANTIDADE_IND_RETORNO=ENF_QUANTIDADE_IND_RETORNO'
      'ENF_PRECO=ENF_PRECO'
      'AMX_CODIGO=AMX_CODIGO'
      'AMX_DESCRI=AMX_DESCRI'
      'ENF_CFOP=ENF_CFOP'
      'ITT_REGISTRO=ITT_REGISTRO'
      'ITT_DESCRICAO=ITT_DESCRICAO')
    DataSet = SqlCdsItensRelatorio
    BCDToCurrency = False
    Left = 592
    Top = 454
  end
  object PopupMenuImpressao: TPopupMenu
    Left = 808
    Top = 520
    object Romaneio1: TMenuItem
      Caption = 'Romaneio'
      OnClick = Romaneio1Click
    end
    object RomaneioPlanilha1: TMenuItem
      Caption = 'Romaneio Planilha'
      OnClick = RomaneioPlanilha1Click
    end
    object RomaneioPlanilhacomCores1: TMenuItem
      Caption = 'Romaneio Planilha com Cores'
      OnClick = RomaneioPlanilhacomCores1Click
    end
    object NotaFiscalPorProdutoPendent1: TMenuItem
      Caption = 'Nota Fiscal por Produto Pendente'
      OnClick = NotaFiscalPorProdutoPendent1Click
    end
    object NotaFiscalporProdutoRetornado1: TMenuItem
      Caption = 'Nota Fiscal por Produto Retornado'
      OnClick = NotaFiscalporProdutoRetornado1Click
    end
  end
  object frxRomaneioPlanilha: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41934.732706481500000000
    ReportOptions.LastChange = 44763.664394872700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<frxdbNotaItem."PRD_DESCRI"> = '#39#39') OR (<frxdbNotaItem."ENF' +
        '_QTDE"> - <frxdbNotaItem."ENF_QUANTIDADE_IND_RETORNO"> = 0) then' +
        ' '
      '    MasterData1.Visible := False'
      '  else'
      '    MasterData1.Visible := True;                            '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxIndustrializacaoGetValue
    Left = 800
    Top = 297
    Datasets = <
      item
        DataSet = frxdbNotaFiscal
        DataSetName = 'frxdbNotaFiscal'
      end
      item
        DataSet = frxdbNotaItem
        DataSetName = 'frxdbNotaItem'
      end
      item
        DataSet = frxdbRetorno
        DataSetName = 'frxdbRetorno'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 217.212722910000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'ReportTitle1OnAfterPrint'
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object Shape1: TfrxShapeView
          Top = 179.417440000000000000
          Width = 64.252010000000000000
          Height = 37.795282910000000000
        end
        object Shape3: TfrxShapeView
          Left = 64.252010000000000000
          Top = 179.417440000000000000
          Width = 200.315090000000000000
          Height = 37.795282910000000000
        end
        object Shape5: TfrxShapeView
          Left = 264.567100000000000000
          Top = 179.417440000000000000
          Width = 64.252010000000000000
          Height = 37.795282910000000000
        end
        object Shape7: TfrxShapeView
          Left = 328.819110000000000000
          Top = 179.417440000000000000
          Width = 75.590600000000000000
          Height = 37.795282910000000000
        end
        object Shape9: TfrxShapeView
          Left = 404.409710000000000000
          Top = 179.417440000000000000
          Width = 75.590600000000000000
          Height = 37.795282910000000000
        end
        object Shape11: TfrxShapeView
          Left = 480.220780000000000000
          Top = 179.417440000000000000
          Width = 64.252010000000000000
          Height = 37.795282910000000000
        end
        object Shape13: TfrxShapeView
          Left = 544.472790000000000000
          Top = 179.417440000000000000
          Width = 52.913420000000000000
          Height = 37.795282910000000000
        end
        object Shape19: TfrxShapeView
          Left = 986.898270000000000000
          Top = 179.417440000000000000
          Width = 60.472480000000000000
          Height = 37.795282910000000000
        end
        object Shape15: TfrxShapeView
          Left = 597.401980000000000000
          Top = 179.417440000000000000
          Width = 52.535433070000000000
          Height = 37.795282910000000000
        end
        object Shape17: TfrxShapeView
          Left = 650.299630000000000000
          Top = 179.417440000000000000
          Width = 336.377952760000000000
          Height = 37.795282910000000000
        end
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Top = 2.779530000000000000
          Width = 120.944960000000000000
          Height = 68.031540000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Top = 75.370130000000000000
          Width = 1046.929133858270000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo64: TfrxMemoView
          Left = -5.661410000000000000
          Top = 181.307086610000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 264.685220000000000000
          Top = 181.307086610000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 126.299320000000000000
          Top = 181.307086610000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 412.417750000000000000
          Top = 181.307086610000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Peso Total')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 480.142240000000000000
          Top = 181.307086610000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Reprocesso')
          ParentFont = False
        end
        object wFrxRazao: TfrxMemoView
          Left = 129.960730000000000000
          Top = 6.559060000000000000
          Width = 487.559370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object wFrxEndereco: TfrxMemoView
          Left = 129.976500000000000000
          Top = 23.779530000000000000
          Width = 438.425480000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 129.960730000000000000
          Top = 40.795300000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CEP]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 196.874150000000000000
          Top = 40.795300000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CIDADE]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 402.086890000000000000
          Top = 40.795300000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[UF]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 428.543600000000000000
          Top = 40.795300000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FONE]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 129.740260000000000000
          Top = 56.692950000000000000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'E-Mail: [EMAIL]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 990.189550000000000000
          Top = 24.897650000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 962.087200000000000000
          Top = 24.897650000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pag.:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 467.866420000000000000
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CNPJ]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 431.323130000000000000
          Top = 56.692950000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 584.929500000000000000
          Top = 56.913420000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 631.724800000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[INSCR]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Top = 105.826840000000000000
          Width = 1046.929133858270000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo79: TfrxMemoView
          Left = 3.779530000000000000
          Top = 75.590600000000000000
          Width = 1046.929133860000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'ROMANEIO DE EXPEDI'#199#195'O        Data de ENTRADA: [frxdbNotaFiscal."' +
              'ENF_ENTRADA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 324.157700000000000000
          Top = 181.307086610000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Peso Unit'#225'rio')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 113.385900000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nota Fiscal:')
          ParentFont = False
        end
        object frxdbNotaFiscalENF_NOTANUMBER: TfrxMemoView
          Left = 83.149660000000000000
          Top = 113.385900000000000000
          Width = 98.267780000000000000
          Height = 15.118110240000000000
          DataField = 'ENF_NOTANUMBER'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."ENF_NOTANUMBER"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 204.094620000000000000
          Top = 113.385900000000000000
          Width = 45.354360000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Modelo:')
          ParentFont = False
        end
        object frxdbNotaFiscalENF_MODELO_NF: TfrxMemoView
          Left = 253.228510000000000000
          Top = 113.385900000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          DataField = 'ENF_MODELO_NF'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."ENF_MODELO_NF"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 336.378170000000000000
          Top = 113.385900000000000000
          Width = 34.015770000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'S'#233'rie:')
          ParentFont = False
        end
        object frxdbNotaFiscalENF_SERIE: TfrxMemoView
          Left = 374.173470000000000000
          Top = 113.385900000000000000
          Width = 45.354360000000000000
          Height = 15.118110240000000000
          DataField = 'ENF_SERIE'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."ENF_SERIE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Emiss'#227'o:')
          ParentFont = False
        end
        object frxdbNotaFiscalENF_EMISSAO: TfrxMemoView
          Left = 589.606680000000000000
          Top = 113.385900000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DataField = 'ENF_EMISSAO'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."ENF_EMISSAO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object frxdbNotaFiscalFOR_CODIGO: TfrxMemoView
          Left = 83.149660000000000000
          Top = 136.063080000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."FOR_CODIGO"] - ')
          ParentFont = False
        end
        object frxdbNotaFiscalFOR_RAZAO: TfrxMemoView
          Left = 136.063080000000000000
          Top = 136.063080000000000000
          Width = 517.795610000000000000
          Height = 15.118110240000000000
          DataField = 'FOR_RAZAO'
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."FOR_RAZAO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 544.811380000000000000
          Top = 181.307086610000000000
          Width = 52.913420000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Avaria '
            'que segue')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 598.724800000000000000
          Top = 181.307086610000000000
          Width = 52.913420000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Avaria '
            'para troca')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 986.457330000000000000
          Top = 181.307086610000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Vol.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 779.024120000000000000
          Top = 181.307086610000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Volume')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 661.417750000000000000
          Top = 136.063080000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ Fornecedor:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 771.024120000000000000
          Top = 136.063080000000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FOR_CGC]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 865.512370000000000000
          Top = 3.779530000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE] '#224's [TIME]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 154.960730000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 83.149660000000000000
          Top = 154.960730000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."CLI_CODIGO"] - ')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 136.063080000000000000
          Top = 154.960730000000000000
          Width = 517.795610000000000000
          Height = 15.118110240000000000
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."CLI_RAZAO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 661.417750000000000000
          Top = 154.960730000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ Cliente:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 771.024120000000000000
          Top = 154.960730000000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          DataSet = frxdbNotaFiscal
          DataSetName = 'frxdbNotaFiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxdbNotaFiscal."CLI_CGC"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 34.015752910000000000
        Top = 298.582870000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxdbNotaItem
        DataSetName = 'frxdbNotaItem'
        RowCount = 0
        Stretched = True
        object frxdbNotaItemPRD_REFER: TfrxMemoView
          Top = 4.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataSet = frxdbNotaItem
          DataSetName = 'frxdbNotaItem'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbNotaItem."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbNotaItemPRD_DESCRI: TfrxMemoView
          Left = 64.252010000000000000
          Top = 4.000000000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbNotaItem
          DataSetName = 'frxdbNotaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PRD_DESCRI]')
          ParentFont = False
        end
        object frxdbNotaItemENF_QTDE: TfrxMemoView
          Left = 260.787570000000000000
          Top = 4.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxdbNotaItem
          DataSetName = 'frxdbNotaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[QUANTIDADE]')
          ParentFont = False
        end
        object frxdbNotaItemENF_QUANTIDADE_IND_RETORNO: TfrxMemoView
          Left = 328.819110000000000000
          Top = 4.000000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxdbNotaItem
          DataSetName = 'frxdbNotaItem'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PESO_UNITARIO]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 404.409710000000000000
          Top = 4.000000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxdbNotaItem
          DataSetName = 'frxdbNotaItem'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PESO_TOTAL]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 64.252010000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 264.567100000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 328.819110000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 404.409710000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 480.000310000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 544.629921259842500000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 597.543307086614200000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 650.456692913385800000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 986.457330000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 1046.929810000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 117.165430000000000000
        Top = 355.275820000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Shape23: TfrxShapeView
          Left = 404.409710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
        end
        object Shape21: TfrxShapeView
          Left = 199.756030000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
        end
        object Shape22: TfrxShapeView
          Left = 264.567100000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
        end
        object Shape24: TfrxShapeView
          Left = 802.015748030000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
        end
        object Memo20: TfrxMemoView
          Left = 805.039890000000000000
          Top = 11.338590000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade de Volumes:')
          ParentFont = False
        end
        object Shape25: TfrxShapeView
          Left = 949.417322830000000000
          Width = 97.511811020000000000
          Height = 37.795300000000000000
        end
        object Memo3: TfrxMemoView
          Left = 214.874150000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Totais:')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 268.346630000000000000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<QUANTIDADE>,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 404.409710000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<PESO_TOTAL>,MasterData1,3)]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 39.677180000000000000
          Width = 1046.929133860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Width = 1046.929133860000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo21: TfrxMemoView
          Left = 7.559060000000000000
          Top = 47.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 7.559060000000000000
          Top = 70.133890000000000000
          Width = 1031.811690000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbNotaItem
          DataSetName = 'frxdbNotaItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbNotaFiscal."ENF_OBS_INDUST"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 532.913730000000000000
        Width = 1046.929810000000000000
        object Memo23: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'Conferente:_____________________________________________________' +
              '_________  Data: ____/____/________ Hora:____:____')
          ParentFont = False
        end
      end
    end
  end
  object qForCliProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ' SELECT'#9'DISTINCT '
      '  ne.cli_codigo, c.CLI_RAZAO , fo.for_razao, ne.enf_notanumber, '
      '  ne.enf_entrada, ne.enf_emissao, nfit.prd_refer, pr.prd_descri,'
      
        '  nfit.ENF_QUANTIDADE_IND_RETORNO, nfit.enf_qtde, nfit.ENF_PESO_' +
        'ENTRADA,'
      
        '  ((nfit.enf_qtde-nfit.ENF_QUANTIDADE_IND_RETORNO) * nfit.ENF_PE' +
        'SO_ENTRADA) AS total'
      'FROM'
      '  enf_it01 nfit'
      
        'INNER JOIN enf0001 ne ON nfit.enf_it_notanumber = ne.enf_notanum' +
        'ber'#9'AND ne.ENF_EMISSAO BETWEEN '#39'2022-07-01'#39' AND '#39'2022-07-28'#39
      'INNER JOIN for0000 fo ON nfit.for_codigo = fo.for_codigo'
      'INNER JOIN prd0000 pr ON nfit.prd_refer = pr.prd_refer'
      'LEFT   JOIN CLI0000 c ON c.CLI_CODIGO = ne.cli_codigo')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 488
    Top = 494
    object qForCliProdutoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object qForCliProdutoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object qForCliProdutoFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 70
    end
    object qForCliProdutoENF_NOTANUMBER: TStringField
      FieldName = 'ENF_NOTANUMBER'
      Size = 10
    end
    object qForCliProdutoENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
    end
    object qForCliProdutoENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
    end
    object qForCliProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object qForCliProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qForCliProdutoENF_QUANTIDADE_IND_RETORNO: TFMTBCDField
      FieldName = 'ENF_QUANTIDADE_IND_RETORNO'
      Precision = 18
      Size = 5
    end
    object qForCliProdutoENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      Precision = 18
      Size = 5
    end
    object qForCliProdutoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 10
    end
    object qForCliProdutoENF_PESO_ENTRADA: TFMTBCDField
      FieldName = 'ENF_PESO_ENTRADA'
      Precision = 18
      Size = 5
    end
  end
  object dsqForCliProduto: TDataSource
    DataSet = qForCliProduto
    Left = 488
    Top = 446
  end
  object frxDBForCliProduto: TfrxDBDataset
    UserName = 'frxDBqForProduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_RAZAO=CLI_RAZAO'
      'FOR_RAZAO=FOR_RAZAO'
      'ENF_NOTANUMBER=ENF_NOTANUMBER'
      'ENF_ENTRADA=ENF_ENTRADA'
      'ENF_EMISSAO=ENF_EMISSAO'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'ENF_QUANTIDADE_IND_RETORNO=ENF_QUANTIDADE_IND_RETORNO'
      'ENF_QTDE=ENF_QTDE'
      'TOTAL=TOTAL'
      'ENF_PESO_ENTRADA=ENF_PESO_ENTRADA')
    DataSet = qForCliProduto
    BCDToCurrency = False
    Left = 488
    Top = 400
  end
  object frxForCliProduto: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44084.407895162000000000
    ReportOptions.LastChange = 44365.464099594900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var Empresa: string;                                          '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxForCliProdutoBeginDoc
    OnGetValue = frxForCliProdutoGetValue
    Left = 489
    Top = 345
    Datasets = <
      item
        DataSet = frxDBForCliProduto
        DataSetName = 'frxDBqForProduto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 63.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 585.827150000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          Left = 672.756340000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 544.472790000000000000
          Top = 45.354360000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emitido em: [Date]')
          ParentFont = False
        end
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Width = 177.637783070000000000
          Height = 60.472480000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          Left = 205.551330000000000000
          Top = 1.779530000000000000
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 205.874150000000000000
          Top = 18.456710000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nota Fiscal por Produto Pendente')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 204.094620000000000000
          Top = 37.795300000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Per'#237'odo de [DataI] a [DataF]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 17.007874020000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        DataSet = frxDBForCliProduto
        DataSetName = 'frxDBqForProduto'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBqForProduto."PRD_REFER"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 79.370130000000000000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBqForProduto."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 411.968770000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBqForProduto."ENF_QTDE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 487.559370000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBqForProduto."ENF_QUANTIDADE_IND_RETORNO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBqForProduto."TOTAL"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 718.110700000000000000
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo28: TfrxMemoView
          Left = 559.149970000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBqForProduto."ENF_PESO_ENTRADA"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 90.811070000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBqForProduto."ENF_NOTANUMBER"'
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 68.031540000000000000
        end
        object Shape2: TfrxShapeView
          Top = 68.133890000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 71.913420000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 79.370130000000000000
          Top = 71.913420000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 411.968770000000000000
          Top = 71.913420000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Recebido')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 480.000310000000000000
          Top = 71.913420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Retornado')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 619.842920000000000000
          Top = 71.913420000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Peso Tot. Pend.')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 4.000000000000000000
          Top = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nota Fiscal: [frxDBqForProduto."ENF_NOTANUMBER"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 79.370130000000000000
          Top = 26.456710000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBqForProduto."FOR_RAZAO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data de Emiss'#227'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data de Entrada')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 616.063390000000000000
          Top = 26.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBqForProduto."ENF_ENTRADA"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 506.457020000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBqForProduto."ENF_EMISSAO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 79.370130000000000000
          Top = 49.133890000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBqForProduto."CLI_RAZAO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 551.590910000000000000
          Top = 71.811070000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Peso Unit.')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo22: TfrxMemoView
          Left = 487.559370000000000000
          Top = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Peso Total da Nota')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBqForProduto."TOTAL">,0,0)]')
          ParentFont = False
        end
      end
    end
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
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 704
    Top = 106
  end
  object qOP: TFDQuery
    OnCalcFields = qOPCalcFields
    Connection = DBInicio.FDACConn
    SQL.Strings = (
      'SELECT DISTINCT '
      
        #9'(SELECT DEP_CODIGO FROM DEMANDA_PRODUCAO dp2 WHERE (dp2.ENF_REG' +
        'ISTRO = pi2.ENF_REGISTRO AND dp2.PED_CODIGO = pi2.PED_CODIGO)) A' +
        'S DEP_CODIGO,'
      #9'dp.DEP_SITUACAO,'
      #9'pi2.ENF_REGISTRO,'
      #9'pi2.PED_CODIGO,'
      #9'pi2.PRF_QTDE ,'
      #9'ei.enf_ucom,'
      #9'ei.ENF_PESO_ENTRADA,'
      #9'ei.prd_refer,'
      #9'ei.prd_descri,'
      #9'ei.enf_qtde,'
      #9'ei.enf_quantidade_ind_retorno,'
      #9'ei.enf_preco,'
      #9'al.amx_codigo,'
      #9'al.amx_descri,'
      #9'ei.enf_cfop,'
      #9'ei.itt_registro,'
      #9'ei.ENF_IT_ENVIADO_PCP_DEMANDA,'
      #9'ei.ENF_IT_QTD_ENV_PCP_DEMANDA,'
      #9'ei.enf_obs_industrializacao ,'
      #9'opv.OPV_PEDIDOINTERNO '
      'FROM PED_IT01 pi2'
      
        'JOIN PED0000 p ON (p.PED_CODIGO = pi2.PED_CODIGO AND p.EMP_CODIG' +
        'O = pi2.EMP_CODIGO)'
      'JOIN DEMANDA_PRODUCAO dp ON (dp.ENF_REGISTRO = pi2.ENF_REGISTRO)'
      
        'JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = p.OPV_CODIGO AND OPV.OPV_P' +
        'RODUCAO = '#39'S'#39')'
      'JOIN ENF_IT01 ei ON ei.ENF_REGISTRO = dp.ENF_REGISTRO '
      
        'LEFT JOIN ind_tiporetorno tr ON'#9'(tr.itt_registro = ei.itt_regist' +
        'ro)'
      'LEFT JOIN almox0000 al ON (al.amx_codigo = ei.amx_codigo)')
    Left = 78
    Top = 107
    object qOPBOTAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'BOTAO'
      Size = 0
      Calculated = True
    end
    object qOPPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object qOPPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object qOPPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Origin = 'PRF_QTDE'
      Precision = 18
      Size = 5
    end
    object qOPENF_QUANTIDADE_IND_RETORNO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ENF_QUANTIDADE_IND_RETORNO'
      Origin = 'ENF_QUANTIDADE_IND_RETORNO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object qOPENF_CFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENF_CFOP'
      Origin = 'ENF_CFOP'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object qOPIC_Percentual: TFloatField
      FieldKind = fkCalculated
      FieldName = 'IC_Percentual'
      DisplayFormat = '##0.00%'
      Calculated = True
    end
    object qOPPESO: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'PESO'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qOPPESOTOTAL: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'PESOTOTAL'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object qOPRETORNADO: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'RETORNADO'
      Calculated = True
    end
    object qOPENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      Origin = 'ENF_QTDE'
      Precision = 18
      Size = 5
    end
    object qOPENF_UCOM: TStringField
      FieldName = 'ENF_UCOM'
      Origin = 'ENF_UCOM'
      Size = 5
    end
    object qOPENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      Origin = 'ENF_PRECO'
      Precision = 18
      Size = 5
    end
    object qOPENF_IT_ENVIADO_PCP_DEMANDA: TStringField
      FieldName = 'ENF_IT_ENVIADO_PCP_DEMANDA'
      Origin = 'ENF_IT_ENVIADO_PCP_DEMANDA'
      Size = 1
    end
    object qOPDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      Origin = 'DEP_CODIGO'
    end
    object qOPDEP_SITUACAO: TStringField
      FieldName = 'DEP_SITUACAO'
      Origin = 'DEP_SITUACAO'
      Size = 1
    end
    object qOPENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
      Origin = 'ENF_REGISTRO'
    end
    object qOPPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Size = 7
    end
    object qOPENF_PESO_ENTRADA: TFMTBCDField
      FieldName = 'ENF_PESO_ENTRADA'
      Origin = 'ENF_PESO_ENTRADA'
      Precision = 18
      Size = 5
    end
    object qOPAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Origin = 'AMX_CODIGO'
      Size = 4
    end
    object qOPAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Origin = 'AMX_DESCRI'
      Size = 60
    end
    object qOPITT_REGISTRO: TIntegerField
      FieldName = 'ITT_REGISTRO'
      Origin = 'ITT_REGISTRO'
    end
    object qOPENF_IT_QTD_ENV_PCP_DEMANDA: TFMTBCDField
      FieldName = 'ENF_IT_QTD_ENV_PCP_DEMANDA'
      Origin = 'ENF_IT_QTD_ENV_PCP_DEMANDA'
      Precision = 18
      Size = 5
    end
    object qOPENF_OBS_INDUSTRIALIZACAO: TWideMemoField
      FieldName = 'ENF_OBS_INDUSTRIALIZACAO'
      Origin = 'ENF_OBS_INDUSTRIALIZACAO'
      BlobType = ftWideMemo
    end
    object qOPOPV_PEDIDOINTERNO: TStringField
      FieldName = 'OPV_PEDIDOINTERNO'
      Origin = 'OPV_PEDIDOINTERNO'
      Size = 1
    end
  end
  object dsOP: TDataSource
    DataSet = qOP
    Left = 134
    Top = 107
  end
  object qEntradaNFRetorno: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT  '
      '  fo.FOR_CODIGO,'
      '  enf.enf_notanumber,    '
      '  enf.enf_emissao,'
      '  enf.enf_entrada,'
      '  fo.for_razao'
      '  FROM PED_IT01 pit'
      
        '  JOIN PED_IT01_INDUST pii ON (pii.ENF_REGISTRO = pit.ENF_REGIST' +
        'RO)'
      '  JOIN NF_IT01 nfi ON (nfi.PRF_REGISTRO = pii.PRF_REGISTRO)'
      '  JOIN NF0001 nf ON (nf.NF_NOTANUMBER = nfi.NF_IT_NOTANUMER) '
      '  JOIN ENF_IT01 enfit ON (enfit.ENF_REGISTRO = pii.ENF_REGISTRO)'
      
        '  JOIN enf0001 enf ON (enf.ENF_NOTANUMBER  = enfit.ENF_IT_NOTANU' +
        'MBER)'
      '  JOIN for0000 fo ON (fo.for_codigo = enf.for_codigo)'
      '  JOIN prd0000 pr ON (pr.prd_refer = nfi.prd_refer) '
      '  JOIN CLI0000 c ON  (c.CLI_CODIGO = nf.cli_codigo)'
      
        '  LEFT JOIN IND_TIPORETORNO it ON (it.ITT_REGISTRO = enfit.ITT_R' +
        'EGISTRO)  '
      '  WHERE 1 = 1'
      '  AND enf.ENF_NOTANUMBER LIKE '#39'%4196'#39
      '  AND fo.FOR_RAZAO LIKE '#39'FARPEX%'#39
      '  AND nf.NF_EMISSAO BETWEEN '#39'12/01/2022'#39' AND '#39'12/31/2022'#39)
    SQLConnection = DBInicio.MainDB
    Left = 376
    Top = 490
  end
  object frxDBEntradaNFRetorno: TfrxDBDataset
    UserName = 'frxDBEntradaNFRetorno'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FOR_CODIGO=FOR_CODIGO'
      'ENF_NOTANUMBER=ENF_NOTANUMBER'
      'ENF_EMISSAO=ENF_EMISSAO'
      'ENF_ENTRADA=ENF_ENTRADA'
      'FOR_RAZAO=FOR_RAZAO')
    DataSet = cdsEntradaNFRetorno
    BCDToCurrency = False
    Left = 378
    Top = 258
  end
  object frxEntradaNFRetorno: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44084.407895162000000000
    ReportOptions.LastChange = 44365.464099594900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'var Empresa, DataI, Dataf: string;                              ' +
        '            '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxEntradaNFRetornoBeginDoc
    OnGetValue = frxForCliProdutoGetValue
    Left = 369
    Top = 193
    Datasets = <
      item
        DataSet = frxDBEntradaNFRetorno
        DataSetName = 'frxDBEntradaNFRetorno'
      end
      item
        DataSet = frxDBEntradaNFRetornoItem
        DataSetName = 'frxDBEntradaNFRetornoItem'
      end
      item
        DataSet = frxDBEntradaNFRetornoProduto
        DataSetName = 'frxDBEntradaNFRetornoProduto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 63.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 585.827150000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          Left = 672.756340000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 544.472790000000000000
          Top = 45.354360000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emitido em: [Date]')
          ParentFont = False
        end
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Width = 177.637783070000000000
          Height = 60.472480000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          Left = 205.551330000000000000
          Top = 1.779530000000000000
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 205.874150000000000000
          Top = 18.456710000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nota Fiscal de Entrada e Retorno')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 204.094620000000000000
          Top = 37.795300000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Per'#237'odo de [DataI] a [DataF]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 71.913420000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        DataSet = frxDBEntradaNFRetorno
        DataSetName = 'frxDBEntradaNFRetorno'
        RowCount = 0
        object Line2: TfrxLineView
          Left = 718.110700000000000000
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 49.133890000000000000
        end
        object Shape2: TfrxShapeView
          Top = 49.133858270000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 53.015770000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 79.370130000000000000
          Top = 53.015770000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 411.968770000000000000
          Top = 53.015770000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Recebido')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 480.000310000000000000
          Top = 53.015770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Retornado')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 619.842920000000000000
          Top = 53.015770000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Peso Tot. Pend.')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 7.779530000000000000
          Top = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nota Fiscal: [frxDBEntradaNFRetorno."ENF_NOTANUMBER"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 83.149660000000000000
          Top = 26.456710000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEntradaNFRetorno."FOR_RAZAO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 510.236550000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data de Emiss'#227'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data de Entrada')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 619.842920000000000000
          Top = 26.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEntradaNFRetorno."ENF_ENTRADA"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 510.236550000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEntradaNFRetorno."ENF_EMISSAO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 551.590910000000000000
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Peso Unit.')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 374.173470000000000000
          Top = 52.913420000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        DataSet = frxDBEntradaNFRetornoProduto
        DataSetName = 'frxDBEntradaNFRetornoProduto'
        Filter = 
          '(<frxDBEntradaNFRetorno."ENF_NOTANUMBER"> = <frxDBEntradaNFRetor' +
          'noProduto."ENF_NOTANUMBER">) and (<frxDBEntradaNFRetorno."FOR_CO' +
          'DIGO"> = <frxDBEntradaNFRetornoProduto."FOR_CODIGO">)'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 15.118120000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBEntradaNFRetornoProduto
          DataSetName = 'frxDBEntradaNFRetornoProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoProduto."PRD_REFER"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 79.370130000000000000
          Top = 15.118120000000000000
          Width = 287.244280000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBEntradaNFRetornoProduto
          DataSetName = 'frxDBEntradaNFRetornoProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoProduto."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 411.968770000000000000
          Top = 15.118120000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'ENF_QTDE'
          DataSet = frxDBEntradaNFRetornoProduto
          DataSetName = 'frxDBEntradaNFRetornoProduto'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoProduto."ENF_QTDE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 487.559370000000000000
          Top = 15.118120000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'ENF_QUANTIDADE_IND_RETORNO'
          DataSet = frxDBEntradaNFRetornoProduto
          DataSetName = 'frxDBEntradaNFRetornoProduto'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoProduto."ENF_QUANTIDADE_IND_RETORNO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 642.520100000000000000
          Top = 15.118120000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'PESO_TOTAL'
          DataSet = frxDBEntradaNFRetornoProduto
          DataSetName = 'frxDBEntradaNFRetornoProduto'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoProduto."PESO_TOTAL"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 559.149970000000000000
          Top = 15.118120000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'ENF_PESO_ENTRADA'
          DataSet = frxDBEntradaNFRetornoProduto
          DataSetName = 'frxDBEntradaNFRetornoProduto'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoProduto."ENF_PESO_ENTRADA"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 333.700990000000000000
          Top = 34.015770000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 6.779530000000000000
          Top = 34.015770000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NFE')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 97.267780000000000000
          Top = 34.015770000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 210.196970000000000000
          Top = 34.015770000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quant.')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 623.622450000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo36: TfrxMemoView
          Left = 366.614410000000000000
          Top = 15.118120000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = frxDBEntradaNFRetornoProduto
          DataSetName = 'frxDBEntradaNFRetornoProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoProduto."ENF_CFOP"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 165.858380000000000000
          Top = 34.015770000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 260.787401574803200000
          Top = 34.015770000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cor')
          ParentFont = False
        end
      end
      object SubdetailData1: TfrxSubdetailData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        DataSet = frxDBEntradaNFRetornoItem
        DataSetName = 'frxDBEntradaNFRetornoItem'
        Filter = 
          '(<frxDBEntradaNFRetornoProduto."ENF_NOTANUMBER"> = <frxDBEntrada' +
          'NFRetornoItem."ENF_NOTANUMBER"> ) and (<frxDBEntradaNFRetornoPro' +
          'duto."FOR_CODIGO"> = <frxDBEntradaNFRetornoItem."FOR_CODIGO">) a' +
          'nd (<frxDBEntradaNFRetornoProduto."PRD_REFER"> = <frxDBEntradaNF' +
          'RetornoItem."PRD_REFER">)'
        RowCount = 0
        object Memo26: TfrxMemoView
          Left = 334.480520000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_RAZAO'
          DataSet = frxDBEntradaNFRetornoItem
          DataSetName = 'frxDBEntradaNFRetornoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoItem."CLI_RAZAO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 7.559060000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'NF_NOTANUMBER'
          DataSet = frxDBEntradaNFRetornoItem
          DataSetName = 'frxDBEntradaNFRetornoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoItem."NF_NOTANUMBER"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 97.267780000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'NF_EMISSAO'
          DataSet = frxDBEntradaNFRetornoItem
          DataSetName = 'frxDBEntradaNFRetornoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoItem."NF_EMISSAO"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 213.976500000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = frxDBEntradaNFRetornoItem
          DataSetName = 'frxDBEntradaNFRetornoItem'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoItem."NF_QTDE"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 650.079160000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'ITT_DESCRICAO'
          DataSet = frxDBEntradaNFRetornoItem
          DataSetName = 'frxDBEntradaNFRetornoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoItem."ITT_DESCRICAO"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 166.299320000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'OPE_NATUREZA'
          DataSet = frxDBEntradaNFRetornoItem
          DataSetName = 'frxDBEntradaNFRetornoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoItem."OPE_NATUREZA"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 260.787570000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBEntradaNFRetornoItem
          DataSetName = 'frxDBEntradaNFRetornoItem'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEntradaNFRetornoItem."ACO_NOME"]')
          ParentFont = False
        end
      end
    end
  end
  object qEntradaNFRetornoItem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT  '
      '        ac.ACO_NOME ,'
      '        fo.FOR_CODIGO,  '
      '        enf.enf_notanumber,'
      '        nf.NF_NOTANUMBER,'
      '        nf.NF_EMISSAO,'
      '        nfi.prd_refer,'
      '        nfi.NF_QTDE,'
      '        c.CLI_RAZAO ,'
      '        it.ITT_DESCRICAO,'
      '        nf.OPE_NATUREZA   '
      '  FROM PED_IT01 pit'
      
        '  JOIN PED_IT01_INDUST pii ON (pii.ENF_REGISTRO = pit.ENF_REGIST' +
        'RO)'
      '  JOIN NF_IT01 nfi ON (nfi.PRF_REGISTRO = pii.PRF_REGISTRO)'
      '  JOIN NF0001 nf ON (nf.NF_NOTANUMBER = nfi.NF_IT_NOTANUMER) '
      '  JOIN ENF_IT01 enfit ON (enfit.ENF_REGISTRO = pii.ENF_REGISTRO)'
      
        '  JOIN enf0001 enf ON (enf.ENF_NOTANUMBER  = enfit.ENF_IT_NOTANU' +
        'MBER)'
      '  JOIN for0000 fo ON (fo.for_codigo = enf.for_codigo)'
      '  JOIN prd0000 pr ON (pr.prd_refer = nfi.prd_refer) '
      '  JOIN CLI0000 c ON'#9'(c.CLI_CODIGO = nf.cli_codigo)'
      
        '  LEFT JOIN IND_TIPORETORNO it ON (it.ITT_REGISTRO = enfit.ITT_R' +
        'EGISTRO)'
      
        '  LEFT JOIN ACABAMENTO_CORES ac ON (ac.ACO_CODIGO = pii.ACO_CODI' +
        'GO)')
    SQLConnection = DBInicio.MainDB
    Left = 56
    Top = 490
  end
  object frxDBEntradaNFRetornoItem: TfrxDBDataset
    UserName = 'frxDBEntradaNFRetornoItem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FOR_CODIGO=FOR_CODIGO'
      'ENF_NOTANUMBER=ENF_NOTANUMBER'
      'NF_NOTANUMBER=NF_NOTANUMBER'
      'NF_EMISSAO=NF_EMISSAO'
      'PRD_REFER=PRD_REFER'
      'NF_QTDE=NF_QTDE'
      'CLI_RAZAO=CLI_RAZAO'
      'ITT_DESCRICAO=ITT_DESCRICAO'
      'OPE_NATUREZA=OPE_NATUREZA'
      'ACO_NOME=ACO_NOME')
    DataSet = cdsEntradaNFRetornoItem
    BCDToCurrency = False
    Left = 74
    Top = 258
  end
  object qEntradaNFRetornoProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ' SELECT DISTINCT  '
      '                fo.FOR_CODIGO, '
      '                enf.enf_notanumber, '
      #9'nfi.prd_refer,'
      #9'pr.prd_descri,'
      #9'enfit.enf_qtde,'
      #9'cast(enfit.enf_cfop as VARCHAR(4)) as enf_cfop,'
      #9'enfit.ENF_QUANTIDADE_IND_RETORNO,'
      #9'CASE'
      #9#9'WHEN enfit.ENF_UCOM = '#39'KG'#39' THEN 1'
      #9#9'ELSE (enfit.ENF_PESO_ENTRADA / enfit.enf_qtde)'
      #9'END AS ENF_PESO_ENTRADA,'
      #9'CASE'
      
        #9#9'WHEN enfit.ENF_UCOM = '#39'KG'#39' THEN (enfit.enf_qtde - enfit.ENF_QU' +
        'ANTIDADE_IND_RETORNO)'
      
        #9#9'ELSE CAST(((enfit.ENF_PESO_ENTRADA / enfit.enf_qtde) * enfit.E' +
        'NF_QUANTIDADE_IND_RETORNO) AS NUMERIC(18,'
      #9#9'5))'
      #9'END AS PESO_TOTAL'
      '  FROM PED_IT01 pit'
      
        '  JOIN PED_IT01_INDUST pii ON (pii.ENF_REGISTRO = pit.ENF_REGIST' +
        'RO)'
      '  JOIN NF_IT01 nfi ON (nfi.PRF_REGISTRO = pii.PRF_REGISTRO)'
      '  JOIN NF0001 nf ON (nf.NF_NOTANUMBER = nfi.NF_IT_NOTANUMER) '
      '  JOIN ENF_IT01 enfit ON (enfit.ENF_REGISTRO = pii.ENF_REGISTRO)'
      
        '  JOIN enf0001 enf ON (enf.ENF_NOTANUMBER  = enfit.ENF_IT_NOTANU' +
        'MBER)'
      '  JOIN for0000 fo ON (fo.for_codigo = enf.for_codigo)'
      '  JOIN prd0000 pr ON (pr.prd_refer = nfi.prd_refer) '
      '  JOIN CLI0000 c ON  (c.CLI_CODIGO = nf.cli_codigo)'
      
        '  LEFT JOIN IND_TIPORETORNO it ON (it.ITT_REGISTRO = enfit.ITT_R' +
        'EGISTRO)  ')
    SQLConnection = DBInicio.MainDB
    Left = 224
    Top = 482
  end
  object frxDBEntradaNFRetornoProduto: TfrxDBDataset
    UserName = 'frxDBEntradaNFRetornoProduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FOR_CODIGO=FOR_CODIGO'
      'ENF_NOTANUMBER=ENF_NOTANUMBER'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'ENF_QTDE=ENF_QTDE'
      'ENF_CFOP=ENF_CFOP'
      'ENF_QUANTIDADE_IND_RETORNO=ENF_QUANTIDADE_IND_RETORNO'
      'ENF_PESO_ENTRADA=ENF_PESO_ENTRADA'
      'PESO_TOTAL=PESO_TOTAL')
    DataSet = cdsEntradaNFRetornoProduto
    BCDToCurrency = False
    Left = 234
    Top = 258
  end
  object dspEntradaNFRetornoItem: TDataSetProvider
    DataSet = qEntradaNFRetornoItem
    Left = 66
    Top = 418
  end
  object cdsEntradaNFRetornoItem: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ACO_NOME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FOR_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ENF_NOTANUMBER'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NF_NOTANUMBER'
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NF_EMISSAO'
        DataType = ftDate
      end
      item
        Name = 'PRD_REFER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NF_QTDE'
        DataType = ftFMTBcd
        Precision = 18
        Size = 5
      end
      item
        Name = 'CLI_RAZAO'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'ITT_DESCRICAO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'OPE_NATUREZA'
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspEntradaNFRetornoItem'
    StoreDefs = True
    Left = 70
    Top = 339
    object cdsEntradaNFRetornoItemFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object cdsEntradaNFRetornoItemENF_NOTANUMBER: TStringField
      FieldName = 'ENF_NOTANUMBER'
      Size = 10
    end
    object cdsEntradaNFRetornoItemNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Required = True
      Size = 6
    end
    object cdsEntradaNFRetornoItemNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object cdsEntradaNFRetornoItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsEntradaNFRetornoItemNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 18
      Size = 5
    end
    object cdsEntradaNFRetornoItemCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object cdsEntradaNFRetornoItemITT_DESCRICAO: TStringField
      FieldName = 'ITT_DESCRICAO'
      Size = 255
    end
    object cdsEntradaNFRetornoItemOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object cdsEntradaNFRetornoItemACO_NOME: TStringField
      FieldName = 'ACO_NOME'
      Size = 100
    end
  end
  object dspEntradaNFRetornoProduto: TDataSetProvider
    DataSet = qEntradaNFRetornoProduto
    Left = 226
    Top = 418
  end
  object cdsEntradaNFRetornoProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEntradaNFRetornoProduto'
    Left = 230
    Top = 339
    object cdsEntradaNFRetornoProdutoFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object cdsEntradaNFRetornoProdutoENF_NOTANUMBER: TStringField
      FieldName = 'ENF_NOTANUMBER'
      Size = 10
    end
    object cdsEntradaNFRetornoProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsEntradaNFRetornoProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object cdsEntradaNFRetornoProdutoENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      Precision = 18
      Size = 5
    end
    object cdsEntradaNFRetornoProdutoENF_QUANTIDADE_IND_RETORNO: TFMTBCDField
      FieldName = 'ENF_QUANTIDADE_IND_RETORNO'
      Precision = 18
      Size = 5
    end
    object cdsEntradaNFRetornoProdutoENF_PESO_ENTRADA: TFMTBCDField
      FieldName = 'ENF_PESO_ENTRADA'
      Precision = 18
      Size = 10
    end
    object cdsEntradaNFRetornoProdutoPESO_TOTAL: TFMTBCDField
      FieldName = 'PESO_TOTAL'
      Precision = 18
      Size = 5
    end
    object cdsEntradaNFRetornoProdutoENF_CFOP: TStringField
      FieldName = 'ENF_CFOP'
      Size = 4
    end
  end
  object dspEntradaNFRetorno: TDataSetProvider
    DataSet = qEntradaNFRetorno
    Left = 386
    Top = 418
  end
  object cdsEntradaNFRetorno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEntradaNFRetorno'
    Left = 382
    Top = 347
  end
  object pmImpressaoIndividual: TPopupMenu
    Left = 216
    Top = 104
    object NFPP: TMenuItem
      Caption = 'Nota Fiscal por Produto Pendente'
      OnClick = NotaFiscalPorProdutoPendent1Click
    end
    object NFPR: TMenuItem
      Caption = 'Nota Fiscal por Produto Retornado'
      OnClick = NotaFiscalporProdutoRetornado1Click
    end
  end
end
