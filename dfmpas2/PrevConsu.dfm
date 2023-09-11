object FormPrevConsumo: TFormPrevConsumo
  Left = 21
  Top = 17
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Previsão de Consumo'
  ClientHeight = 484
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 288
    Width = 760
    Height = 191
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 12
      Width = 55
      Height = 13
      Caption = 'Referência:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 34
      Top = 39
      Width = 40
      Height = 13
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BtProduto: TSpeedButton
      Left = 188
      Top = 10
      Width = 23
      Height = 22
      Enabled = False
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
    end
    object EdtRefer: TEdit
      Left = 76
      Top = 10
      Width = 110
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 11
      ParentFont = False
      TabOrder = 0
      OnExit = EdtReferExit
      OnKeyPress = EdtReferKeyPress
    end
    object DBNavigator1: TDBNavigator
      Left = 630
      Top = 10
      Width = 120
      Height = 25
      DataSource = DataModulo.DsPrevCons
      VisibleButtons = [nbPrior, nbNext]
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 580
      Top = 145
      Width = 169
      Height = 33
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Caption = 'Panel1'
      Color = clTeal
      TabOrder = 2
      object BitPrevisao: TBitBtn
        Left = 5
        Top = 4
        Width = 159
        Height = 25
        Cursor = crHandPoint
        Hint = 'Item agregado ao produto'
        Caption = '&Gerar Previsão'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitPrevisaoClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 10
      Top = 65
      Width = 740
      Height = 72
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object LbVar1: TLabel
        Left = 20
        Top = 20
        Width = 100
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'VARIAÇÃO 1'
        Color = 4227327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object LbVar2: TLabel
        Left = 140
        Top = 20
        Width = 100
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'VARIAÇÃO 2'
        Color = 4227327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object LbVar5: TLabel
        Left = 500
        Top = 20
        Width = 100
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'VARIAÇÃO 5'
        Color = 4227327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object LbVar4: TLabel
        Left = 380
        Top = 20
        Width = 100
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'VARIAÇÃO 4'
        Color = 4227327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object LbVar6: TLabel
        Left = 620
        Top = 20
        Width = 100
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'VARIAÇÃO 6'
        Color = 4227327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object LbVar3: TLabel
        Left = 260
        Top = 20
        Width = 100
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'VARIAÇÃO 3'
        Color = 4227327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 19
        Top = 40
        Width = 100
        Height = 21
        DataField = 'PSV_QUANT1'
        DataSource = DataModulo.DsPrevCons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 139
        Top = 40
        Width = 100
        Height = 21
        DataField = 'PSV_QUANT2'
        DataSource = DataModulo.DsPrevCons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 259
        Top = 40
        Width = 100
        Height = 21
        DataField = 'PSV_QUANT3'
        DataSource = DataModulo.DsPrevCons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 379
        Top = 40
        Width = 100
        Height = 21
        DataField = 'PSV_QUANT4'
        DataSource = DataModulo.DsPrevCons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 499
        Top = 40
        Width = 100
        Height = 21
        DataField = 'PSV_QUANT5'
        DataSource = DataModulo.DsPrevCons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 619
        Top = 40
        Width = 100
        Height = 21
        DataField = 'PSV_QUANT6'
        DataSource = DataModulo.DsPrevCons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 5
      end
    end
    object Panel4: TPanel
      Left = 10
      Top = 145
      Width = 560
      Height = 33
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Caption = 'Panel3'
      Color = clTeal
      TabOrder = 5
      object BitIncluir: TSpeedButton
        Left = 5
        Top = 4
        Width = 110
        Height = 25
        Caption = '&Incluir Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          E6000000424DE60000000000000076000000280000000E0000000E0000000100
          0400000000007000000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3300333333333333330033333333333333003333300033333300333330F03333
          3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
          3300333330F033333300333330F0333333003333300033333300333333333333
          33003333333333333300}
        ParentFont = False
        OnClick = BitIncluirClick
      end
      object BitExcluir: TSpeedButton
        Left = 115
        Top = 4
        Width = 110
        Height = 25
        Caption = 'E&xcluir Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          E6000000424DE60000000000000076000000280000000E0000000E0000000100
          0400000000007000000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3300333333333333330033333333333333003333333333333300333333333333
          330033333333333333003300000000003300330FFFFFFFF03300330000000000
          3300333333333333330033333333333333003333333333333300333333333333
          33003333333333333300}
        ParentFont = False
        OnClick = BitExcluirClick
      end
      object BitGravar: TBitBtn
        Left = 225
        Top = 4
        Width = 110
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
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitGravarClick
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
      end
      object BitCancelar: TBitBtn
        Left = 335
        Top = 4
        Width = 110
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
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitCancelarClick
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
      end
      object BirSair: TBitBtn
        Left = 445
        Top = 4
        Width = 110
        Height = 25
        Cursor = crHandPoint
        Hint = '|Cancela registro atual...'
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BirSairClick
        NumGlyphs = 2
      end
    end
    object BitPedido: TBitBtn
      Left = 590
      Top = 40
      Width = 159
      Height = 25
      Cursor = crHandPoint
      Hint = 'Item agregado ao produto'
      Caption = 'Incluir &Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 76
      Top = 37
      Width = 320
      Height = 21
      DataField = 'PRD_DESCRI'
      DataSource = DataModulo.DsPrevCons
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 5
    Width = 760
    Height = 274
    DataSource = DataModulo.DsPrevCons
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Title.Caption = 'Referência'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI'
        Title.Caption = 'Descrição'
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PSV_QUANT1'
        Title.Caption = 'Var 1'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PSV_QUANT2'
        Title.Caption = 'Var 2'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PSV_QUANT3'
        Title.Caption = 'Var 3'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PSV_QUANT4'
        Title.Caption = 'Var 4'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PSV_QUANT5'
        Title.Caption = 'Var 5'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PSV_QUANT6'
        Title.Caption = 'Var 6'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PSV_CUSTO'
        Title.Caption = 'Preço'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_CODIGO'
        Title.Caption = 'Pedido'
        Visible = True
      end>
  end
end
