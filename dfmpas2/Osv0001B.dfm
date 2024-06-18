object FormOrdServCentroB: TFormOrdServCentroB
  Left = 0
  Top = -5
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerar de Produ'#231#227'o'
  ClientHeight = 551
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grp_Pedidos: TGroupBox
    Left = 0
    Top = 51
    Width = 397
    Height = 375
    Caption = 'Pedidos adicionados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object DBGridGrupo: TDBGrid
      Left = 2
      Top = 15
      Width = 393
      Height = 274
      Color = 16776176
      DataSource = DsPsvGrupo
      FixedColor = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGridGrupoCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'PED_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'Pedido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_RAZAO'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 315
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 3
      Top = 290
      Width = 391
      Height = 43
      BevelOuter = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 5
        Top = 16
        Width = 44
        Height = 13
        Caption = 'Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedPedido: TSpeedButton
        Left = 127
        Top = 12
        Width = 24
        Height = 21
        Hint = 'Busca Pedido'
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
        OnClick = SpeedPedidoClick
      end
      object EdtPedido: TEdit
        Left = 50
        Top = 12
        Width = 75
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 0
        OnEnter = EdtPedidoEnter
        OnExit = EdtPedidoExit
      end
      object Pan_Razao: TPanel
        Left = 153
        Top = 12
        Width = 235
        Height = 21
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 3
      Top = 335
      Width = 200
      Height = 35
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Bit_ExcluirPedido: TBitBtn
        Left = 4
        Top = 5
        Width = 190
        Height = 25
        Caption = 'E&xcluir Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = Bit_ExcluirPedidoClick
      end
    end
  end
  object Grp_Itens: TGroupBox
    Left = 395
    Top = 51
    Width = 397
    Height = 375
    Caption = 'Produtos adicionados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object DBGridItens: TDBGrid
      Left = 2
      Top = 15
      Width = 393
      Height = 274
      Color = 16776176
      DataSource = DsPs2
      FixedColor = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopMenuItens
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGridItensCellClick
      OnDrawColumnCell = DBGridItensDrawColumnCell
      OnDblClick = DBGridItensDblClick
      OnKeyPress = DBGridItensKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 164
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PS2_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'Pedido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PS2_FICHA_CC'
          Title.Alignment = taCenter
          Title.Caption = 'F.T'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 21
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 3
      Top = 290
      Width = 391
      Height = 43
      BevelOuter = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 5
        Top = 16
        Width = 67
        Height = 13
        Caption = 'Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedProduto: TSpeedButton
        Left = 175
        Top = 12
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
        OnClick = SpeedProdutoClick
      end
      object Label3: TLabel
        Left = 209
        Top = 16
        Width = 70
        Height = 13
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdtReferencia: TEdit
        Left = 73
        Top = 12
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 11
        ParentFont = False
        TabOrder = 0
        OnClick = EdtReferenciaClick
        OnEnter = EdtReferenciaEnter
        OnExit = EdtReferenciaExit
      end
      object CurrQtde: TRxCalcEdit
        Left = 279
        Top = 12
        Width = 107
        Height = 21
        AutoSize = False
        DisplayFormat = '#0'
        NumGlyphs = 2
        TabOrder = 1
        OnEnter = CurrQtdeEnter
        OnExit = CurrQtdeExit
      end
    end
    object Panel6: TPanel
      Left = 3
      Top = 335
      Width = 200
      Height = 35
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Bit_ExcluirItem: TBitBtn
        Left = 4
        Top = 5
        Width = 190
        Height = 25
        Caption = 'Ex&cluir Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = Bit_ExcluirItemClick
      end
    end
  end
  object Grp_Tipo: TGroupBox
    Left = 0
    Top = 0
    Width = 397
    Height = 50
    Caption = 'Tipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 3
      Top = 16
      Width = 391
      Height = 27
      BevelOuter = bvLowered
      TabOrder = 0
      object Rad_simula: TRadioButton
        Left = 32
        Top = 7
        Width = 81
        Height = 17
        Caption = 'Si&mula'#231#227'o'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = Rad_simulaClick
      end
      object Rad_Real: TRadioButton
        Left = 208
        Top = 7
        Width = 46
        Height = 17
        Caption = '&Real'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Rad_simulaClick
      end
    end
  end
  object Grp_OP: TGroupBox
    Left = 395
    Top = 0
    Width = 397
    Height = 50
    Caption = 'Abrir Ordem Produ'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 3
      Top = 16
      Width = 391
      Height = 27
      BevelOuter = bvLowered
      TabOrder = 0
      object Rad_Pedido: TRadioButton
        Left = 55
        Top = 7
        Width = 85
        Height = 17
        Caption = 'Por P&edido'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = Rad_PedidoClick
      end
      object Rad_Item: TRadioButton
        Left = 218
        Top = 6
        Width = 95
        Height = 17
        Caption = 'Por Pr&oduto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Rad_PedidoClick
      end
    end
  end
  object Pan_Gerar: TPanel
    Left = 0
    Top = 510
    Width = 391
    Height = 35
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 10841658
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Bit_GeraSimulacao: TBitBtn
      Left = 5
      Top = 5
      Width = 190
      Height = 25
      Caption = 'Gerar Sim&ula'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = Bit_GeraSimulacaoClick
    end
    object Bit_GeraOP: TBitBtn
      Left = 195
      Top = 5
      Width = 190
      Height = 25
      Caption = '&Gerar Ordem de Produ'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_GeraOPClick
    end
  end
  object Pan_Menu: TPanel
    Left = 520
    Top = 510
    Width = 271
    Height = 35
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 10841658
    TabOrder = 5
    object Bit_Sair: TBitBtn
      Left = 166
      Top = 5
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_SairClick
    end
    object BitLimpar: TBitBtn
      Left = 5
      Top = 5
      Width = 160
      Height = 25
      Cursor = crHandPoint
      Hint = 'Item agregado ao produto'
      Caption = '&Limpar Simula'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        4E070000424D4E0700000000000036040000280000002B000000120000000100
        08000000000018030000C40E0000C40E00000001000000000000000000007B00
        0000FF000000007B00007B7B000000FF0000FFFF0000007B7B007B7B7B00BDBD
        BD0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00090909090909
        0909090909090909090909090909090909090909090909090909090909090909
        0909090909000909090909090909090909090909090909090909090909090909
        0909090909090909000000000909090909000909090909090909090909090909
        0909090909090909090909090909090909090000090908080009090909000909
        0909090909090909090909090909090909090909090909090909090900000909
        0909080800090909090009090909090909090909090909090909090909090909
        0909090909090000090903090909080800090909090009090909090101010101
        0101010109090909090909090909090909090809090303030309080808000909
        0900090909090901060606060606060109090909090909090909090909090809
        0309030903090808080009090900090900000001060000000000060109090909
        0909090909090909090809090309090909090808080009090900090900060601
        0606060606060601090909090909090209090909090809030303090303090808
        0800090909000909000600010600000000000601090909090909090202090909
        0908090903090903030908080808000909000909000606010606060606060601
        090909020202020202020909090809090903030B0B0B0B080808000909000909
        00060001060000060101010109090902020202020202090908090909090B0B08
        0808080B0B080009090009090006060106060606010601090909090909090902
        020909090809090B0B08080B080B0B080B0B0009090009090006000106060606
        01010909090909090909090209090909080B0B08080B0B0B080B0B0808080909
        090009090006060101010101010909090909090909090909090909090808080B
        0B0B0B080B0B0B08090909090900090900060606060000090909090909090909
        0909090909090909090908080B0B080B0B080809090909090900090900000000
        00000909090909090909090909090909090909090909090908080B0808090909
        0909090909000909090909090909090909090909090909090909090909090909
        090909090909090909090909090909090900}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = BitLimparClick
    end
  end
  object PanVariacao: TPanel
    Left = 519
    Top = 541
    Width = 342
    Height = 374
    TabOrder = 6
    Visible = False
    object Panel9: TPanel
      Left = 2
      Top = 3
      Width = 337
      Height = 21
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Informe as varia'#231#245'es'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object BitConfirmar: TBitBtn
      Left = 139
      Top = 343
      Width = 100
      Height = 25
      Caption = 'Co&nfirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = BitConfirmarClick
    end
    object BitCancelItem: TBitBtn
      Left = 239
      Top = 343
      Width = 100
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
      OnClick = BitCancelItemClick
    end
    object GroupBox5: TGroupBox
      Left = 3
      Top = 24
      Width = 337
      Height = 313
      TabOrder = 1
      object Bevel3: TBevel
        Left = 232
        Top = 82
        Width = 2
        Height = 230
      end
      object Label54: TLabel
        Left = 4
        Top = 14
        Width = 55
        Height = 13
        Caption = 'Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 1
        Top = 80
        Width = 335
        Height = 2
      end
      object Label56: TLabel
        Left = 8
        Top = 37
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
      object Label55: TLabel
        Left = 33
        Top = 60
        Width = 26
        Height = 13
        Caption = 'Qtde:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 1
        Top = 100
        Width = 336
        Height = 2
      end
      object Label57: TLabel
        Left = 23
        Top = 84
        Width = 142
        Height = 13
        Caption = 'Descri'#231#227'o das Varia'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label58: TLabel
        Left = 259
        Top = 85
        Width = 66
        Height = 13
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel4: TBevel
        Left = 0
        Top = 282
        Width = 336
        Height = 2
      end
      object Label59: TLabel
        Left = 23
        Top = 292
        Width = 129
        Height = 13
        Caption = 'Total das Varia'#231#245'es ->'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdtRef: TEdit
        Left = 59
        Top = 10
        Width = 121
        Height = 21
        Color = 14145495
        ReadOnly = True
        TabOrder = 0
      end
      object EdtDescricaoVar: TEdit
        Left = 59
        Top = 33
        Width = 273
        Height = 21
        Color = 14145495
        ReadOnly = True
        TabOrder = 1
      end
      object CurrQtdeProd: TCurrencyEdit
        Left = 59
        Top = 56
        Width = 88
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DecimalPlaces = 4
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        ZeroEmpty = False
      end
      object CurrTotVar: TCurrencyEdit
        Left = 236
        Top = 288
        Width = 98
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DecimalPlaces = 4
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
        ZeroEmpty = False
      end
      object CurrVar1: TCurrencyEdit
        Left = 236
        Top = 104
        Width = 98
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        ZeroEmpty = False
        OnClick = CurrVar1Click
        OnEnter = CurrVar1Click
        OnExit = CurrVar1Exit
      end
      object CurrVar2: TCurrencyEdit
        Left = 236
        Top = 126
        Width = 98
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        ZeroEmpty = False
        OnClick = CurrVar2Click
        OnEnter = CurrVar2Click
        OnExit = CurrVar2Exit
      end
      object CurrVar3: TCurrencyEdit
        Left = 236
        Top = 148
        Width = 98
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        ZeroEmpty = False
        OnClick = CurrVar3Click
        OnEnter = CurrVar3Click
        OnExit = CurrVar3Exit
      end
      object CurrVar4: TCurrencyEdit
        Left = 236
        Top = 170
        Width = 98
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        ZeroEmpty = False
        OnClick = CurrVar4Click
        OnEnter = CurrVar4Click
        OnExit = CurrVar4Exit
      end
      object CurrVar5: TCurrencyEdit
        Left = 236
        Top = 192
        Width = 98
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        ZeroEmpty = False
        OnClick = CurrVar5Click
        OnEnter = CurrVar5Click
        OnExit = CurrVar5Exit
      end
      object CurrVar6: TCurrencyEdit
        Left = 236
        Top = 214
        Width = 98
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        ZeroEmpty = False
        OnClick = CurrVar6Click
        OnEnter = CurrVar6Click
        OnExit = CurrVar6Exit
      end
      object CurrVar7: TCurrencyEdit
        Left = 236
        Top = 236
        Width = 98
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        ZeroEmpty = False
        OnClick = CurrVar7Click
        OnEnter = CurrVar7Click
        OnExit = CurrVar7Exit
      end
      object CurrVar8: TCurrencyEdit
        Left = 236
        Top = 258
        Width = 98
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        ZeroEmpty = False
        OnClick = CurrVar8Click
        OnEnter = CurrVar8Click
        OnExit = CurrVar8Exit
      end
      object EdtVar1: TEdit
        Left = 3
        Top = 104
        Width = 220
        Height = 21
        TabStop = False
        Color = 14145495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        Text = 'EdtVar1'
      end
      object EdtVar2: TEdit
        Left = 3
        Top = 126
        Width = 220
        Height = 21
        TabStop = False
        Color = 14145495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        Text = 'EdtVar2'
      end
      object EdtVar3: TEdit
        Left = 3
        Top = 148
        Width = 220
        Height = 21
        TabStop = False
        Color = 14145495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        Text = 'EdtVar3'
      end
      object EdtVar4: TEdit
        Left = 3
        Top = 170
        Width = 220
        Height = 21
        TabStop = False
        Color = 14145495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        Text = 'EdtVar4'
      end
      object EdtVar5: TEdit
        Left = 3
        Top = 192
        Width = 220
        Height = 21
        TabStop = False
        Color = 14145495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        Text = 'EdtVar5'
      end
      object EdtVar6: TEdit
        Left = 3
        Top = 214
        Width = 220
        Height = 21
        TabStop = False
        Color = 14145495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        Text = 'EdtVar6'
      end
      object EdtVar7: TEdit
        Left = 3
        Top = 236
        Width = 220
        Height = 21
        TabStop = False
        Color = 14145495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        Text = 'EdtVar7'
      end
      object EdtVar8: TEdit
        Left = 3
        Top = 258
        Width = 220
        Height = 21
        TabStop = False
        Color = 14145495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        Text = 'EdtVar8'
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 429
    Width = 791
    Height = 78
    BevelOuter = bvLowered
    TabOrder = 7
    object PAN_OP: TPanel
      Left = 2
      Top = 3
      Width = 786
      Height = 72
      BevelOuter = bvNone
      Caption = 'PAN_OP'
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 3
        Top = -1
        Width = 281
        Height = 70
        TabOrder = 0
        object Label4: TLabel
          Left = 5
          Top = 30
          Width = 58
          Height = 13
          Caption = '&Quantidade:'
        end
        object Label5: TLabel
          Left = 110
          Top = 30
          Width = 152
          Height = 13
          Caption = 'M'#225'xima por Ordem de Produ'#231#227'o'
        end
        object CurrQtdeOP: TCurrencyEdit
          Left = 65
          Top = 27
          Width = 43
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ZeroEmpty = False
        end
      end
      object GroupBox3: TGroupBox
        Left = 282
        Top = -1
        Width = 165
        Height = 70
        TabOrder = 1
        object Rad_OA: TRadioButton
          Left = 8
          Top = 11
          Width = 113
          Height = 17
          Caption = 'Ordens &Abertas'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RAD_OP: TRadioButton
          Left = 8
          Top = 49
          Width = 121
          Height = 17
          Caption = 'Ordens em &Produ'#231#227'o'
          TabOrder = 2
        end
        object RAD_OR: TRadioButton
          Left = 8
          Top = 30
          Width = 113
          Height = 17
          Caption = 'Ordens c/Reser&vas'
          TabOrder = 1
        end
      end
      object GroupBox4: TGroupBox
        Left = 445
        Top = -1
        Width = 339
        Height = 70
        TabOrder = 2
        object Label6: TLabel
          Left = 6
          Top = 30
          Width = 39
          Height = 13
          Caption = 'N'#186' Lote:'
        end
        object Label7: TLabel
          Left = 187
          Top = 30
          Width = 42
          Height = 13
          Caption = 'Emiss'#227'o:'
        end
        object Edt_Lote: TEdit
          Left = 45
          Top = 27
          Width = 107
          Height = 21
          TabStop = False
          Color = 14145495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 6
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DtEmissao: TDateEdit
          Left = 230
          Top = 27
          Width = 100
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 1
        end
      end
    end
  end
  object EdtORDEM: TEdit
    Left = 392
    Top = 510
    Width = 55
    Height = 21
    MaxLength = 6
    TabOrder = 8
    Visible = False
  end
  object Edit1: TEdit
    Left = 448
    Top = 510
    Width = 55
    Height = 21
    MaxLength = 8
    TabOrder = 9
    Visible = False
  end
  object SqlCdsPsvGrupo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'C1.CLI_RAZAO'#13#10'FROM PSV_GRUPO T1'#13#10'LEFT JOIN CLI000' +
      '0 C1 ON (C1.CLI_CODIGO = T1.CLI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'C1.CLI_RAZAO'#13#10'FROM PSV_GRUPO T1'#13#10'LEFT JOIN CLI000' +
      '0 C1 ON (C1.CLI_CODIGO = T1.CLI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 272
    Top = 390
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
  end
  object DsPsvGrupo: TDataSource
    DataSet = SqlCdsPsvGrupo
    Left = 304
    Top = 390
  end
  object SqlCdsPs2: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T2.*,'#13#10'P1.PRD_DESCRI'#13#10'FROM PSV_IT02 T2'#13#10'LEFT JOIN PRD000' +
      '0 P1 ON (T2.PRD_REFER = P1.PRD_REFER)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPs2CalcFields
    CommandText = 
      'SELECT'#13#10'T2.*,'#13#10'P1.PRD_DESCRI'#13#10'FROM PSV_IT02 T2'#13#10'LEFT JOIN PRD000' +
      '0 P1 ON (T2.PRD_REFER = P1.PRD_REFER)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 107
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
      Size = 6
    end
    object SqlCdsPs2PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsPs2PS2_QTDE: TFMTBCDField
      FieldName = 'PS2_QTDE'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE1: TFMTBCDField
      FieldName = 'PS2_QTDE1'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE2: TFMTBCDField
      FieldName = 'PS2_QTDE2'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE3: TFMTBCDField
      FieldName = 'PS2_QTDE3'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE4: TFMTBCDField
      FieldName = 'PS2_QTDE4'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE5: TFMTBCDField
      FieldName = 'PS2_QTDE5'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE6: TFMTBCDField
      FieldName = 'PS2_QTDE6'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE7: TFMTBCDField
      FieldName = 'PS2_QTDE7'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE8: TFMTBCDField
      FieldName = 'PS2_QTDE8'
      Precision = 15
    end
    object SqlCdsPs2PS2_FICHA: TStringField
      FieldName = 'PS2_FICHA'
      Size = 1
    end
    object SqlCdsPs2PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsPs2PS2_FICHA_CC: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'PS2_FICHA_CC'
      Calculated = True
    end
  end
  object DsPs2: TDataSource
    DataSet = SqlCdsPs2
    Left = 448
    Top = 107
  end
  object SqlCdsPedidos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT P2.EMP_CODIGO,'#13#10'P2.PED_CODIGO,'#13#10'P2.CLI_CODIGO,'#13#10'P2.PED_SI' +
      'TUACAO,'#13#10'C1.CLI_RAZAO '#13#10'FROM PED0000 P2 '#13#10'LEFT JOIN CLI0000 C1 O' +
      'N (P2.CLI_CODIGO = C1.CLI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT P2.EMP_CODIGO,'#13#10'P2.PED_CODIGO,'#13#10'P2.CLI_CODIGO,'#13#10'P2.PED_SI' +
      'TUACAO,'#13#10'C1.CLI_RAZAO '#13#10'FROM PED0000 P2 '#13#10'LEFT JOIN CLI0000 C1 O' +
      'N (P2.CLI_CODIGO = C1.CLI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 208
    Top = 389
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
  end
  object SqlCdsItensPedido: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'P2.EMP_CODIGO,'#13#10'P2.PED_CODIGO,'#13#10'P2.PRD_REFER,'#13#10'P1.PTI_CO' +
      'DIGO,'#13#10'P3.PTI_SIGLA,'#13#10'P2.PRF_QTDE,'#13#10'P2.PRF_VAR1,'#13#10'P2.PRF_VAR2,'#13#10 +
      'P2.PRF_VAR3,'#13#10'P2.PRF_VAR4,'#13#10'P2.PRF_VAR5,'#13#10'P2.PRF_VAR6,'#13#10'P2.PRF_V' +
      'AR7,'#13#10'P2.PRF_VAR8'#13#10'FROM PED_IT01 P2'#13#10'LEFT JOIN PRD0000 P1 ON (P2' +
      '.PRD_REFER = P1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO P3 ON (P1.PTI_COD' +
      'IGO = P3.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'P2.EMP_CODIGO,'#13#10'P2.PED_CODIGO,'#13#10'P2.PRD_REFER,'#13#10'P1.PTI_CO' +
      'DIGO,'#13#10'P3.PTI_SIGLA,'#13#10'P2.PRF_QTDE,'#13#10'P2.PRF_VAR1,'#13#10'P2.PRF_VAR2,'#13#10 +
      'P2.PRF_VAR3,'#13#10'P2.PRF_VAR4,'#13#10'P2.PRF_VAR5,'#13#10'P2.PRF_VAR6,'#13#10'P2.PRF_V' +
      'AR7,'#13#10'P2.PRF_VAR8'#13#10'FROM PED_IT01 P2'#13#10'LEFT JOIN PRD0000 P1 ON (P2' +
      '.PRD_REFER = P1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO P3 ON (P1.PTI_COD' +
      'IGO = P3.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 240
    Top = 389
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
    Left = 609
    Top = 390
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
      'SELECT'#13#10'I1.PRD_REFER,'#13#10'I1.PRD_REFER_ITENS,'#13#10'P1.PRD_DESCRI,'#13#10'P1.P' +
      'RD_PCUSTO,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.' +
      'PRD_PENDENTE,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'I1.F' +
      'TI_MODE1,'#13#10'I1.FTI_MODE2,'#13#10'I1.FTI_MODE3,'#13#10'I1.FTI_MODE4,'#13#10'I1.FTI_M' +
      'ODE5,'#13#10'I1.FTI_MODE6,'#13#10'I1.FTI_MODE7,'#13#10'I1.FTI_MODE8,'#13#10'I1.FTI_UC '#13#10 +
      'FROM FTC_IT01 I1'#13#10'JOIN PRD0000 P1 ON (I1.PRD_REFER_ITENS = P1.PR' +
      'D_REFER)'#13#10'JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
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
    Left = 641
    Top = 390
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
      Precision = 15
    end
  end
  object SqlCdsConsumo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T2.EMP_CODIGO,'#13#10'T2.PRD_REFER,'#13#10'T2.PS2_FICHA,'#13#10'T2.PED_COD' +
      'IGO,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'P1.PRD_PCUSTO,' +
      #13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_DCVAR3,'#13#10'P1.PRD_DCVAR4,' +
      #13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_DCVAR7,'#13#10'P1.PRD_DCVAR8,' +
      #13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.PRD_PENDEN' +
      'TE,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD_SIMULACAO,'#13#10'T2.PS2_QTDE AS WQTDE,'#13#10 +
      'T2.PS2_QTDE1 AS WQTDE1,'#13#10'T2.PS2_QTDE2 AS WQTDE2,'#13#10'T2.PS2_QTDE3 A' +
      'S WQTDE3,'#13#10'T2.PS2_QTDE4 AS WQTDE4,'#13#10'T2.PS2_QTDE5 AS WQTDE5,'#13#10'T2.' +
      'PS2_QTDE6 AS WQTDE6,'#13#10'T2.PS2_QTDE7 AS WQTDE7,'#13#10'T2.PS2_QTDE8 AS W' +
      'QTDE8'#13#10'FROM PSV_IT02 T2'#13#10'LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER =' +
      ' P1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI' +
      '_CODIGO)'#13#10'ORDER BY'#13#10'P1.PRD_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T2.EMP_CODIGO,'#13#10'T2.PRD_REFER,'#13#10'T2.PS2_FICHA,'#13#10'T2.PED_COD' +
      'IGO,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'P1.PRD_PCUSTO,' +
      #13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_DCVAR3,'#13#10'P1.PRD_DCVAR4,' +
      #13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_DCVAR7,'#13#10'P1.PRD_DCVAR8,' +
      #13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.PRD_PENDEN' +
      'TE,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD_SIMULACAO,'#13#10'T2.PS2_QTDE AS WQTDE,'#13#10 +
      'T2.PS2_QTDE1 AS WQTDE1,'#13#10'T2.PS2_QTDE2 AS WQTDE2,'#13#10'T2.PS2_QTDE3 A' +
      'S WQTDE3,'#13#10'T2.PS2_QTDE4 AS WQTDE4,'#13#10'T2.PS2_QTDE5 AS WQTDE5,'#13#10'T2.' +
      'PS2_QTDE6 AS WQTDE6,'#13#10'T2.PS2_QTDE7 AS WQTDE7,'#13#10'T2.PS2_QTDE8 AS W' +
      'QTDE8'#13#10'FROM PSV_IT02 T2'#13#10'LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER =' +
      ' P1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI' +
      '_CODIGO)'#13#10'ORDER BY'#13#10'P1.PRD_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 480
    Top = 107
    object SqlCdsConsumoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsConsumoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsConsumoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsConsumoPS2_FICHA: TStringField
      FieldName = 'PS2_FICHA'
      Size = 1
    end
    object SqlCdsConsumoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsConsumoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsConsumoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsConsumoPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsConsumoPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlCdsConsumoPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlCdsConsumoPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlCdsConsumoPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlCdsConsumoPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlCdsConsumoPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlCdsConsumoPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object SqlCdsConsumoPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlCdsConsumoPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlCdsConsumoPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlCdsConsumoPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlCdsConsumoPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      Precision = 15
    end
    object SqlCdsConsumoWQTDE: TFMTBCDField
      FieldName = 'WQTDE'
      Precision = 15
    end
    object SqlCdsConsumoWQTDE1: TFMTBCDField
      FieldName = 'WQTDE1'
      Precision = 15
    end
    object SqlCdsConsumoWQTDE2: TFMTBCDField
      FieldName = 'WQTDE2'
      Precision = 15
    end
    object SqlCdsConsumoWQTDE3: TFMTBCDField
      FieldName = 'WQTDE3'
      Precision = 15
    end
    object SqlCdsConsumoWQTDE4: TFMTBCDField
      FieldName = 'WQTDE4'
      Precision = 15
    end
    object SqlCdsConsumoWQTDE5: TFMTBCDField
      FieldName = 'WQTDE5'
      Precision = 15
    end
    object SqlCdsConsumoWQTDE6: TFMTBCDField
      FieldName = 'WQTDE6'
      Precision = 15
    end
    object SqlCdsConsumoWQTDE7: TFMTBCDField
      FieldName = 'WQTDE7'
      Precision = 15
    end
    object SqlCdsConsumoWQTDE8: TFMTBCDField
      FieldName = 'WQTDE8'
      Precision = 15
    end
    object SqlCdsConsumoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsConsumoPRD_SIMULACAO: TFMTBCDField
      FieldName = 'PRD_SIMULACAO'
      Precision = 15
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
    Left = 64
    Top = 112
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
    Left = 511
    Top = 107
    Bitmap = {
      494C0101030004000C0010000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000008080800000000000000000000000000080808000808080000000
      000000000000000000000000000000000000000000000000000000FF00000080
      0000008000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      8000000080008080800080808000000000000000FF0000000000808080008080
      8000000000000000000000000000000000000000000000000000008000000080
      0000008000000080000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      8000000080000000000080808000808080000000800000008000000000008080
      8000000000000000000000000000000000000000000000000000008000000080
      0000008000000080000000800000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      FF00000080000000800000000000000080000000800000008000000080000000
      0000000000000000000000000000000000000000000000000000008000000080
      00000080000000FF000000800000008000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF000000800000008000000080000000800000008000000000000000
      0000000000000000000000000000000000000000000000000000008000000080
      0000800000000000000000FF0000008000000080000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000008000000080000000800080808000808080000000
      000000000000000000000000000000000000000000000000000000FF00000080
      000080000000000000000000000000FF00000080000000800000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000008000000080000000800000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000800000008000008000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000008000000080000000FF000000800000008000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008000000080
      0000800000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008080
      80000000FF000000800000000000808080000000FF0000008000000080000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000080
      0000008000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000008000000080008080800000000000000000000000FF00000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000008000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      8000C0C0C0000000000000000000000000000000000000000000000000000000
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
    Left = 541
    Top = 108
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
    Left = 56
    Top = 200
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
    Left = 88
    Top = 200
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
end
