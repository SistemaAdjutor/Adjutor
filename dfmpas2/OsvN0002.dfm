inherited FormOrdServCentroGerar: TFormOrdServCentroGerar
  Left = 56
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gera Ordem de Produ'#231#227'o para PCP'
  ClientHeight = 655
  ClientWidth = 1770
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  KeyPreview = True
  Position = poDesktopCenter
  Visible = True
  ExplicitWidth = 1776
  ExplicitHeight = 684
  PixelsPerInch = 96
  TextHeight = 14
  object Grp_Pedidos: TGroupBox [0]
    Left = 0
    Top = 44
    Width = 1770
    Height = 117
    Align = alTop
    Caption = 'Lista dos pedidos adicionados'
    TabOrder = 1
    object DBGridGrupo: TDBGrid
      Left = 2
      Top = 16
      Width = 1766
      Height = 99
      Align = alClient
      Color = 16776176
      DataSource = DsPsvGrupo
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
      OnCellClick = DBGridGrupoCellClick
      Columns = <
        item
          Color = clGradientActiveCaption
          Expanded = False
          FieldName = 'PED_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'Pedido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_RAZAO'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 577
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_DTENTRADA'
          Title.Alignment = taCenter
          Title.Caption = 'Dt. Entrada'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_DTSAIDA'
          Title.Alignment = taCenter
          Title.Caption = 'Dt. Entrega'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_VLTOTAL_BRUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vl. Pedido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 90
          Visible = True
        end>
    end
  end
  object Grp_Itens: TGroupBox [1]
    Left = 0
    Top = 161
    Width = 1770
    Height = 286
    Align = alClient
    Caption = 'Lista dos produtos para Fabrica'#231#227'o'
    TabOrder = 2
    object lblcOMPLEMENTO: TLabel
      Left = 6
      Top = 206
      Width = 67
      Height = 14
      Caption = 'Complemento:'
    end
    object Label12: TLabel
      Left = 781
      Top = 206
      Width = 31
      Height = 14
      Caption = 'Resp.:'
    end
    object Label13: TLabel
      Left = 601
      Top = 206
      Width = 85
      Height = 14
      Caption = 'Ordem do Cliente:'
    end
    object DBGridItens: TDBGrid
      Left = 2
      Top = 16
      Width = 1766
      Height = 186
      Align = alTop
      Color = clWhite
      DataSource = DsPs2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgMultiSelect]
      ParentShowHint = False
      PopupMenu = PopMenuItens
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnCellClick = DBGridItensCellClick
      OnDrawColumnCell = DBGridItensDrawColumnCell
      OnDblClick = DBGridItensDblClick
      OnKeyPress = DBGridItensKeyPress
      Columns = <
        item
          Color = clGradientActiveCaption
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 255
          Visible = True
        end
        item
          Color = clGradientActiveCaption
          Expanded = False
          FieldName = 'PS2_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PS2_LOTE'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Lote'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_RAZAO'
          Title.Alignment = taCenter
          Title.Caption = 'Raz'#227'o Social'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PS2_FICHA_CC'
          Title.Alignment = taCenter
          Title.Caption = 'F.T'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 24
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'Pedido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PS2_DTENTREGA'
          Title.Alignment = taCenter
          Title.Caption = 'Data Entrega'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PS2_GERAR_PI'
          Title.Alignment = taCenter
          Title.Caption = 'Sub_Ordens'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end>
    end
    object dbedtComplemento: TDBEdit
      Left = 80
      Top = 204
      Width = 473
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'PRD_COMPL'
      DataSource = DsPs2
      ReadOnly = True
      TabOrder = 1
    end
    object dbedtResponsavel: TDBEdit
      Left = 815
      Top = 204
      Width = 137
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'PS2_RESPONSAVEL'
      DataSource = DsPs2
      ReadOnly = True
      TabOrder = 2
    end
    object dbedtPS2_ORDEM_COMPRA: TDBEdit
      Left = 687
      Top = 204
      Width = 89
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'PS2_ORDEM_COMPRA'
      DataSource = DsPs2
      ReadOnly = True
      TabOrder = 3
    end
  end
  object Grp_OP: TGroupBox [2]
    Left = 0
    Top = 0
    Width = 1770
    Height = 44
    Align = alTop
    Caption = 'Sele'#231#227'o de Op'#231#227'o para Gerar OP'
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 16
      Width = 1766
      Height = 26
      Align = alClient
      BevelOuter = bvLowered
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 0
      object Rad_Pedido: TRadioButton
        Left = 519
        Top = 5
        Width = 180
        Height = 17
        Hint = 'Gerar Ops dos itens de um Pedido de Venda'
        Caption = 'Gerar ordem pelo P&EDIDO'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Rad_PedidoClick
      end
      object Rad_Item: TRadioButton
        Left = 728
        Top = 5
        Width = 199
        Height = 17
        Hint = 'Gerar OPs digitando produto a produto'
        Caption = 'Gerar ordem pelo PR&ODUTO'
        Checked = True
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = True
        OnClick = Rad_PedidoClick
      end
    end
  end
  object PAN_OP: TPanel [3]
    Left = 0
    Top = 572
    Width = 1770
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Grp_Qtde: TGroupBox
      Left = 3
      Top = 2
      Width = 501
      Height = 35
      TabOrder = 0
      object Label4: TLabel
        Left = 7
        Top = 11
        Width = 58
        Height = 14
        Caption = '&Quantidade:'
      end
      object Label5: TLabel
        Left = 126
        Top = 11
        Width = 154
        Height = 14
        Caption = 'M'#225'xima por Ordem de Produ'#231#227'o'
      end
      object CurrQtdeOP: TCurrencyEdit
        Left = 70
        Top = 8
        Width = 49
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ZeroEmpty = False
      end
    end
    object Grp_Tipo: TGroupBox
      Left = 507
      Top = 2
      Width = 448
      Height = 35
      TabOrder = 1
      object Rad_OA: TRadioButton
        Left = 332
        Top = 10
        Width = 103
        Height = 17
        Caption = 'Ordens &Abertas'
        TabOrder = 2
        Visible = False
      end
      object RAD_OP: TRadioButton
        Left = 28
        Top = 9
        Width = 121
        Height = 17
        Caption = 'Ordens em &Produ'#231#227'o'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RAD_OR: TRadioButton
        Left = 184
        Top = 10
        Width = 115
        Height = 17
        Caption = 'Ordens c/Reser&vas'
        TabOrder = 1
        Visible = False
      end
    end
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 447
    Width = 1770
    Height = 39
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 4
    object Label1: TLabel
      Left = 31
      Top = 13
      Width = 41
      Height = 14
      Caption = 'Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedPedido: TSpeedButton
      Left = 154
      Top = 9
      Width = 24
      Height = 21
      Hint = 'Busca Pedido'
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
      OnClick = SpeedPedidoClick
    end
    object EdtPedido: TEdit
      Left = 75
      Top = 9
      Width = 78
      Height = 22
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
      OnExit = EdtPedidoExit
    end
    object Pan_Razao: TPanel
      Left = 230
      Top = 8
      Width = 549
      Height = 21
      BevelOuter = bvLowered
      TabOrder = 1
    end
    object Bit_ExcluirPedido: TBitBtn
      Left = 815
      Top = 8
      Width = 140
      Height = 25
      Caption = 'Re&tirar Pedido da Lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_ExcluirPedidoClick
    end
  end
  object Panel4: TPanel [5]
    Left = 0
    Top = 486
    Width = 1770
    Height = 86
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 5
    object Label2: TLabel
      Left = 7
      Top = 35
      Width = 62
      Height = 14
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlBottom
    end
    object SpeedProduto: TSpeedButton
      Left = 203
      Top = 32
      Width = 24
      Height = 21
      Hint = 'Busca produto'
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
      OnClick = SpeedProdutoClick
    end
    object Label3: TLabel
      Left = 236
      Top = 35
      Width = 65
      Height = 14
      Caption = 'Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlBottom
    end
    object LabeNuLote: TLabel
      Left = 422
      Top = 35
      Width = 42
      Height = 14
      Caption = 'N'#186' Lote:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlBottom
    end
    object Label8: TLabel
      Left = 35
      Top = 63
      Width = 35
      Height = 14
      Caption = 'Cliente:'
    end
    object Label10: TLabel
      Left = 620
      Top = 35
      Width = 66
      Height = 14
      Caption = 'Respons'#225'vel:'
      Layout = tlBottom
    end
    object Label11: TLabel
      Left = 422
      Top = 63
      Width = 85
      Height = 14
      Caption = 'Ordem do Cliente:'
    end
    object Label6: TLabel
      Left = 621
      Top = 63
      Width = 65
      Height = 14
      Caption = 'Data Entrega:'
    end
    object Bit_Cancelar: TBitBtn
      Left = 834
      Top = 32
      Width = 120
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 8
      Visible = False
      OnClick = Bit_CancelarClick
    end
    object Bit_ExcluirItem: TBitBtn
      Left = 834
      Top = 31
      Width = 120
      Height = 25
      Caption = 'Retirar da Lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
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
      TabOrder = 7
      TabStop = False
      OnClick = Bit_ExcluirItemClick
    end
    object EdtReferencia: TEdit
      Left = 72
      Top = 32
      Width = 128
      Height = 22
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 0
      OnChange = EdtReferenciaChange
      OnClick = EdtReferenciaClick
      OnExit = EdtReferenciaExit
    end
    object CurrQtde: TRxCalcEdit
      Left = 305
      Top = 31
      Width = 107
      Height = 21
      AutoSize = False
      DisplayFormat = '#0'
      NumGlyphs = 2
      TabOrder = 1
      OnClick = CurrQtdeClick
      OnExit = CurrQtdeExit
    end
    object Edt_Lote: TEdit
      Left = 507
      Top = 31
      Width = 107
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 13
      ParentFont = False
      TabOrder = 2
      OnExit = Edt_LoteExit
    end
    object cCodClie: TCurrencyEdit
      Left = 72
      Top = 59
      Width = 43
      Height = 22
      Alignment = taCenter
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '00000'
      MaxLength = 5
      TabOrder = 5
      OnEnter = cCodClieEnter
      OnExit = cCodClieExit
    end
    object BitConfirmaItem: TBitBtn
      Left = 834
      Top = 4
      Width = 120
      Height = 25
      Hint = 'Adiciona um ou mais produto para gerar OP'#180's'
      Caption = '&Adicionar '#224' Lista'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitConfirmaItemClick
    end
    object edtResponsavel: TEdit
      Left = 687
      Top = 31
      Width = 144
      Height = 22
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 13
      ParentFont = False
      TabOrder = 3
      OnExit = Edt_LoteExit
    end
    object edtOrdemdeCompra: TEdit
      Left = 508
      Top = 59
      Width = 107
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 13
      ParentFont = False
      TabOrder = 6
      OnExit = Edt_LoteExit
    end
    object CbRwClie: TSgDbSearchCombo
      Left = 115
      Top = 59
      Width = 273
      Height = 22
      OnEnter = CbRwClieEnter
      TabOrder = 9
      OnExit = CbRwClieExit
      OnChange = CbRwClieChange
      CharCase = ecUpperCase
      LookupSelect = 'CLI_CODIGO,CLI_RAZAO'
      LookupOrderBy = 'CLI_RAZAO'
      LookupTable = 'CLI0000'
      LookupDispl = 'CLI_RAZAO'
      GridAutoSize = False
      LookupSource = qCliente
      LookupKeyField = 'CLI_CODIGO'
      FiltroTabela = 'CLI_INATIVO='#39'A'#39' and cli_razao is not null'
      ShowButton = True
      LookupTableShare = 'CLIENTES'
      AutoF8WinTitulo = 'Clientes'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object BitLimpar: TBitBtn
      Left = 835
      Top = 58
      Width = 120
      Height = 25
      Cursor = crHandPoint
      Hint = 'Limpa a lista de produtos para a fabrica'#231#227'o'
      Caption = ' &Limpar toda lista '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
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
      TabOrder = 10
      TabStop = False
      OnClick = BitLimparClick
    end
    object chkGerarPIOrdemProducao: TCheckBox
      Left = 13
      Top = 9
      Width = 286
      Height = 17
      Hint = 
        'Se marcado gera OP'#180's  de PA e PI que est'#227'o como item dentro da f' +
        'icha T'#233'cnica da OP principal'
      Caption = 'Gerar Sub-Ordens  ( PI / PA dentro da Principal ) '
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object DtEntrega: TJvDateEdit
      Left = 690
      Top = 59
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
      TabOrder = 11
    end
  end
  object Panel5: TPanel [6]
    Left = 0
    Top = 615
    Width = 1770
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 6
    object Label9: TLabel
      Left = 520
      Top = 13
      Width = 64
      Height = 14
      Caption = 'Almoxarifado'
    end
    object Bit_GeraSimulacao: TBitBtn
      Left = 324
      Top = 3
      Width = 170
      Height = 25
      Caption = 'Gerar Sim&ula'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = False
      Visible = False
    end
    object EdtORDEM: TEdit
      Left = 1232
      Top = -1
      Width = 55
      Height = 22
      MaxLength = 6
      TabOrder = 0
      Visible = False
    end
    object Edit1: TEdit
      Left = 1255
      Top = -1
      Width = 57
      Height = 22
      MaxLength = 8
      TabOrder = 1
      Visible = False
    end
    object EdOrdemOrigen: TEdit
      Left = 1293
      Top = -1
      Width = 54
      Height = 22
      TabOrder = 2
      Visible = False
    end
    object Bit_GeraOP: TBitBtn
      Left = 292
      Top = 0
      Width = 213
      Height = 33
      Hint = 'Gera OP'#180's dos produtos da Lista para Fabrica'#231#227'o'
      Caption = '&Gerar Ordens de Produ'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        D6020000424DD60200000000000036000000280000000F0000000E0000000100
        180000000000A0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF53A953B0D8B0FFFFFFFFFFFFFF
        FFFFFFFFFFDFDFF42323B68787D7FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFF1A8D1A95CA95FFFFFFFFFFFFFFFFFFFFFFFF4F4FC40000AA0C0CAEE4E4
        F6FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF1A8D1A95CA95FFFFFFFFFFFFFF
        FFFFB6B6E72121B50000AA5050C55E5EC9FFFFFFFFFFFF000000C3E1C3A7D3A7
        FFFFFF1A8D1A95CA95E8F4E88EC78EF3F6F82424B6ACACE30000AAA4A4E01414
        B1CCCCEEFFFFFF000000E5F2E50F870FD8ECD81A8D1A95CA955FAF5F67B3678F
        8FDA4545C1FFFFFF0000AAAFAFE49090DA4242C0FFFFFF000000FFFFFF81C081
        4EA74E1A8D1A75BA75148A14ECF6ECFFFFFFFFFFFFFFFFFF0000AAAFAFE4FFFF
        FFFFFFFFFFFFFF000000FFFFFFF5FAF51C8E1C13891320902099CC99FFFFFFFF
        FFFFFFFFFFFFFFFF0000AAAFAFE4FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        A1D0A1098509299529FDFEFDFFFFFFFFFFFFFFFFFFFFFFFF0000AAAFAFE4FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFEFFFEA3D1A3DAEDDAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFC0C0EAEBEBF8FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = Bit_GeraOPClick
    end
    object Bit_Sair: TBitBtn
      Left = 834
      Top = 6
      Width = 120
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
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
    object GroupBox1: TGroupBox
      Left = 7
      Top = -2
      Width = 214
      Height = 38
      Hint = 'Controle '#233' autom'#225'tico mas '#233' poss'#237'vel mudar sequencia da OP aqui'
      Color = clMoneyGreen
      ParentBackground = False
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      object Label7: TLabel
        Left = 7
        Top = 13
        Width = 101
        Height = 15
        Caption = 'N'#186' da Pr'#243'xima OP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ProxNum_OP: TCurrencyEdit
        Left = 112
        Top = 8
        Width = 94
        Height = 23
        Hint = 'numera'#231#227'o de OP autom'#225'tica com op'#231#227'o de alterar'
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ZeroEmpty = False
        OnExit = ProxNum_OPExit
      end
    end
    object EdAlmox: TEdit
      Left = 590
      Top = 9
      Width = 30
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 7
      OnClick = EdAlmoxClick
      OnEnter = EdAlmoxEnter
      OnExit = EdAlmoxExit
    end
    object CbAlmox: TComboBox
      Left = 621
      Top = 9
      Width = 191
      Height = 22
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 25
      ParentFont = False
      TabOrder = 8
      OnClick = CbAlmoxClick
      OnEnter = CbAlmoxEnter
      OnExit = CbAlmoxExit
    end
  end
  object PaninfCli: TPanel [7]
    Left = 278
    Top = 286
    Width = 370
    Height = 59
    BevelInner = bvRaised
    Color = clInfoBk
    TabOrder = 7
    Visible = False
    object Label20: TLabel
      Left = 14
      Top = 23
      Width = 39
      Height = 14
      Alignment = taRightJustify
      Caption = 'Cidade :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label50: TLabel
      Left = 300
      Top = 23
      Width = 19
      Height = 14
      Alignment = taRightJustify
      Caption = 'UF :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 56
      Top = 23
      Width = 40
      Height = 14
      AutoSize = True
      DataField = 'CLI_CIDADE'
      DataSource = DataMovimento2.DsConsultaClie
    end
    object DBText3: TDBText
      Left = 322
      Top = 23
      Width = 40
      Height = 14
      AutoSize = True
      DataField = 'CLI_UF'
      DataSource = DataMovimento2.DsConsultaClie
    end
    object Label36: TLabel
      Left = 18
      Top = 8
      Width = 35
      Height = 14
      Alignment = taRightJustify
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 56
      Top = 8
      Width = 40
      Height = 14
      AutoSize = True
      DataField = 'CLI_CODIGO'
      DataSource = DataMovimento2.DsConsultaClie
    end
    object Lbl_Pessoa: TLabel
      Left = 21
      Top = 40
      Width = 31
      Height = 14
      Alignment = taRightJustify
      Caption = 'CNPJ :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 55
      Top = 40
      Width = 40
      Height = 14
      AutoSize = True
      DataField = 'CLI_CGC'
      DataSource = DataMovimento2.DsConsultaClie
    end
    object LBL_RAZAO: TLabel
      Left = 110
      Top = 8
      Width = 3
      Height = 14
      Caption = '.'
    end
  end
  inherited coCalcula: TACBrCalculadora
    Top = 64
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 144
    Top = 56
  end
  inherited DBConn: TSQLConnection
    Top = 105
  end
  inherited qAux: TSQLQuery
    Left = 138
  end
  inherited qAux2: TSQLQuery
    Left = 194
  end
  inherited qAux3: TSQLQuery
    Left = 234
    Top = 4
  end
  inherited qAuxEstornaItem: TSQLQuery
    Left = 538
    Top = 96
  end
  object SqlCdsPsvGrupo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'C1.CLI_RAZAO,'#13#10'P1.PED_DTENTRADA,'#13#10'P1.PED_DTSAIDA,' +
      #13#10'P1.PED_VLTOTAL_BRUTO'#13#10'FROM PSV_GRUPO T1'#13#10'LEFT JOIN CLI0000 C1 ' +
      'ON (C1.CLI_CODIGO = T1.CLI_CODIGO)'#13#10'LEFT JOIN PED0000 P1 ON (T1.' +
      'PED_CODIGO = P1.PED_CODIGO) AND (P1.EMP_CODIGO = T1.EMP_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'C1.CLI_RAZAO,'#13#10'P1.PED_DTENTRADA,'#13#10'P1.PED_DTSAIDA,' +
      #13#10'P1.PED_VLTOTAL_BRUTO'#13#10'FROM PSV_GRUPO T1'#13#10'LEFT JOIN CLI0000 C1 ' +
      'ON (C1.CLI_CODIGO = T1.CLI_CODIGO)'#13#10'LEFT JOIN PED0000 P1 ON (T1.' +
      'PED_CODIGO = P1.PED_CODIGO) AND (P1.EMP_CODIGO = T1.EMP_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1350
    Top = 497
    object SqlCdsPsvGrupoPSG_REGISTRO: TIntegerField
      FieldName = 'PSG_REGISTRO'
      Required = True
    end
    object SqlCdsPsvGrupoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsPsvGrupoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsPsvGrupoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsPsvGrupoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SqlCdsPsvGrupoPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object SqlCdsPsvGrupoPED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
    end
    object SqlCdsPsvGrupoPED_VLTOTAL_BRUTO: TFMTBCDField
      FieldName = 'PED_VLTOTAL_BRUTO'
      Precision = 15
      Size = 4
    end
  end
  object DsPsvGrupo: TDataSource
    DataSet = SqlCdsPsvGrupo
    Left = 1358
    Top = 561
  end
  object SqlCdsPs2: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T2.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_COMPL,'#13#10'C1.CLI_RAZAO'#13#10'FROM' +
      ' PSV_IT02 T2'#13#10'LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REF' +
      'ER)'#13#10'LEFT JOIN CLI0000 C1 ON (T2.CLI_CODIGO = C1.CLI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPs2CalcFields
    CommandText = 
      'SELECT'#13#10'T2.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_COMPL,'#13#10'C1.CLI_RAZAO'#13#10'FROM' +
      ' PSV_IT02 T2'#13#10'LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REF' +
      'ER)'#13#10'LEFT JOIN CLI0000 C1 ON (T2.CLI_CODIGO = C1.CLI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1000
    Top = 561
    object SqlCdsPs2PS2_REGISTRO: TIntegerField
      FieldName = 'PS2_REGISTRO'
      Required = True
    end
    object SqlCdsPs2EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsPs2PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsPs2PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlCdsPs2PS2_QTDE: TFMTBCDField
      FieldName = 'PS2_QTDE'
      Precision = 18
      Size = 5
    end
    object SqlCdsPs2PS2_QTDE_CONVERTIDA: TFMTBCDField
      FieldName = 'PS2_QTDE_CONVERTIDA'
      Precision = 18
      Size = 5
    end
    object SqlCdsPs2PS2_QTDE1: TFMTBCDField
      FieldName = 'PS2_QTDE1'
      Precision = 18
      Size = 5
    end
    object SqlCdsPs2PS2_QTDE2: TFMTBCDField
      FieldName = 'PS2_QTDE2'
      Precision = 18
      Size = 5
    end
    object SqlCdsPs2PS2_QTDE3: TFMTBCDField
      FieldName = 'PS2_QTDE3'
      Precision = 18
      Size = 5
    end
    object SqlCdsPs2PS2_QTDE4: TFMTBCDField
      FieldName = 'PS2_QTDE4'
      Precision = 18
      Size = 5
    end
    object SqlCdsPs2PS2_QTDE5: TFMTBCDField
      FieldName = 'PS2_QTDE5'
      Precision = 18
      Size = 5
    end
    object SqlCdsPs2PS2_QTDE6: TFMTBCDField
      FieldName = 'PS2_QTDE6'
      Precision = 18
      Size = 5
    end
    object SqlCdsPs2PS2_QTDE7: TFMTBCDField
      FieldName = 'PS2_QTDE7'
      Precision = 18
      Size = 5
    end
    object SqlCdsPs2PS2_QTDE8: TFMTBCDField
      FieldName = 'PS2_QTDE8'
      Precision = 18
      Size = 5
    end
    object SqlCdsPs2PS2_FICHA: TStringField
      FieldName = 'PS2_FICHA'
      Size = 1
    end
    object SqlCdsPs2CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsPs2PS2_LOTE: TStringField
      FieldName = 'PS2_LOTE'
      Size = 13
    end
    object SqlCdsPs2PS2_ORDEM_COMPRA: TStringField
      FieldName = 'PS2_ORDEM_COMPRA'
      Size = 30
    end
    object SqlCdsPs2PS2_RESPONSAVEL: TStringField
      FieldName = 'PS2_RESPONSAVEL'
      Size = 50
    end
    object SqlCdsPs2PS2_GERAR_PI: TStringField
      FieldName = 'PS2_GERAR_PI'
      Size = 1
    end
    object SqlCdsPs2PS2_DTENTREGA: TSQLTimeStampField
      FieldName = 'PS2_DTENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsPs2PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlCdsPs2PRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 500
    end
    object SqlCdsPs2CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsPs2PS2_FICHA_CC: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'PS2_FICHA_CC'
      Calculated = True
    end
  end
  object DsPs2: TDataSource
    DataSet = SqlCdsPs2
    Left = 992
    Top = 609
  end
  object SqlCdsPedidos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select P2.emp_codigo,P2.ped_codigo,P2.cli_codigo,P2.ped_situacao' +
      ',p2.ped_dtSaida,p2.PED_NUMERO_PED_CLIENTE, C1.cli_razao From PED' +
      '0000 P2 Left Join CLI0000 C1 ON (P2.cli_codigo = C1.cli_codigo)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select P2.emp_codigo,P2.ped_codigo,P2.cli_codigo,P2.ped_situacao' +
      ',p2.ped_dtSaida,p2.PED_NUMERO_PED_CLIENTE, C1.cli_razao From PED' +
      '0000 P2 Left Join CLI0000 C1 ON (P2.cli_codigo = C1.cli_codigo)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1480
    Top = 529
    object SqlCdsPedidosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsPedidosPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsPedidosCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsPedidosPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SqlCdsPedidosCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SqlCdsPedidosPED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
    end
    object SqlCdsPedidosPED_NUMERO_PED_CLIENTE: TStringField
      FieldName = 'PED_NUMERO_PED_CLIENTE'
    end
  end
  object SqlCdsItensPedido: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'P2.PRF_REGISTRO,'#13#10'P2.EMP_CODIGO,'#13#10'P2.PED_CODIGO,'#13#10'P2.PRD' +
      '_REFER,'#13#10'P1.PTI_CODIGO,'#13#10'P3.PTI_SIGLA,'#13#10'P2.PRF_QTDE,'#13#10'P2.PRF_VAR' +
      '1,'#13#10'P2.PRF_VAR2,'#13#10'P2.PRF_VAR3,'#13#10'P2.PRF_VAR4,'#13#10'P2.PRF_VAR5,'#13#10'P2.P' +
      'RF_VAR6,'#13#10'P2.PRF_VAR7,'#13#10'P2.PRF_VAR8'#13#10'FROM PED_IT01 P2'#13#10'LEFT JOIN' +
      ' PRD0000 P1 ON (P2.PRD_REFER = P1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO' +
      ' P3 ON (P1.PTI_CODIGO = P3.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'P2.PRF_REGISTRO,'#13#10'P2.EMP_CODIGO,'#13#10'P2.PED_CODIGO,'#13#10'P2.PRD' +
      '_REFER,'#13#10'P1.PTI_CODIGO,'#13#10'P3.PTI_SIGLA,'#13#10'P2.PRF_QTDE,'#13#10'P2.PRF_VAR' +
      '1,'#13#10'P2.PRF_VAR2,'#13#10'P2.PRF_VAR3,'#13#10'P2.PRF_VAR4,'#13#10'P2.PRF_VAR5,'#13#10'P2.P' +
      'RF_VAR6,'#13#10'P2.PRF_VAR7,'#13#10'P2.PRF_VAR8'#13#10'FROM PED_IT01 P2'#13#10'LEFT JOIN' +
      ' PRD0000 P1 ON (P2.PRD_REFER = P1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO' +
      ' P3 ON (P1.PTI_CODIGO = P3.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1416
    Top = 473
    object SqlCdsItensPedidoPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object SqlCdsItensPedidoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsItensPedidoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsItensPedidoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensPedidoPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 15
    end
    object SqlCdsItensPedidoPRF_VAR1: TFMTBCDField
      FieldName = 'PRF_VAR1'
      Precision = 15
    end
    object SqlCdsItensPedidoPRF_VAR2: TFMTBCDField
      FieldName = 'PRF_VAR2'
      Precision = 15
    end
    object SqlCdsItensPedidoPRF_VAR3: TFMTBCDField
      FieldName = 'PRF_VAR3'
      Precision = 15
    end
    object SqlCdsItensPedidoPRF_VAR4: TFMTBCDField
      FieldName = 'PRF_VAR4'
      Precision = 15
    end
    object SqlCdsItensPedidoPRF_VAR5: TFMTBCDField
      FieldName = 'PRF_VAR5'
      Precision = 15
    end
    object SqlCdsItensPedidoPRF_VAR6: TFMTBCDField
      FieldName = 'PRF_VAR6'
      Precision = 15
    end
    object SqlCdsItensPedidoPRF_VAR7: TFMTBCDField
      FieldName = 'PRF_VAR7'
      Precision = 15
    end
    object SqlCdsItensPedidoPRF_VAR8: TFMTBCDField
      FieldName = 'PRF_VAR8'
      Precision = 15
    end
    object SqlCdsItensPedidoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlCdsItensPedidoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object SqlCdsBuscaFicha: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'F1.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_PCUSTO,'#13#10'P1.PRD_UND,'#13#10'P1.P' +
      'RD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_DCVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.P' +
      'RD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_DCVAR7,'#13#10'P1.PRD_DCVAR8'#13#10'from ' +
      'ftc0000 F1'#13#10'JOIN prd0000 P1 ON F1.PRD_REFER = P1.PRD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'F1.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_PCUSTO,'#13#10'P1.PRD_UND,'#13#10'P1.P' +
      'RD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_DCVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.P' +
      'RD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_DCVAR7,'#13#10'P1.PRD_DCVAR8'#13#10'from ' +
      'ftc0000 F1'#13#10'JOIN prd0000 P1 ON F1.PRD_REFER = P1.PRD_REFER'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1185
    Top = 481
    object SqlCdsBuscaFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object SqlCdsBuscaFichaFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
    end
    object SqlCdsBuscaFichaFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
    end
    object SqlCdsBuscaFichaFTC_PROC1: TStringField
      FieldName = 'FTC_PROC1'
      Size = 75
    end
    object SqlCdsBuscaFichaFTC_PROC2: TStringField
      FieldName = 'FTC_PROC2'
      Size = 75
    end
    object SqlCdsBuscaFichaFTC_PROC3: TStringField
      FieldName = 'FTC_PROC3'
      Size = 75
    end
    object SqlCdsBuscaFichaFTC_PROC4: TStringField
      FieldName = 'FTC_PROC4'
      Size = 75
    end
    object SqlCdsBuscaFichaFTC_PROC5: TStringField
      FieldName = 'FTC_PROC5'
      Size = 75
    end
    object SqlCdsBuscaFichaFTC_PROC6: TStringField
      FieldName = 'FTC_PROC6'
      Size = 75
    end
    object SqlCdsBuscaFichaFTC_PROC7: TStringField
      FieldName = 'FTC_PROC7'
      Size = 75
    end
    object SqlCdsBuscaFichaFTC_PROC8: TStringField
      FieldName = 'FTC_PROC8'
      Size = 75
    end
    object SqlCdsBuscaFichaFTC_FIXO: TFMTBCDField
      FieldName = 'FTC_FIXO'
      Precision = 15
    end
    object SqlCdsBuscaFichaFTC_COMPLE: TFMTBCDField
      FieldName = 'FTC_COMPLE'
      Precision = 15
    end
    object SqlCdsBuscaFichaFTC_INDIRETA: TFMTBCDField
      FieldName = 'FTC_INDIRETA'
      Precision = 15
    end
    object SqlCdsBuscaFichaFTC_LUCROUNID: TFMTBCDField
      FieldName = 'FTC_LUCROUNID'
      Precision = 15
    end
    object SqlCdsBuscaFichaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsBuscaFichaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsBuscaFichaPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsBuscaFichaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsBuscaFichaPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
  end
  object SqlCdsItensFichas: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select I1.PRG_REGISTRO,I1.FTI_REGISTRO,I1.PRD_REFER,I1.PRD_REFER' +
      '_ITENS,P1.PRD_CODIGO, P1.PRD_DESCRI,P1.PRD_PCUSTO,P1.PRD_ESTOQUE' +
      ',P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA,P1.P' +
      'RD_UND,P2.PTI_SIGLA,F1.FTC_BASEFORMULA,I1.FTI_MODE1,I1.FTI_MODE2' +
      ',I1.FTI_MODE3,I1.FTI_MODE4,I1.FTI_MODE5,I1.FTI_MODE6,I1.FTI_MODE' +
      '7,I1.FTI_MODE8,I1.FTI_UC FROM FTC_IT01 I1 LEFT JOIN PRD0000 P1 o' +
      'n (I1.PRD_REFER_ITENS = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (' +
      'P1.PTI_CODIGO = P2.PTI_CODIGO) left JOIN FTC0000 F1 ON (I1.PRD_R' +
      'EFER = F1.PRD_REFER)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FetchOnDemand = False
    Params = <>
    CommandText = 
      'Select I1.PRG_REGISTRO,I1.FTI_REGISTRO,I1.PRD_REFER,I1.PRD_REFER' +
      '_ITENS,P1.PRD_CODIGO, P1.PRD_DESCRI,P1.PRD_PCUSTO,P1.PRD_ESTOQUE' +
      ',P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA,P1.P' +
      'RD_UND,P2.PTI_SIGLA,F1.FTC_BASEFORMULA,I1.FTI_MODE1,I1.FTI_MODE2' +
      ',I1.FTI_MODE3,I1.FTI_MODE4,I1.FTI_MODE5,I1.FTI_MODE6,I1.FTI_MODE' +
      '7,I1.FTI_MODE8,I1.FTI_UC FROM FTC_IT01 I1 LEFT JOIN PRD0000 P1 o' +
      'n (I1.PRD_REFER_ITENS = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (' +
      'P1.PTI_CODIGO = P2.PTI_CODIGO) left JOIN FTC0000 F1 ON (I1.PRD_R' +
      'EFER = F1.PRD_REFER)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1121
    Top = 497
    object SqlCdsItensFichasPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensFichasPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensFichasPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsItensFichasPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsItensFichasPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlCdsItensFichasPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlCdsItensFichasPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlCdsItensFichasPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlCdsItensFichasPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      Precision = 15
    end
    object SqlCdsItensFichasPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsItensFichasPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsItensFichasFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsItensFichasFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlCdsItensFichasFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlCdsItensFichasFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlCdsItensFichasFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlCdsItensFichasFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlCdsItensFichasFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlCdsItensFichasFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlCdsItensFichasFTI_UC: TFloatField
      FieldName = 'FTI_UC'
    end
    object SqlCdsItensFichasPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsItensFichasPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
    end
    object SqlCdsItensFichasFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      Required = True
    end
    object SqlCdsItensFichasFTC_BASEFORMULA: TIntegerField
      FieldName = 'FTC_BASEFORMULA'
    end
    object SqlCdsItensFichasOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
    end
  end
  object SqlCdsConsumo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select T2.PRD_REFER, T2.EMP_CODIGO, P1.PRD_CODIGO, T2.PED_CODIGO' +
      ', T2.CLI_CODIGO, T2.PS2_LOTE, T2.PS2_FICHA, P1.PRD_DESCRI, P1.PR' +
      'D_UND, P2.PTI_SIGLA,P1.PRD_PCUSTO, P1.PRD_DCVAR1, P1.PRD_ESTOQUE' +
      ', P1.PRD_ENTRADA, P1.PRD_SAIDA, P1.PRD_PENDENTE, P1.PRD_RESERVA,' +
      ' T2.PS2_QTDE AS WQTDE, T2.PS2_QTDE_CONVERTIDA AS CONV, T2.PS2_QT' +
      'DE1 AS WQTDE1, T2.PS2_ORDEM_COMPRA, T2.PS2_RESPONSAVEL, T2.PS2_G' +
      'ERAR_PI, T2.PS2_DTENTREGA from PSV_IT02 T2 LEFT JOIN PRD0000 P1 ' +
      'ON (T2.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PT' +
      'I_CODIGO = P2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select T2.PRD_REFER, T2.EMP_CODIGO, P1.PRD_CODIGO, T2.PED_CODIGO' +
      ', T2.CLI_CODIGO, T2.PS2_LOTE, T2.PS2_FICHA, P1.PRD_DESCRI, P1.PR' +
      'D_UND, P2.PTI_SIGLA,P1.PRD_PCUSTO, P1.PRD_DCVAR1, P1.PRD_ESTOQUE' +
      ', P1.PRD_ENTRADA, P1.PRD_SAIDA, P1.PRD_PENDENTE, P1.PRD_RESERVA,' +
      ' T2.PS2_QTDE AS WQTDE, T2.PS2_QTDE_CONVERTIDA AS CONV, T2.PS2_QT' +
      'DE1 AS WQTDE1, T2.PS2_ORDEM_COMPRA, T2.PS2_RESPONSAVEL, T2.PS2_G' +
      'ERAR_PI, T2.PS2_DTENTREGA from PSV_IT02 T2 LEFT JOIN PRD0000 P1 ' +
      'ON (T2.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PT' +
      'I_CODIGO = P2.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1424
    Top = 593
    object SqlCdsConsumoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlCdsConsumoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsConsumoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object SqlCdsConsumoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsConsumoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsConsumoPS2_LOTE: TStringField
      FieldName = 'PS2_LOTE'
      Size = 13
    end
    object SqlCdsConsumoPS2_FICHA: TStringField
      FieldName = 'PS2_FICHA'
      Size = 1
    end
    object SqlCdsConsumoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlCdsConsumoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsConsumoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsConsumoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 18
      Size = 5
    end
    object SqlCdsConsumoPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsConsumoPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 18
      Size = 5
    end
    object SqlCdsConsumoPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 18
      Size = 5
    end
    object SqlCdsConsumoPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 18
      Size = 5
    end
    object SqlCdsConsumoPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 18
      Size = 5
    end
    object SqlCdsConsumoPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      Precision = 18
      Size = 5
    end
    object SqlCdsConsumoWQTDE: TFMTBCDField
      FieldName = 'WQTDE'
      Precision = 18
      Size = 5
    end
    object SqlCdsConsumoCONV: TFMTBCDField
      FieldName = 'CONV'
      Precision = 18
      Size = 5
    end
    object SqlCdsConsumoWQTDE1: TFMTBCDField
      FieldName = 'WQTDE1'
      Precision = 18
      Size = 5
    end
    object SqlCdsConsumoPS2_ORDEM_COMPRA: TStringField
      FieldName = 'PS2_ORDEM_COMPRA'
      Size = 30
    end
    object SqlCdsConsumoPS2_RESPONSAVEL: TStringField
      FieldName = 'PS2_RESPONSAVEL'
      Size = 50
    end
    object SqlCdsConsumoPS2_GERAR_PI: TStringField
      FieldName = 'PS2_GERAR_PI'
      Size = 1
    end
    object SqlCdsConsumoPS2_DTENTREGA: TSQLTimeStampField
      FieldName = 'PS2_DTENTREGA'
    end
  end
  object SqlCdsN1: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'I1.PRD_REFER,'#13#10'I1.PRD_REFER_ITENS,'#13#10'P1.PRD_DESCRI,'#13#10'P1.P' +
      'RD_PCUSTO,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.' +
      'PRD_PENDENTE,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'I1.F' +
      'TI_MODE1,'#13#10'I1.FTI_MODE2,'#13#10'I1.FTI_MODE3,'#13#10'I1.FTI_MODE4,'#13#10'I1.FTI_M' +
      'ODE5,'#13#10'I1.FTI_MODE6,'#13#10'I1.FTI_MODE7,'#13#10'I1.FTI_MODE8,'#13#10'I1.FTI_UC '#13#10 +
      'FROM FTC_IT01 I1'#13#10'JOIN PRD0000 P1 ON (I1.PRD_REFER_ITENS = P1.PR' +
      'D_REFER)'#13#10'JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Filter = 'PTI_SIGLA = '#39'PA'#39'  AND PTI_SIGLA = '#39'PI'#39
    Params = <>
    CommandText = 
      'SELECT'#13#10'I1.PRD_REFER,'#13#10'I1.PRD_REFER_ITENS,'#13#10'P1.PRD_DESCRI,'#13#10'P1.P' +
      'RD_PCUSTO,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.' +
      'PRD_PENDENTE,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'I1.F' +
      'TI_MODE1,'#13#10'I1.FTI_MODE2,'#13#10'I1.FTI_MODE3,'#13#10'I1.FTI_MODE4,'#13#10'I1.FTI_M' +
      'ODE5,'#13#10'I1.FTI_MODE6,'#13#10'I1.FTI_MODE7,'#13#10'I1.FTI_MODE8,'#13#10'I1.FTI_UC '#13#10 +
      'FROM FTC_IT01 I1'#13#10'JOIN PRD0000 P1 ON (I1.PRD_REFER_ITENS = P1.PR' +
      'D_REFER)'#13#10'JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1300
    Top = 481
    object SqlCdsN1PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsN1PRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsN1PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsN1PRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsN1PRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlCdsN1PRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlCdsN1PRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlCdsN1PRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlCdsN1PRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      Precision = 15
    end
    object SqlCdsN1PRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsN1PTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsN1FTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsN1FTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlCdsN1FTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlCdsN1FTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlCdsN1FTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlCdsN1FTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlCdsN1FTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlCdsN1FTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlCdsN1FTI_UC: TFloatField
      FieldName = 'FTI_UC'
    end
  end
  object ImageList1: TImageList
    Height = 15
    Left = 1495
    Top = 377
    Bitmap = {
      494C0101030005001C0010000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000000F0000000100200000000000000F
      000000000000000000000000000000000000E7EFF700E7EFF700E7EFF700E7EF
      F700E7EFF700E7EFF700E7EFF700E7EFF700E7EFF700E7EFF700E7EFF700E7EF
      F700E7EFF700E7EFF700E7EFF700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400848484000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      8400000084008484840084848400000000000000FF0000000000848484008484
      8400000000000000000000000000000000000000000000000000008400000084
      0000008400000084000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      8400000084000000000084848400848484000000840000008400000000008484
      8400000000000000000000000000000000000000000000000000008400000084
      0000008400000084000000840000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      FF00000084000000840000000000000084000000840000008400000084000000
      0000000000000000000000000000000000000000000000000000008400000084
      00000084000000FF000000840000008400008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF000000840000008400000084000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000008400000084
      0000840000000000000000FF0000008400000084000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000008400000084000000840084848400848484000000
      000000000000000000000000000000000000000000000000000000FF00000084
      000084000000000000000000000000FF00000084000000840000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000008400000084000000840000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000840000008400008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000008400000084000000FF000000840000008400000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008400000084
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008484
      84000000FF000000840000000000848484000000FF0000008400000084000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000008400000084008484840000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000008400008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300636B7300636B7300636B
      7300636B7300636B7300636B7300636B7300636B7300636B7300636B7300636B
      7300636B7300636B7300636B7300FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000400000000F0000000100010000000000780000000000000000000000
      000000000000000000000000FFFFFF000000FFFFFFFF00000000FFFFE7FF0000
      0000F39FC3FF00000000E10FC1FF00000000E00FC0FF00000000E01FC07F0000
      0000F03FC43F00000000F81FC61F00000000F80FFF0700000000F807FF830000
      0000E007FFC300000000F187FFE300000000F7C7FFFF00000000FFFFFFFF0000
      0000FFFFFFFF000000000000000000000000000000000000000000000000}
  end
  object PopMenuItens: TPopupMenu
    Left = 1405
    Top = 377
    object Ativa1: TMenuItem
      Caption = 'Ativa Ficha T'#233'cnica'
      OnClick = Ativa1Click
    end
  end
  object SqlCdsGerarOP: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'X1.PSI_REGISTRO,'#13#10'X1.PED_CODIGO,'#13#10'X1.PRD_REFER,'#13#10'X1.PRD_' +
      'REFER_ITENS,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'X1.PSI' +
      '_CONSUMO'#13#10'FROM PSV_IT01 X1'#13#10'LEFT JOIN PRD0000 P1 ON (X1.PRD_REFE' +
      'R_ITENS = P1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO' +
      ' = P2.PTI_CODIGO)'#13#10'WHERE X1.PED_CODIGO = '#39'000485'#39' AND ((P2.PTI_S' +
      'IGLA = '#39'PA'#39') or (P2.PTI_SIGLA = '#39'PI'#39'))'#13#10'ORDER BY'#13#10'X1.PSI_REGISTR' +
      'O'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'X1.PSI_REGISTRO,'#13#10'X1.PED_CODIGO,'#13#10'X1.PRD_REFER,'#13#10'X1.PRD_' +
      'REFER_ITENS,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'X1.PSI' +
      '_CONSUMO'#13#10'FROM PSV_IT01 X1'#13#10'LEFT JOIN PRD0000 P1 ON (X1.PRD_REFE' +
      'R_ITENS = P1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO' +
      ' = P2.PTI_CODIGO)'#13#10'WHERE X1.PED_CODIGO = '#39'000485'#39' AND ((P2.PTI_S' +
      'IGLA = '#39'PA'#39') or (P2.PTI_SIGLA = '#39'PI'#39'))'#13#10'ORDER BY'#13#10'X1.PSI_REGISTR' +
      'O'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1595
    Top = 489
    object SqlCdsGerarOPPSI_REGISTRO: TIntegerField
      FieldName = 'PSI_REGISTRO'
      Required = True
    end
    object SqlCdsGerarOPPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsGerarOPPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsGerarOPPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsGerarOPPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsGerarOPPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsGerarOPPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsGerarOPPSI_CONSUMO: TFMTBCDField
      FieldName = 'PSI_CONSUMO'
      Precision = 15
    end
  end
  object SqlCdsFicha: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'Select'#13#10'F1.*'#13#10'from FTC0000 F1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select'#13#10'F1.*'#13#10'from FTC0000 F1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1499
    Top = 481
    object SqlCdsFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object SqlCdsFichaFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
    end
    object SqlCdsFichaFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
    end
    object SqlCdsFichaFTC_PROC1: TStringField
      FieldName = 'FTC_PROC1'
      Size = 75
    end
    object SqlCdsFichaFTC_PROC2: TStringField
      FieldName = 'FTC_PROC2'
      Size = 75
    end
    object SqlCdsFichaFTC_PROC3: TStringField
      FieldName = 'FTC_PROC3'
      Size = 75
    end
    object SqlCdsFichaFTC_PROC4: TStringField
      FieldName = 'FTC_PROC4'
      Size = 75
    end
    object SqlCdsFichaFTC_PROC5: TStringField
      FieldName = 'FTC_PROC5'
      Size = 75
    end
    object SqlCdsFichaFTC_PROC6: TStringField
      FieldName = 'FTC_PROC6'
      Size = 75
    end
    object SqlCdsFichaFTC_PROC7: TStringField
      FieldName = 'FTC_PROC7'
      Size = 75
    end
    object SqlCdsFichaFTC_PROC8: TStringField
      FieldName = 'FTC_PROC8'
      Size = 75
    end
    object SqlCdsFichaFTC_FIXO: TFMTBCDField
      FieldName = 'FTC_FIXO'
      Precision = 15
    end
    object SqlCdsFichaFTC_COMPLE: TFMTBCDField
      FieldName = 'FTC_COMPLE'
      Precision = 15
    end
    object SqlCdsFichaFTC_INDIRETA: TFMTBCDField
      FieldName = 'FTC_INDIRETA'
      Precision = 15
    end
    object SqlCdsFichaFTC_LUCROUNID: TFMTBCDField
      FieldName = 'FTC_LUCROUNID'
      Precision = 15
    end
    object SqlCdsFichaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object CdsTemp: TClientDataSet
    PersistDataPacket.Data = {
      3D0300009619E0BD01000000180000001A0000000000030000003D0305524546
      455201004900000001000557494454480200020014000C52454645525F4F5249
      47454E0100490000000100055749445448020002001400064E554D5F4F500100
      4900000001000557494454480200020014000D4E554D5F4F505F4F524947454E
      0100490000000100055749445448020002001400035041490100490000000100
      0557494454480200020001000F515444455F534F4C4943495441444108000400
      0000010007535542545950450200490006004D6F6E6579000451544445080004
      000000010007535542545950450200490006004D6F6E65790004564152310800
      04000000010007535542545950450200490006004D6F6E657900045641523208
      0004000000010007535542545950450200490006004D6F6E6579000456415233
      080004000000010007535542545950450200490006004D6F6E65790004564152
      34080004000000010007535542545950450200490006004D6F6E657900045641
      5235080004000000010007535542545950450200490006004D6F6E6579000456
      415236080004000000010007535542545950450200490006004D6F6E65790004
      56415237080004000000010007535542545950450200490006004D6F6E657900
      0456415238080004000000010007535542545950450200490006004D6F6E6579
      00055349474C4101004900000001000557494454480200020002000255430800
      04000000010007535542545950450200490006004D6F6E6579000B5354415455
      535F5052455601004900000001000557494454480200020014000A5045445F43
      4F4449474F010049000000010005574944544802000200140008564152494143
      414F0100490000000100055749445448020002000C0006434F44434C49010049
      0000000100055749445448020002000500074E554D4C4F544501004900000001
      00055749445448020002000D0004434F4E560800040000000100075355425459
      50450200490006004D6F6E6579000B4F5244454D434F4D505241010049000000
      0100055749445448020002001E000B524553504F4E534156454C010049000000
      01000557494454480200020032000847455241525F5049020003000000000000
      00}
    Active = True
    Aggregates = <>
    AutoCalcFields = False
    FieldDefs = <
      item
        Name = 'REFER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REFER_ORIGEN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUM_OP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUM_OP_ORIGEN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PAI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QTDE_SOLICITADA'
        DataType = ftCurrency
      end
      item
        Name = 'QTDE'
        DataType = ftCurrency
      end
      item
        Name = 'VAR1'
        DataType = ftCurrency
      end
      item
        Name = 'VAR2'
        DataType = ftCurrency
      end
      item
        Name = 'VAR3'
        DataType = ftCurrency
      end
      item
        Name = 'VAR4'
        DataType = ftCurrency
      end
      item
        Name = 'VAR5'
        DataType = ftCurrency
      end
      item
        Name = 'VAR6'
        DataType = ftCurrency
      end
      item
        Name = 'VAR7'
        DataType = ftCurrency
      end
      item
        Name = 'VAR8'
        DataType = ftCurrency
      end
      item
        Name = 'SIGLA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'UC'
        DataType = ftCurrency
      end
      item
        Name = 'STATUS_PREV'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PED_CODIGO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VARIACAO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'CODCLI'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NUMLOTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CONV'
        DataType = ftCurrency
      end
      item
        Name = 'ORDEMCOMPRA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'RESPONSAVEL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'GERAR_PI'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1080
    Top = 560
    object CdsTempREFER: TStringField
      FieldName = 'REFER'
    end
    object CdsTempREFER_ORIGEN: TStringField
      FieldName = 'REFER_ORIGEN'
    end
    object CdsTempNUM_OP: TStringField
      FieldName = 'NUM_OP'
    end
    object CdsTempNUM_OP_ORIGEN: TStringField
      FieldName = 'NUM_OP_ORIGEN'
    end
    object CdsTempPAI: TStringField
      FieldName = 'PAI'
      Size = 1
    end
    object CdsTempQTDE_SOLICITADA: TCurrencyField
      FieldName = 'QTDE_SOLICITADA'
    end
    object CdsTempQTDE: TCurrencyField
      FieldName = 'QTDE'
    end
    object CdsTempVAR1: TCurrencyField
      FieldName = 'VAR1'
    end
    object CdsTempVAR2: TCurrencyField
      FieldName = 'VAR2'
    end
    object CdsTempVAR3: TCurrencyField
      FieldName = 'VAR3'
    end
    object CdsTempVAR4: TCurrencyField
      FieldName = 'VAR4'
    end
    object CdsTempVAR5: TCurrencyField
      FieldName = 'VAR5'
    end
    object CdsTempVAR6: TCurrencyField
      FieldName = 'VAR6'
    end
    object CdsTempVAR7: TCurrencyField
      FieldName = 'VAR7'
    end
    object CdsTempVAR8: TCurrencyField
      FieldName = 'VAR8'
    end
    object CdsTempSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 2
    end
    object CdsTempUC: TCurrencyField
      FieldName = 'UC'
      currency = False
    end
    object CdsTempSTATUS_PREV: TStringField
      FieldName = 'STATUS_PREV'
    end
    object CdsTempPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
    end
    object CdsTempVARIACAO: TStringField
      FieldName = 'VARIACAO'
      Size = 12
    end
    object CdsTempCODCLI: TStringField
      FieldName = 'CODCLI'
      Size = 5
    end
    object CdsTempNUMLOTE: TStringField
      FieldName = 'NUMLOTE'
      Size = 13
    end
    object CdsTempCONV: TCurrencyField
      FieldName = 'CONV'
    end
    object CdsTempORDEMCOMPRA: TStringField
      FieldName = 'ORDEMCOMPRA'
      Size = 30
    end
    object CdsTempRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object CdsTempGERAR_PI: TBooleanField
      FieldName = 'GERAR_PI'
    end
  end
  object DsTemp: TDataSource
    DataSet = CdsTemp
    Left = 1088
    Top = 617
  end
  object SqlCdsAux: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select F1.PRD_REFER,F1.FTC_CRIACAO,F1.FTC_TUP,P1.PRF_PRECO'#13#10'from' +
      ' PED_IT01 P1'#13#10'left join FTC0000 F1 on (F1.PRD_REFER = P1.PRD_REF' +
      'ER)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select F1.PRD_REFER,F1.FTC_CRIACAO,F1.FTC_TUP,P1.PRF_PRECO'#13#10'from' +
      ' PED_IT01 P1'#13#10'left join FTC0000 F1 on (F1.PRD_REFER = P1.PRD_REF' +
      'ER)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1252
    Top = 497
    object SqlCdsAuxPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsAuxFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
    end
    object SqlCdsAuxFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
    end
    object SqlCdsAuxPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      Precision = 15
    end
  end
  object SqlCdsProc_Prod: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'X1.osv_codigo,'#13#10'X1.EMP_CODIGO,'#13#10'X1.ped_codigo'#13#10'from OSV0' +
      '001 X1'#13#10'where X1.osv_CODIGO_pai = '#39'002941'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'X1.osv_codigo,'#13#10'X1.EMP_CODIGO,'#13#10'X1.ped_codigo'#13#10'from OSV0' +
      '001 X1'#13#10'where X1.osv_CODIGO_pai = '#39'002941'#39
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1184
    Top = 545
    object SqlCdsProc_ProdOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Required = True
      Size = 8
    end
    object SqlCdsProc_ProdEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsProc_ProdPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
  end
  object Cds_Prod_Conv: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'    T1.PRD_REFER,'#13#10'    COALESCE(T1.PRD_UTILCONV,'#39'N'#39') AS ' +
      'PRD_UTILCONV,'#13#10'    COALESCE(T1.PRD_FATORC,0) AS PRD_FATORC,'#13#10'   ' +
      ' COALESCE(T1.PRD_DIVMULT,'#39'N'#39') AS PRD_DIVMULT'#13#10'FROM PRD0000  T1'#13#10 +
      '   WHERE T1.PRD_REFER = '#39'301435'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'    T1.PRD_REFER,'#13#10'    COALESCE(T1.PRD_UTILCONV,'#39'N'#39') AS ' +
      'PRD_UTILCONV,'#13#10'    COALESCE(T1.PRD_FATORC,0) AS PRD_FATORC,'#13#10'   ' +
      ' COALESCE(T1.PRD_DIVMULT,'#39'N'#39') AS PRD_DIVMULT'#13#10'FROM PRD0000  T1'#13#10 +
      '   WHERE T1.PRD_REFER = '#39'301435'#39
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1056
    Top = 480
    object Cds_Prod_ConvPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object Cds_Prod_ConvPRD_UTILCONV: TStringField
      FieldName = 'PRD_UTILCONV'
      Size = 1
    end
    object Cds_Prod_ConvPRD_FATORC: TFMTBCDField
      FieldName = 'PRD_FATORC'
      Precision = 15
    end
    object Cds_Prod_ConvPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      Size = 1
    end
  end
  object SQLCdsAlmox: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from ALMOX0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from ALMOX0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1196
    Top = 603
    object SQLCdsAlmoxAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 3
    end
    object SQLCdsAlmoxAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 35
    end
    object SQLCdsAlmoxAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 35
    end
    object SQLCdsAlmoxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
  end
  object SqlCdsParam: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'P2.PMT_OPS_CONCLUIR,'#13#10'P2.PMT_CELULAPROD, '#13#10'P2.PMT_VARIA' +
      'COES,'#13#10'P2.PMT_MDL_OP, '#13#10'P2.PMT_PROCESPROD, '#13#10'P2.PMT_EMPRESACLASS' +
      'E,'#13#10'P2.PMT_UNFORMULA '#13#10'from PRMT0001 P2'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'P2.PMT_OPS_CONCLUIR,'#13#10'P2.PMT_CELULAPROD, '#13#10'P2.PMT_VARIA' +
      'COES,'#13#10'P2.PMT_MDL_OP, '#13#10'P2.PMT_PROCESPROD, '#13#10'P2.PMT_EMPRESACLASS' +
      'E,'#13#10'P2.PMT_UNFORMULA '#13#10'from PRMT0001 P2'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1000
    Top = 500
    object SqlCdsParamPMT_CELULAPROD: TStringField
      FieldName = 'PMT_CELULAPROD'
      Size = 1
    end
    object SqlCdsParamPMT_VARIACOES: TStringField
      FieldName = 'PMT_VARIACOES'
      Size = 1
    end
    object SqlCdsParamPMT_MDL_OP: TStringField
      FieldName = 'PMT_MDL_OP'
      Size = 1
    end
    object SqlCdsParamPMT_PROCESPROD: TStringField
      FieldName = 'PMT_PROCESPROD'
      Size = 1
    end
    object SqlCdsParamPMT_UNFORMULA: TSmallintField
      FieldName = 'PMT_UNFORMULA'
    end
    object SqlCdsParamPMT_EMPRESACLASSE: TStringField
      FieldName = 'PMT_EMPRESACLASSE'
      Size = 1
    end
    object SqlCdsParamPMT_OPS_CONCLUIR: TStringField
      FieldName = 'PMT_OPS_CONCLUIR'
      Size = 1
    end
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select cli_codigo, cli_razao'
      'from cli0000'
      'where cli_codigo='#39'-1'#39)
    SQLConnection = DataCadastros.SQLConnection1
    Left = 584
    Top = 417
  end
  object DsConsumo: TDataSource
    DataSet = SqlCdsConsumo
    Left = 1512
    Top = 601
  end
end
