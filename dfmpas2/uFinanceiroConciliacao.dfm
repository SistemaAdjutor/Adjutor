object FrmFinanceiroConciliacao: TFrmFinanceiroConciliacao
  Left = 223
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Concilia'#231#227'o Financeira e Banc'#225'ria'
  ClientHeight = 602
  ClientWidth = 1163
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1163
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 713
      Height = 57
      Caption = 'Sele'#231#227'o de Conta'
      TabOrder = 0
      object Label4: TLabel
        Left = 584
        Top = 20
        Width = 17
        Height = 14
        Caption = 'At'#233
      end
      object Label5: TLabel
        Left = 438
        Top = 20
        Width = 54
        Height = 14
        Caption = 'Movimento:'
      end
      object EdContaBanco: TEdit
        Left = 12
        Top = 15
        Width = 43
        Height = 22
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 4
        TabOrder = 0
        OnEnter = EdContaBancoEnter
        OnExit = EdContaBancoExit
      end
      object CbContaBanco: TComboBoxRw
        Left = 61
        Top = 15
        Width = 275
        Height = 22
        EmptyText = 'TODOS OS BANCOS'
        OnEnter = CbContaBancoEnter
        TabOrder = 1
        CharCase = ecUpperCase
        LookupSelect = 'BAN_CODIGO,BAN_APELIDO'
        LookupOrderBy = 'BAN_APELIDO'
        LookupTable = 'BAN0000'
        LookupDispl = 'BAN_APELIDO'
        OnSelect = CbContaBancoSelect
        GridAutoSize = False
        LookupSource = CbContaBanco.InternalSource
        LookupKeyField = 'BAN_CODIGO'
        ShowButton = True
        LookupTableShare = 'BANCOS'
        AutoF8WinTitulo = 'Contas'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
        Tabela = 'BAN0000'
        CamposCarregar = 'BAN_CODIGO,BAN_APELIDO'
        CamposRetornar = 'BAN_CODIGO'
        CamposOrdernar = 'BAN_APELIDO'
        ConexaoBanco = DataCadastros.SQLConnection1
        Compartilhar = 'BANCOS'
        Localizado = False
        CodigoEmpresa = 0
        ResetaCampos = False
        MultiEmpresa = False
        Localizar = False
        CarregarCombo = False
        itemindex = 0
        style = csDropDown
      end
      object chkConsiderarSaldoAnterior: TCheckBox
        Left = 12
        Top = 38
        Width = 173
        Height = 17
        Caption = 'Considerar Saldo Anterior'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = chkMultiEmpresaClick
      end
      object chkConsiderarLimiteConta: TCheckBox
        Left = 162
        Top = 38
        Width = 173
        Height = 17
        Caption = 'Considerar Limite da Conta'
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnClick = chkMultiEmpresaClick
      end
      object chkMultiEmpresa: TCheckBox
        Left = 368
        Top = 38
        Width = 97
        Height = 17
        Caption = 'Multi Empresa'
        TabOrder = 6
        OnClick = chkMultiEmpresaClick
      end
      object RxDataFinal: TJvDateEdit
        Left = 609
        Top = 15
        Width = 89
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
        ButtonWidth = 20
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 3
        OnEnter = RxDataFinalEnter
      end
      object RxDataInicial: TJvDateEdit
        Left = 492
        Top = 15
        Width = 88
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
        ButtonWidth = 20
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 2
        OnEnter = RxDataInicialEnter
      end
      object chkSaldoAnterior: TCheckBox
        Left = 475
        Top = 38
        Width = 206
        Height = 17
        Caption = 'Considera Saldo Anterior'
        Checked = True
        State = cbChecked
        TabOrder = 7
        OnClick = chkSaldoAnteriorClick
      end
    end
    object BitPesquisar: TBitBtn
      Left = 717
      Top = 6
      Width = 100
      Height = 25
      Hint = 'Pesquisar'
      Caption = '&Pesquisar'
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
      TabOrder = 1
      OnClick = BitPesquisarClick
    end
    object Bit_Sair: TBitBtn
      Left = 717
      Top = 31
      Width = 100
      Height = 25
      Hint = 'Sair'
      Cancel = True
      Caption = '&Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333330
        0000333333333333777711111111000BB030377777777777337F1EEEEEEE0BBB
        B030373333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBB003037F3333337F3377F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037FFFFFF37FF337F11111111000BB030377777777777337F333333333330
        0000333333333333777733333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Bit_SairClick
    end
    object BitBtn1: TBitBtn
      Left = 819
      Top = 6
      Width = 142
      Height = 25
      Hint = 'Sair'
      Caption = '&Transfer'#234'ncia'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888844444444488888884FFFFFFF488888884F0000
        0F480000004FFFFFFF480FFFFF4F00000F480F00004FFFFFFF480FFFFF4F00F4
        44480F00004FFFF4F4880FFFFF4FFFF448880F00F044444488880FFFF0F08888
        88880FFFF0088888888800000088888888888888888888888888}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      WordWrap = True
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 819
      Top = 31
      Width = 142
      Height = 25
      Hint = 'Sair'
      Caption = '&Adicionar Lan'#231'amento'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      WordWrap = True
      OnClick = BitBtn2Click
    end
  end
  object pna: TPanel
    Left = 0
    Top = 65
    Width = 1163
    Height = 537
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    OnResize = pnaResize
    object pnc: TPanel
      Left = 0
      Top = 264
      Width = 1163
      Height = 273
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 960
        Height = 273
        Align = alClient
        Caption = 'Lan'#231'amentos Conciliados com Extrato Banc'#225'rio'
        TabOrder = 0
        object DbGradeConciliado: TRxDBGrid
          Left = 2
          Top = 16
          Width = 956
          Height = 255
          Align = alClient
          Color = 13303807
          DataSource = DsConciliacaoS
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDrawColumnCell = DbGradeConciliadoDrawColumnCell
          OnDblClick = DbGradeConciliadoDblClick
          OnKeyPress = DbGradeConciliadoKeyPress
          RowColor2 = 16776176
          Columns = <
            item
              Expanded = False
              FieldName = 'HCO_DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Hist'#243'rico'
              Width = 137
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAG_DATA_PAGAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Data Concilia'#231#227'o'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Width = 23
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAG_PAGO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Saldo'
              Title.Alignment = taCenter
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOCUMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Documento'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_NUM_NFE'
              Title.Alignment = taRightJustify
              Title.Caption = 'Nro.NF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAZAO'
              Title.Alignment = taCenter
              Title.Caption = 'Informa'#231#227'o'
              Width = 178
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Usu'#225'rio'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAG_DATA_LANCAMENTO'
              Title.Caption = 'Data da Baixa'
              Visible = True
            end>
        end
      end
      object Panel2: TPanel
        Left = 960
        Top = 0
        Width = 203
        Height = 273
        Align = alRight
        Color = 13303807
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 37
          Width = 71
          Height = 14
          Alignment = taRightJustify
          Caption = 'Saldo Anterior:'
        end
        object Label2: TLabel
          Left = 10
          Top = 109
          Width = 69
          Height = 14
          Alignment = taRightJustify
          Caption = 'Saldo + Limite:'
        end
        object Label10: TLabel
          Left = 36
          Top = 56
          Width = 43
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cr'#233'ditos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 40
          Top = 74
          Width = 39
          Height = 14
          Alignment = taRightJustify
          Caption = 'D'#233'bitos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 49
          Top = 91
          Width = 30
          Height = 14
          Alignment = taRightJustify
          Caption = 'Saldo:'
        end
        object lblSaldoAnteriorS: TLabel
          Left = 98
          Top = 37
          Width = 96
          Height = 14
          Alignment = taRightJustify
          Caption = 'lblSaldoAnteriorS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCreditoS: TLabel
          Left = 133
          Top = 56
          Width = 61
          Height = 14
          Alignment = taRightJustify
          Caption = 'lblCreditoS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblDebitoS: TLabel
          Left = 139
          Top = 74
          Width = 55
          Height = 14
          Alignment = taRightJustify
          Caption = 'lblDebitoS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSaldoS: TLabel
          Left = 144
          Top = 91
          Width = 50
          Height = 14
          Alignment = taRightJustify
          Caption = 'lblSaldoS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSaldoLimiteS: TLabel
          Left = 109
          Top = 109
          Width = 85
          Height = 14
          Alignment = taRightJustify
          Caption = 'lblSaldoLimiteS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 8
          Top = 8
          Width = 62
          Height = 14
          Caption = 'CONCILIADO'
        end
        object GroupBox2: TGroupBox
          Left = 3
          Top = 136
          Width = 197
          Height = 81
          Caption = 'Tipo de Impress'#227'o'
          TabOrder = 0
          object RbAnaliticoS: TRadioButton
            Left = 16
            Top = 24
            Width = 113
            Height = 17
            Caption = 'Anal'#237'tico'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RbSinteticoS: TRadioButton
            Left = 16
            Top = 48
            Width = 113
            Height = 17
            Caption = 'Sint'#233'tico'
            Enabled = False
            TabOrder = 1
          end
        end
        object BtnImprimirS: TBitBtn
          Left = 55
          Top = 230
          Width = 100
          Height = 25
          Hint = 'Baixar'
          Caption = '&Imprimir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BtnImprimirSClick
        end
      end
    end
    object pnb: TPanel
      Left = 0
      Top = 0
      Width = 1163
      Height = 264
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 960
        Height = 264
        Align = alClient
        Caption = 'Fechamento Financeiro - sem concilia'#231#227'o'
        TabOrder = 0
        object DbGradeConciliadoN: TRxDBGrid
          Left = 2
          Top = 16
          Width = 956
          Height = 246
          Align = alClient
          DataSource = DsConciliacaoN
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDrawColumnCell = DbGradeConciliadoNDrawColumnCell
          OnDblClick = DbGradeConciliadoNDblClick
          OnKeyPress = DbGradeConciliadoNKeyPress
          RowColor2 = 16776176
          Columns = <
            item
              Expanded = False
              FieldName = 'PAG_DATA_PAGAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Data da Baixa'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Width = 23
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAG_PAGO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Saldo'
              Title.Alignment = taCenter
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOCUMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Documento'
              Width = 74
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'NF_NUM_NFE'
              Title.Alignment = taRightJustify
              Title.Caption = 'Nro.NF'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAZAO'
              Title.Alignment = taCenter
              Title.Caption = 'Informa'#231#227'o'
              Width = 274
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Usu'#225'rio'
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAN_APELIDO'
              Title.Alignment = taCenter
              Title.Caption = 'Banco'
              Visible = True
            end>
        end
      end
      object Panel1: TPanel
        Left = 960
        Top = 0
        Width = 203
        Height = 264
        Align = alRight
        Color = clWhite
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 29
          Width = 71
          Height = 14
          Alignment = taRightJustify
          Caption = 'Saldo Anterior:'
        end
        object Label6: TLabel
          Left = 10
          Top = 101
          Width = 69
          Height = 14
          Alignment = taRightJustify
          Caption = 'Saldo + Limite:'
        end
        object Label7: TLabel
          Left = 36
          Top = 48
          Width = 43
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cr'#233'ditos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 40
          Top = 66
          Width = 39
          Height = 14
          Alignment = taRightJustify
          Caption = 'D'#233'bitos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 49
          Top = 83
          Width = 30
          Height = 14
          Alignment = taRightJustify
          Caption = 'Saldo:'
        end
        object lblSaldoAnteriorN: TLabel
          Left = 103
          Top = 29
          Width = 96
          Height = 14
          Alignment = taRightJustify
          Caption = 'lblSaldoAnteriorN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCreditoN: TLabel
          Left = 138
          Top = 48
          Width = 61
          Height = 14
          Alignment = taRightJustify
          Caption = 'lblCreditoN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblDebitoN: TLabel
          Left = 144
          Top = 66
          Width = 55
          Height = 14
          Alignment = taRightJustify
          Caption = 'lblDebitoN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSaldoN: TLabel
          Left = 149
          Top = 83
          Width = 50
          Height = 14
          Alignment = taRightJustify
          Caption = 'lblSaldoN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSaldoLimiteN: TLabel
          Left = 114
          Top = 101
          Width = 85
          Height = 14
          Alignment = taRightJustify
          Caption = 'lblSaldoLimiteN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 8
          Top = 8
          Width = 123
          Height = 14
          Caption = 'LAN'#199'ADOS NO SISTEMA'
        end
        object BtnImprimirN: TBitBtn
          Left = 55
          Top = 226
          Width = 100
          Height = 25
          Hint = 'Baixar'
          Caption = '&Imprimir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnImprimirNClick
        end
      end
    end
  end
  object SQLCdsConciliacaoS: TSqlClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    DataSet.CommandText = 
      'SELECT CASE WHEN (1=1) THEN '#39'P'#39' END AS LOCAL, PAG.PAP_REGISTRO a' +
      's PAG_REGISTRO, CASE WHEN (PAG.PAG_CONCILIADO = '#39'S'#39') THEN PAG.PA' +
      'G_DATA_LANCAMENTO ELSE PAG.PAG_DATA_PAGAMENTO'#13#10'END AS PAG_DATA_P' +
      'AGAMENTO,CASE WHEN (1=1) THEN '#39'D'#39' END AS TIPO, (SELECT FIRST 1 T' +
      '3.PAG_NUMDOC FROM PAG0000 T3 WHERE T3.PAG_CODIGO = PPC.PAG_CODIG' +
      'O)'#13#10'AS DOCUMENTO, CAST(FRN.FOR_RAZAO AS VARCHAR(60)) AS RAZAO, P' +
      'AG.PAG_CONCILIADO, PAG.PAG_DATA_LANCAMENTO, (SELECT T1.HCO_DESCR' +
      'ICAO FROM HIST_CONCILIACAO T1'#13#10'WHERE T1.HCO_REGISTRO = PAG.HCO_R' +
      'EGISTRO) AS HCO_DESCRICAO, PAG.PAG_PAGO, USR.USU_NOME FROM  PAG_' +
      'PAGAMENTO PAG JOIN FORMA_PAGAMENTO FPG ON (FPG.FPG_REGISTRO ='#13#10'P' +
      'AG.FPG_REGISTRO AND FPG.FPG_LANCA_CONTA = '#39'S'#39') JOIN PAG_PC01 PPC' +
      ' ON (PPC.PAG_REGISTRO = PAG.PAG_REGISTRO) LEFT JOIN FOR0000 FRN ' +
      'ON'#13#10' (FRN.FOR_CODIGO = (SELECT FIRST 1 T3.FOR_CODIGO FROM PAG000' +
      '0 T3 WHERE T3.PAG_CODIGO = PPC.PAG_CODIGO) ) LEFT JOIN USUARIO U' +
      'SR ON'#13#10' (USR.USU_CODIGO = PAG.USU_CODIGO) WHERE PAG.BAN_CODIGO =' +
      ' '#39'0002'#39' AND PAG.PAG_DATA_PAGAMENTO BETWEEN '#39'09/19/2012'#39' AND '#39'10/' +
      '19/2012'#39' UNION'#13#10' SELECT CASE WHEN (1=1) THEN '#39'R'#39' END AS LOCAL, F' +
      'AT.FRE_REGISTRO, CASE WHEN (FAT.FRE_CONCILIADO = '#39'S'#39') THEN FAT.F' +
      'RE_DATA_LANCAMENTO ELSE FAT.FRE_DATA_RECEBIMENTO END AS PAG_DATA' +
      '_PAGAMENTO, CASE WHEN (1=1) THEN '#39'C'#39' END AS TIPO, CAST(FPC.FAT_C' +
      'ODIGO'#13#10'AS VARCHAR(12)) as DOCUMENTO, CAST(CLI.CLI_RAZAO AS VARCH' +
      'AR(60)) AS RAZAO, FAT.FRE_CONCILIADO, FAT.FRE_DATA_LANCAMENTO,'#13#10 +
      '(SELECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_R' +
      'EGISTRO = FAT.HCO_REGISTRO) AS HCO_DESCRICAO, FAT.FRE_RECEBIDO,'#13 +
      #10' USR.USU_NOME FROM FAT_RECEBIMENTO FAT  JOIN FORMA_PAGAMENTO FP' +
      'G ON (FPG.FPG_REGISTRO = FAT.FPG_REGISTRO AND FPG.FPG_LANCA_CONT' +
      'A = '#39'S'#39')'#13#10' JOIN FAT_PC01 FPC ON (FPC.FAT_REGISTRO = FAT.FAT_REGI' +
      'STRO) LEFT JOIN CLI0000 CLI ON (CLI.CLI_CODIGO = (SELECT FIRST 1' +
      ' T3.CLI_CODIGO FROM FAT0000 T3'#13#10' WHERE T3.FAT_CODIGO = FPC.FAT_C' +
      'ODIGO)) LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = FAT.USU_CODIG' +
      'O) WHERE FAT.BAN_CODIGO = '#39'0002'#39' AND FAT.FRE_DATA_RECEBIMENTO'#13#10' ' +
      'BETWEEN '#39'09/19/2012'#39' AND '#39'10/19/2012'#39' UNION  SELECT CASE WHEN (1' +
      '=1) THEN '#39'T'#39' END AS LOCAL, TR.BTR_REGISTRO, CASE WHEN (TR.BTR_CO' +
      'NCILIADO = '#39'S'#39') THEN tr.BTR_DATA_LANCAMENTO ELSE tr.BTR_DATA END' +
      ' AS'#13#10' PAG_DATA_PAGAMENTO,cast(tr.BTR_TIPO as char(1)), tr.BTR_DO' +
      'CUMENTO, tr.BTR_OBSERVACAO, tr.BTR_CONCILIADO, tr.BTR_DATA_LANCA' +
      'MENTO, (SELECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1'#13#10' WHERE' +
      ' T1.HCO_REGISTRO = tr.HCO_REGISTRO) AS HCO_DESCRICAO, tr.BTR_VAL' +
      'OR, USR.USU_NOME FROM  BAN_TRANSFERENCIA TR  LEFT JOIN USUARIO U' +
      'SR ON (USR.USU_CODIGO = tr.USU_CODIGO)'#13#10' WHERE TR.BCO_CODIGO = '#39 +
      '0002'#39' AND tr.BTR_DATA BETWEEN '#39'09/19/2012'#39' AND '#39'10/19/2012'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'PAG_DATA_PAGAMENTO'
    Params = <>
    CommandText = 
      'SELECT CASE WHEN (1=1) THEN '#39'P'#39' END AS LOCAL, PAG.PAP_REGISTRO a' +
      's PAG_REGISTRO, CASE WHEN (PAG.PAG_CONCILIADO = '#39'S'#39') THEN PAG.PA' +
      'G_DATA_LANCAMENTO ELSE PAG.PAG_DATA_PAGAMENTO'#13#10'END AS PAG_DATA_P' +
      'AGAMENTO,CASE WHEN (1=1) THEN '#39'D'#39' END AS TIPO, (SELECT FIRST 1 T' +
      '3.PAG_NUMDOC FROM PAG0000 T3 WHERE T3.PAG_CODIGO = PPC.PAG_CODIG' +
      'O)'#13#10'AS DOCUMENTO, CAST(FRN.FOR_RAZAO AS VARCHAR(60)) AS RAZAO, P' +
      'AG.PAG_CONCILIADO, PAG.PAG_DATA_LANCAMENTO, (SELECT T1.HCO_DESCR' +
      'ICAO FROM HIST_CONCILIACAO T1'#13#10'WHERE T1.HCO_REGISTRO = PAG.HCO_R' +
      'EGISTRO) AS HCO_DESCRICAO, PAG.PAG_PAGO, USR.USU_NOME FROM  PAG_' +
      'PAGAMENTO PAG JOIN FORMA_PAGAMENTO FPG ON (FPG.FPG_REGISTRO ='#13#10'P' +
      'AG.FPG_REGISTRO AND FPG.FPG_LANCA_CONTA = '#39'S'#39') JOIN PAG_PC01 PPC' +
      ' ON (PPC.PAG_REGISTRO = PAG.PAG_REGISTRO) LEFT JOIN FOR0000 FRN ' +
      'ON'#13#10' (FRN.FOR_CODIGO = (SELECT FIRST 1 T3.FOR_CODIGO FROM PAG000' +
      '0 T3 WHERE T3.PAG_CODIGO = PPC.PAG_CODIGO) ) LEFT JOIN USUARIO U' +
      'SR ON'#13#10' (USR.USU_CODIGO = PAG.USU_CODIGO) WHERE PAG.BAN_CODIGO =' +
      ' '#39'0002'#39' AND PAG.PAG_DATA_PAGAMENTO BETWEEN '#39'09/19/2012'#39' AND '#39'10/' +
      '19/2012'#39' UNION'#13#10' SELECT CASE WHEN (1=1) THEN '#39'R'#39' END AS LOCAL, F' +
      'AT.FRE_REGISTRO, CASE WHEN (FAT.FRE_CONCILIADO = '#39'S'#39') THEN FAT.F' +
      'RE_DATA_LANCAMENTO ELSE FAT.FRE_DATA_RECEBIMENTO END AS PAG_DATA' +
      '_PAGAMENTO, CASE WHEN (1=1) THEN '#39'C'#39' END AS TIPO, CAST(FPC.FAT_C' +
      'ODIGO'#13#10'AS VARCHAR(12)) as DOCUMENTO, CAST(CLI.CLI_RAZAO AS VARCH' +
      'AR(60)) AS RAZAO, FAT.FRE_CONCILIADO, FAT.FRE_DATA_LANCAMENTO,'#13#10 +
      '(SELECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_R' +
      'EGISTRO = FAT.HCO_REGISTRO) AS HCO_DESCRICAO, FAT.FRE_RECEBIDO,'#13 +
      #10' USR.USU_NOME FROM FAT_RECEBIMENTO FAT  JOIN FORMA_PAGAMENTO FP' +
      'G ON (FPG.FPG_REGISTRO = FAT.FPG_REGISTRO AND FPG.FPG_LANCA_CONT' +
      'A = '#39'S'#39')'#13#10' JOIN FAT_PC01 FPC ON (FPC.FAT_REGISTRO = FAT.FAT_REGI' +
      'STRO) LEFT JOIN CLI0000 CLI ON (CLI.CLI_CODIGO = (SELECT FIRST 1' +
      ' T3.CLI_CODIGO FROM FAT0000 T3'#13#10' WHERE T3.FAT_CODIGO = FPC.FAT_C' +
      'ODIGO)) LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = FAT.USU_CODIG' +
      'O) WHERE FAT.BAN_CODIGO = '#39'0002'#39' AND FAT.FRE_DATA_RECEBIMENTO'#13#10' ' +
      'BETWEEN '#39'09/19/2012'#39' AND '#39'10/19/2012'#39' UNION  SELECT CASE WHEN (1' +
      '=1) THEN '#39'T'#39' END AS LOCAL, TR.BTR_REGISTRO, CASE WHEN (TR.BTR_CO' +
      'NCILIADO = '#39'S'#39') THEN tr.BTR_DATA_LANCAMENTO ELSE tr.BTR_DATA END' +
      ' AS'#13#10' PAG_DATA_PAGAMENTO,cast(tr.BTR_TIPO as char(1)), tr.BTR_DO' +
      'CUMENTO, tr.BTR_OBSERVACAO, tr.BTR_CONCILIADO, tr.BTR_DATA_LANCA' +
      'MENTO, (SELECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1'#13#10' WHERE' +
      ' T1.HCO_REGISTRO = tr.HCO_REGISTRO) AS HCO_DESCRICAO, tr.BTR_VAL' +
      'OR, USR.USU_NOME FROM  BAN_TRANSFERENCIA TR  LEFT JOIN USUARIO U' +
      'SR ON (USR.USU_CODIGO = tr.USU_CODIGO)'#13#10' WHERE TR.BCO_CODIGO = '#39 +
      '0002'#39' AND tr.BTR_DATA BETWEEN '#39'09/19/2012'#39' AND '#39'10/19/2012'#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 288
    Top = 435
    object SQLCdsConciliacaoSPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQLCdsConciliacaoSPAG_DATA_PAGAMENTO: TDateField
      FieldName = 'PAG_DATA_PAGAMENTO'
      ProviderFlags = []
    end
    object SQLCdsConciliacaoSTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object SQLCdsConciliacaoSDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = []
      Size = 12
    end
    object SQLCdsConciliacaoSRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = []
      Size = 60
    end
    object SQLCdsConciliacaoSPAG_CONCILIADO: TStringField
      FieldName = 'PAG_CONCILIADO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object SQLCdsConciliacaoSPAG_DATA_LANCAMENTO: TDateField
      FieldName = 'PAG_DATA_LANCAMENTO'
      ProviderFlags = []
    end
    object SQLCdsConciliacaoSHCO_DESCRICAO: TStringField
      FieldName = 'HCO_DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object SQLCdsConciliacaoSPAG_PAGO: TFMTBCDField
      FieldName = 'PAG_PAGO'
      ProviderFlags = []
      DisplayFormat = '###,###,###,#0.00'
      Precision = 15
      Size = 5
    end
    object SQLCdsConciliacaoSUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      ProviderFlags = []
      Size = 40
    end
    object SQLCdsConciliacaoSSaldo: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      ProviderFlags = []
      DisplayFormat = '###,###,###,#0.00'
      Calculated = True
    end
    object SQLCdsConciliacaoSLOCAL: TStringField
      FieldName = 'LOCAL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object SQLCdsConciliacaoSped_codigo: TStringField
      FieldName = 'ped_codigo'
      Size = 7
    end
    object SQLCdsConciliacaoSNF_NUM_NFE: TStringField
      FieldName = 'NF_NUM_NFE'
      OnGetText = SQLCdsConciliacaoNNF_NUM_NFEGetText
      Size = 11
    end
    object SQLCdsConciliacaoSSaldoCalculado: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SaldoCalculado'
      ProviderFlags = []
      DisplayFormat = '###,###,###,#0.00'
      Calculated = True
    end
    object SQLCdsConciliacaoSpag_observacao: TStringField
      FieldName = 'pag_observacao'
      Size = 60
    end
  end
  object DsConciliacaoS: TDataSource
    DataSet = SQLCdsConciliacaoS
    Left = 384
    Top = 411
  end
  object frxExtratoAnaliticoN: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41204.610857870400000000
    ReportOptions.LastChange = 41583.793389838000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '   saldo,saldoP,rSaldoAnteriorN,sSaldoLimite, saldoDia, saldoDia' +
        'Debito, saldoDiaCredito :Real;                                  ' +
        '       '
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '                                                                ' +
        '   '
      'end;                 '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '     IF (<frxDBAnaliticoN."TIPO"> = '#39'C'#39') THEN'
      '      begin               '
      '       saldoP := saldoP + <frxDBAnaliticoN."PAG_PAGO">;'
      '       saldoDia := saldoDia + <frxDBAnaliticoN."PAG_PAGO">;'
      
        '       saldoDiaCredito := saldoDiaCredito + <frxDBAnaliticoN."PA' +
        'G_PAGO">;             '
      '       Memo12.Font.Color := clBlue;'
      '      end                       '
      '   ELSE'
      '      begin                        '
      '       saldoP := saldoP - <frxDBAnaliticoN."PAG_PAGO">;'
      '       saldoDia := saldoDia - <frxDBAnaliticoN."PAG_PAGO">;'
      
        '       saldoDiaDebito := saldoDiaDebito + <frxDBAnaliticoN."PAG_' +
        'PAGO">;                                   '
      '       Memo12.Font.Color := clRed;  '
      '      end;                           '
      'end;'
      ''
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      
        'begin                                                           ' +
        '     '
      '  if (saldoP < 0) then'
      '      Memo19.Font.Color := clRed'
      '  else'
      
        '      Memo19.Font.Color := clBlue;                              ' +
        '   '
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (saldoP < 0) then'
      '       Memo22.Font.Color := clRed'
      '  else'
      '      Memo22.Font.Color := clBlue;'
      '  if (sSaldoLimite < 0) then'
      '       Memo23.Font.Color := clRed'
      '  else'
      '      Memo23.Font.Color := clBlue;              '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (saldo < 0) then'
      '      Memo4.Font.Color := clRed'
      '  else'
      '      Memo4.Font.Color := clBlue;  '
      'end;'
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  saldoDia := 0;'
      '  saldoDiaCredito := 0;'
      '  saldoDiaDebito := 0;                    '
      'end;'
      ''
      'begin'
      '  saldoP := <saldo>;'
      '  saldoDia := 0;'
      '  saldoDiaCredito := 0;'
      '  saldoDiaDebito := 0;    '
      'end.')
    OnGetValue = frxExtratoAnaliticoNGetValue
    Left = 424
    Top = 168
    Datasets = <
      item
        DataSet = frxDBAnaliticoN
        DataSetName = 'frxDBAnaliticoN'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 76.542980950000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
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
            'Extrato de Movimenta'#231#227'o Financeira - Sem Concilia'#231#227'o')
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
        object Memo3: TfrxMemoView
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
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 56.180129490000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 76.542980950000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 905.378480000000000000
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
          Left = 905.378480000000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 87.729190000000000000
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
            'Documento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 249.488188980000000000
          Top = 56.692950000000000000
          Width = 241.889775980000000000
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
            'Informa'#231#227'o')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 498.882190000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
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
            'Valor')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 600.149970000000000000
          Top = 56.692950000000000000
          Width = 136.063080000000000000
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
            'Usu'#225'rio')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 86.929190000000000000
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
            'Data')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 169.519685040000000000
          Top = 56.692950000000000000
          Width = 75.590556060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nro.NF')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 743.697650000000000000
          Top = 57.102350000000000000
          Width = 299.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Observa'#231#245'es')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.166790000000000000
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBAnaliticoN
        DataSetName = 'frxDBAnaliticoN'
        RowCount = 0
        Stretched = True
        object frxDBDataset1DOCUMENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = frxDBAnaliticoN
          DataSetName = 'frxDBAnaliticoN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoN."DOCUMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 249.488188980000000000
          Width = 241.889775980000000000
          Height = 18.897650000000000000
          DataField = 'RAZAO'
          DataSet = frxDBAnaliticoN
          DataSetName = 'frxDBAnaliticoN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoN."RAZAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 496.482190000000000000
          Top = 0.200000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PAG_PAGO'
          DataSet = frxDBAnaliticoN
          DataSetName = 'frxDBAnaliticoN'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBAnaliticoN."PAG_PAGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 600.149970000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'USU_NOME'
          DataSet = frxDBAnaliticoN
          DataSetName = 'frxDBAnaliticoN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoN."USU_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 578.252320000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = frxDBAnaliticoN
          DataSetName = 'frxDBAnaliticoN'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBAnaliticoN."TIPO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBAnaliticoN
          DataSetName = 'frxDBAnaliticoN'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoN."BAN_APELIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 169.519685040000000000
          Width = 75.590556060000000000
          Height = 18.897650000000000000
          DataSet = frxDBAnaliticoN
          DataSetName = 'frxDBAnaliticoN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoN."NF_NUM_NFE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 743.697650000000000000
          Top = 0.489610000000000000
          Width = 299.590600000000000000
          Height = 18.677180000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoN."pag_observacao"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = 'frxDBAnaliticoN."PAG_DATA_PAGAMENTO"'
        KeepTogether = True
        object frxDBDataset1PAG_DATA_PAGAMENTO: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'PAG_DATA_PAGAMENTO'
          DataSet = frxDBAnaliticoN
          DataSetName = 'frxDBAnaliticoN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoN."PAG_DATA_PAGAMENTO"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 325.039580000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        PrintChildIfInvisible = True
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cr'#233'ditos:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'D'#233'bitos:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
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
            'Saldo:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
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
            'Saldo + Limite:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sCredito]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sDebito]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sSaldo]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
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
            '[sSaldoLimite]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.097650000000000000
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Width = 94.488250000000000000
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
            'Saldo do Dia:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBAnaliticoN
          DataSetName = 'frxDBAnaliticoN'
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
            '[saldoDia]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBAnaliticoN
          DataSetName = 'frxDBAnaliticoN'
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
            '[saldoP]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 90.708720000000000000
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
            'Saldo Acumulado:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cr'#233'ditos:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'D'#233'bitos:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[saldoDiaCredito]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[saldoDiaDebito]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBAnaliticoN
          DataSetName = 'frxDBAnaliticoN'
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
            '[saldoP]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Width = 94.488250000000000000
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
            'Saldo Anterior:')
          ParentFont = False
        end
      end
    end
  end
  object frxDBAnaliticoN: TfrxDBDataset
    UserName = 'frxDBAnaliticoN'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Saldo=Saldo'
      'LOCAL=LOCAL'
      'PAG_REGISTRO=PAG_REGISTRO'
      'PAG_DATA_PAGAMENTO=PAG_DATA_PAGAMENTO'
      'TIPO=TIPO'
      'DOCUMENTO=DOCUMENTO'
      'RAZAO=RAZAO'
      'PAG_CONCILIADO=PAG_CONCILIADO'
      'PAG_DATA_LANCAMENTO=PAG_DATA_LANCAMENTO'
      'HCO_DESCRICAO=HCO_DESCRICAO'
      'PAG_PAGO=PAG_PAGO'
      'USU_NOME=USU_NOME'
      'BAN_APELIDO=BAN_APELIDO'
      'ped_codigo=ped_codigo'
      'NF_NUM_NFE=NF_NUM_NFE'
      'pag_observacao=pag_observacao')
    DataSet = SQLCdsConciliacaoN
    BCDToCurrency = False
    Left = 584
    Top = 132
  end
  object SQLCdsConciliacaoN: TSqlClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    DataSet.CommandText = 
      'SELECT'#13#10'    CASE WHEN (1=1) THEN '#39'P'#39' END AS LOCAL,'#13#10'    PAG.PAP_' +
      'REGISTRO as PAG_REGISTRO,'#13#10'    CASE WHEN (PAG.PAG_CONCILIADO = '#39 +
      'S'#39') THEN'#13#10'        PAG.PAG_DATA_LANCAMENTO'#13#10'    ELSE'#13#10'        PAG' +
      '.PAG_DATA_PAGAMENTO END AS PAG_DATA_PAGAMENTO,'#13#10'    CASE WHEN (1' +
      '=1) THEN'#13#10'        '#39'D'#39#13#10'    END AS TIPO,'#13#10'    (SELECT FIRST 1 T3.' +
      'PAG_NUMDOC FROM PAG0000 T3 WHERE T3.PAG_CODIGO = PPC.PAG_CODIGO)' +
      ' aS DOCUMENTO,'#13#10'    CAST(FRN.FOR_RAZAO AS VARCHAR(60)) AS RAZAO,' +
      #13#10'    PAG.PAG_CONCILIADO,'#13#10'    PAG.PAG_DATA_LANCAMENTO,'#13#10'    (SE' +
      'LECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_REGI' +
      'STRO = PAG.HCO_REGISTRO) AS HCO_DESCRICAO,'#13#10'    PAG.PAG_PAGO,'#13#10' ' +
      '   USR.USU_NOME,'#13#10'    BAN.BAN_APELIDO,'#13#10'    '#39#39' as ped_codigo,'#13#10' ' +
      '   '#39#39' as nf_num_nfe'#13#10'fROM  PAG_PAGAMENTO PAG'#13#10'JOIN FORMA_PAGAMEN' +
      'TO FPG ON (FPG.FPG_REGISTRO = PAG.FPG_REGISTRO AND FPG.FPG_LANCA' +
      '_CONTA = '#39'S'#39')'#13#10'JOIN PAG_PC01 PPC ON (PPC.PAG_REGISTRO = PAG.PAG_' +
      'REGISTRO)'#13#10'LEFT JOIN BAN0000 BAN ON (BAN.BAN_CODIGO = PAG.BAN_CO' +
      'DIGO)'#13#10'LEFT JOIN FOR0000 FRN ON (FRN.FOR_CODIGO = (SELECT FIRST ' +
      '1 T3.FOR_CODIGO FROM PAG0000 T3 WHERE T3.PAG_CODIGO = PPC.PAG_CO' +
      'DIGO) )'#13#10'LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = PAG.USU_CODI' +
      'GO)'#13#10'WHERE PAG.BAN_CODIGO = '#39'0002'#39' AND PAG.PAG_DATA_PAGAMENTO BE' +
      'TWEEN '#39'09/19/2012'#39' AND '#39'10/19/2012'#39#13#10#13#10'UNION'#13#10#13#10'SELECT'#13#10'    CASE' +
      ' WHEN (1=1) THEN '#39'R'#39' END AS LOCAL,'#13#10'    FAT.FRE_REGISTRO,'#13#10'    C' +
      'ASE WHEN (FAT.FRE_CONCILIADO = '#39'S'#39') THEN'#13#10'        FAT.FRE_DATA_L' +
      'ANCAMENTO'#13#10'    ELSE'#13#10'        FAT.FRE_DATA_RECEBIMENTO END AS PAG' +
      '_DATA_PAGAMENTO,'#13#10'    CASE WHEN (1=1) THEN'#13#10'        '#39'C'#39#13#10'    END' +
      ' AS TIPO,'#13#10'    CAST(FPC.FAT_CODIGO AS VARCHAR(12)) as DOCUMENTO,' +
      #13#10'    CAST(CLI.CLI_RAZAO AS VARCHAR(60)) AS RAZAO,'#13#10'    FAT.FRE_' +
      'CONCILIADO,'#13#10'    FAT.FRE_DATA_LANCAMENTO,'#13#10'    (SELECT T1.HCO_DE' +
      'SCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_REGISTRO = FAT.HCO' +
      '_REGISTRO) AS HCO_DESCRICAO,'#13#10'    FAT.FRE_RECEBIDO,'#13#10'    USR.USU' +
      '_NOME,'#13#10'    BAN.ban_apelido,'#13#10'    f1.ped_codigo,'#13#10'    f1.nf_num_' +
      'nfe'#13#10'FROM FAT_RECEBIMENTO FAT'#13#10'JOIN FORMA_PAGAMENTO FPG ON (FPG.' +
      'FPG_REGISTRO = FAT.FPG_REGISTRO AND FPG.FPG_LANCA_CONTA = '#39'S'#39')'#13#10 +
      'LEFT JOIN BAN0000 BAN ON (BAN.BAN_CODIGO = fat.BAN_CODIGO)'#13#10'JOIN' +
      ' FAT_PC01 FPC ON (FPC.FAT_REGISTRO = FAT.FAT_REGISTRO)'#13#10'left joi' +
      'n fat0000 f1 on f1.fat_registro=fpc.fat_registro'#13#10'LEFT JOIN CLI0' +
      '000 CLI ON (CLI.CLI_CODIGO = (SELECT FIRST 1 T3.CLI_CODIGO FROM ' +
      'FAT0000 T3 WHERE T3.FAT_CODIGO = FPC.FAT_CODIGO))'#13#10'LEFT JOIN USU' +
      'ARIO USR ON (USR.USU_CODIGO = FAT.USU_CODIGO)'#13#10'WHERE FAT.BAN_COD' +
      'IGO = '#39'0002'#39' AND FAT.FRE_DATA_RECEBIMENTO BETWEEN '#39'09/19/2012'#39' A' +
      'ND '#39'10/19/2012'#39#13#10#13#10'UNION'#13#10#13#10'SELECT'#13#10'    CASE WHEN (1=1) THEN '#39'T'#39 +
      ' END AS LOCAL,'#13#10'    TR.BTR_REGISTRO,'#13#10'    CASE WHEN (TR.BTR_CONC' +
      'ILIADO = '#39'S'#39') THEN'#13#10'        tr.BTR_DATA_LANCAMENTO'#13#10'    ELSE'#13#10'  ' +
      '      tr.BTR_DATA'#13#10'    END AS PAG_DATA_PAGAMENTO,'#13#10'    cast(tr.B' +
      'TR_TIPO as char(1)),'#13#10'    tr.BTR_DOCUMENTO,'#13#10'    tr.BTR_OBSERVAC' +
      'AO,'#13#10'    tr.BTR_CONCILIADO,'#13#10'    tr.BTR_DATA_LANCAMENTO,'#13#10'    (S' +
      'ELECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_REG' +
      'ISTRO = tr.HCO_REGISTRO) AS HCO_DESCRICAO,'#13#10'    tr.BTR_VALOR,'#13#10' ' +
      '   USR.USU_NOME,'#13#10'    BAN.BAN_APELIDO,'#13#10'    '#39#39' as ped_codigo,'#13#10' ' +
      '   '#39#39' as nf_num_nfe'#13#10#13#10'FROM  BAN_TRANSFERENCIA TR'#13#10'LEFT JOIN USU' +
      'ARIO USR ON (USR.USU_CODIGO = tr.USU_CODIGO)'#13#10'LEFT JOIN BAN0000 ' +
      'BAN ON (CAST(BAN.BAN_CODIGO AS INTEGER)= TR.BCO_CODIGO)'#13#10'WHERE T' +
      'R.BCO_CODIGO = '#39'0002'#39' AND tr.BTR_DATA BETWEEN '#39'09/19/2012'#39' AND '#39 +
      '10/19/2012'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'    CASE WHEN (1=1) THEN '#39'P'#39' END AS LOCAL,'#13#10'    PAG.PAP_' +
      'REGISTRO as PAG_REGISTRO,'#13#10'    CASE WHEN (PAG.PAG_CONCILIADO = '#39 +
      'S'#39') THEN'#13#10'        PAG.PAG_DATA_LANCAMENTO'#13#10'    ELSE'#13#10'        PAG' +
      '.PAG_DATA_PAGAMENTO END AS PAG_DATA_PAGAMENTO,'#13#10'    CASE WHEN (1' +
      '=1) THEN'#13#10'        '#39'D'#39#13#10'    END AS TIPO,'#13#10'    (SELECT FIRST 1 T3.' +
      'PAG_NUMDOC FROM PAG0000 T3 WHERE T3.PAG_CODIGO = PPC.PAG_CODIGO)' +
      ' aS DOCUMENTO,'#13#10'    CAST(FRN.FOR_RAZAO AS VARCHAR(60)) AS RAZAO,' +
      #13#10'    PAG.PAG_CONCILIADO,'#13#10'    PAG.PAG_DATA_LANCAMENTO,'#13#10'    (SE' +
      'LECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_REGI' +
      'STRO = PAG.HCO_REGISTRO) AS HCO_DESCRICAO,'#13#10'    PAG.PAG_PAGO,'#13#10' ' +
      '   USR.USU_NOME,'#13#10'    BAN.BAN_APELIDO,'#13#10'    '#39#39' as ped_codigo,'#13#10' ' +
      '   '#39#39' as nf_num_nfe'#13#10'fROM  PAG_PAGAMENTO PAG'#13#10'JOIN FORMA_PAGAMEN' +
      'TO FPG ON (FPG.FPG_REGISTRO = PAG.FPG_REGISTRO AND FPG.FPG_LANCA' +
      '_CONTA = '#39'S'#39')'#13#10'JOIN PAG_PC01 PPC ON (PPC.PAG_REGISTRO = PAG.PAG_' +
      'REGISTRO)'#13#10'LEFT JOIN BAN0000 BAN ON (BAN.BAN_CODIGO = PAG.BAN_CO' +
      'DIGO)'#13#10'LEFT JOIN FOR0000 FRN ON (FRN.FOR_CODIGO = (SELECT FIRST ' +
      '1 T3.FOR_CODIGO FROM PAG0000 T3 WHERE T3.PAG_CODIGO = PPC.PAG_CO' +
      'DIGO) )'#13#10'LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = PAG.USU_CODI' +
      'GO)'#13#10'WHERE PAG.BAN_CODIGO = '#39'0002'#39' AND PAG.PAG_DATA_PAGAMENTO BE' +
      'TWEEN '#39'09/19/2012'#39' AND '#39'10/19/2012'#39#13#10#13#10'UNION'#13#10#13#10'SELECT'#13#10'    CASE' +
      ' WHEN (1=1) THEN '#39'R'#39' END AS LOCAL,'#13#10'    FAT.FRE_REGISTRO,'#13#10'    C' +
      'ASE WHEN (FAT.FRE_CONCILIADO = '#39'S'#39') THEN'#13#10'        FAT.FRE_DATA_L' +
      'ANCAMENTO'#13#10'    ELSE'#13#10'        FAT.FRE_DATA_RECEBIMENTO END AS PAG' +
      '_DATA_PAGAMENTO,'#13#10'    CASE WHEN (1=1) THEN'#13#10'        '#39'C'#39#13#10'    END' +
      ' AS TIPO,'#13#10'    CAST(FPC.FAT_CODIGO AS VARCHAR(12)) as DOCUMENTO,' +
      #13#10'    CAST(CLI.CLI_RAZAO AS VARCHAR(60)) AS RAZAO,'#13#10'    FAT.FRE_' +
      'CONCILIADO,'#13#10'    FAT.FRE_DATA_LANCAMENTO,'#13#10'    (SELECT T1.HCO_DE' +
      'SCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_REGISTRO = FAT.HCO' +
      '_REGISTRO) AS HCO_DESCRICAO,'#13#10'    FAT.FRE_RECEBIDO,'#13#10'    USR.USU' +
      '_NOME,'#13#10'    BAN.ban_apelido,'#13#10'    f1.ped_codigo,'#13#10'    f1.nf_num_' +
      'nfe'#13#10'FROM FAT_RECEBIMENTO FAT'#13#10'JOIN FORMA_PAGAMENTO FPG ON (FPG.' +
      'FPG_REGISTRO = FAT.FPG_REGISTRO AND FPG.FPG_LANCA_CONTA = '#39'S'#39')'#13#10 +
      'LEFT JOIN BAN0000 BAN ON (BAN.BAN_CODIGO = fat.BAN_CODIGO)'#13#10'JOIN' +
      ' FAT_PC01 FPC ON (FPC.FAT_REGISTRO = FAT.FAT_REGISTRO)'#13#10'left joi' +
      'n fat0000 f1 on f1.fat_registro=fpc.fat_registro'#13#10'LEFT JOIN CLI0' +
      '000 CLI ON (CLI.CLI_CODIGO = (SELECT FIRST 1 T3.CLI_CODIGO FROM ' +
      'FAT0000 T3 WHERE T3.FAT_CODIGO = FPC.FAT_CODIGO))'#13#10'LEFT JOIN USU' +
      'ARIO USR ON (USR.USU_CODIGO = FAT.USU_CODIGO)'#13#10'WHERE FAT.BAN_COD' +
      'IGO = '#39'0002'#39' AND FAT.FRE_DATA_RECEBIMENTO BETWEEN '#39'09/19/2012'#39' A' +
      'ND '#39'10/19/2012'#39#13#10#13#10'UNION'#13#10#13#10'SELECT'#13#10'    CASE WHEN (1=1) THEN '#39'T'#39 +
      ' END AS LOCAL,'#13#10'    TR.BTR_REGISTRO,'#13#10'    CASE WHEN (TR.BTR_CONC' +
      'ILIADO = '#39'S'#39') THEN'#13#10'        tr.BTR_DATA_LANCAMENTO'#13#10'    ELSE'#13#10'  ' +
      '      tr.BTR_DATA'#13#10'    END AS PAG_DATA_PAGAMENTO,'#13#10'    cast(tr.B' +
      'TR_TIPO as char(1)),'#13#10'    tr.BTR_DOCUMENTO,'#13#10'    tr.BTR_OBSERVAC' +
      'AO,'#13#10'    tr.BTR_CONCILIADO,'#13#10'    tr.BTR_DATA_LANCAMENTO,'#13#10'    (S' +
      'ELECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_REG' +
      'ISTRO = tr.HCO_REGISTRO) AS HCO_DESCRICAO,'#13#10'    tr.BTR_VALOR,'#13#10' ' +
      '   USR.USU_NOME,'#13#10'    BAN.BAN_APELIDO,'#13#10'    '#39#39' as ped_codigo,'#13#10' ' +
      '   '#39#39' as nf_num_nfe'#13#10#13#10'FROM  BAN_TRANSFERENCIA TR'#13#10'LEFT JOIN USU' +
      'ARIO USR ON (USR.USU_CODIGO = tr.USU_CODIGO)'#13#10'LEFT JOIN BAN0000 ' +
      'BAN ON (CAST(BAN.BAN_CODIGO AS INTEGER)= TR.BCO_CODIGO)'#13#10'WHERE T' +
      'R.BCO_CODIGO = '#39'0002'#39' AND tr.BTR_DATA BETWEEN '#39'09/19/2012'#39' AND '#39 +
      '10/19/2012'#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 232
    Top = 184
    object SQLCdsConciliacaoNSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      ProviderFlags = []
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
    object SQLCdsConciliacaoNLOCAL: TStringField
      FieldName = 'LOCAL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object SQLCdsConciliacaoNPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQLCdsConciliacaoNPAG_DATA_PAGAMENTO: TDateField
      FieldName = 'PAG_DATA_PAGAMENTO'
      ProviderFlags = []
    end
    object SQLCdsConciliacaoNTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object SQLCdsConciliacaoNDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = []
      Size = 12
    end
    object SQLCdsConciliacaoNRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = []
      Size = 70
    end
    object SQLCdsConciliacaoNPAG_CONCILIADO: TStringField
      FieldName = 'PAG_CONCILIADO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object SQLCdsConciliacaoNPAG_DATA_LANCAMENTO: TDateField
      FieldName = 'PAG_DATA_LANCAMENTO'
      ProviderFlags = []
    end
    object SQLCdsConciliacaoNHCO_DESCRICAO: TStringField
      FieldName = 'HCO_DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object SQLCdsConciliacaoNPAG_PAGO: TFMTBCDField
      FieldName = 'PAG_PAGO'
      ProviderFlags = []
      DisplayFormat = '###,###,###,##0.00'
      Precision = 20
      Size = 5
    end
    object SQLCdsConciliacaoNUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      ProviderFlags = []
      Size = 40
    end
    object SQLCdsConciliacaoNBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      ProviderFlags = []
      Size = 25
    end
    object SQLCdsConciliacaoNped_codigo: TStringField
      FieldName = 'ped_codigo'
      Size = 7
    end
    object SQLCdsConciliacaoNNF_NUM_NFE: TStringField
      FieldName = 'NF_NUM_NFE'
      OnGetText = SQLCdsConciliacaoNNF_NUM_NFEGetText
      Size = 11
    end
    object SQLCdsConciliacaoNpag_observacao: TStringField
      FieldName = 'pag_observacao'
      Size = 60
    end
  end
  object DsConciliacaoN: TDataSource
    DataSet = SQLCdsConciliacaoN
    Left = 304
    Top = 131
  end
  object frxExtratoAnaliticoS: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41204.610857870400000000
    ReportOptions.LastChange = 41583.793962835600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '   saldo,saldoP,rSaldoAnteriorN,sSaldoLimite,saldoTemp,saldoDia,' +
        ' saldoDiaDebito, saldoDiaCredito:Currency;'
      '                 '
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   IF (<frxDBAnaliticoS."TIPO"> = '#39'C'#39') THEN'
      '      begin               '
      '       saldoP := saldoP + <frxDBAnaliticoS."PAG_PAGO">;'
      '       saldoDia := saldoDia + <frxDBAnaliticoS."PAG_PAGO">;'
      
        '       saldoDiaCredito := saldoDiaCredito + <frxDBAnaliticoS."PA' +
        'G_PAGO">;           '
      '       Memo12.Font.Color := clBlue;'
      '      end                       '
      '   ELSE'
      '      begin                        '
      '       saldoP := saldoP - <frxDBAnaliticoS."PAG_PAGO">;'
      '       saldoDia := saldoDia - <frxDBAnaliticoS."PAG_PAGO">;'
      
        '       saldoDiaDebito := saldoDiaDebito + <frxDBAnaliticoS."PAG_' +
        'PAGO">;           '
      '       Memo12.Font.Color := clRed;  '
      '      end;    '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin                           '
      '  if (saldoP < 0) then'
      '      Memo19.Font.Color := clRed'
      '  else'
      
        '      Memo19.Font.Color := clBlue;                              ' +
        '   '
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (saldoP < 0) then'
      '       Memo22.Font.Color := clRed'
      '  else'
      '      Memo22.Font.Color := clBlue;'
      '  if (sSaldoLimite < 0) then'
      '       Memo23.Font.Color := clRed'
      '  else'
      '      Memo23.Font.Color := clBlue;              '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (saldoP < 0) then'
      '      Memo4.Font.Color := clRed'
      '  else'
      '      Memo4.Font.Color := clBlue;  '
      'end;'
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '                                                                ' +
        ' '
      'end;'
      ''
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    saldoDia := 0;'
      '    saldoDiaCredito := 0;'
      '    saldoDiaDebito := 0;  '
      'end;'
      ''
      'begin'
      ' saldoP := <saldo>;'
      ' saldoDia := 0;'
      '    saldoDiaCredito := 0;'
      '    saldoDiaDebito := 0;     '
      'end.')
    OnGetValue = frxExtratoAnaliticoSGetValue
    Left = 488
    Top = 451
    Datasets = <
      item
        DataSet = frxDBAnaliticoS
        DataSetName = 'frxDBAnaliticoS'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'saldoAtual'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
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
            'Extrato de Movimenta'#231#227'o Financeira - Conciliado Anal'#237'tico')
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
        object Memo3: TfrxMemoView
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
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
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
          Left = 578.268090000000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 242.267716540000000000
          Top = 56.692950000000000000
          Width = 83.149613620000000000
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
            'Documento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 389.952758350000000000
          Top = 56.692950000000000000
          Width = 162.519694800000000000
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
            'Informa'#231#227'o')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 555.575140000000000000
          Top = 56.692950000000000000
          Width = 94.488250000000000000
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
            'Valor')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 654.063390000000000000
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
            'Usu'#225'rio')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 71.811070000000000000
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
            'Data')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811023622047210000
          Top = 56.692950000000000000
          Width = 166.299212598425000000
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
            'Hist'#243'rico')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 328.480314960000000000
          Top = 56.692950000000000000
          Width = 60.472445830000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nro.NF')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 740.200000000000000000
          Top = 56.302350000000000000
          Width = 301.990600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Observa'#231#245'es')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.248670000000000000
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBAnaliticoS
        DataSetName = 'frxDBAnaliticoS'
        RowCount = 0
        object frxDBDataset1DOCUMENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 242.267716540000000000
          Width = 83.149613620000000000
          Height = 18.897650000000000000
          DataField = 'DOCUMENTO'
          DataSet = frxDBAnaliticoS
          DataSetName = 'frxDBAnaliticoS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoS."DOCUMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 389.952758350000000000
          Width = 162.519694800000000000
          Height = 18.897650000000000000
          DataField = 'RAZAO'
          DataSet = frxDBAnaliticoS
          DataSetName = 'frxDBAnaliticoS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoS."RAZAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 555.575140000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PAG_PAGO'
          DataSet = frxDBAnaliticoS
          DataSetName = 'frxDBAnaliticoS'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBAnaliticoS."PAG_PAGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 654.063390000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'USU_NOME'
          DataSet = frxDBAnaliticoS
          DataSetName = 'frxDBAnaliticoS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoS."USU_NOME"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 634.945270000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = frxDBAnaliticoS
          DataSetName = 'frxDBAnaliticoS'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBAnaliticoS."TIPO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811023620000000000
          Width = 166.299212600000000000
          Height = 18.897650000000000000
          DataField = 'HCO_DESCRICAO'
          DataSet = frxDBAnaliticoS
          DataSetName = 'frxDBAnaliticoS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoS."HCO_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 328.480314960000000000
          Width = 60.472445830000000000
          Height = 18.897650000000000000
          DataSet = frxDBAnaliticoS
          DataSetName = 'frxDBAnaliticoS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoS."NF_NUM_NFE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 741.000000000000000000
          Top = 0.351020000000000000
          Width = 301.990600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoS."pag_observacao"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = 'frxDBAnaliticoS."PAG_DATA_PAGAMENTO"'
        KeepTogether = True
        object frxDBDataset1PAG_DATA_PAGAMENTO: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'PAG_DATA_PAGAMENTO'
          DataSet = frxDBAnaliticoS
          DataSetName = 'frxDBAnaliticoS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAnaliticoS."PAG_DATA_PAGAMENTO"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 321.260050000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        PrintChildIfInvisible = True
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cr'#233'ditos:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'D'#233'bitos:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
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
            'Saldo:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
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
            'Saldo + Limite:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sCredito]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sDebito]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sSaldo]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 8.359060000000000000
          Width = 79.370130000000000000
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
            '[sSaldoLimite]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 20.277180000000000000
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Width = 94.488250000000000000
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
            'Saldo do Dia:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBAnaliticoN
          DataSetName = 'frxDBAnaliticoN'
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
            '[saldoDia]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBAnaliticoN
          DataSetName = 'frxDBAnaliticoN'
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
            '[saldoP]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 90.708720000000000000
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
            'Saldo Acumulado:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cr'#233'ditos:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'D'#233'bitos:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[saldoDiaCredito]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[saldoDiaDebito]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Width = 94.488250000000000000
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
            'Saldo Anterior:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBAnaliticoS
          DataSetName = 'frxDBAnaliticoS'
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
            '[saldoP]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBAnaliticoS: TfrxDBDataset
    UserName = 'frxDBAnaliticoS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PAG_REGISTRO=PAG_REGISTRO'
      'PAG_DATA_PAGAMENTO=PAG_DATA_PAGAMENTO'
      'TIPO=TIPO'
      'DOCUMENTO=DOCUMENTO'
      'RAZAO=RAZAO'
      'PAG_CONCILIADO=PAG_CONCILIADO'
      'PAG_DATA_LANCAMENTO=PAG_DATA_LANCAMENTO'
      'HCO_DESCRICAO=HCO_DESCRICAO'
      'PAG_PAGO=PAG_PAGO'
      'USU_NOME=USU_NOME'
      'Saldo=Saldo'
      'LOCAL=LOCAL'
      'ped_codigo=ped_codigo'
      'NF_NUM_NFE=NF_NUM_NFE'
      'SaldoCalculado=SaldoCalculado'
      'pag_observacao=pag_observacao')
    DataSource = DsConciliacaoS
    BCDToCurrency = False
    Left = 648
    Top = 420
  end
  object frxPDFExport1: TfrxPDFExport
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
    Left = 760
    Top = 229
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
    Left = 664
    Top = 229
  end
  object frxODSExport1: TfrxODSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 0.000000000000000000
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Background = True
    Creator = 'FastReport'
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 552
    Top = 229
  end
end
