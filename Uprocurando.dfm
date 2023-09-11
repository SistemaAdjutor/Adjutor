object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 636
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 936
    Height = 636
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 256
    ExplicitTop = 400
    ExplicitWidth = 185
    ExplicitHeight = 41
    object GroupBox12: TGroupBox
      Left = 1
      Top = 206
      Width = 934
      Height = 139
      Align = alTop
      Caption = 'Pedido de Venda'
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 936
      object Label396: TLabel
        Left = 9
        Top = 57
        Width = 88
        Height = 13
        Caption = 'Desconto Ma&ximo:'
      end
      object ChkPrecoBrutoP: TCheckBox
        Left = 9
        Top = 16
        Width = 121
        Height = 17
        Caption = 'Al&tera Pre'#231'o Bruto'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object ChkPrecoLiqP: TCheckBox
        Left = 284
        Top = 16
        Width = 121
        Height = 17
        Caption = 'Al&tera Pre'#231'o Liquido'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object ChkRelatoriosP: TCheckBox
        Left = 522
        Top = 16
        Width = 175
        Height = 17
        Caption = 'Acesso aos Relat'#243'rios'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object ChkReeMissaoP: TCheckBox
        Left = 284
        Top = 36
        Width = 114
        Height = 17
        Caption = 'Reemiss'#227'o Pedidos'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 3
      end
      object ChkExclusaoPedP: TCheckBox
        Left = 522
        Top = 36
        Width = 175
        Height = 17
        Caption = 'Exclus'#227'o de Pedidos'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object ChkAlteraDescP: TCheckBox
        Left = 9
        Top = 36
        Width = 136
        Height = 17
        Caption = 'Alte&ra Desconto Pedido'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object CheckVisualizaPedidos: TCheckBox
        Left = 284
        Top = 56
        Width = 213
        Height = 17
        Caption = 'Visualizar somente Pedidos do Usu'#225'rio'
        TabOrder = 6
      end
      object ChkFuncaoReajuste: TCheckBox
        Left = 10
        Top = 78
        Width = 213
        Height = 17
        Caption = 'Fun'#231#227'o Reajuste'
        TabOrder = 7
      end
      object ChkCadastroProduto: TCheckBox
        Left = 522
        Top = 78
        Width = 213
        Height = 17
        Caption = 'Cadastra Produto'
        TabOrder = 8
      end
      object CheckVisualizaClientes: TCheckBox
        Left = 284
        Top = 78
        Width = 213
        Height = 17
        Caption = 'Visualizar somente Clientes do Usu'#225'rio'
        TabOrder = 9
      end
      object chkAnaliseCredito: TCheckBox
        Left = 522
        Top = 57
        Width = 175
        Height = 17
        Caption = 'Visualizar An'#225'lise de Cr'#233'dito'
        TabOrder = 10
      end
      object chkMarkupPedido: TCheckBox
        Left = 10
        Top = 97
        Width = 213
        Height = 17
        Caption = 'Visualizar Markup do Pedido'
        TabOrder = 11
      end
      object chkTransferenciaMercadorias: TCheckBox
        Left = 284
        Top = 97
        Width = 213
        Height = 17
        Caption = 'Transfer'#234'ncia de Mercadorias - Kardex'
        TabOrder = 12
      end
      object chkAlteraTabelaPreco: TCheckBox
        Left = 522
        Top = 97
        Width = 213
        Height = 17
        Caption = 'Altera Tabela de Pre'#231'os'
        TabOrder = 13
      end
      object ChkPrazoDesabilitado: TCheckBox
        Left = 284
        Top = 116
        Width = 213
        Height = 17
        Caption = 'Pode Utilizar Prazos Desabilitados'
        TabOrder = 14
      end
      object ChkAutorizaVendaAbaixo: TCheckBox
        Left = 10
        Top = 118
        Width = 213
        Height = 17
        Caption = 'Autoriza Venda Abaixo do Custo '
        TabOrder = 16
      end
      object chkComissaoPedido: TCheckBox
        Left = 521
        Top = 116
        Width = 213
        Height = 17
        Caption = 'Visualizar comiss'#245'es do pedido'
        TabOrder = 15
      end
    end
    object GroupBox14: TGroupBox
      Left = 1
      Top = 89
      Width = 934
      Height = 76
      Align = alTop
      Caption = 'Cadastro de Produtos'
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 936
      object ChkComissao: TCheckBox
        Left = 9
        Top = 16
        Width = 144
        Height = 17
        Caption = 'Altera Comiss'#227'o'
        TabOrder = 0
      end
      object ChkCusto: TCheckBox
        Left = 284
        Top = 16
        Width = 121
        Height = 17
        Caption = 'Altera Custo Liquido'
        TabOrder = 1
      end
      object ChkMargem: TCheckBox
        Left = 522
        Top = 16
        Width = 175
        Height = 17
        Caption = 'Altera Margem'
        TabOrder = 2
      end
      object ChkMagemMinima: TCheckBox
        Left = 284
        Top = 36
        Width = 157
        Height = 17
        Caption = 'Altera Margem M'#237'nima'
        TabOrder = 4
      end
      object ChkPrecoVenda: TCheckBox
        Left = 9
        Top = 35
        Width = 128
        Height = 17
        Caption = 'Altera Pre'#231'o Venda'
        TabOrder = 3
      end
      object ChkPrecoOferta: TCheckBox
        Left = 522
        Top = 36
        Width = 175
        Height = 17
        Caption = 'Altera Pre'#231'o Oferta'
        TabOrder = 5
      end
      object chkAlteraCustosAutomaticos: TCheckBox
        Left = 9
        Top = 52
        Width = 211
        Height = 17
        Caption = 'Altera Custos Calculados Pelo Sistema'
        TabOrder = 6
      end
      object ChkVisualizacustosProd: TCheckBox
        Left = 284
        Top = 56
        Width = 173
        Height = 17
        Caption = 'Visualiza Pre'#231'os de Custos'
        TabOrder = 7
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 165
      Width = 934
      Height = 41
      Align = alTop
      Caption = 'Gerencial'
      TabOrder = 2
      ExplicitLeft = 0
      ExplicitTop = 40
      ExplicitWidth = 936
      object ChkAlteraComissao: TCheckBox
        Left = 9
        Top = 17
        Width = 192
        Height = 17
        Caption = 'Altera comiss'#227'o do item do pedido'
        TabOrder = 0
      end
      object ChkLiberaAnaliseCredito: TCheckBox
        Left = 281
        Top = 16
        Width = 192
        Height = 17
        Caption = 'Libera An'#225'lise de Cr'#233'dito'
        TabOrder = 1
      end
      object ChkLiberaAnaliseProducao: TCheckBox
        Left = 521
        Top = 16
        Width = 192
        Height = 17
        Caption = 'Libera An'#225'lise de Produ'#231#227'o'
        TabOrder = 2
      end
    end
    object GroupBox6: TGroupBox
      Left = 1
      Top = 49
      Width = 934
      Height = 40
      Align = alTop
      Caption = 'Entrada Nota Fiscal'
      TabOrder = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 936
      object ChkAlteraNFEntrada: TCheckBox
        Left = 9
        Top = 17
        Width = 144
        Height = 17
        Caption = 'Altera Entrada Nota Fiscal'
        Enabled = False
        TabOrder = 0
      end
    end
    object GroupBox9: TGroupBox
      Left = 1
      Top = 1
      Width = 934
      Height = 48
      Align = alTop
      Caption = 'Kardex'
      TabOrder = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 936
      object ChkKardexLancEntrada: TCheckBox
        Left = 9
        Top = 17
        Width = 192
        Height = 17
        Caption = 'Entrada - Lan'#231'amento Manual'
        TabOrder = 0
      end
      object ChkKardexLancSaida: TCheckBox
        Left = 281
        Top = 17
        Width = 192
        Height = 17
        Caption = 'Sa'#237'da - Lan'#231'amento Manual'
        TabOrder = 1
      end
      object ChkKardexLancBalanco: TCheckBox
        Left = 521
        Top = 17
        Width = 192
        Height = 17
        Caption = 'Balan'#231'o - Lan'#231'amento Manual'
        TabOrder = 2
      end
    end
    object Edit1: TEdit
      Left = 88
      Top = 376
      Width = 177
      Height = 21
      TabOrder = 5
      Text = 'Edit1'
    end
    object SearchBox1: TSearchBox
      Left = 64
      Top = 416
      Width = 193
      Height = 21
      TabOrder = 6
      OnChange = SearchBox1Change
      OnEnter = SearchBox1Enter
      OnExit = SearchBox1Exit
    end
    object ListBox1: TListBox
      Left = 64
      Top = 437
      Width = 369
      Height = 97
      ItemHeight = 13
      TabOrder = 7
      OnClick = ListBox1Click
    end
  end
end
