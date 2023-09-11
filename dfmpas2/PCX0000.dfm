object FormProjCaixa: TFormProjCaixa
  Left = 166
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Centro de Custo'
  ClientHeight = 602
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 35
    Top = 13
    Width = 36
    Height = 14
    Caption = 'C'#243'digo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 53
    Width = 52
    Height = 14
    Caption = 'Descri'#231#227'o:'
  end
  object Label3: TLabel
    Left = 42
    Top = 81
    Width = 27
    Height = 14
    Caption = 'In'#237'cio:'
  end
  object Label4: TLabel
    Left = 175
    Top = 82
    Width = 41
    Height = 14
    Caption = 'T'#233'rmino:'
  end
  object Label5: TLabel
    Left = 516
    Top = 53
    Width = 26
    Height = 14
    Caption = 'N'#237'vel:'
  end
  object DBNavigator1: TDBNavigator
    Left = 610
    Top = 10
    Width = 116
    Height = 25
    DataSource = DataCadastros1.DsProCaixa
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 6
    OnClick = DBNavigator1Click
  end
  object Panel2: TPanel
    Left = 5
    Top = 40
    Width = 719
    Height = 4
    Color = 12681984
    TabOrder = 7
  end
  object DbePCX_DESCRI: TDBEdit
    Left = 73
    Top = 50
    Width = 409
    Height = 22
    CharCase = ecUpperCase
    DataField = 'PCX_DESCRI'
    DataSource = DataCadastros1.DsProCaixa
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 401
    Top = 567
    Width = 335
    Height = 33
    BevelOuter = bvNone
    TabOrder = 4
    object Bit_Cancelar: TBitBtn
      Left = 244
      Top = 4
      Width = 80
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 246
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
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
      TabOrder = 3
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Excluir: TBitBtn
      Left = 83
      Top = 4
      Width = 80
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 163
      Top = 4
      Width = 80
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_novo: TBitBtn
      Left = 0
      Top = 4
      Width = 80
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_novoClick
    end
  end
  object Panel3: TPanel
    Left = 5
    Top = 567
    Width = 109
    Height = 33
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 5
    object Bit_Relatorio: TBitBtn
      Left = 4
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
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
      OnClick = Bit_RelatorioClick
    end
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 548
    Top = 75
    Width = 184
    Height = 34
    Caption = 'Centro Encerrado'
    Columns = 2
    DataField = 'PCX_TERMINADO'
    DataSource = DataCadastros1.DsProCaixa
    Items.Strings = (
      'N'#227'&o'
      '&Sim')
    TabOrder = 3
    Values.Strings = (
      'N'
      'S')
  end
  object EdtPcx_Codigo: TEdit
    Left = 77
    Top = 11
    Width = 47
    Height = 22
    MaxLength = 3
    TabOrder = 8
    Text = 'EdtPcx_Codigo'
    OnEnter = EdtPcx_CodigoEnter
    OnExit = EdtPcx_CodigoExit
    OnKeyPress = EdtPcx_CodigoKeyPress
  end
  object dbedtPCX_NIVEL: TDBEdit
    Left = 548
    Top = 50
    Width = 183
    Height = 22
    TabStop = False
    CharCase = ecUpperCase
    Color = 14145495
    DataField = 'PCX_NIVEL'
    DataSource = DataCadastros1.DsProCaixa
    MaxLength = 25
    ReadOnly = True
    TabOrder = 9
  end
  object GroupBox1: TGroupBox
    Left = 1
    Top = 108
    Width = 732
    Height = 451
    Caption = 'Centros de Custos'
    TabOrder = 10
    object dbgrdCentros: TDBGrid
      Left = 2
      Top = 16
      Width = 728
      Height = 433
      Align = alClient
      Color = 16776176
      DataSource = DataCadastros1.DsProCaixa
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrdCentrosDrawColumnCell
      OnDblClick = dbgrdCentrosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'PCX_NIVEL'
          Title.Alignment = taCenter
          Title.Caption = 'N'#237'vel'
          Width = 126
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PCX_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 434
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PCX_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PCX_PARTICIPA_CUSTO_OPERACIONAL'
          Title.Caption = 'Custo Oper.'
          Visible = True
        end>
    end
  end
  object DBDateEdit1: TJvDBDateEdit
    Left = 72
    Top = 78
    Width = 90
    Height = 22
    DataField = 'PCX_INICIO'
    DataSource = DataCadastros1.DsProCaixa
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
    TabOrder = 1
    OnExit = DBDateEdit1Exit
  end
  object DBDateEdit2: TJvDBDateEdit
    Left = 218
    Top = 78
    Width = 90
    Height = 22
    DataField = 'PCX_FIM'
    DataSource = DataCadastros1.DsProCaixa
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
    OnExit = DBDateEdit2Exit
  end
  object dbParticipaCustoOperacional: TDBCheckBox
    Left = 314
    Top = 81
    Width = 228
    Height = 17
    Caption = 'Participa dos Custos Diretos da Produ'#231#227'o'
    DataField = 'PCX_PARTICIPA_CUSTO_OPERACIONAL'
    DataSource = DataCadastros1.DsProCaixa
    TabOrder = 11
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object cbCentroCustoEncerrado: TCheckBox
    Left = 120
    Top = 577
    Width = 201
    Height = 17
    AllowGrayed = True
    Caption = 'Filtra por Centro de Custo Encerrado'
    TabOrder = 12
    OnClick = cbCentroCustoEncerradoClick
  end
  object SqlCdsRelProjCaixa: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'T1.*,'#13#10'(SELECT COALESCE(COUNT(T2.FIR_REGISTRO),0) FROM F' +
      'IN_RATEIO T2 WHERE T2.PCX_CODIGO = T1.PCX_CODIGO)'#13#10'+'#13#10'(SELECT CO' +
      'ALESCE(COUNT(T3.PCXPF_REGISTRO),0) FROM PCX0000_PLANO T3 WHERE T' +
      '3.PCX_CODIGO = T1.PCX_CODIGO) as uso'#13#10#13#10'from PCX0000 T1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'T1.*,'#13#10'(SELECT COALESCE(COUNT(T2.FIR_REGISTRO),0) FROM F' +
      'IN_RATEIO T2 WHERE T2.PCX_CODIGO = T1.PCX_CODIGO)'#13#10'+'#13#10'(SELECT CO' +
      'ALESCE(COUNT(T3.PCXPF_REGISTRO),0) FROM PCX0000_PLANO T3 WHERE T' +
      '3.PCX_CODIGO = T1.PCX_CODIGO) as uso'#13#10#13#10'from PCX0000 T1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 384
    Top = 248
    object SqlCdsRelProjCaixaPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsRelProjCaixaPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object SqlCdsRelProjCaixaPCX_INICIO: TSQLTimeStampField
      FieldName = 'PCX_INICIO'
    end
    object SqlCdsRelProjCaixaPCX_FIM: TSQLTimeStampField
      FieldName = 'PCX_FIM'
    end
    object SqlCdsRelProjCaixaPCX_TERMINADO: TStringField
      FieldName = 'PCX_TERMINADO'
      Size = 1
    end
    object SqlCdsRelProjCaixaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      FixedChar = True
      Size = 3
    end
    object SqlCdsRelProjCaixaPCX_NIVEL: TStringField
      FieldName = 'PCX_NIVEL'
      Size = 15
    end
    object SqlCdsRelProjCaixaPCX_PARTICIPA_CUSTO_OPERACIONAL: TStringField
      FieldName = 'PCX_PARTICIPA_CUSTO_OPERACIONAL'
      FixedChar = True
      Size = 1
    end
  end
  object DsRelProjCaixa: TDataSource
    DataSet = SqlCdsRelProjCaixa
    Left = 280
    Top = 240
  end
  object ppDBRelProjCaixa: TppDBPipeline
    DataSource = DsRelProjCaixa
    UserName = 'DBRelProjCaixa'
    Left = 528
    Top = 224
  end
  object ppRPRelProjCaixa: TppReport
    AutoStop = False
    DataPipeline = ppDBRelProjCaixa
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELPROJCX01.rtm'
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
    Left = 528
    Top = 272
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelProjCaixa'
    object pp00HeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 15346
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
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
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 0
        mmTop = 794
        mmWidth = 22479
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
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 4233
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 7673
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 11113
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 794
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 7673
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'COD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 0
        mmTop = 11642
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 8467
        mmTop = 11642
        mmWidth = 64294
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15081
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'INICIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 74348
        mmTop = 11642
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TERMINO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 92604
        mmTop = 11642
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TERMINADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 120386
        mmTop = 11642
        mmWidth = 17460
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PART.CUSTO OPER.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 139965
        mmTop = 11906
        mmWidth = 27517
        BandType = 0
        LayerName = Foreground
      end
    end
    object pp00DetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCX_CODIGO'
        DataPipeline = ppDBRelProjCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelProjCaixa'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCX_DESCRI'
        DataPipeline = ppDBRelProjCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelProjCaixa'
        mmHeight = 3175
        mmLeft = 8467
        mmTop = 0
        mmWidth = 64823
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCX_INICIO'
        DataPipeline = ppDBRelProjCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelProjCaixa'
        mmHeight = 3175
        mmLeft = 74348
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCX_FIM'
        DataPipeline = ppDBRelProjCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelProjCaixa'
        mmHeight = 3175
        mmLeft = 92604
        mmTop = 0
        mmWidth = 25929
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCX_TERMINADO'
        DataPipeline = ppDBRelProjCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelProjCaixa'
        mmHeight = 3175
        mmLeft = 120386
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCX_PARTICIPA_CUSTO_OPERACIONAL'
        DataPipeline = ppDBRelProjCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelProjCaixa'
        mmHeight = 3175
        mmLeft = 139700
        mmTop = 0
        mmWidth = 15308
        BandType = 4
        LayerName = Foreground
      end
    end
    object pp00SummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Contas do Projeto Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 48419
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBRelProjCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRelProjCaixa'
        mmHeight = 3175
        mmLeft = 49213
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650610
        444254657874354F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636514A800000070726F6365647572652044
        4254657874354F6E476574546578742876617220546578743A20537472696E67
        293B0D0A626567696E0D0A20202020696620444252656C50726F6A4361697861
        5B275043585F5445524D494E41444F275D3D275327207468656E0D0A20202020
        20202054657874203A3D202753494D270D0A20202020656C73650D0A20202020
        20202054657874203A3D20274EC3834F273B2020200D0A656E643B0D0A0D436F
        6D706F6E656E744E616D65060744425465787435094576656E744E616D650609
        4F6E47657454657874074576656E7449440235084361726574506F7301020802
        07000001060F5472614576656E7448616E646C65720B50726F6772616D4E616D
        650610444254657874364F6E476574546578740B50726F6772616D5479706507
        0B747450726F63656475726506536F7572636514BA00000070726F6365647572
        6520444254657874364F6E476574546578742876617220546578743A20537472
        696E67293B0D0A626567696E0D0A20202020696620444252656C50726F6A4361
        6978615B275043585F5041525449434950415F435553544F5F4F504552414349
        4F4E414C275D3D275327207468656E0D0A2020202020202054657874203A3D20
        2753494D270D0A20202020656C73650D0A2020202020202054657874203A3D20
        274EC3834F273B200D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
        060744425465787436094576656E744E616D6506094F6E476574546578740745
        76656E7449440235084361726574506F7301021C0203000000}
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
end
