inherited FrmPedidoPCP: TFrmPedidoPCP
  Left = 504
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pedido Produ'#231#227'o'
  ClientHeight = 602
  ClientWidth = 1356
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnResize = FormResize
  ExplicitWidth = 1372
  ExplicitHeight = 640
  PixelsPerInch = 96
  TextHeight = 14
  object pgc1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 1356
    Height = 602
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'Pedido de Produ'#231#227'o'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 144
        Width = 1348
        Height = 278
        Align = alClient
        Caption = 'Itens para Producao'
        TabOrder = 0
        ExplicitWidth = 1464
        object DbGradeItemPedido: TDBGrid
          Left = 2
          Top = 16
          Width = 1344
          Height = 260
          Align = alClient
          Color = 16776176
          DataSource = dsPedidoItem
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
          PopupMenu = PMMarcar
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDrawColumnCell = DbGradeItemPedidoDrawColumnCell
          OnDblClick = DbGradeItemPedidoDblClick
          OnKeyPress = DbGradeItemPedidoKeyPress
          OnTitleClick = DbGradeItemPedidoTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Selecao'
              Title.Alignment = taCenter
              Title.Caption = '*'
              Width = 19
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Pedido'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_REFER'
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 303
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRF_QTDE'
              Title.Alignment = taCenter
              Title.Caption = 'Quantidade'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRF_QTDE_ENV_PRODUCAO'
              Title.Alignment = taCenter
              Title.Caption = 'Enviada'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRF_QTDE_REC_PRODUCAO'
              Title.Alignment = taCenter
              Title.Caption = 'Produzida'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Conclusao'
              Title.Alignment = taCenter
              Title.Caption = 'Conclus'#227'o'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED_DTENTRADA'
              Title.Alignment = taCenter
              Title.Caption = 'Entrada'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED_DTSAIDA'
              Title.Alignment = taCenter
              Title.Caption = 'Entrega'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dias'
              Title.Alignment = taCenter
              Width = 45
              Visible = True
            end>
        end
        object Memo: TMemo
          Left = 16
          Top = 120
          Width = 145
          Height = 89
          Lines.Strings = (
            'Memo')
          ScrollBars = ssVertical
          TabOrder = 1
          Visible = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 1348
        Height = 144
        Align = alTop
        Caption = 'Filtro'
        TabOrder = 1
        ExplicitWidth = 1464
        object Label3: TLabel
          Left = 8
          Top = 22
          Width = 90
          Height = 14
          Alignment = taRightJustify
          Caption = 'N'#250'mero do Pedido:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 223
          Top = 23
          Width = 35
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 608
          Top = 67
          Width = 25
          Height = 14
          Caption = 'Data:'
        end
        object Label7: TLabel
          Left = 730
          Top = 68
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
        object Label9: TLabel
          Left = 610
          Top = 95
          Width = 24
          Height = 14
          Caption = 'Dias:'
        end
        object Label10: TLabel
          Left = 580
          Top = 119
          Width = 54
          Height = 14
          Caption = 'Conclus'#227'o:'
        end
        object EdPedidoNumero: TEdit
          Left = 100
          Top = 19
          Width = 85
          Height = 22
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          MaxLength = 8
          ParentFont = False
          TabOrder = 0
        end
        object EdClienteCodigo: TEdit
          Left = 260
          Top = 19
          Width = 43
          Height = 22
          CharCase = ecUpperCase
          Color = clWhite
          MaxLength = 5
          TabOrder = 1
          OnExit = EdClienteCodigoExit
        end
        object CbCliente: TComboBoxRw
          Left = 304
          Top = 19
          Width = 513
          Height = 22
          TabOrder = 2
          CharCase = ecUpperCase
          LookupSelect = 'CLI_RAZAO'
          LookupOrderBy = 'CLI_RAZAO'
          LookupTable = 'cli0000'
          OnSelect = CbClienteSelect
          GridAutoSize = False
          LookupSource = CbCliente.InternalSource
          LookupKeyField = 'CLI_CODIGO'
          ShowButton = True
          LookupTableShare = 'CLIENTES'
          AutoF8WinTitulo = 'Clientes'
          AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          Tabela = 'cli0000'
          CamposCarregar = 'CLI_RAZAO'
          CamposRetornar = 'CLI_CODIGO'
          CamposOrdernar = 'CLI_RAZAO'
          Compartilhar = 'CLIENTES'
          Localizado = False
          CodigoEmpresa = 0
          ResetaCampos = False
          MultiEmpresa = False
          Localizar = False
          CarregarCombo = False
          itemindex = 0
          style = csDropDown
        end
        object rbEntrada: TRadioButton
          Left = 636
          Top = 46
          Width = 113
          Height = 17
          Caption = 'Entrada'
          TabOrder = 3
        end
        object rbPrevista: TRadioButton
          Left = 749
          Top = 47
          Width = 70
          Height = 17
          Caption = 'Entrega'
          Checked = True
          TabOrder = 4
          TabStop = True
        end
        object RxDataInicial: TDateEdit
          Left = 636
          Top = 65
          Width = 90
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ButtonWidth = 20
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 5
        end
        object RxDataFinal: TDateEdit
          Left = 748
          Top = 65
          Width = 89
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ButtonWidth = 20
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 6
        end
        object BitBtn2: TBitBtn
          Left = 853
          Top = 38
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
          TabOrder = 7
        end
        object BitPesquisar: TBitBtn
          Left = 853
          Top = 13
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
          TabOrder = 8
          OnClick = BitPesquisarClick
        end
        object Bit_Sair: TBitBtn
          Left = 853
          Top = 63
          Width = 100
          Height = 25
          Hint = 'Sair'
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
          TabOrder = 9
          OnClick = Bit_SairClick
        end
        object cbbDias: TComboBox
          Left = 636
          Top = 90
          Width = 109
          Height = 22
          Style = csOwnerDrawFixed
          ItemIndex = 0
          TabOrder = 10
          Text = 'Maior igual que'
          Items.Strings = (
            'Maior igual que'
            'Igual '#225
            'Menor igual que')
        end
        object SpinDias: TJvSpinEdit
          Left = 748
          Top = 90
          Width = 57
          Height = 22
          TabOrder = 11
        end
        object grpProduto: TGroupBox
          Left = 5
          Top = 45
          Width = 572
          Height = 92
          Caption = 'Produto'
          TabOrder = 12
          object Label5: TLabel
            Left = 4
            Top = 28
            Width = 40
            Height = 14
            Caption = 'Produto:'
          end
          object Label8: TLabel
            Left = 11
            Top = 55
            Width = 33
            Height = 14
            Caption = 'Grade:'
          end
          object CbGrade: TComboBoxRw
            Left = 45
            Top = 51
            Width = 493
            Height = 22
            TabOrder = 0
            CharCase = ecUpperCase
            LookupSelect = 'prg_descricao'
            LookupOrderBy = 'prg_descricao'
            LookupTable = 'prd_grade'
            GridAutoSize = False
            LookupSource = CbGrade.InternalSource
            LookupKeyField = 'PRG_REGISTRO'
            ShowButton = True
            LookupTableShare = 'TABELAS'
            AutoF8WinTitulo = 'Grade'
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
          object cbProduto: TSgDbSearchCombo
            Left = 46
            Top = 24
            Width = 493
            Height = 22
            TabOrder = 1
            LookupSelect = 'PRD_codigo,prd_refer,descricao,prd_und'
            LookupOrderBy = 'descricao'
            LookupTable = 'prd0000'
            LookupDispl = 'DESCRICAO'
            OnSelect = cbProdutoSelect
            GridAutoSize = False
            LookupSource = qProd
            LookupKeyField = 'PRD_codigo'
            ShowButton = True
            LookupTableShare = 'TABELAS'
            AutoF8WinTitulo = 'Produtos'
            AutoF8ColumnsTitulo = 'C'#243'digo, Refer'#234'ncia, Descricao, Unidade'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
          end
        end
        object cbbConclusao: TComboBox
          Left = 636
          Top = 114
          Width = 109
          Height = 22
          Style = csOwnerDrawFixed
          ItemIndex = 0
          TabOrder = 13
          Text = 'Maior igual que'
          Items.Strings = (
            'Maior igual que'
            'Igual '#225
            'Menor igual que')
        end
        object SpinConclusao: TJvSpinEdit
          Left = 748
          Top = 114
          Width = 57
          Height = 22
          MaxValue = 100.000000000000000000
          TabOrder = 14
        end
        object btnEnviar: TBitBtn
          Left = 853
          Top = 88
          Width = 100
          Height = 25
          Hint = 'Baixar'
          Caption = '&Enviar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
            333333333333337FF3333333333333903333333333333377FF33333333333399
            03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
            99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
            99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
            03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
            33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
            33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
            3333777777333333333333333333333333333333333333333333}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnClick = btnEnviarClick
        end
        object btnAtualizar: TBitBtn
          Left = 853
          Top = 114
          Width = 100
          Height = 25
          Hint = 'Atualizar Produ'#231#227'o'
          Caption = '&Atualizar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000003
            33333333777777733333333330CCC03333333333F7777733F3333330330C0330
            33333337337773373333333333303333333333F33337333333F3303333333333
            3033373333333333373333333333333333333F3333333333333F033333333333
            3303733333333333337333333333333333333F3333333333333F033333333333
            3303733333333333FF7333333333333000333FFFFF33333777FF000003333307
            B70377777F333377777F09990333330BBB0377777F333377777F099903333307
            B70377777F3333777773099903333330003377777F3333377733000003333330
            3333777773F3F3F7333333333030303333333333373737333333}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnClick = btnAtualizarClick
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 422
        Width = 1348
        Height = 151
        Align = alBottom
        Caption = 'Informa'#231#245'es do Pedido'
        TabOrder = 2
        ExplicitWidth = 1464
        object Label1: TLabel
          Left = 251
          Top = 27
          Width = 35
          Height = 14
          Caption = 'Cliente:'
        end
        object Label2: TLabel
          Left = 47
          Top = 51
          Width = 63
          Height = 14
          Caption = 'Observa'#231#227'o:'
        end
        object Label11: TLabel
          Left = 790
          Top = 27
          Width = 89
          Height = 14
          Caption = 'Conclus'#227'o Pedido:'
        end
        object Label12: TLabel
          Left = 75
          Top = 27
          Width = 35
          Height = 14
          Alignment = taRightJustify
          Caption = 'Pedido:'
        end
        object DBEdit1: TDBEdit
          Left = 288
          Top = 24
          Width = 74
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'CLI_CODIGO'
          DataSource = dsPedidoItem
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 364
          Top = 24
          Width = 409
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'CLI_RAZAO'
          DataSource = dsPedidoItem
          ReadOnly = True
          TabOrder = 1
        end
        object DBMemo1: TDBMemo
          Left = 112
          Top = 48
          Width = 845
          Height = 97
          DataField = 'PED_OBSERVACAO'
          DataSource = dsPedidoItem
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object dbedtConclusaoPedido: TDBEdit
          Left = 883
          Top = 24
          Width = 74
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'ConclusaoPedido'
          DataSource = dsPedidoItem
          ReadOnly = True
          TabOrder = 3
        end
        object dbedtPED_CODIGO: TDBEdit
          Left = 112
          Top = 24
          Width = 105
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'PED_CODIGO'
          DataSource = dsPedidoItem
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
    object ts2: TTabSheet
      Caption = 'Requisi'#231#227'o de Material'
      ImageIndex = 1
      OnShow = ts2Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox4: TGroupBox
        Left = 0
        Top = 97
        Width = 1348
        Height = 476
        Align = alClient
        Caption = 
          'Produtos Necess'#225'rios na Produ'#231#227'o - Para atendimento Manual duplo' +
          '  clique sobre o material'
        TabOrder = 0
        ExplicitWidth = 1464
        object dbgrdRequisicao: TDBGrid
          Left = 2
          Top = 16
          Width = 1460
          Height = 458
          Align = alClient
          Color = 16776176
          DataSource = dsRequisicaoMaterial
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
              FieldName = 'OrdemProducao'
              Title.Alignment = taCenter
              Title.Caption = 'Ordem de Produ'#231#227'o'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProdutoReferencia'
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia'
              Width = 164
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProdutoDescricao'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 486
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantidade'
              Title.Alignment = taCenter
              Width = 140
              Visible = True
            end>
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 1348
        Height = 97
        Align = alTop
        Caption = 'Atendimento Autom'#225'tico'
        TabOrder = 1
        ExplicitWidth = 1464
        object Label13: TLabel
          Left = 16
          Top = 24
          Width = 598
          Height = 14
          Caption = 
            'Para tentar atender as necessidades da produ'#231#227'o informe os almox' +
            'arifados de entrada e sa'#237'das e clique no bot'#227'o '#39'Atender'#39
        end
        object Label14: TLabel
          Left = 16
          Top = 48
          Width = 155
          Height = 14
          Caption = 'Almoxarifado de Sa'#237'da (Adjutor)'
        end
        object Label15: TLabel
          Left = 456
          Top = 48
          Width = 214
          Height = 14
          Caption = 'Almoxarifado de Entrada (Adjutor Produ'#231#227'o)'
        end
        object BitBtn1: TBitBtn
          Left = 845
          Top = 16
          Width = 100
          Height = 25
          Hint = 'Baixar'
          Caption = '&Atender'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
            333333333333337FF3333333333333903333333333333377FF33333333333399
            03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
            99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
            99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
            03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
            33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
            33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
            3333777777333333333333333333333333333333333333333333}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn3: TBitBtn
          Left = 845
          Top = 56
          Width = 100
          Height = 25
          Hint = 'Atualizar Produ'#231#227'o'
          Caption = '&Atualizar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000003
            33333333777777733333333330CCC03333333333F7777733F3333330330C0330
            33333337337773373333333333303333333333F33337333333F3303333333333
            3033373333333333373333333333333333333F3333333333333F033333333333
            3303733333333333337333333333333333333F3333333333333F033333333333
            3303733333333333FF7333333333333000333FFFFF33333777FF000003333307
            B70377777F333377777F09990333330BBB0377777F333377777F099903333307
            B70377777F3333777773099903333330003377777F3333377733000003333330
            3333777773F3F3F7333333333030303333333333373737333333}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn3Click
        end
        object edtAlmoxarifadoSaidaCodigo: TEdit
          Left = 16
          Top = 67
          Width = 43
          Height = 22
          CharCase = ecUpperCase
          Color = clWhite
          MaxLength = 5
          TabOrder = 2
          OnExit = edtAlmoxarifadoSaidaCodigoExit
        end
        object cbAlmoxarifadoSaida: TComboBoxRw
          Left = 60
          Top = 67
          Width = 361
          Height = 22
          TabOrder = 3
          OnExit = cbAlmoxarifadoSaidaExit
          OnChange = cbAlmoxarifadoSaidaChange
          CharCase = ecUpperCase
          LookupSelect = 'AMX_DESCRI'
          LookupOrderBy = 'AMX_DESCRI'
          LookupTable = 'ALMOX0000'
          GridAutoSize = False
          LookupSource = cbAlmoxarifadoSaida.InternalSource
          LookupKeyField = 'AMX_CODIGO'
          ShowButton = True
          LookupTableShare = 'TABELAS'
          AutoF8WinTitulo = 'Almoxarifados'
          AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          Tabela = 'ALMOX0000'
          CamposCarregar = 'AMX_DESCRI'
          CamposRetornar = 'AMX_CODIGO'
          CamposOrdernar = 'AMX_DESCRI'
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
        object dblkcbbAlmoxarifadoProducao: TDBLookupComboBox
          Left = 456
          Top = 66
          Width = 369
          Height = 22
          KeyField = 'Id'
          ListField = 'Descricao'
          ListSource = dsAlmoxarifadoProducao
          TabOrder = 4
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Envio de Produto/Mat'#233'ria Prima para Produ'#231#227'o'
      ImageIndex = 2
      OnShow = TabSheet1Show
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 1348
        Height = 573
        Align = alClient
        Caption = 'Informa'#231#245'es para o Envio'
        TabOrder = 0
        object Label16: TLabel
          Left = 8
          Top = 136
          Width = 162
          Height = 14
          Caption = 'Almoxarifado de Origem (Adjutor)'
        end
        object Label18: TLabel
          Left = 376
          Top = 136
          Width = 54
          Height = 14
          Caption = 'Saldo Atual'
        end
        object Label20: TLabel
          Left = 376
          Top = 208
          Width = 83
          Height = 14
          Caption = 'Qtde '#224' Transferir'
        end
        object Label21: TLabel
          Left = 8
          Top = 206
          Width = 69
          Height = 14
          Caption = 'No.documento'
        end
        object Label17: TLabel
          Left = 504
          Top = 205
          Width = 175
          Height = 14
          Caption = 'Almoxarifado de Destino (Produ'#231#227'o)'
        end
        object GroupBox7: TGroupBox
          Left = 6
          Top = 16
          Width = 495
          Height = 112
          Caption = 'Buscar'
          TabOrder = 0
          object Label22: TLabel
            Left = 16
            Top = 20
            Width = 37
            Height = 14
            Caption = 'Produto'
          end
          object CbProdutoEnvio: TcxLookupComboBox
            Left = 16
            Top = 36
            Properties.KeyFieldNames = 'PRD_CODIGO'
            Properties.ListColumns = <
              item
                Caption = 'Refer'#234'ncia'
                FieldName = 'PRD_REFER'
              end
              item
                Caption = 'Descri'#231#227'o'
                FieldName = 'PRD_DESCRI'
              end
              item
                Caption = 'Unidade'
                FieldName = 'PRD_UND'
              end>
            Properties.ListSource = DataSource1
            Style.LookAndFeel.Kind = lfStandard
            StyleDisabled.LookAndFeel.Kind = lfStandard
            StyleFocused.LookAndFeel.Kind = lfStandard
            StyleHot.LookAndFeel.Kind = lfStandard
            TabOrder = 0
            OnClick = CbProdutoEnvioClick
            OnExit = CbProdutoEnvioExit
            Width = 465
          end
          object RadioButton2: TRadioButton
            Left = 16
            Top = 64
            Width = 113
            Height = 17
            Caption = 'Refer'#234'ncias'
            Checked = True
            TabOrder = 1
            TabStop = True
            OnEnter = RadioButton2Enter
          end
          object EdProdutoDescricao: TEdit
            Left = 16
            Top = 80
            Width = 465
            Height = 22
            TabStop = False
            Color = 14145495
            ReadOnly = True
            TabOrder = 2
          end
        end
        object GroupBox8: TGroupBox
          Left = 504
          Top = 16
          Width = 441
          Height = 182
          Caption = 'Saldos dos Almoxarifados'
          TabOrder = 1
        end
        object CbAlmoxarifadoOrigem: TcxLookupComboBox
          Left = 8
          Top = 152
          Properties.KeyFieldNames = 'AMX_CODIGO'
          Properties.ListColumns = <
            item
              Caption = 'C'#243'digo'
              FieldName = 'AMX_CODIGO'
            end
            item
              Caption = 'Descri'#231#227'o'
              FieldName = 'AMX_DESCRI'
            end>
          Properties.ListSource = DsAlmoxarifadoOrigem
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 2
          OnClick = CbAlmoxarifadoOrigemClick
          OnExit = CbAlmoxarifadoOrigemExit
          Width = 361
        end
        object CurSaldoOrigem: TCurrencyEdit
          Left = 376
          Top = 152
          Width = 121
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.000'
          ReadOnly = True
          TabOrder = 3
        end
        object CurSaldoTransferir: TCurrencyEdit
          Left = 376
          Top = 224
          Width = 121
          Height = 21
          AutoSize = False
          DisplayFormat = '###,###,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object EdDocumento: TEdit
          Left = 8
          Top = 222
          Width = 121
          Height = 22
          TabOrder = 4
        end
        object EdAlmoxarifadoOrigemDescricao: TEdit
          Left = 8
          Top = 176
          Width = 489
          Height = 22
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 6
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 504
          Top = 223
          Width = 441
          Height = 22
          KeyField = 'Id'
          ListField = 'Descricao'
          ListSource = dsAlmoxarifadoProducao
          TabOrder = 7
        end
        object BitBtn4: TBitBtn
          Left = 845
          Top = 536
          Width = 100
          Height = 25
          Hint = 'Baixar'
          Caption = '&Enviar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
            333333333333337FF3333333333333903333333333333377FF33333333333399
            03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
            99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
            99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
            03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
            33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
            33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
            3333777777333333333333333333333333333333333333333333}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = BitBtn4Click
        end
      end
    end
  end
  object PanelAguarde: TPanel [1]
    Left = 24
    Top = 522
    Width = 293
    Height = 56
    AutoSize = True
    Caption = 'PanelAguarde'
    Color = clWhite
    TabOrder = 1
    Visible = False
    object JvGIFAnimator2: TJvGIFAnimator
      Left = 1
      Top = 1
      Width = 291
      Height = 54
      AsyncDrawing = True
      Center = True
      Image.Data = {
        DD0E000047494638396123013600E60000EAEAEAFFFFFFB0B0B00000005576D5
        FFC60013275F3854A34866BD304A945475D34D6CC61A316F2037785374D15171
        CD415EB15070CC5575D4273F85415EB24D6DC72037792F49932740851327601A
        306F273F845373D10001020000016060600C183A5373D01B31704866BE09122D
        0409161022526C77980E1D473854A21F3678060D2012255A01020403060E0203
        085374D2415FB23954A302040903050D4766BD01020512255B6C77994C6CC50E
        1D48060D1F2740860409155171CE4867BED1D1D1112253070D21304A951A306E
        09132D5576D412255910215209122C4E6DC81F36773955A44C6BC50E1E480C18
        3B0101044765BC5474D25677D63853A2263F84FFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000021FF0B4E45545343415045322E3003
        0100000021F904050A0056002C00000000230136000007FF8001828384858687
        88898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7
        A8A9AAABACADAEAFA84002B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7
        C8B740870200CECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3D202CCE4
        E8E9EAEBECEDEEEFEDE686CDF0F5F6F7F8F9FAECF285F4FB00030A1C48105D3F
        42FF0A2A5CC8B0A1BE8383123A9C48B1A2C56C100549BCC8B1A3478519036CFC
        48B2A4C978E7AE0D58B9F2594B682C59C27CE952A6B398346BDE1CB07326CF9A
        2D71DA3C499462C891D15E2AFDA973DA5000347FE694B6B427D0A44CAD16DD3A
        F128B6AA50B38675CA33AAD8B1D5C09A45ABB52DD7B705FFBDAA944A176B4C9D
        66870A253B3667D0AC53A7C21D0C50AE359C4D13CF641BD6A660BB88F10216FB
        98B0657B86D39E0DBC792F56B7549732153A9AF2D9CBA8DF65A6269873E8A6A5
        41BF66BCD6ADDFBA8C53EBE6B69A2FE4BF77D9E62D1D7CF66DD84F8FA3ADBCBB
        39B5DECEA34B87077DBAF5EBE3AA63DFCE1D63CAEEE0C35BD32EBE3C77F2E6D3
        4F47FF8134CE0FD1DABB67091F9AFCF903EA3FBB3F5FBF33FEEEF9070080A409
        48A05006E2B752820A32889F83FDC5A7607E123658E183E37DC75A011C76E821
        871E2445C08824963862883099A8220128BAB4A2892DDEF46289314235238935
        7A30C58D2C8AC8638E3CF698E28F3EDE082491431A59E4FF8C3546835E071F46
        5940074B2A60A504574A406592586679E5962E7A292698328AD9259664DA78E6
        9A685669669A1D98B9269C729E49679D6D7229E79D6C66C9679F56FE69C49B19
        CEA392941FB6E0A6031C48D1A8038AEA19020C8C561A69989566FAE8A5654EAA
        A9A58B6ACAA99A8F525A2A0C36845AEAA82D7CEA29A8927E9A6AACA2AAEAE9AC
        989EBAAAAD8C8EEAA486D3CC80A8873324E5C303C8261BC1B2C8160BCD0CCA32
        1BED0BC64A6BEDB2D43E7BEDB5D9BA746CB4D63AFB0CB4E04E5B6DB9CC76EB0C
        B9DBA67B6EBB11A80B00BBF0CA4B6FBBF6A2AB6CBEFA625BA83FD7B8306C872E
        4443C3020857A070C20B17AC2DC30BE7D0B0C1114B5C71FF050E8F0BF1C61853
        CC71C43478FC31C219AF7BF1C5213F7C72C225CF3B32CB22AFBC40CA1ACB4C72
        CC2BB7EC82CD3757835E0F0373584234252060F4D148FF80C0D0D0F43082D24F
        276D34D3CF142D75D23D101DF5D6586B7D35D2543B63F5D74F67DD34D947870D
        C0D8649B5D35DA657B8DB6DA6C7F4D37DC4BCB5D83DDFF2274CD0A4117204434
        2B506038048723AEF80A8427AEF8E314300ECD0E90571E79E396272EF93385C7
        90B9E19B3BD3F9E710EC8039E9A1034039E931A43EBAE39E837E3AEC870F3E79
        EC9FBB8E7BE6BAD3FE78EABF1A6A0D098193100D09321CA07C0AC92F9FBCF1D0
        14E1FCF4CC1F00FD33C8533FFDF5CE64AFFDF2DC03E0FDFFF7D61F4F3EF8E69F
        5F7EF4EAAF8F7DFBE18FFF7DFCCD934FBFFA49A4CF84FD7D47740D0881034134
        4070810418B0800744A000A141C0042230810B7C46031FE8C00B44D01913A420
        040758C10A5E100019D4A0013F18421192B0830E7C020745F8C013A2F0802E7C
        610262F8421AA2F083C10398355010381444430713C0C0068418C4220ED187D0
        00E2108D48442122F1192858621379D0C4273AC3094CCCE20474F0432D4A7103
        56044014BD48451E84718C64046317BF98452E26718A6CC4C019E3F8C539A651
        8D6FA42311ED9846373E0758D23041E04C108D20A8C0020D4064221779484242
        C3048C8CA4221DF90C484A3292947486250F79C9066412FF009BECA4270BC949
        459A12919F0CE5292749CA52AE72948F14252B63294B15A4D29597BCE52B4BA9
        4B5C32F29339F49B355830C84232E098C8D44032357003632AF399CB64A633A3
        99CC663E129AD494E635B389CC234C939B2CF8A608A869CD4A8E939BDA34E739
        D709CD723AE306E854A637B7894E7782329E0C08273DD959CDFE69E41A38C880
        01062A508216F404D13841410DCA50844243A10C5DE8401DFA0C884AB4A1098D
        684429EA0C8B6A74A219FD2841711052911A80A30008A8494F5A5291A2D4A31F
        7DE94A59FAD099CA74A524F51920D5C3D3F5ECB4A740DD0D7A824A54B80CB5A8
        4825CA5193CAD48F2CB5A950B5C853A34AD5864CB5AA583125C855B3CAD57D84
        4416C908AB58C74AD6B29AF5AC682DEB3260C1D6B6BAF5AD708DAB5CE74AD7BA
        DAF5AE78CD6B5B03010021F904050A0056002C11001C001F000C000007748004
        8283848256878856058B8C8D8B12900A92919389888E98050E1C30219B9C9E9B
        9687998E0FA711A8A9A8A38AA58C154DB10BB4B3B4ADAF8C350823BCBEBFB8B9
        051410C4C5C6C7C1B907CCCDCECCCAAF09D317D4D609D1A513DBDC1B18DDD999
        0DE3E4E51616E1981AEBEC0C22EFEEE98E810021F904050A0056002C24001C00
        1F000C0000077380048283848256878856058B8C8D8B0A129190929289888E98
        050E9B9C9D9B9687998E0FA411A5A6A8A08AA28C0BAE15B0AFB1AAAC8C08B7B8
        B93F08B4B50514C010C1C2C4BDB53207C929C8CAC8C6AC1709D2D1D3D4CFA213
        181BDAD9DDDBD7992A160DE3E4E6E2E0980CEBEC1AED1AE98E810021F904050A
        0056002C37001C001F000C0000077780048283848256878856058B8C8D8B0A90
        1291929189888E9805210E9C309B9D9B9687998E0F3EA611A8A9A6A28AA48C15
        0BB2B1B3B4ADAF8C233F08BABCBEBCB7B80514C4C510C7C8C1B807CCCDCE2907
        CAAF1709D5D6D709D2A4181BDC133CDDDFDCDA990D4BE6E8E90DE498221AEEEF
        0CF2F0EC8E810021F904050A0056002C4A001C001F000C000007748004828384
        8256878856058B8C8D8B0A901292919389888E98050E1C9B9C219D9B9687998E
        11A60FA8A7A7A28AA48C15B00B39B1B2B0ACAE8C08BA51BBBD08B7B805103114
        C3C6C5C3C0B807CCCDCECCCAAE09D3D4D5D3D1A41B13DADB183CDEDED899160D
        E5E6E70DE2980CEC1AEDEF0CEA8E810021F904050A0056002C5D001C001F000C
        0000077480048283848256878856058B8C8D8B120A9190929389888E98051C0E
        219C9B9D9E9687998E11A6A7A80F0FA28AA48C0BB0B115B3B1ACAE8C2308BABB
        BC08B6B705141031C2C3C6C4BFB707CBCC54CD07C9AE09D317D4D5D4D1A413DB
        DC18DD13D9990DE3E4E5E3E1981A0C2244EBECEE1AE88E810021F904050A0056
        002C70001C001F000C0000077480048283848256878856058B8C8D8B46120A92
        91939189888E99050E1C30219C9D9F9C97879A8E3E0FA911AAABA9A48AA68C15
        0BB3B4B6B5AFB18C08BCBDBEBCB9BA051031C4C6C714C1BA07CCCDCECCCAB109
        D3D4D5D3D1A613DADB181BDDDDD89A160DE4E3E5E5E1991A0C22ECEEEBECE98E
        810021F904050A0056002C83001C001F000C0000077780530483848504568889
        56058C8D8E8C0A12929193948A898F99050E9C30219E1C9D3097889A8F110FA9
        A8AAABA48BA68D150BB3B2B4B5AEB08D233508BDBBBEBBB8B905311410C7C6C8
        C5C2B907CECFD0CECCB009D5D643D717D3A61B13DEDFE03CDB9A2A160DE6E5E7
        EAE3991AEE0CF0EF22EEEC8F810021F904050A0056002C96001C001F000C0000
        077380048283848256878856058B8C8D8B0A901291929189888E9805210E9C9D
        9E0E9687998E0FA511A7A8A8A18AA38C15AF39B00BB1AFABAD8C083FB9BBBC08
        B6B7053110C3C4C2C4BFB707CACBCCCAC8AD0917D1D2D4D4CFA318D91B13DADB
        D9D7992A0DE316E5E4E5E0980C1AEB22EDEFE98E810021F904050A0056002CA9
        001C001F000C0000077480048283848256878856058B8C8D8B0A901292919389
        888E98050E219B1C9D309D9687998E11A60FA8A7A7A28AA48C15B00B39B1B2B0
        ACAE8C08BABBBCBAB7B80510C2C314C431BFB807CACB2932CCC8AE09D2D317D4
        09D0A41BDA13DCDD18DCD8990D2AE3E5E4E5E19822EB1A0CECEDEEE98E810021
        F904050A0056002CBC001C001F000C0000077580048283848256878856058B8C
        8D8B120A9190929389888E98051C0E219C9E9F9687998E0F11A5A7A63EA6A18A
        A38C0BB0B115B3B1ACAE8C0835B9BBBC23B6B7051410C2C3C5C4BFB707CA32CB
        CD29C8AE0917D2D4D3D6D0A318131BDBDCDEDBD8990DE32A16E4E6E3E1980C22
        EDEEEC44ECEA8E810021F904050A0056002CCF001C001F000C00000770800482
        83848256878856058B8C8D8B12900A92919389888E98050E1C9B9D9E0E968799
        8E0FA511A6A7A9A18AA38C0BAF15B0B1B0ABAD8C0823B8B9BABAB5B6051014C1
        C2C3C4BEB607C9CACBC9C7AD09D0D1D2D0CEA31B1318D8D7DBD9D599160DE0E1
        E3E2DE980CE8E91A22EAE68E810021F904050A0056002CE2001C001F000C0000
        077380048283848256878856058B8C8D8B0A461290939489888E98050E9B9C9D
        300E9687998E110FA6A5A7A7A18AA38C0B15AFB0B1B2ABAD8C3F08B9BABB35B5
        B6053110C214C3C5BEB63207CACBCC07C7AD1709D2D1D3D3CFA313D9DA181BDD
        DCD7992A160DE4E5E6E0980CEAEB1AED22EAE88E810021F904050A0056002CF5
        001C001F000C0000077580048283848256878856058B8C8D8B0A901291929189
        888E9805210E301C9C9F9F9687998E0FA63E11A7AAA28AA48C150BB1B0B2B3AC
        AE8C0823B935BBBDB6B705311410C4C3C6C3BFB707CBCC32CECCC9AE1709D4D5
        D609D1A4181B13DDDBDFDBD99916E40DE5E716E2980C1AEC22EDEEEDEA8E8100
        3B}
      Threaded = False
    end
    object Panel1: TPanel
      Left = 12
      Top = 9
      Width = 273
      Height = 17
      Caption = 'Comunicando com os Servidores'
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
    end
  end
  object CdsPedidoItens: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10't1.EMP_CODIGO,'#13#10't1.PRF_REGISTRO,'#13#10' T4.CLI_CODIGO,'#13#10' T5.C' +
      'LI_RAZAO,'#13#10't4.PED_CODIGO,'#13#10' t2.PRD_CODIGO,'#13#10't4.PED_OBSERVACAO,'#13#10 +
      ' T1.PRD_REFER,'#13#10' COALESCE(T2.PRD_DESCRI,'#39#39')||'#39' '#39'||coalesce(T3.PR' +
      'G_DESCRICAO,'#39#39')AS DESCRICAO,'#13#10#13#10' t2.PRD_DESCRI,'#13#10' T2.PRD_UND,'#13#10' ' +
      't6.PTI_SIGLA,'#13#10' T3.PRG_DESCRICAO,'#13#10#13#10' T4.PED_DTENTRADA,'#13#10' T4.PED' +
      '_DTSAIDA,'#13#10' T1.PRF_QTDE,'#13#10' T1.PRF_QTDE_ENV_PRODUCAO,'#13#10' T1.PRF_QT' +
      'DE_REC_PRODUCAO,'#13#10#13#10' (select sum(t10.PRF_QTDE_ENV_PRODUCAO) from' +
      ' PED_IT01 T10 where t10.PED_CODIGO = t1.PED_CODIGO) as  PRF_QTDE' +
      '_ENV_PRODUCAO_PEDIDO,'#13#10' (select sum(t10.PRF_QTDE_REC_PRODUCAO) f' +
      'rom PED_IT01 T10 where t10.PED_CODIGO = t1.PED_CODIGO) as  PRF_Q' +
      'TDE_REC_PRODUCAO_PEDIDO'#13#10'FROM'#13#10'PED_IT01 T1'#13#10'JOIN PRD0000 T2 ON (' +
      'T2.PRD_CODIGO = '#39'2541'#39')'#13#10'JOIN PED0000 T4 ON (T4.PED_CODIGO = T1.' +
      'PED_CODIGO)'#13#10'JOIN CLI0000 T5 ON (T5.CLI_CODIGO = T4.CLI_CODIGO)'#13 +
      #10'LEFT JOIN PRD_TIPO T6 ON (T6.PTI_CODIGO = T2.PTI_CODIGO)'#13#10'LEFT ' +
      'JOIN PRD_GRADE T3 ON (T3.PRG_REGISTRO = -1)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    BeforeInsert = CdsPedidoItensBeforeInsert
    OnCalcFields = CdsPedidoItensCalcFields
    CommandText = 
      'SELECT'#13#10't1.EMP_CODIGO,'#13#10't1.PRF_REGISTRO,'#13#10' T4.CLI_CODIGO,'#13#10' T5.C' +
      'LI_RAZAO,'#13#10't4.PED_CODIGO,'#13#10' t2.PRD_CODIGO,'#13#10't4.PED_OBSERVACAO,'#13#10 +
      ' T1.PRD_REFER,'#13#10' COALESCE(T2.PRD_DESCRI,'#39#39')||'#39' '#39'||coalesce(T3.PR' +
      'G_DESCRICAO,'#39#39')AS DESCRICAO,'#13#10#13#10' t2.PRD_DESCRI,'#13#10' T2.PRD_UND,'#13#10' ' +
      't6.PTI_SIGLA,'#13#10' T3.PRG_DESCRICAO,'#13#10#13#10' T4.PED_DTENTRADA,'#13#10' T4.PED' +
      '_DTSAIDA,'#13#10' T1.PRF_QTDE,'#13#10' T1.PRF_QTDE_ENV_PRODUCAO,'#13#10' T1.PRF_QT' +
      'DE_REC_PRODUCAO,'#13#10#13#10' (select sum(t10.PRF_QTDE_ENV_PRODUCAO) from' +
      ' PED_IT01 T10 where t10.PED_CODIGO = t1.PED_CODIGO) as  PRF_QTDE' +
      '_ENV_PRODUCAO_PEDIDO,'#13#10' (select sum(t10.PRF_QTDE_REC_PRODUCAO) f' +
      'rom PED_IT01 T10 where t10.PED_CODIGO = t1.PED_CODIGO) as  PRF_Q' +
      'TDE_REC_PRODUCAO_PEDIDO'#13#10'FROM'#13#10'PED_IT01 T1'#13#10'JOIN PRD0000 T2 ON (' +
      'T2.PRD_CODIGO = '#39'2541'#39')'#13#10'JOIN PED0000 T4 ON (T4.PED_CODIGO = T1.' +
      'PED_CODIGO)'#13#10'JOIN CLI0000 T5 ON (T5.CLI_CODIGO = T4.CLI_CODIGO)'#13 +
      #10'LEFT JOIN PRD_TIPO T6 ON (T6.PTI_CODIGO = T2.PTI_CODIGO)'#13#10'LEFT ' +
      'JOIN PRD_GRADE T3 ON (T3.PRG_REGISTRO = -1)'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1144
    Top = 241
    object CdsPedidoItensCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsPedidoItensCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object CdsPedidoItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsPedidoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 201
    end
    object CdsPedidoItensPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object CdsPedidoItensPED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
    end
    object CdsPedidoItensPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 15
      Size = 5
    end
    object CdsPedidoItensPRF_QTDE_ENV_PRODUCAO: TFMTBCDField
      FieldName = 'PRF_QTDE_ENV_PRODUCAO'
      Precision = 15
      Size = 5
    end
    object CdsPedidoItensPRF_QTDE_REC_PRODUCAO: TFMTBCDField
      FieldName = 'PRF_QTDE_REC_PRODUCAO'
      Precision = 15
      Size = 5
    end
    object CdsPedidoItensConclusao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Conclusao'
      DisplayFormat = '##0.00 %'
      Calculated = True
    end
    object CdsPedidoItensDias: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Dias'
      Calculated = True
    end
    object CdsPedidoItensPED_OBSERVACAO: TBlobField
      FieldName = 'PED_OBSERVACAO'
      Size = 1
    end
    object CdsPedidoItensPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object CdsPedidoItensSelecao: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Selecao'
      Calculated = True
    end
    object CdsPedidoItensPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object CdsPedidoItensPRF_QTDE_ENV_PRODUCAO_PEDIDO: TFMTBCDField
      FieldName = 'PRF_QTDE_ENV_PRODUCAO_PEDIDO'
      Precision = 15
      Size = 5
    end
    object CdsPedidoItensPRF_QTDE_REC_PRODUCAO_PEDIDO: TFMTBCDField
      FieldName = 'PRF_QTDE_REC_PRODUCAO_PEDIDO'
      Precision = 15
      Size = 5
    end
    object CdsPedidoItensConclusaoPedido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ConclusaoPedido'
      DisplayFormat = '##0.00 %'
      Calculated = True
    end
    object CdsPedidoItensPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object CdsPedidoItensPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object CdsPedidoItensPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object CdsPedidoItensPRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      Size = 100
    end
    object CdsPedidoItensEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsPedidoItensPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
  end
  object dsPedidoItem: TDataSource
    DataSet = CdsPedidoItens
    Left = 1232
    Top = 233
  end
  object SqlCdsGrade: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT * FROM prd_grade T1 WHERE T1.prd_codigo = '#39#39' ORDER BY T1.' +
      'prg_descricao'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT * FROM prd_grade T1 WHERE T1.prd_codigo = '#39#39' ORDER BY T1.' +
      'prg_descricao'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1144
    Top = 336
    object SqlCdsGradePRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
      Required = True
    end
    object SqlCdsGradeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsGradePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 4
    end
    object SqlCdsGradePRG_SALDO: TFMTBCDField
      FieldName = 'PRG_SALDO'
      Precision = 15
      Size = 4
    end
    object SqlCdsGradePRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      Size = 100
    end
  end
  object DsGrade: TDataSource
    DataSet = SqlCdsGrade
    Left = 1232
    Top = 328
  end
  object PMMarcar: TPopupMenu
    Images = ImageListaSelect
    Left = 968
    Top = 232
    object SelecionarTodas1: TMenuItem
      Caption = 'Marcar Todas'
      ImageIndex = 0
      OnClick = SelecionarTodas1Click
    end
    object DesmarcarTodas1: TMenuItem
      Caption = 'Desmarcar Todas'
      ImageIndex = 2
      OnClick = DesmarcarTodas1Click
    end
  end
  object ImageListaSelect: TImageList
    Left = 1296
    Top = 48
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      00000000000000000000000000000000000000000000ABABAB00999999009A9A
      9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A009A9A9A0099999900ABABAB00FAFAFA000000000000000000000000000000
      0000CACACA00ADADAD00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAF
      AF00AFAFAF00AFAFAF00B3B3B300E0E0E00000000000A8A8A800A0A0A000A1A1
      A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1
      A100A1A1A100A0A0A000A7A7A700F9F9F9000000000000000000000000000000
      0000D0D0D000B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B6B6B600E1E1E100A7A7A700DADADA00E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600DADADA00ACACAC00000000000000000000000000FBFB
      FB00ADADAD00E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600B1B1B100A9A9A900DDDDDD00E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600DDDDDD00AFAFAF00000000000000000000000000F9F9
      F900B6B6B600ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B4B4B4009B9B9B00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009D9D9D00E4E4E400E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009E9E9E00000000000000000000000000BDBD
      BD00E6E6E600E6E6E600E6E6E600E6E6E600B8B8B80006060600D5D5D500E6E6
      E600E6E6E600E6E6E600E6E6E600AEAEAE009D9D9D00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009F9F9F00000000000000000000000000BDBD
      BD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600171717000000000029292900E5E5E500E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00000000000000000000000000BDBD
      BD00E6E6E600E6E6E600E6E6E600D8D8D8001E1E1E00000000006E6E6E00E6E6
      E600E6E6E600E6E6E600E6E6E600AEAEAE009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00000000000000000000000000BDBD
      BD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E2E2E2000000000000000000000000009A9A9A00E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00000000000000000000000000BDBD
      BD00E6E6E600E6E6E600E5E5E5004646460000000000515151000D0D0D00D7D7
      D700E6E6E600E6E6E600E6E6E600AEAEAE009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00000000000000000000000000BDBD
      BD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E60069696900000000000E0E0E000000000028282800E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00B3B3B300E3E3E300E6E6E600ADAD
      AD00E6E6E600E6E6E600040404000E0E0E00C6C6C600E6E6E6000D0D0D000E0E
      0E00D8D8D800E6E6E600E6E6E600AEAEAE009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00B3B3B300E3E3E300E6E6E600ADAD
      AD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600E6E6E600E6E6
      E6009B9B9B0000000000505050009E9E9E000000000000000000E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00ACACAC00E6E6E600E6E6E600ADAD
      AD00E6E6E600E6E6E600444444009E9E9E00E6E6E600E6E6E6006E6E6E000000
      000074747400E6E6E600E6E6E600AEAEAE009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00ACACAC00E6E6E600E6E6E600ADAD
      AD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600E6E6E600C3C3
      C3000C0C0C0000000000DCDCDC00E5E5E5002B2B2B0000000000E5E5E500E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600ADAD
      AD00E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600D5D5D5000B0B
      0B000F0F0F00D9D9D900E6E6E600AEAEAE009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600ADAD
      AD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600C3C3C3001B1B
      1B00000000009A9A9A00E6E6E600E6E6E600E5E5E5002B2B2B0027272700E5E5
      E500E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E6008989
      8900E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600D3D3
      D3000A0A0A0011111100E6E6E600AEAEAE009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600ADAD
      AD00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B2B2B2009A9A9A00E6E6E600E6E6E600D3D3
      D3008B8B8B00E6E6E600E6E6E600E6E6E600E6E6E6009E9E9E00000000009898
      9800E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600D1D1D1001F1F
      1F00CCCCCC00E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E6008484840097979700E6E6E600ACACAC009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600BDBD
      BD00D9D9D900ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00B0B0B0009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E5E5E500000000002727
      2700E4E4E400E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E6003A3A3A000000
      00007F7F7F00E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E3E3E300B3B3B3009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600E6E6
      E600A9A9A900ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00E9E9E900B5B5B5009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600000000000000
      000098989800E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600DFDFDF00D2D2
      D200E6E6E600E6E6E600DFDFDF001717170006060600CDCDCD00E6E6E600E6E6
      E600BDBDBD000000000000000000000000009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600BDBDBD000000000000000000000000009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E6002B2B2B000000
      000026262600E4E4E400E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600828282000000000061616100E6E6E600E6E6
      E600BDBDBD000000000000000000000000009A9A9A00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009A9A9A00AEAEAE00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600BDBDBD000000000000000000000000009C9C9C00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E5E5E5009393
      9300E0E0E000E6E6E600E6E6E6009D9D9D00AEAEAE00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600DEDEDE001515150007070700E6E6E600E6E6
      E600BDBDBD000000000000000000000000009D9D9D00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E6009F9F9F00AEAEAE00E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600BDBDBD00000000000000000000000000A6A6A600DADADA00E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600DADADA00ADADAD00B1B1B100E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E4E4E400E6E6E600E6E6E600B2B2
      B200F9F9F900000000000000000000000000A9A9A900DDDDDD00E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600DDDDDD00AFAFAF00B1B1B100E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600AAAA
      AA00F9F9F90000000000000000000000000000000000ABABAB00999999009A9A
      9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A9A009A9A
      9A009A9A9A0099999900ABABAB00FAFAFA00E0E0E000B3B3B300AEAEAE00AEAE
      AE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AFAFAF00CFCF
      CF000000000000000000000000000000000000000000A8A8A800A0A0A000A1A1
      A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1
      A100A1A1A100A0A0A000A7A7A700F9F9F900E0E0E000B3B3B300AEAEAE00AEAE
      AE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00AEAEAE00ADADAD00CACA
      CA0000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008000F0008000F0000000E0000000E000
      0000E0000000E0000000E0000000E0000000E0000000E0000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000070000000700000007000000070000000700000007
      00000007000000078000000F8000000F00000000000000000000000000000000
      000000000000}
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'text/plain'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = []
    Left = 1296
    Top = 96
  end
  object vXMLDoc: TXMLDocument
    XML.Strings = (
      
        '<retorno><validado>0</validado><chave>00455509192300172501104301' +
        '2133</chave><resultado>Sistema Validado</resultado></retorno>'
      'd')
    Left = 1344
    Top = 96
    DOMVendorDesc = 'MSXML'
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 1232
    Top = 56
  end
  object CdsBaixar: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'                                              T1.prf_reg' +
      'istro,'#13#10'                                              T1.prd_ref' +
      'er,'#13#10'                                              t1.ped_codigo' +
      ','#13#10'                                              T2.prg_descrica' +
      'o'#13#10'                                          FROM ped_it01 T1'#13#10' ' +
      '                                         LEFT JOIN prd_grade T2 ' +
      'ON (T2.prg_registro = T1.prg_registro)'#13#10'                        ' +
      '                  WHERE T1.prf_qtde_env_producao > T1.prf_qtde_r' +
      'ec_producao'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'                                              T1.prf_reg' +
      'istro,'#13#10'                                              T1.prd_ref' +
      'er,'#13#10'                                              t1.ped_codigo' +
      ','#13#10'                                              T2.prg_descrica' +
      'o'#13#10'                                          FROM ped_it01 T1'#13#10' ' +
      '                                         LEFT JOIN prd_grade T2 ' +
      'ON (T2.prg_registro = T1.prg_registro)'#13#10'                        ' +
      '                  WHERE T1.prf_qtde_env_producao > T1.prf_qtde_r' +
      'ec_producao'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1336
    Top = 248
    object CdsBaixarPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object CdsBaixarPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsBaixarPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object CdsBaixarPRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      Size = 100
    end
  end
  object CdsRequisaoMaterial: TClientDataSet
    PersistDataPacket.Data = {
      9A0000009619E0BD0100000018000000040000000000030000009A000D4F7264
      656D50726F647563616F0100490000000100055749445448020002000F001150
      726F6475746F5265666572656E63696101004900000001000557494454480200
      02001E001050726F6475746F44657363726963616F0200490000000100055749
      44544802000200FF000A5175616E74696461646508000400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 936
    Top = 337
    object CdsRequisaoMaterialOrdemProducao: TStringField
      FieldName = 'OrdemProducao'
      Size = 15
    end
    object CdsRequisaoMaterialProdutoReferencia: TStringField
      FieldName = 'ProdutoReferencia'
      Size = 30
    end
    object CdsRequisaoMaterialProdutoDescricao: TStringField
      FieldName = 'ProdutoDescricao'
      Size = 255
    end
    object CdsRequisaoMaterialQuantidade: TFloatField
      FieldName = 'Quantidade'
      DisplayFormat = '###,###,##0.000'
      currency = True
    end
  end
  object dsRequisicaoMaterial: TDataSource
    DataSet = CdsRequisaoMaterial
    Left = 1012
    Top = 354
  end
  object dsAlmoxarifadoProducao: TDataSource
    DataSet = CdsAlmoxarifadoProducao
    Left = 484
    Top = 274
  end
  object CdsAlmoxarifadoProducao: TClientDataSet
    PersistDataPacket.Data = {
      4F0000009619E0BD0100000018000000020000000000030000004F0002496401
      004900000001000557494454480200020005000944657363726963616F020049
      000000010005574944544802000200FF000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 250
    object CdsAlmoxarifadoProducaoId: TStringField
      FieldName = 'Id'
      Size = 5
    end
    object CdsAlmoxarifadoProducaoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = CdsProdutoEnvio
    Left = 1144
    Top = 64
  end
  object CdsProdutoEnvio: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from PRD0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1079
    Top = 48
    object StringField1: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object StringField3: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object StringField4: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
  end
  object SqlSaldos: TSQLDataSet
    CommandText = 'SELECT * FROM pcd_kardex_saldo('#39'001'#39','#39'00012'#39',null)'
    MaxBlobSize = -1
    Params = <>
    Left = 1016
    Top = 120
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
      Size = 4
    end
  end
  object DspSaldos: TDataSetProvider
    DataSet = SqlSaldos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1070
    Top = 105
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
    Left = 1140
    Top = 121
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
      Precision = 15
      Size = 4
    end
  end
  object DsSaldos: TDataSource
    DataSet = CdsSaldos
    Left = 1193
    Top = 113
  end
  object SqlCdsAlmoxarifadoOrigem: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from ALMOX0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from ALMOX0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1327
    Top = 176
    object SqlCdsAlmoxarifadoOrigemAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxarifadoOrigemAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 35
    end
    object SqlCdsAlmoxarifadoOrigemAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 35
    end
    object SqlCdsAlmoxarifadoOrigemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
  end
  object DsAlmoxarifadoOrigem: TDataSource
    DataSet = SqlCdsAlmoxarifadoOrigem
    Left = 1232
    Top = 160
  end
  object SqlCdsAlmoxarifadoDestino: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from ALMOX0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from ALMOX0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1151
    Top = 184
    object SqlCdsAlmoxarifadoDestinoAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxarifadoDestinoAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 35
    end
    object SqlCdsAlmoxarifadoDestinoAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 35
    end
    object SqlCdsAlmoxarifadoDestinoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
  end
  object DsAlmoxarifadoDestino: TDataSource
    DataSet = SqlCdsAlmoxarifadoDestino
    Left = 1032
    Top = 168
  end
  object qProd: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 652
    Top = 321
  end
end
