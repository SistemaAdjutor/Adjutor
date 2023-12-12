object FormGimpCusto: TFormGimpCusto
  Left = 373
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Planilha de Forma'#231#227'o do Custo Industrial'
  ClientHeight = 601
  ClientWidth = 1105
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
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GrpIndiceF: TGroupBox
    Left = 727
    Top = 294
    Width = 370
    Height = 38
    TabOrder = 5
    object Label1: TLabel
      Left = 39
      Top = 15
      Width = 37
      Height = 14
      Caption = 'IND'#205'CE :'
    end
    object CIndiceCusto: TCurrencyEdit
      Left = 95
      Top = 11
      Width = 73
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 0
      ZeroEmpty = False
    end
  end
  object GrpPrazo: TGroupBox
    Left = 730
    Top = 118
    Width = 367
    Height = 169
    Color = clBtnFace
    ParentColor = False
    TabOrder = 3
    object Panel4: TPanel
      Left = 5
      Top = 32
      Width = 60
      Height = 21
      BevelOuter = bvLowered
      BevelWidth = 2
      Caption = #192' Vista'
      TabOrder = 12
    end
    object Panel5: TPanel
      Left = 5
      Top = 54
      Width = 60
      Height = 21
      BevelOuter = bvLowered
      BevelWidth = 2
      Caption = '30 D'
      TabOrder = 13
    end
    object Panel6: TPanel
      Left = 5
      Top = 76
      Width = 60
      Height = 21
      BevelOuter = bvLowered
      BevelWidth = 2
      Caption = '45 D'
      TabOrder = 14
    end
    object Panel7: TPanel
      Left = 5
      Top = 98
      Width = 60
      Height = 21
      BevelOuter = bvLowered
      BevelWidth = 2
      Caption = '60 D'
      TabOrder = 15
    end
    object Panel8: TPanel
      Left = 5
      Top = 120
      Width = 60
      Height = 21
      BevelOuter = bvLowered
      BevelWidth = 2
      Caption = '75 D'
      TabOrder = 16
    end
    object Panel9: TPanel
      Left = 5
      Top = 142
      Width = 60
      Height = 21
      BevelOuter = bvLowered
      BevelWidth = 2
      Caption = '90 D'
      TabOrder = 17
    end
    object CPVista: TCurrencyEdit
      Left = 126
      Top = 32
      Width = 110
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 0
      ZeroEmpty = False
    end
    object CP30: TCurrencyEdit
      Left = 126
      Top = 54
      Width = 110
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = False
    end
    object CP45: TCurrencyEdit
      Left = 126
      Top = 76
      Width = 110
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 2
      ZeroEmpty = False
    end
    object CP60: TCurrencyEdit
      Left = 126
      Top = 98
      Width = 110
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 3
      ZeroEmpty = False
    end
    object CP75: TCurrencyEdit
      Left = 126
      Top = 120
      Width = 110
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 4
      ZeroEmpty = False
    end
    object CP90: TCurrencyEdit
      Left = 126
      Top = 142
      Width = 110
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 5
      ZeroEmpty = False
    end
    object Panel1: TPanel
      Left = 4
      Top = 8
      Width = 61
      Height = 22
      Caption = 'Prazo'
      TabOrder = 18
      TabStop = True
    end
    object Panel2: TPanel
      Left = 67
      Top = 8
      Width = 57
      Height = 22
      Caption = ' Juros %'
      TabOrder = 19
      TabStop = True
    end
    object Panel3: TPanel
      Left = 127
      Top = 8
      Width = 109
      Height = 22
      Caption = 'Pre'#231'o Est.'
      TabOrder = 20
      TabStop = True
    end
    object CIndiceVista: TCurrencyEdit
      Left = 66
      Top = 32
      Width = 58
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      MaxValue = 99.000000000000000000
      TabOrder = 6
      ZeroEmpty = False
      OnClick = CIndiceVistaClick
      OnEnter = CIndiceVistaEnter
      OnExit = CIndiceVistaExit
    end
    object CIndice30d: TCurrencyEdit
      Left = 66
      Top = 54
      Width = 58
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      MaxValue = 99.000000000000000000
      TabOrder = 7
      ZeroEmpty = False
      OnClick = CIndice30dClick
      OnEnter = CIndice30dEnter
      OnExit = CIndiceVistaExit
    end
    object CIndice45d: TCurrencyEdit
      Left = 66
      Top = 76
      Width = 58
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      MaxValue = 99.000000000000000000
      TabOrder = 8
      ZeroEmpty = False
      OnClick = CIndice45dClick
      OnEnter = CIndice45dEnter
      OnExit = CIndiceVistaExit
    end
    object CIndice60d: TCurrencyEdit
      Left = 66
      Top = 98
      Width = 58
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      MaxValue = 99.000000000000000000
      TabOrder = 9
      ZeroEmpty = False
      OnClick = CIndice60dClick
      OnEnter = CIndice60dEnter
      OnExit = CIndiceVistaExit
    end
    object CIndice75d: TCurrencyEdit
      Left = 66
      Top = 120
      Width = 58
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      MaxValue = 99.000000000000000000
      TabOrder = 10
      ZeroEmpty = False
      OnClick = CIndice75dClick
      OnEnter = CIndice75dEnter
      OnExit = CIndiceVistaExit
    end
    object CIndice90d: TCurrencyEdit
      Left = 66
      Top = 142
      Width = 58
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      MaxValue = 99.000000000000000000
      TabOrder = 11
      ZeroEmpty = False
      OnClick = CIndice90dClick
      OnEnter = CIndice90dEnter
      OnExit = CIndiceVistaExit
    end
    object Panel19: TPanel
      Left = 238
      Top = 8
      Width = 114
      Height = 22
      Caption = 'Pre'#231'o Vend.'
      TabOrder = 21
      TabStop = True
    end
    object CPVistaV: TCurrencyEdit
      Left = 237
      Top = 32
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 22
      ZeroEmpty = False
    end
    object CP30V: TCurrencyEdit
      Left = 237
      Top = 54
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 23
      ZeroEmpty = False
    end
    object CP45V: TCurrencyEdit
      Left = 237
      Top = 76
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 24
      ZeroEmpty = False
    end
    object CP60V: TCurrencyEdit
      Left = 237
      Top = 98
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 25
      ZeroEmpty = False
    end
    object CP75V: TCurrencyEdit
      Left = 237
      Top = 120
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 26
      ZeroEmpty = False
    end
    object CP90V: TCurrencyEdit
      Left = 237
      Top = 142
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 27
      ZeroEmpty = False
    end
  end
  object GrpValores: TGroupBox
    Left = 560
    Top = 118
    Width = 161
    Height = 109
    Caption = '&Valores Fixos (individual)'
    TabOrder = 2
    object Label14: TLabel
      Left = 3
      Top = 41
      Width = 80
      Height = 14
      Caption = 'Lucro por Pe'#231'a :'
    end
    object Label15: TLabel
      Left = 28
      Top = 19
      Width = 57
      Height = 14
      Caption = 'Custo Fixo :'
    end
    object Label16: TLabel
      Left = 22
      Top = 65
      Width = 61
      Height = 14
      Caption = 'Custo Comp:'
    end
    object Label17: TLabel
      Left = 18
      Top = 88
      Width = 63
      Height = 14
      Caption = 'M.O. Indireta:'
    end
    object Ccustofixo: TCurrencyEdit
      Left = 84
      Top = 15
      Width = 69
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 0
      ZeroEmpty = False
      OnClick = CcustofixoClick
      OnEnter = CcustofixoEnter
      OnExit = CcustofixoExit
    end
    object CLucroPeca: TCurrencyEdit
      Left = 84
      Top = 37
      Width = 69
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 1
      ZeroEmpty = False
      OnClick = CLucroPecaClick
      OnEnter = CLucroPecaEnter
      OnExit = CcustofixoExit
    end
    object CCustoComple: TCurrencyEdit
      Left = 84
      Top = 59
      Width = 69
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 2
      ZeroEmpty = False
      OnClick = CCustoCompleClick
      OnEnter = CCustoCompleEnter
      OnExit = CcustofixoExit
    end
    object CMaoIndireta: TCurrencyEdit
      Left = 84
      Top = 82
      Width = 69
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 3
      ZeroEmpty = False
      OnClick = CMaoIndiretaClick
      OnEnter = CMaoIndiretaEnter
      OnExit = CcustofixoExit
    end
  end
  object Bit_localizar: TBitBtn
    Left = 997
    Top = 11
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = '&Localizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    TabStop = False
    OnClick = Bit_localizarClick
  end
  object GrpIndice: TGroupBox
    Left = 0
    Top = 118
    Width = 553
    Height = 109
    Caption = 'I&nd'#237'ces Padr'#227'o  %  (global) '
    TabOrder = 1
    object Label2: TLabel
      Left = 30
      Top = 20
      Width = 81
      Height = 14
      Caption = 'Despesas Fixas:'
    end
    object Label3: TLabel
      Left = 206
      Top = 20
      Width = 101
      Height = 14
      Caption = 'Despesas V'#225'riaveis:'
    end
    object Label4: TLabel
      Left = 78
      Top = 44
      Width = 27
      Height = 14
      Caption = 'ICMS:'
    end
    object Label6: TLabel
      Left = 214
      Top = 44
      Width = 91
      Height = 14
      Caption = 'Impostos Federais:'
    end
    object Label7: TLabel
      Left = 217
      Top = 84
      Width = 87
      Height = 14
      Caption = 'Desp.Financeiras:'
    end
    object Label8: TLabel
      Left = 424
      Top = 39
      Width = 31
      Height = 14
      Caption = 'Lucro:'
    end
    object Label9: TLabel
      Left = 404
      Top = 17
      Width = 49
      Height = 14
      Caption = 'Marketing:'
    end
    object Label10: TLabel
      Left = 210
      Top = 65
      Width = 93
      Height = 14
      Caption = 'Comiss'#227'o s/Venda:'
    end
    object Label18: TLabel
      Left = 11
      Top = 65
      Width = 99
      Height = 14
      Caption = 'Perda mat'#233'ria-prima:'
    end
    object Label13: TLabel
      Left = 3
      Top = 87
      Width = 107
      Height = 14
      Caption = 'Cr'#233'dito Icms (Descto):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object CFixas: TCurrencyEdit
      Left = 112
      Top = 15
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 0
      ZeroEmpty = False
      OnChange = CFixasChange
      OnClick = CFixasClick
      OnEnter = CFixasEnter
    end
    object CVariaveis: TCurrencyEdit
      Left = 311
      Top = 15
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 1
      ZeroEmpty = False
      OnChange = CFixasChange
      OnClick = CVariaveisClick
      OnEnter = CVariaveisEnter
    end
    object CFinanceiras: TCurrencyEdit
      Left = 310
      Top = 82
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 2
      ZeroEmpty = False
      OnChange = CFixasChange
      OnClick = CFinanceirasClick
      OnEnter = CFinanceirasEnter
    end
    object Cicms: TCurrencyEdit
      Left = 112
      Top = 37
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 3
      ZeroEmpty = False
      OnChange = CFixasChange
      OnClick = CicmsClick
      OnEnter = CicmsEnter
    end
    object CFederais: TCurrencyEdit
      Left = 311
      Top = 37
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 4
      ZeroEmpty = False
      OnChange = CFixasChange
      OnClick = CFederaisClick
      OnEnter = CFederaisEnter
    end
    object CMarketing: TCurrencyEdit
      Left = 454
      Top = 13
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 5
      ZeroEmpty = False
      OnChange = CFixasChange
      OnClick = CMarketingClick
      OnEnter = CMarketingEnter
    end
    object CPerda: TCurrencyEdit
      Left = 112
      Top = 59
      Width = 90
      Height = 22
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 6
      ZeroEmpty = False
      OnChange = CFixasChange
      OnClick = CPerdaClick
      OnEnter = CPerdaEnter
    end
    object Ccomissao: TCurrencyEdit
      Left = 311
      Top = 59
      Width = 90
      Height = 22
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 7
      ZeroEmpty = False
      OnChange = CFixasChange
      OnClick = CcomissaoClick
      OnEnter = CcomissaoEnter
    end
    object CLucro: TCurrencyEdit
      Left = 454
      Top = 35
      Width = 90
      Height = 22
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 8
      ZeroEmpty = False
      OnChange = CFixasChange
      OnClick = CLucroClick
      OnEnter = CLucroEnter
    end
    object CCredito: TCurrencyEdit
      Left = 112
      Top = 82
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 9
      ZeroEmpty = False
      OnChange = CFixasChange
      OnClick = CCreditoClick
      OnEnter = CCreditoEnter
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 233
    Width = 721
    Height = 308
    Hint = 'D'#234' duplo clique  ou <Enter> para alterar o pre'#231'o !'
    Color = 16776176
    DataSource = DSQItensCusto
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_DTPCUSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Pre'#231'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_REFER_ITENS'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI'
        Title.Alignment = taCenter
        Title.Caption = 'Material'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 264
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FTI_UC'
        Title.Alignment = taCenter
        Title.Caption = 'Consumo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Preco_cc'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Custo_cc'
        Title.Alignment = taCenter
        Title.Caption = 'Custo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 101
        Visible = True
      end>
  end
  object GrpFichaCusto: TGroupBox
    Left = 0
    Top = 0
    Width = 840
    Height = 115
    Caption = 'Ficha de Custo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DbGridFichas: TDBGrid
      Left = 2
      Top = 15
      Width = 836
      Height = 98
      Align = alClient
      Color = 16776176
      DataSource = DsQFichaCusto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DbGridFichasDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 409
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTC_TUP'
          Title.Alignment = taCenter
          Title.Caption = 'TUP'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTC_CRIACAO'
          Title.Alignment = taCenter
          Title.Caption = 'Cria'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 78
          Visible = True
        end>
    end
  end
  object Bit_Sair: TBitBtn
    Left = 808
    Top = 556
    Width = 147
    Height = 32
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
    TabOrder = 9
    TabStop = False
    OnClick = Bit_SairClick
  end
  object BitIndicesPadrao: TBitBtn
    Left = 997
    Top = 86
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = 'In&d'#237'ces Padr'#227'o'
    TabOrder = 8
    TabStop = False
    OnClick = BitIndicesPadraoClick
  end
  object Bit_Imprimir: TBitBtn
    Left = 997
    Top = 36
    Width = 100
    Height = 25
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 7
    TabStop = False
    OnClick = Bit_ImprimirClick
  end
  object BitPrecos: TBitBtn
    Left = 997
    Top = 61
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = '&Pre'#231'os Original'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    TabStop = False
    OnClick = BitPrecosClick
  end
  object PnLocalizar: TPanel
    Left = 136
    Top = 243
    Width = 340
    Height = 119
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    Caption = 'PnLocalizar'
    Color = 10841658
    TabOrder = 11
    Visible = False
    object GrLocalizar: TGroupBox
      Left = 6
      Top = 30
      Width = 329
      Height = 85
      Caption = 'Localizar'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object RadRefer: TRadioButton
        Left = 17
        Top = 24
        Width = 113
        Height = 17
        Caption = '&Refer'#234'ncia'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadReferClick
      end
      object RadDescricao: TRadioButton
        Left = 174
        Top = 22
        Width = 97
        Height = 17
        Caption = '&Descri'#231#227'o'
        TabOrder = 1
        OnClick = RadDescricaoClick
      end
      object Edt_Pesq: TEdit
        Left = 7
        Top = 51
        Width = 310
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnExit = Edt_PesqExit
      end
    end
    object PanTitulo: TPanel
      Left = 5
      Top = 4
      Width = 331
      Height = 21
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object BitFechar: TBitBtn
        Left = 310
        Top = 2
        Width = 18
        Height = 17
        Hint = 'Fechar tela.'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        OnClick = BitFecharClick
      end
    end
  end
  object GrpClasse: TGroupBox
    Left = 846
    Top = 0
    Width = 121
    Height = 115
    Caption = 'Classe'
    TabOrder = 12
    object RadLtda: TRadioButton
      Left = 8
      Top = 23
      Width = 51
      Height = 17
      Caption = 'L&TDA'
      TabOrder = 0
      OnClick = RadLtdaClick
    end
    object RadSimples: TRadioButton
      Left = 8
      Top = 48
      Width = 72
      Height = 17
      Caption = '&SIMPLES'
      TabOrder = 1
      OnClick = RadLtdaClick
    end
    object RadOutras: TRadioButton
      Left = 8
      Top = 74
      Width = 72
      Height = 17
      Caption = '&Outra'
      TabOrder = 2
      OnClick = RadLtdaClick
    end
  end
  object PanValor: TPanel
    Left = 136
    Top = 364
    Width = 314
    Height = 104
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 10841658
    TabOrder = 13
    Visible = False
    object GroupBox7: TGroupBox
      Left = 6
      Top = 6
      Width = 304
      Height = 92
      Caption = 'Material'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object Label5: TLabel
        Left = 10
        Top = 67
        Width = 44
        Height = 14
        Caption = 'Valor R$:'
      end
      object Label11: TLabel
        Left = 2
        Top = 44
        Width = 52
        Height = 14
        Caption = 'Descri'#231#227'o:'
      end
      object Label12: TLabel
        Left = 20
        Top = 20
        Width = 36
        Height = 14
        Caption = 'C'#243'digo:'
      end
      object CurrValor: TCurrencyEdit
        Left = 64
        Top = 63
        Width = 82
        Height = 21
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = ' ,0.00000;- ,0.00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ZeroEmpty = False
        OnChange = CFixasChange
        OnEnter = CurrValorEnter
        OnExit = CurrValorExit
      end
      object EdtDescri: TEdit
        Left = 64
        Top = 41
        Width = 237
        Height = 22
        TabStop = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 1
      end
      object EdtCodigo: TEdit
        Left = 64
        Top = 19
        Width = 107
        Height = 22
        TabStop = False
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 2
      end
      object Curr_registro: TCurrencyEdit
        Left = 152
        Top = 64
        Width = 148
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#'
        TabOrder = 3
        Visible = False
      end
    end
  end
  object GrpTotais: TGroupBox
    Left = 8
    Top = 542
    Width = 788
    Height = 57
    TabOrder = 14
    object Panel10: TPanel
      Left = 3
      Top = 9
      Width = 100
      Height = 21
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'Materiais'
      TabOrder = 0
      TabStop = True
    end
    object CTotalMateriais: TCurrencyEdit
      Left = 3
      Top = 31
      Width = 95
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00000;- ,0.00000'
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = False
    end
    object Panel11: TPanel
      Left = 100
      Top = 9
      Width = 100
      Height = 21
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'Desconto'
      TabOrder = 2
      TabStop = True
    end
    object CDesconto: TCurrencyEdit
      Left = 100
      Top = 31
      Width = 95
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00000;- ,0.00000'
      ReadOnly = True
      TabOrder = 3
      ZeroEmpty = False
    end
    object CMaterialLiq: TCurrencyEdit
      Left = 198
      Top = 31
      Width = 95
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00000;- ,0.00000'
      ReadOnly = True
      TabOrder = 4
      ZeroEmpty = False
    end
    object CTUP: TCurrencyEdit
      Left = 296
      Top = 31
      Width = 95
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 5
      ZeroEmpty = False
      OnChange = CFixasChange
      OnEnter = CTUPEnter
    end
    object CValorTup: TCurrencyEdit
      Left = 395
      Top = 31
      Width = 95
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.000;- ,0.000'
      TabOrder = 6
      ZeroEmpty = False
      OnChange = CFixasChange
      OnEnter = CValorTupEnter
    end
    object CMaodeObra: TCurrencyEdit
      Left = 491
      Top = 31
      Width = 95
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 7
      ZeroEmpty = False
    end
    object CValoresFixos: TCurrencyEdit
      Left = 586
      Top = 31
      Width = 95
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 8
      ZeroEmpty = False
    end
    object CCustoFinal: TCurrencyEdit
      Left = 681
      Top = 31
      Width = 99
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ' ,0.00;- ,0.00'
      ReadOnly = True
      TabOrder = 9
      ZeroEmpty = False
    end
    object Panel14: TPanel
      Left = 198
      Top = 9
      Width = 100
      Height = 21
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'Mat.L'#237'quido'
      TabOrder = 10
      TabStop = True
    end
    object Panel17: TPanel
      Left = 296
      Top = 9
      Width = 100
      Height = 21
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'TUP'
      TabOrder = 11
      TabStop = True
    end
    object Panel16: TPanel
      Left = 395
      Top = 9
      Width = 100
      Height = 21
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'Valor TUP'
      TabOrder = 12
      TabStop = True
    end
    object Panel12: TPanel
      Left = 491
      Top = 9
      Width = 100
      Height = 21
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'M'#227'o-de-Obra'
      TabOrder = 13
      TabStop = True
    end
    object Panel18: TPanel
      Left = 586
      Top = 9
      Width = 100
      Height = 21
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'Valores Fixos'
      TabOrder = 14
      TabStop = True
    end
    object Panel13: TPanel
      Left = 681
      Top = 9
      Width = 100
      Height = 21
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'Custo Final'
      TabOrder = 15
      TabStop = True
    end
  end
  object Panel20: TPanel
    Left = 810
    Top = 351
    Width = 237
    Height = 164
    BevelInner = bvLowered
    Caption = 'FOTO'
    Color = clWhite
    TabOrder = 15
    object ImgProduto: TImage
      Left = 2
      Top = 2
      Width = 233
      Height = 160
      Align = alClient
      Stretch = True
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 656
    Top = 496
  end
  object DSQItensCusto: TDataSource
    DataSet = SqlCdsItens
    Left = 541
    Top = 290
  end
  object DsQFichaCusto: TDataSource
    DataSet = SqlCdsFichaCusto
    Left = 310
    Top = 57
  end
  object SqlCdsFichaCusto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'F1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_COMPL,'#13#10'F1.FTC_TUP' +
      ','#13#10'F1.FTC_CRIACAO'#13#10'FROM FTC0000 F1'#13#10'JOIN PRD0000 P1 ON F1.PRD_RE' +
      'FER = P1.PRD_REFER'#13#10'ORDER BY P1.PRD_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterScroll = SqlCdsFichaCustoAfterScroll
    CommandText = 
      'Select'#13#10'F1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_COMPL,'#13#10'F1.FTC_TUP' +
      ','#13#10'F1.FTC_CRIACAO'#13#10'FROM FTC0000 F1'#13#10'JOIN PRD0000 P1 ON F1.PRD_RE' +
      'FER = P1.PRD_REFER'#13#10'ORDER BY P1.PRD_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 280
    Top = 56
    object SqlCdsFichaCustoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object SqlCdsFichaCustoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsFichaCustoPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 30
    end
    object SqlCdsFichaCustoFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
    end
    object SqlCdsFichaCustoFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
    end
  end
  object SqlCdsItens: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT '#13#10'F1.FTI_REGISTRO,'#13#10'F1.PRD_REFER,'#13#10'F1.PRD_REFER_ITENS,'#13#10'F' +
      '1.FTI_UC,'#13#10'F1.FTI_MODE1,'#13#10'F1.FTI_MODIFICADA,'#13#10'F1.FTI_UCMODIFIC,'#13 +
      #10'F1.FTI_PRECOCUSTO,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_DTPCUSTO,'#13#10'P1.PRD_PC' +
      'USTO'#13#10'FROM FTC_IT01 F1'#13#10'LEFT JOIN PRD0000 P1 ON F1.prd_refer_ite' +
      'ns = P1.prd_refer'#13#10'ORDER BY F1.PRD_REFER_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsItensCalcFields
    CommandText = 
      'SELECT '#13#10'F1.FTI_REGISTRO,'#13#10'F1.PRD_REFER,'#13#10'F1.PRD_REFER_ITENS,'#13#10'F' +
      '1.FTI_UC,'#13#10'F1.FTI_MODE1,'#13#10'F1.FTI_MODIFICADA,'#13#10'F1.FTI_UCMODIFIC,'#13 +
      #10'F1.FTI_PRECOCUSTO,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_DTPCUSTO,'#13#10'P1.PRD_PC' +
      'USTO'#13#10'FROM FTC_IT01 F1'#13#10'LEFT JOIN PRD0000 P1 ON F1.prd_refer_ite' +
      'ns = P1.prd_refer'#13#10'ORDER BY F1.PRD_REFER_ITENS'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 511
    Top = 289
    object SqlCdsItensFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      Required = True
    end
    object SqlCdsItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      DisplayFormat = '#,###0.000000'
      Precision = 15
    end
    object SqlCdsItensFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsItensPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsItensPRD_DTPCUSTO: TSQLTimeStampField
      FieldName = 'PRD_DTPCUSTO'
    end
    object SqlCdsItensPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      DisplayFormat = '#,####0.0000'
      Precision = 15
    end
    object SqlCdsItensFTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
    end
    object SqlCdsItensFTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      Precision = 15
    end
    object SqlCdsItensFTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      Precision = 15
    end
    object SqlCdsItensPreco_cc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Preco_cc'
      DisplayFormat = '#,####0.0000'
      currency = False
      Calculated = True
    end
    object SqlCdsItensCusto_cc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Custo_cc'
      DisplayFormat = '#,####0.0000'
      currency = False
      Calculated = True
    end
  end
  object SqlCdsClasse: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from VCT0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from VCT0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 648
    Top = 48
    object SqlCdsClasseVCT_CLASSE: TStringField
      FieldName = 'VCT_CLASSE'
      Size = 1
    end
    object SqlCdsClasseVCT_TUP: TFMTBCDField
      FieldName = 'VCT_TUP'
      Precision = 15
    end
    object SqlCdsClasseVCT_TMAQ: TFMTBCDField
      FieldName = 'VCT_TMAQ'
      Precision = 15
    end
    object SqlCdsClasseVCT_DF: TFMTBCDField
      FieldName = 'VCT_DF'
      Precision = 15
    end
    object SqlCdsClasseVCT_DV: TFMTBCDField
      FieldName = 'VCT_DV'
      Precision = 15
    end
    object SqlCdsClasseVCT_ICMS: TFMTBCDField
      FieldName = 'VCT_ICMS'
      Precision = 15
    end
    object SqlCdsClasseVCT_FED: TFMTBCDField
      FieldName = 'VCT_FED'
      Precision = 15
    end
    object SqlCdsClasseVCT_DPG: TFMTBCDField
      FieldName = 'VCT_DPG'
      Precision = 15
    end
    object SqlCdsClasseVCT_LV: TFMTBCDField
      FieldName = 'VCT_LV'
      Precision = 15
    end
    object SqlCdsClasseVCT_FIN: TFMTBCDField
      FieldName = 'VCT_FIN'
      Precision = 15
    end
    object SqlCdsClasseVCT_COMRP: TFMTBCDField
      FieldName = 'VCT_COMRP'
      Precision = 15
    end
    object SqlCdsClasseVCT_COMSP: TFMTBCDField
      FieldName = 'VCT_COMSP'
      Precision = 15
    end
    object SqlCdsClasseVCT_COMGE: TFMTBCDField
      FieldName = 'VCT_COMGE'
      Precision = 15
    end
    object SqlCdsClasseVCT_DESC: TFMTBCDField
      FieldName = 'VCT_DESC'
      Precision = 15
    end
    object SqlCdsClasseVCT_FIXO: TFMTBCDField
      FieldName = 'VCT_FIXO'
      Precision = 15
    end
    object SqlCdsClasseVCT_COMPLE: TFMTBCDField
      FieldName = 'VCT_COMPLE'
      Precision = 15
    end
    object SqlCdsClasseVCT_INDIRETA: TFMTBCDField
      FieldName = 'VCT_INDIRETA'
      Precision = 15
    end
    object SqlCdsClasseVCT_LUCROUNID: TFMTBCDField
      FieldName = 'VCT_LUCROUNID'
      Precision = 15
    end
    object SqlCdsClasseVCT_PERDA: TFMTBCDField
      FieldName = 'VCT_PERDA'
      Precision = 15
    end
    object SqlCdsClasseVCT_VISTA: TFMTBCDField
      FieldName = 'VCT_VISTA'
      Precision = 15
    end
    object SqlCdsClasseVCT_30D: TFMTBCDField
      FieldName = 'VCT_30D'
      Precision = 15
    end
    object SqlCdsClasseVCT_45D: TFMTBCDField
      FieldName = 'VCT_45D'
      Precision = 15
    end
    object SqlCdsClasseVCT_60D: TFMTBCDField
      FieldName = 'VCT_60D'
      Precision = 15
    end
    object SqlCdsClasseVCT_75D: TFMTBCDField
      FieldName = 'VCT_75D'
      Precision = 15
    end
    object SqlCdsClasseVCT_90D: TFMTBCDField
      FieldName = 'VCT_90D'
      Precision = 15
    end
    object SqlCdsClasseVCT_TXTCOND1: TStringField
      FieldName = 'VCT_TXTCOND1'
      Size = 7
    end
    object SqlCdsClasseVCT_TXTCOND2: TStringField
      FieldName = 'VCT_TXTCOND2'
      Size = 7
    end
    object SqlCdsClasseVCT_TXTCOND3: TStringField
      FieldName = 'VCT_TXTCOND3'
      Size = 7
    end
    object SqlCdsClasseVCT_TXTCOND4: TStringField
      FieldName = 'VCT_TXTCOND4'
      Size = 7
    end
    object SqlCdsClasseVCT_TXTCOND5: TStringField
      FieldName = 'VCT_TXTCOND5'
      Size = 7
    end
    object SqlCdsClasseVCT_TXTCOND6: TStringField
      FieldName = 'VCT_TXTCOND6'
      Size = 7
    end
    object SqlCdsClasseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsParam: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'P1.PMT_EMPRESACLASSE,'#13#10'P1.PMT_UNFORMULA'#13#10'from PRMT0001 ' +
      'P1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'P1.PMT_EMPRESACLASSE,'#13#10'P1.PMT_UNFORMULA'#13#10'from PRMT0001 ' +
      'P1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 641
    Top = 8
    object SqlCdsParamPMT_EMPRESACLASSE: TStringField
      FieldName = 'PMT_EMPRESACLASSE'
      Size = 1
    end
    object SqlCdsParamPMT_UNFORMULA: TSmallintField
      FieldName = 'PMT_UNFORMULA'
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
    Left = 752
    Top = 62
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
  object RdPrintFcusto: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.MostrarSETUP = True
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 75
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    OpcoesPreview.ExtraBtnStatus = Invisivel
    OpcoesPreview.ExtraBtnWidth = 80
    OpcoesPreview.ExtraBtnCaption = 'Extra Btn'
    OpcoesPreview.PreviewMode = vPrinter
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'DELTRESS SISTEMAS S/S LTDA'
    RegistroUsuario.SerieProduto = 'DEMONSTRA'#199#195'O'
    RegistroUsuario.AutorizacaoKey = '*** SEM REGISTRO ***'
    About = 'RDprint 8.2 - TRIAL'
    Acentuacao = SemAcento
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Grafico
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 132
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    FonteGrafica = sCourierNew
    ReduzParaCaber = True
    Left = 624
    Top = 496
  end
end
