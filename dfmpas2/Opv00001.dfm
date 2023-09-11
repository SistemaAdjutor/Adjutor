object FrmCadastroTipoPedido: TFrmCadastroTipoPedido
  Left = 555
  Top = 20
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro do Tipo de Pedido'
  ClientHeight = 604
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
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
    Top = 75
    Width = 864
    Height = 230
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 1068
    object lbComissao: TLabel
      Left = 648
      Top = 185
      Width = 50
      Height = 14
      Caption = 'Comiss'#227'o:'
    end
    object DBCheckBox1: TDBCheckBox
      Left = 14
      Top = 9
      Width = 439
      Height = 17
      Caption = 
        '[AE] Atualiza Estoque :  Define que o Tipo do Pedido movimenta e' +
        'stoque'
      DataField = 'OPV_ATESTOQUE'
      DataSource = DsPrdTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 441
      Top = 66
      Width = 400
      Height = 17
      Caption = '[OS] Ordem de Servi'#231'o '
      DataField = 'OPV_SERVICO'
      DataSource = DsPrdTipo
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox3: TDBCheckBox
      Left = 14
      Top = 29
      Width = 400
      Height = 17
      Caption = 
        '[PD] Tipo Padr'#227'o :  Define que Tipo do Pedido '#233' o Padr'#227'o ao carr' +
        'egar novo'
      Color = clBtnFace
      DataField = 'OPV_TIPOPADRAO'
      DataSource = DsPrdTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox5: TDBCheckBox
      Left = 14
      Top = 63
      Width = 400
      Height = 17
      Caption = '[VD] Faturamento :  Autoriza tipo do pedido para Faturamento'
      DataField = 'OPV_FATURAMENTO'
      DataSource = DsPrdTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox4: TDBCheckBox
      Left = 14
      Top = 81
      Width = 400
      Height = 17
      Caption = '[OR] Or'#231'amento'
      DataField = 'OPV_ORCAMENTO'
      DataSource = DsPrdTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object dbchkOPV_PRODUCAO: TDBCheckBox
      Left = 14
      Top = 101
      Width = 400
      Height = 17
      Caption = 
        '[PR] Produ'#231#227'o :  Libera os Itens do Pedido para enviar para o PC' +
        'P'
      DataField = 'OPV_PRODUCAO'
      DataSource = DsPrdTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox6: TDBCheckBox
      Left = 14
      Top = 121
      Width = 400
      Height = 17
      Caption = '[ST] Calcula Substitui'#231#227'o Tribut'#225'ria (ST) no pedido'
      DataField = 'OPV_CALCULA_ST'
      DataSource = DsPrdTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox7: TDBCheckBox
      Left = 14
      Top = 142
      Width = 400
      Height = 17
      Caption = 
        '[I D] Industrializa'#231#227'o : Vincula itens com entrada de industrial' +
        'iza'#231#227'o'
      DataField = 'OPV_INDUSTRIALIZACAO'
      DataSource = DsPrdTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox8: TDBCheckBox
      Left = 14
      Top = 179
      Width = 400
      Height = 17
      Caption = '[AP] Atualiza Data do pedido quando mudar o tipo de pedido'
      DataField = 'OPV_ATUALIZA_DATA_PEDIDO'
      DataSource = DsPrdTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox9: TDBCheckBox
      Left = 14
      Top = 199
      Width = 400
      Height = 17
      Caption = '[SL] N'#227'o obriga '#224' selecionar Lote '
      DataField = 'OPV_SEMLOTE'
      DataSource = DsPrdTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox10: TDBCheckBox
      Left = 441
      Top = 29
      Width = 400
      Height = 17
      Caption = '[GV] Gerar comiss'#227'o com Verba'
      DataField = 'OPV_COMISSAO_VERBA'
      DataSource = DsPrdTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox11: TDBCheckBox
      Left = 441
      Top = 47
      Width = 400
      Height = 17
      Caption = '[BO] Bonifica'#231#227'o : gera D'#233'bito da verba do total de cada item'
      DataField = 'OPV_BONIFICACAO'
      DataSource = DsPrdTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object chkAgruapado: TDBCheckBox
      Left = 441
      Top = 84
      Width = 400
      Height = 17
      Caption = '[AG] Agrupamento de pedido'
      DataField = 'OPV_AGRUPADO'
      DataSource = DsPrdTipo
      TabOrder = 12
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox12: TDBCheckBox
      Left = 441
      Top = 102
      Width = 400
      Height = 17
      Caption = '[TF] Venda/Transfer'#234'ncia a pre'#231'o de custo'
      DataField = 'OPV_TRANSF_PRECOCUSTO'
      DataSource = DsPrdTipo
      TabOrder = 13
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox13: TDBCheckBox
      Left = 14
      Top = 45
      Width = 400
      Height = 17
      Caption = '[VV] Vendas '#233' pedido de venda'
      DataField = 'OPV_VENDA'
      DataSource = DsPrdTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox14: TDBCheckBox
      Left = 441
      Top = 121
      Width = 400
      Height = 17
      Caption = '[ES] Sai de um estoque e Entra em outro Estoque'
      DataField = 'OPV_ESTOQUE_REMESSAINDUS'
      DataSource = DsPrdTipo
      TabOrder = 15
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object chkExpedicao: TDBCheckBox
      Left = 441
      Top = 154
      Width = 400
      Height = 17
      Caption = '(EXP) Expedi'#231#227'o'
      DataField = 'OPV_EXPEDICAO'
      DataSource = DsPrdTipo
      TabOrder = 16
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox15: TDBCheckBox
      Left = 441
      Top = 170
      Width = 400
      Height = 17
      Caption = '(ITP) Inativar Tipo do Pedido'
      DataField = 'OPV_INATIVAR_TIPO_PEDIDO'
      DataSource = DsPrdTipo
      TabOrder = 17
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCHK_OPV_INDUST_POR_KIT: TDBCheckBox
      Left = 14
      Top = 160
      Width = 400
      Height = 17
      Caption = '[I K] Industrializa'#231#227'o por Kit'
      DataField = 'OPV_INDUST_POR_KIT'
      DataSource = DsPrdTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox16: TDBCheckBox
      Left = 441
      Top = 138
      Width = 400
      Height = 17
      Caption = '[BF] Baixar estoque pelo faturamento'
      DataField = 'OPV_BAIXAR_ESTOQUE_PELO_FAT'
      DataSource = DsPrdTipo
      TabOrder = 19
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object cbMetaVendedor: TDBCheckBox
      Left = 442
      Top = 185
      Width = 190
      Height = 17
      Caption = '(PM) Participa da Meta do Vendedor'
      DataField = 'OPV_META_VENDEDOR'
      DataSource = DsPrdTipo
      TabOrder = 20
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object edComiissaoMetaVendedor: TDBEdit
      Left = 699
      Top = 182
      Width = 121
      Height = 22
      DataField = 'OPV_COMISSAO_META_VENDEDOR'
      DataSource = DsPrdTipo
      TabOrder = 21
    end
    object DBCheckBox17: TDBCheckBox
      Left = 442
      Top = 201
      Width = 107
      Height = 17
      Caption = '(DV) Devolu'#231#227'o'
      DataField = 'OPV_DEVOLUCAO'
      DataSource = DsPrdTipo
      TabOrder = 22
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object TPanel
    Left = 0
    Top = 571
    Width = 864
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 609
    ExplicitWidth = 729
    object Bit_Cancelar: TBitBtn
      Left = 560
      Top = 5
      Width = 75
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_novo: TBitBtn
      Left = 335
      Top = 5
      Width = 75
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TBitBtn
      Left = 410
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui o registro atual'
      Cancel = True
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 485
      Top = 5
      Width = 75
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
      TabOrder = 3
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Sair: TBitBtn
      Left = 560
      Top = 5
      Width = 75
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
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 305
    Width = 864
    Height = 266
    Align = alClient
    Caption = 'Listagem'
    TabOrder = 0
    ExplicitLeft = 22
    ExplicitTop = 593
    ExplicitHeight = 154
    object DbGradeTipoPedido: TDBGrid
      Left = 2
      Top = 16
      Width = 860
      Height = 248
      Align = alClient
      Color = 16776176
      DataSource = DsPrdTipo
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DbGradeTipoPedidoDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'OPV_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_TIPO'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_ATESTOQUE'
          Title.Alignment = taCenter
          Title.Caption = 'AE'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_TIPOPADRAO'
          Title.Alignment = taCenter
          Title.Caption = 'PD'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_ORCAMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'OR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'VD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_PRODUCAO'
          Title.Caption = 'PR'
          Width = 19
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_CALCULA_ST'
          Title.Alignment = taCenter
          Title.Caption = 'ST'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_INDUST_POR_KIT'
          Title.Alignment = taCenter
          Title.Caption = 'IK'
          Width = 17
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_INDUSTRIALIZACAO'
          Title.Alignment = taCenter
          Title.Caption = 'I D'
          Width = 19
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_ATUALIZA_DATA_PEDIDO'
          Title.Caption = 'AP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_SEMLOTE'
          Title.Caption = 'SL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_COMISSAO_VERBA'
          Title.Caption = 'GV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_BONIFICACAO'
          Title.Caption = 'BO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_SERVICO'
          Title.Alignment = taCenter
          Title.Caption = 'OS'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_AGRUPADO'
          Title.Caption = 'AG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_BAIXAR_ESTOQUE_PELO_FAT'
          Title.Caption = 'BF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_EXPEDICAO'
          Title.Caption = 'EXP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_INATIVAR_TIPO_PEDIDO'
          Title.Caption = 'ITP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_META_VENDEDOR'
          Title.Caption = 'PM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_DEVOLUCAO'
          Title.Caption = 'DV'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 864
    Height = 75
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = 80
    ExplicitWidth = 921
    object Label1: TLabel
      Left = 6
      Top = 8
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 44
      Width = 52
      Height = 14
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o:'
    end
    object DBNavigator1: TDBNavigator
      Left = 501
      Top = 2
      Width = 120
      Height = 25
      DataSource = DsPrdTipo
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 5
      Top = 27
      Width = 620
      Height = 4
      Color = 12681984
      TabOrder = 1
    end
    object EdtPti_codigo: TEdit
      Left = 44
      Top = 5
      Width = 41
      Height = 22
      MaxLength = 3
      TabOrder = 2
      OnClick = EdtPti_codigoClick
      OnExit = EdtPti_codigoExit
    end
    object DBePti_descri: TDBEdit
      Left = 58
      Top = 40
      Width = 340
      Height = 22
      CharCase = ecUpperCase
      DataField = 'OPV_DESCRICAO'
      DataSource = DsPrdTipo
      TabOrder = 3
    end
    object DbRbTipo: TDBRadioGroup
      Left = 415
      Top = 31
      Width = 211
      Height = 33
      Caption = 'Tipo'
      Columns = 2
      DataField = 'OPV_TIPO'
      DataSource = DsPrdTipo
      Items.Strings = (
        'Entrada'
        'Sa'#237'da')
      TabOrder = 4
      Values.Strings = (
        'E'
        'S')
    end
  end
  object SqlTCdsipoPedido: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from OPV0000 order by OPV_DESCRICAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    BeforeEdit = SqlTCdsipoPedidoBeforeEdit
    BeforePost = SqlTCdsipoPedidoBeforePost
    BeforeCancel = SqlTCdsipoPedidoBeforeCancel
    AfterScroll = SqlTCdsipoPedidoAfterScroll
    CommandText = 'select * from OPV0000 order by OPV_DESCRICAO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 736
    Top = 148
    object SqlTCdsipoPedidoOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlTCdsipoPedidoOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object SqlTCdsipoPedidoOPV_TIPO: TStringField
      FieldName = 'OPV_TIPO'
      Size = 1
    end
    object SqlTCdsipoPedidoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlTCdsipoPedidoOPV_ATESTOQUE: TStringField
      FieldName = 'OPV_ATESTOQUE'
      FixedChar = True
      Size = 1
    end
    object SqlTCdsipoPedidoAMX_DESTINO: TStringField
      FieldName = 'AMX_DESTINO'
      Size = 4
    end
    object SqlTCdsipoPedidoAMX_ORIGEM: TStringField
      FieldName = 'AMX_ORIGEM'
      Size = 4
    end
    object SqlTCdsipoPedidoOPV_TIPOPADRAO: TStringField
      FieldName = 'OPV_TIPOPADRAO'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_SERVICO: TStringField
      FieldName = 'OPV_SERVICO'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_VENDA: TStringField
      FieldName = 'OPV_VENDA'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_ORCAMENTO: TStringField
      FieldName = 'OPV_ORCAMENTO'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_PRODUCAO: TStringField
      FieldName = 'OPV_PRODUCAO'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_CALCULA_ST: TStringField
      FieldName = 'OPV_CALCULA_ST'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_INDUSTRIALIZACAO: TStringField
      FieldName = 'OPV_INDUSTRIALIZACAO'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_ATUALIZA_DATA_PEDIDO: TStringField
      FieldName = 'OPV_ATUALIZA_DATA_PEDIDO'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_SEMLOTE: TStringField
      FieldName = 'OPV_SEMLOTE'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_COMISSAO_VERBA: TStringField
      FieldName = 'OPV_COMISSAO_VERBA'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_BONIFICACAO: TStringField
      FieldName = 'OPV_BONIFICACAO'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_AGRUPADO: TStringField
      FieldName = 'OPV_AGRUPADO'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_TRANSF_PRECOCUSTO: TStringField
      FieldName = 'OPV_TRANSF_PRECOCUSTO'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_FATURAMENTO: TStringField
      FieldName = 'OPV_FATURAMENTO'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_ESTOQUE_REMESSAINDUS: TStringField
      FieldName = 'OPV_ESTOQUE_REMESSAINDUS'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_EXPEDICAO: TStringField
      FieldName = 'OPV_EXPEDICAO'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_INATIVAR_TIPO_PEDIDO: TStringField
      FieldName = 'OPV_INATIVAR_TIPO_PEDIDO'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_INDUST_POR_KIT: TStringField
      FieldName = 'OPV_INDUST_POR_KIT'
      FixedChar = True
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_BAIXAR_ESTOQUE_PELO_FAT: TStringField
      FieldName = 'OPV_BAIXAR_ESTOQUE_PELO_FAT'
      FixedChar = True
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_META_VENDEDOR: TStringField
      FieldName = 'OPV_META_VENDEDOR'
      Size = 1
    end
    object SqlTCdsipoPedidoOPV_COMISSAO_META_VENDEDOR: TFMTBCDField
      FieldName = 'OPV_COMISSAO_META_VENDEDOR'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 18
      Size = 5
    end
    object SqlTCdsipoPedidoOPV_DEVOLUCAO: TStringField
      FieldName = 'OPV_DEVOLUCAO'
      Size = 1
    end
  end
  object DsPrdTipo: TDataSource
    DataSet = SqlTCdsipoPedido
    Left = 736
    Top = 204
  end
end
