object FormPedItens: TFormPedItens
  Left = 142
  Top = 147
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Itens do Pedido'
  ClientHeight = 305
  ClientWidth = 466
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 7
    Width = 458
    Height = 255
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 41
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
    object Label2: TLabel
      Left = 29
      Top = 64
      Width = 40
      Height = 13
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 91
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 39
      Top = 117
      Width = 31
      Height = 13
      Caption = 'Pre'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 53
      Top = 169
      Width = 16
      Height = 13
      Caption = 'IPI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 25
      Top = 142
      Width = 45
      Height = 13
      Caption = 'Faturado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 196
      Top = 35
      Width = 23
      Height = 22
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
      OnClick = SpeedButton1Click
    end
    object LabComis: TLabel
      Left = 10
      Top = 195
      Width = 59
      Height = 13
      Caption = 'Comiss'#227'o %:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LabDescto1: TLabel
      Left = 19
      Top = 221
      Width = 51
      Height = 13
      Caption = 'Descto  %:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LabDescto2: TLabel
      Left = 117
      Top = 221
      Width = 48
      Height = 13
      Caption = 'Descto %:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LabMais: TLabel
      Left = 103
      Top = 217
      Width = 11
      Height = 20
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label7: TLabel
      Left = 238
      Top = 39
      Width = 72
      Height = 13
      Caption = 'Saldo Estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DbeDescricao: TDBEdit
      Left = 71
      Top = 61
      Width = 324
      Height = 21
      DataField = 'PRF_PRDDESCRI'
      DataSource = DataMovimento.DsPedItem
      ReadOnly = True
      TabOrder = 0
    end
    object DbeQtde: TDBEdit
      Left = 71
      Top = 87
      Width = 80
      Height = 21
      DataField = 'PRF_QTDE'
      DataSource = DataMovimento.DsPedItem
      TabOrder = 1
      OnExit = DbeQtdeExit
    end
    object DbePreco: TDBEdit
      Left = 71
      Top = 113
      Width = 80
      Height = 21
      DataField = 'PRF_PRECO'
      DataSource = DataMovimento.DsPedItem
      TabOrder = 2
    end
    object DbeIPI: TDBEdit
      Left = 71
      Top = 165
      Width = 30
      Height = 21
      DataField = 'PRF_IPIALIQ'
      DataSource = DataMovimento.DsPedItem
      TabOrder = 4
      OnKeyPress = DbeIPIKeyPress
    end
    object DBNavigator1: TDBNavigator
      Left = 341
      Top = 5
      Width = 110
      Height = 23
      DataSource = DataMovimento.DsPedItem
      VisibleButtons = [nbPrior, nbNext]
      TabOrder = 8
      OnClick = DBNavigator1Click
    end
    object Panel2: TPanel
      Left = 328
      Top = 212
      Width = 121
      Height = 33
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Caption = 'Panel1'
      Color = 10841658
      TabOrder = 9
      object BitItensAssoc: TBitBtn
        Left = 5
        Top = 4
        Width = 111
        Height = 25
        Cursor = crHandPoint
        Hint = 'Item agregado ao produto'
        Caption = 'Itens Agrega&dos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        OnClick = BitItensAssocClick
      end
    end
    object DbeComis: TDBEdit
      Left = 71
      Top = 191
      Width = 30
      Height = 21
      DataField = 'PRF_COMIS'
      DataSource = DataMovimento.DsPedItem
      TabOrder = 5
      Visible = False
    end
    object DbeDescto1: TDBEdit
      Left = 71
      Top = 217
      Width = 30
      Height = 21
      DataField = 'PRF_IDESCTO1'
      DataSource = DataMovimento.DsPedItem
      TabOrder = 6
      Visible = False
    end
    object DbeDescto2: TDBEdit
      Left = 166
      Top = 217
      Width = 30
      Height = 21
      DataField = 'PRF_IDESCTO2'
      DataSource = DataMovimento.DsPedItem
      TabOrder = 7
      Visible = False
    end
    object DbeEstoque: TDBEdit
      Left = 82
      Top = 11
      Width = 15
      Height = 21
      Color = 14145495
      DataField = 'PRD_FISICO_CC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      Visible = False
    end
    object PanDetalhar: TPanel
      Left = 154
      Top = 87
      Width = 297
      Height = 114
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 15780262
      TabOrder = 10
      object Label8: TLabel
        Left = 6
        Top = 2
        Width = 236
        Height = 13
        Caption = 'Detalhes das Quantidade nas Varia'#231#245'es :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DbeVar1: TDBEdit
        Left = 6
        Top = 40
        Width = 70
        Height = 21
        DataField = 'PRF_VAR1'
        DataSource = DataMovimento.DsPedItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DbeVar2: TDBEdit
        Left = 78
        Top = 40
        Width = 70
        Height = 21
        DataField = 'PRF_VAR2'
        DataSource = DataMovimento.DsPedItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DbeVar3: TDBEdit
        Left = 150
        Top = 40
        Width = 70
        Height = 21
        DataField = 'PRF_VAR3'
        DataSource = DataMovimento.DsPedItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DbeVar4: TDBEdit
        Left = 222
        Top = 40
        Width = 70
        Height = 21
        DataField = 'PRF_VAR4'
        DataSource = DataMovimento.DsPedItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit2: TDBEdit
        Left = 6
        Top = 22
        Width = 70
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        Color = 14145495
        Ctl3D = True
        DataField = 'PRD_DCVAR1'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 8
      end
      object DBEdit3: TDBEdit
        Left = 78
        Top = 22
        Width = 70
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        Color = 14145495
        Ctl3D = True
        DataField = 'PRD_DCVAR2'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 9
      end
      object DBEdit4: TDBEdit
        Left = 150
        Top = 22
        Width = 70
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        Color = 14145495
        Ctl3D = True
        DataField = 'PRD_DCVAR3'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 10
      end
      object DBEdit5: TDBEdit
        Left = 222
        Top = 22
        Width = 70
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        Color = 14145495
        Ctl3D = True
        DataField = 'PRD_DCVAR4'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 11
      end
      object DBEdit6: TDBEdit
        Left = 5
        Top = 66
        Width = 70
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        Color = 14145495
        Ctl3D = True
        DataField = 'PRD_DCVAR5'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 12
      end
      object DbeVar5: TDBEdit
        Left = 5
        Top = 84
        Width = 70
        Height = 21
        DataField = 'PRF_VAR5'
        DataSource = DataMovimento.DsPedItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 77
        Top = 66
        Width = 70
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        Color = 14145495
        Ctl3D = True
        DataField = 'PRD_DCVAR6'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 13
      end
      object DbeVar6: TDBEdit
        Left = 77
        Top = 84
        Width = 70
        Height = 21
        DataField = 'PRF_VAR6'
        DataSource = DataMovimento.DsPedItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit8: TDBEdit
        Left = 149
        Top = 66
        Width = 70
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        Color = 14145495
        Ctl3D = True
        DataField = 'PRD_DCVAR7'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 14
      end
      object DbeVar7: TDBEdit
        Left = 149
        Top = 84
        Width = 70
        Height = 21
        DataField = 'PRF_VAR7'
        DataSource = DataMovimento.DsPedItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit9: TDBEdit
        Left = 221
        Top = 66
        Width = 70
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        Color = 14145495
        Ctl3D = True
        DataField = 'PRD_DCVAR8'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 15
      end
      object DbeVar8: TDBEdit
        Left = 221
        Top = 84
        Width = 70
        Height = 21
        DataField = 'PRF_VAR8'
        DataSource = DataMovimento.DsPedItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
    end
    object CbRef: TComboBox
      Left = 71
      Top = 36
      Width = 124
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      TabOrder = 12
      OnExit = CbRefExit
    end
    object EditRef: TEdit
      Left = 71
      Top = 11
      Width = 10
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 11
      ReadOnly = True
      TabOrder = 13
      Visible = False
    end
    object EdSaldoEstoque: TEdit
      Left = 314
      Top = 36
      Width = 80
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object CbSituacao: TComboBox
      Left = 71
      Top = 138
      Width = 81
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = 'SIM'
      Items.Strings = (
        'SIM'
        'N'#195'O')
    end
  end
  object Panel3: TPanel
    Left = 5
    Top = 268
    Width = 459
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel3'
    Color = 10841658
    TabOrder = 1
    object Bit_novo: TSpeedButton
      Left = 5
      Top = 4
      Width = 90
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
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TSpeedButton
      Left = 95
      Top = 4
      Width = 90
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
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 185
      Top = 4
      Width = 90
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 275
      Top = 4
      Width = 90
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 365
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object CdsEstoque: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select  from PRD0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select  from PRD0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 232
    Top = 16
  end
end
