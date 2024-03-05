inherited FormGImpPedido: TFormGImpPedido
  Left = 593
  Top = 181
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio de pedidos'
  ClientHeight = 654
  ClientWidth = 1307
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  Position = poScreenCenter
  ExplicitWidth = 1323
  ExplicitHeight = 693
  PixelsPerInch = 96
  TextHeight = 14
  object grp08: TGroupBox [0]
    Left = -1
    Top = 561
    Width = 413
    Height = 41
    TabOrder = 8
    object BitConfig: TBitBtn
      Left = 15
      Top = 11
      Width = 150
      Height = 25
      Cursor = crHandPoint
      Caption = 'Config&ura'#231#227'o de Impress'#227'o'
      TabOrder = 0
      TabStop = False
      OnClick = BitConfigClick
    end
    object BitOk: TBitBtn
      Left = 245
      Top = 11
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&OK'
      TabOrder = 1
      TabStop = False
      OnClick = BitOkClick
    end
    object BitCancelar: TBitBtn
      Left = 328
      Top = 11
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      TabOrder = 2
      TabStop = False
      OnClick = BitCancelarClick
    end
  end
  object grp04: TGroupBox [1]
    Left = 0
    Top = 257
    Width = 413
    Height = 41
    Caption = 'Pedido'
    TabOrder = 4
    object Label1: TLabel
      Left = 12
      Top = 19
      Width = 53
      Height = 14
      Caption = 'N'#186' Pedido :'
    end
    object Label2: TLabel
      Left = 168
      Top = 19
      Width = 38
      Height = 14
      Caption = 'At'#233' N'#186' :'
    end
    object EditInicial: TEdit
      Left = 79
      Top = 13
      Width = 73
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 7
      TabOrder = 0
      OnExit = EditInicialExit
    end
    object EditFinal: TEdit
      Left = 215
      Top = 13
      Width = 73
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 7
      TabOrder = 1
      OnExit = EditFinalExit
    end
  end
  object Grp02: TGroupBox [2]
    Left = 0
    Top = 119
    Width = 413
    Height = 41
    Caption = 'Sele'#231#227'o'
    TabOrder = 2
    object Label6: TLabel
      Left = 43
      Top = 18
      Width = 35
      Height = 14
      Caption = 'C&liente:'
    end
    object CbCliente: TComboBox
      Left = 116
      Top = 15
      Width = 294
      Height = 22
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 1
      Text = 'TODOS OS CLIENTES'
      OnClick = CbClienteClick
      OnEnter = CbClienteEnter
      Items.Strings = (
        'TODOS OS CLIENTES')
    end
    object EdtClie: TEdit
      Left = 80
      Top = 15
      Width = 36
      Height = 22
      MaxLength = 5
      TabOrder = 0
      OnClick = EdtClieEnter
      OnEnter = EdtClieEnter
      OnExit = EdtClieExit
      OnKeyPress = EdtClieKeyPress
    end
    object CbCliCod: TComboBox
      Left = 116
      Top = 15
      Width = 63
      Height = 21
      Style = csSimple
      MaxLength = 5
      TabOrder = 2
      Visible = False
    end
  end
  object grp00: TGroupBox [3]
    Left = 0
    Top = 0
    Width = 289
    Height = 119
    Caption = 'Tipos de Relat'#243'rios'
    TabOrder = 0
    object LTBox: TListBox
      Left = 3
      Top = 15
      Width = 282
      Height = 100
      Style = lbOwnerDrawVariable
      Color = 11599871
      TabOrder = 0
      OnClick = LTBoxClick
    end
  end
  object grp01: TGroupBox [4]
    Left = 291
    Top = 0
    Width = 121
    Height = 119
    Caption = 'Dispositivo de sa'#237'da'
    TabOrder = 1
    object RadVideo: TRadioButton
      Left = 14
      Top = 23
      Width = 65
      Height = 17
      Caption = '&V'#237'deo'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadImpressora: TRadioButton
      Left = 14
      Top = 46
      Width = 81
      Height = 17
      Caption = '&Impressora'
      TabOrder = 1
    end
    object RadText: TRadioButton
      Left = 14
      Top = 70
      Width = 90
      Height = 17
      Caption = '&Arquivo Texto'
      TabOrder = 2
    end
    object chkMultiempresa: TCheckBox
      Left = 15
      Top = 96
      Width = 81
      Height = 17
      Caption = 'Multiempresa'
      TabOrder = 3
    end
  end
  object Grp03: TGroupBox [5]
    Left = 0
    Top = 160
    Width = 413
    Height = 65
    Caption = 'Sele'#231#227'o'
    TabOrder = 3
    object Label3: TLabel
      Left = 55
      Top = 17
      Width = 23
      Height = 14
      Caption = 'Ti&po:'
    end
    object Label48: TLabel
      Left = 12
      Top = 45
      Width = 66
      Height = 14
      Alignment = taRightJustify
      Caption = 'Centro Custo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object EdtTipo: TEdit
      Left = 80
      Top = 13
      Width = 36
      Height = 22
      MaxLength = 3
      TabOrder = 0
      OnExit = EdtTipoExit
    end
    object CbTipo: TComboBox
      Left = 116
      Top = 13
      Width = 294
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 1
      Text = 'TODOS'
      OnClick = CbTipoClick
    end
    object EdProjetoObraCodigo: TEdit
      Left = 80
      Top = 37
      Width = 36
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 2
      OnExit = EdProjetoObraCodigoExit
    end
    object CbProjetoObra: TComboBoxRw
      Left = 116
      Top = 37
      Width = 270
      Height = 22
      TabOrder = 3
      OnExit = CbProjetoObraExit
      OnChange = CbProjetoObraChange
      CharCase = ecUpperCase
      LookupSelect = 'PCX_DESCRI'
      LookupOrderBy = 'PCX_DESCRI'
      LookupTable = 'PCX0000'
      GridAutoSize = False
      LookupSource = CbProjetoObra.InternalSource
      LookupKeyField = 'PCX_CODIGO'
      FiltroTabela = 'PCX_TIPO = '#39'L'#39
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Centros de Custo'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
      Tabela = 'PCX0000'
      CamposCarregar = 'PCX_DESCRI'
      CamposRetornar = 'PCX_CODIGO'
      Condicao = 'PCX_TIPO = '#39'L'#39
      CamposOrdernar = 'PCX_DESCRI'
      ConexaoBanco = DataCadastros.SQLConnection1
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
  end
  object grp07: TGroupBox [6]
    Left = 0
    Top = 300
    Width = 413
    Height = 73
    Caption = '&Per'#237'odo:'
    TabOrder = 5
    object Label7: TLabel
      Left = 16
      Top = 43
      Width = 16
      Height = 14
      Caption = '&De:'
    end
    object Label8: TLabel
      Left = 186
      Top = 43
      Width = 20
      Height = 14
      Caption = 'A&t'#233':'
    end
    object RadEntrada: TRadioButton
      Left = 15
      Top = 19
      Width = 100
      Height = 17
      Caption = 'Data de Entrada'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadEntrega: TRadioButton
      Left = 141
      Top = 19
      Width = 100
      Height = 17
      Caption = 'Data de Entre&ga'
      TabOrder = 1
    end
    object RadFaturamento: TRadioButton
      Left = 277
      Top = 19
      Width = 123
      Height = 17
      Caption = 'Data do Faturamento'
      TabOrder = 4
    end
    object EditDataI: TJvDateEdit
      Left = 34
      Top = 39
      Width = 100
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
      TabOrder = 2
      OnExit = EditDataIExit
    end
    object EditDataF: TJvDateEdit
      Left = 294
      Top = 39
      Width = 100
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
      TabOrder = 3
      OnExit = EditDataFExit
    end
  end
  object Grp05: TGroupBox [7]
    Left = 0
    Top = 414
    Width = 413
    Height = 41
    Caption = 'Sele'#231#227'o'
    TabOrder = 7
    object Label4: TLabel
      Left = 50
      Top = 18
      Width = 23
      Height = 14
      Caption = 'Ti&po:'
    end
    object Edt_Tipo: TEdit
      Left = 76
      Top = 14
      Width = 36
      Height = 22
      MaxLength = 3
      TabOrder = 0
      OnExit = Edt_TipoExit
    end
    object Cb_Tipo: TComboBox
      Left = 112
      Top = 14
      Width = 294
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 30
      TabOrder = 1
      Text = 'TODOS'
      OnClick = Cb_TipoClick
      OnExit = Cb_TipoExit
    end
  end
  object Grp06: TGroupBox [8]
    Left = 0
    Top = 371
    Width = 413
    Height = 41
    Caption = 'Filtrar'
    TabOrder = 6
    object Rad_Todos: TRadioButton
      Left = 15
      Top = 19
      Width = 53
      Height = 17
      Caption = '&Todos'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object Rad_Faturado: TRadioButton
      Left = 141
      Top = 19
      Width = 113
      Height = 17
      Caption = 'Somente &Faturado'
      TabOrder = 1
    end
    object Rad_Faturar: TRadioButton
      Left = 277
      Top = 19
      Width = 113
      Height = 17
      Caption = 'Somente '#224' Fat&urar'
      TabOrder = 2
    end
  end
  object grp09: TGroupBox [9]
    Left = -1
    Top = 456
    Width = 413
    Height = 65
    Caption = 'Sele'#231#227'o'
    TabOrder = 9
    object Label9: TLabel
      Left = 55
      Top = 18
      Width = 28
      Height = 14
      Caption = 'Frete:'
    end
    object Label10: TLabel
      Left = 6
      Top = 45
      Width = 78
      Height = 14
      Caption = 'Transportadora:'
    end
    object CbTipoFrete: TComboBox
      Left = 87
      Top = 12
      Width = 165
      Height = 22
      Hint = 
        '0-Remetente (CIF)'#13#10'1-Destinat'#225'rio (FOB)'#13#10'2-Terceiros'#13#10'3-Pr'#243'prio ' +
        'por conta do remetente'#13#10'4-Pr'#243'prio por conta do destinat'#225'rio'#13#10'9-S' +
        'em frete'
      Style = csOwnerDrawFixed
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Items.Strings = (
        'TODOS'
        '0-Remetente-CIF'
        '1-Destinat'#225'rio-FOB'
        '2-Terceiros'
        '3-Pr'#243'prio por conta do remetente'
        '4-Pr'#243'prio por conta do destinat'#225'rio'
        '9-Sem frete')
    end
    object cbTransp: TComboBox
      Left = 125
      Top = 38
      Width = 279
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 2
      Text = 'TODOS'
      OnClick = cbTranspClick
      OnEnter = cbTranspEnter
    end
    object EdtTransp: TEdit
      Left = 87
      Top = 38
      Width = 36
      Height = 22
      MaxLength = 3
      TabOrder = 3
      OnExit = EdtRepExit
    end
    object cbTranspCod: TComboBox
      Left = 123
      Top = 38
      Width = 63
      Height = 22
      Style = csSimple
      MaxLength = 3
      TabOrder = 1
      Visible = False
    end
  end
  object grpVendedor: TGroupBox [10]
    Left = 0
    Top = 224
    Width = 409
    Height = 33
    TabOrder = 10
    object Label5: TLabel
      Left = 10
      Top = 12
      Width = 62
      Height = 14
      Caption = '&Vendedores:'
    end
    object CbRepCod: TComboBox
      Left = 115
      Top = 8
      Width = 63
      Height = 22
      Style = csSimple
      MaxLength = 3
      TabOrder = 2
      Visible = False
    end
    object CbRep: TComboBox
      Left = 112
      Top = 8
      Width = 294
      Height = 22
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 0
      Text = 'TODOS'
      OnClick = CbRepClick
      OnEnter = CbRepEnter
      Items.Strings = (
        'TODOS'
        '')
    end
    object EdtRep: TEdit
      Left = 75
      Top = 8
      Width = 36
      Height = 22
      MaxLength = 3
      TabOrder = 1
      OnExit = EdtRepExit
    end
  end
  object pOrigem: TPanel [11]
    Left = 0
    Top = 527
    Width = 412
    Height = 33
    BevelOuter = bvLowered
    TabOrder = 11
    object Label120: TLabel
      Left = 10
      Top = 7
      Width = 37
      Height = 14
      Caption = 'Origem:'
    end
    object cbOrigem: TSgDbSearchCombo
      Left = 48
      Top = 4
      Width = 333
      Height = 22
      TabOrder = 0
      CharCase = ecUpperCase
      LookupSelect = 'CORI_CODIGO,CORI_DESCRICAO'
      LookupOrderBy = 'CORI_DESCRICAO'
      LookupTable = 'CLIENTE_ORIGEM'
      LookupDispl = 'CORI_DESCRICAO'
      GridAutoSize = False
      LookupSource = qAux3
      LookupKeyField = 'CORI_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Origem'
      AutoF8ColumnsTitulo = 'C'#243'digo, Origem'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
  end
  object PanelAguarde: TPanel [12]
    Left = 10
    Top = 31
    Width = 293
    Height = 66
    AutoSize = True
    Caption = 'PanelAguarde'
    Color = clWhite
    TabOrder = 12
    Visible = False
    object JvGIFAnimator1: TJvGIFAnimator
      Left = 1
      Top = 11
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
    end
    object pinfo: TPanel
      Left = 8
      Top = 1
      Width = 281
      Height = 32
      Caption = 'Por favor, aguarde.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverName=Firebird'
      'Database=c:\jobdados\exemplo\exemplo.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=True')
    Left = 472
    Top = 105
  end
  inherited qAux: TSQLQuery
    Left = 426
    Top = 21
  end
  inherited qAux2: TSQLQuery
    Left = 482
    Top = 20
  end
  inherited qAux3: TSQLQuery
    Left = 530
    Top = 20
  end
  object PrinterPedido: TPrinterSetupDialog
    Left = 452
    Top = 342
  end
  object SqlCdsPedido: TSQLQuery
    AfterScroll = SqlCdsPedidoAfterScroll
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 712
    Top = 64
    object SqlCdsPedidoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsPedidoPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object SqlCdsPedidoPED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
    end
    object SqlCdsPedidoPED_EXPEDICAO: TStringField
      FieldName = 'PED_EXPEDICAO'
      Size = 7
    end
    object SqlCdsPedidoPED_COMIS1: TFMTBCDField
      FieldName = 'PED_COMIS1'
      Precision = 15
    end
    object SqlCdsPedidoPED_COMIS2: TFMTBCDField
      FieldName = 'PED_COMIS2'
      Precision = 15
    end
    object SqlCdsPedidoPED_COMIS3: TFMTBCDField
      FieldName = 'PED_COMIS3'
      Precision = 15
    end
    object SqlCdsPedidoPED_FRETE: TStringField
      FieldName = 'PED_FRETE'
      Size = 1
    end
    object SqlCdsPedidoPED_FRETE2: TStringField
      FieldName = 'PED_FRETE2'
      Size = 1
    end
    object SqlCdsPedidoPED_SITCRED: TStringField
      FieldName = 'PED_SITCRED'
      Size = 10
    end
    object SqlCdsPedidoPED_PRIORIDADE: TStringField
      FieldName = 'PED_PRIORIDADE'
      Size = 10
    end
    object SqlCdsPedidoPED_DESCTONF: TStringField
      FieldName = 'PED_DESCTONF'
      FixedChar = True
      Size = 1
    end
    object SqlCdsPedidoPED_DESCTOPC1: TFMTBCDField
      FieldName = 'PED_DESCTOPC1'
      Precision = 15
    end
    object SqlCdsPedidoPED_DESCTOPC2: TFMTBCDField
      FieldName = 'PED_DESCTOPC2'
      Precision = 15
    end
    object SqlCdsPedidoPED_DESCTOVL: TFMTBCDField
      FieldName = 'PED_DESCTOVL'
      Precision = 15
    end
    object SqlCdsPedidoPED_VLTOTAL_LIQ: TFMTBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      Precision = 15
    end
    object SqlCdsPedidoPED_VLTOTAL_IPI: TFMTBCDField
      FieldName = 'PED_VLTOTAL_IPI'
      Precision = 15
    end
    object SqlCdsPedidoPED_VLTOTAL_BRUTO: TFMTBCDField
      FieldName = 'PED_VLTOTAL_BRUTO'
      Precision = 15
    end
    object SqlCdsPedidoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsPedidoCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 50
    end
    object SqlCdsPedidoCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object SqlCdsPedidoCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object SqlCdsPedidoCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object SqlCdsPedidoCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsPedidoCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object SqlCdsPedidoCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      Size = 1
    end
    object SqlCdsPedidoCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object SqlCdsPedidoCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object SqlCdsPedidoCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object SqlCdsPedidoCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object SqlCdsPedidoCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 11
    end
    object SqlCdsPedidoCLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      Size = 50
    end
    object SqlCdsPedidoCLI_CIDENTR: TStringField
      FieldName = 'CLI_CIDENTR'
      Size = 30
    end
    object SqlCdsPedidoCLI_UFENTR: TStringField
      FieldName = 'CLI_UFENTR'
      Size = 2
    end
    object SqlCdsPedidoCLI_CEPENTR: TStringField
      FieldName = 'CLI_CEPENTR'
      Size = 8
    end
    object SqlCdsPedidoCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      Size = 50
    end
    object SqlCdsPedidoCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      Size = 30
    end
    object SqlCdsPedidoCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      Size = 2
    end
    object SqlCdsPedidoCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      Size = 8
    end
    object SqlCdsPedidoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsPedidoREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsPedidoPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object SqlCdsPedidoPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
    object SqlCdsPedidoTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object SqlCdsPedidoTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object SqlCdsPedidoTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      Size = 11
    end
    object SqlCdsPedidoTRP_REDESP: TStringField
      FieldName = 'TRP_REDESP'
      Size = 3
    end
    object SqlCdsPedidoTRP_RAZAO_1: TStringField
      FieldName = 'TRP_RAZAO_1'
      Size = 45
    end
    object SqlCdsPedidoTRP_FONE_1: TStringField
      FieldName = 'TRP_FONE_1'
      Size = 11
    end
    object SqlCdsPedidoOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object SqlCdsPedidoOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object SqlCdsPedidoPED_OBSG2: TStringField
      FieldName = 'PED_OBSG2'
      Size = 100
    end
    object SqlCdsPedidoPED_OBSG3: TStringField
      FieldName = 'PED_OBSG3'
      Size = 100
    end
    object SqlCdsPedidoPED_OBSG4: TStringField
      FieldName = 'PED_OBSG4'
      Size = 100
    end
    object SqlCdsPedidoPED_OBSG5: TStringField
      FieldName = 'PED_OBSG5'
      Size = 100
    end
    object SqlCdsPedidoPED_OBSG6: TStringField
      FieldName = 'PED_OBSG6'
      Size = 100
    end
    object SqlCdsPedidoPED_OBSG7: TStringField
      FieldName = 'PED_OBSG7'
      Size = 100
    end
    object SqlCdsPedidoPED_TOTUPS: TFMTBCDField
      FieldName = 'PED_TOTUPS'
      Precision = 15
    end
    object SqlCdsPedidoPED_VLTUPS: TFMTBCDField
      FieldName = 'PED_VLTUPS'
      Precision = 15
    end
    object SqlCdsPedidoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SqlCdsPedidoCLI_EMAIL_ALTERNATIVO: TStringField
      FieldName = 'CLI_EMAIL_ALTERNATIVO'
      Size = 50
    end
    object SqlCdsPedidoPED_OBSNOTA: TBlobField
      FieldName = 'PED_OBSNOTA'
    end
    object SqlCdsPedidoPED_OBSG1: TBlobField
      FieldName = 'PED_OBSG1'
    end
    object SqlCdsPedidoPED_VLFRETE: TFMTBCDField
      FieldName = 'PED_VLFRETE'
      Precision = 20
      Size = 5
    end
  end
  object DsPedido: TDataSource
    DataSet = SqlCdsPedido
    Left = 768
    Top = 64
  end
  object SqlCdsItenPedi: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 512
    Top = 200
    object SqlCdsItenPediPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsItenPediPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItenPediPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 50
    end
    object SqlCdsItenPediPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      Precision = 15
    end
    object SqlCdsItenPediPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 15
    end
    object SqlCdsItenPediPRF_IPIALIQ: TFMTBCDField
      FieldName = 'PRF_IPIALIQ'
      Precision = 15
    end
    object SqlCdsItenPediPRF_VAR1: TFMTBCDField
      FieldName = 'PRF_VAR1'
      Precision = 15
    end
    object SqlCdsItenPediPRF_VAR2: TFMTBCDField
      FieldName = 'PRF_VAR2'
      Precision = 15
    end
    object SqlCdsItenPediPRF_VAR3: TFMTBCDField
      FieldName = 'PRF_VAR3'
      Precision = 15
    end
    object SqlCdsItenPediPRF_VAR4: TFMTBCDField
      FieldName = 'PRF_VAR4'
      Precision = 15
    end
    object SqlCdsItenPediPRF_VAR5: TFMTBCDField
      FieldName = 'PRF_VAR5'
      Precision = 15
    end
    object SqlCdsItenPediPRF_VAR6: TFMTBCDField
      FieldName = 'PRF_VAR6'
      Precision = 15
    end
    object SqlCdsItenPediPRF_VAR7: TFMTBCDField
      FieldName = 'PRF_VAR7'
      Precision = 15
    end
    object SqlCdsItenPediPRF_VAR8: TFMTBCDField
      FieldName = 'PRF_VAR8'
      Precision = 15
    end
    object SqlCdsItenPediPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsItenPediPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      Precision = 15
    end
    object SqlCdsItenPediPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsItenPediPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlCdsItenPediPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlCdsItenPediPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlCdsItenPediPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlCdsItenPediPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlCdsItenPediPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlCdsItenPediPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object SqlCdsItenPediPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsItenPediPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object SqlCdsItenPediPRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Precision = 15
    end
    object SqlCdsItenPediPRF_SITUACAO: TStringField
      FieldName = 'PRF_SITUACAO'
      Size = 1
    end
    object SqlCdsItenPediPRF_IDESCTO2: TFloatField
      FieldName = 'PRF_IDESCTO2'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsItenPediPRF_IDESCTO1: TFloatField
      FieldName = 'PRF_IDESCTO1'
      ProviderFlags = [pfInUpdate]
    end
    object SqlCdsItenPediPRF_ITEMCOMIS: TFMTBCDField
      FieldName = 'PRF_ITEMCOMIS'
      Precision = 15
    end
    object SqlCdsItenPediPRF_ICMSALIQ: TFMTBCDField
      FieldName = 'PRF_ICMSALIQ'
      Precision = 15
    end
    object SqlCdsItenPediEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsItenPediPRF_PRECO_BRUTO: TFMTBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      Precision = 15
      Size = 5
    end
    object SqlCdsItenPediPRF_OP: TStringField
      FieldName = 'PRF_OP'
      Size = 1
    end
    object SqlCdsItenPediPRF_QTDE_FAT_VAR1: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR1'
      Precision = 15
    end
    object SqlCdsItenPediPRF_QTDE_FAT_VAR2: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR2'
      Precision = 15
    end
    object SqlCdsItenPediPRF_QTDE_FAT_VAR3: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR3'
      Precision = 15
    end
    object SqlCdsItenPediPRF_QTDE_FAT_VAR4: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR4'
      Precision = 15
    end
    object SqlCdsItenPediPRF_QTDE_FAT_VAR5: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR5'
      Precision = 15
    end
    object SqlCdsItenPediPRF_QTDE_FAT_VAR6: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR6'
      Precision = 15
    end
    object SqlCdsItenPediPRF_QTDE_FAT_VAR7: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR7'
      Precision = 15
    end
    object SqlCdsItenPediPRF_QTDE_FAT_VAR8: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR8'
      Precision = 15
    end
    object SqlCdsItenPediPRF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PRF_FLAG_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object SqlCdsItenPediPRF_ORIGEM_ITEM: TStringField
      FieldName = 'PRF_ORIGEM_ITEM'
      Size = 1
    end
    object SqlCdsItenPediPRF_PRODUTO_AGREGADO: TStringField
      FieldName = 'PRF_PRODUTO_AGREGADO'
      Size = 1
    end
    object SqlCdsItenPediPRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      Precision = 20
      Size = 5
    end
  end
  object DsItenPedi: TDataSource
    DataSet = SqlCdsItenPedi
    Left = 736
    Top = 96
  end
  object SqlCdsParam: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 472
    Top = 280
    object SqlCdsParamPMT_VARIACOES: TStringField
      FieldName = 'PMT_VARIACOES'
      Size = 1
    end
    object SqlCdsParamPMT_COMIS_GRP: TStringField
      FieldName = 'PMT_COMIS_GRP'
      Size = 1
    end
    object SqlCdsParamPMT_TUPPEDIDO: TStringField
      FieldName = 'PMT_TUPPEDIDO'
      Size = 1
    end
  end
  object SqlCdsRel01: TSQLQuery
    OnCalcFields = SqlCdsRel01CalcFields
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQL.Strings = (
      
        'Select p1.EMP_CODIGO, P1.ped_codigo, P1.ped_dtentrada,P1.ped_dts' +
        'aida,P1.ped_vltotal_bruto,P1.ped_vltotal_liq,P1.cli_codigo, '
      
        ' (SELECT SUM(P2.PRF_QTDE) FROM PED_IT01 P2 WHERE P1.PED_CODIGO =' +
        ' P2.ped_codigo and P1.EMP_CODIGO = P2.EMP_CODIGO ) AS WQTDE, '
      
        ' coalesce(C1.CLI_RAZAO, PED_ORS_CLIENTE) CLI_RAZAO,  C1.CLI_UF,P' +
        '1.rep_codigo,R1.rep_NOME  '
      'FROM PED0000 P1 '
      
        'LEFT JOIN cli0000 C1 ON P1.CLI_CODIGO = C1.cli_codigo LEFT JOIN ' +
        'REP0000 R1 ON P1.REP_CODIGO = R1.REP_CODIGO '
      'WHERE 1=0')
    SQLConnection = DBConn
    Left = 752
    Top = 160
    object SqlCdsRel01PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsRel01WQTDE: TFMTBCDField
      FieldName = 'WQTDE'
      Precision = 15
    end
    object SqlCdsRel01PED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object SqlCdsRel01PED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
    end
    object SqlCdsRel01PED_VLTOTAL_BRUTO: TFMTBCDField
      FieldName = 'PED_VLTOTAL_BRUTO'
      Precision = 15
    end
    object SqlCdsRel01CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsRel01CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SqlCdsRel01CLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsRel01REP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsRel01REP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsRel01PED_MES_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'PED_MES_CC'
      Size = 2
      Calculated = True
    end
    object SqlCdsRel01PED_VLTOTAL_LIQ: TFMTBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      Precision = 15
    end
    object SqlCdsRel01EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsRel01: TDataSource
    AutoEdit = False
    DataSet = cdsRel1
    Left = 824
    Top = 160
  end
  object ppRRel01: TppReport
    AutoStop = False
    DataPipeline = ppDBRel01
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\RELPed01.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 960
    Top = 160
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel01'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
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
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 265
        mmTop = 529
        mmWidth = 29986
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 5027
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 9525
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable11: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy HH:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 169863
        mmTop = 529
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable12: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = PaginaGetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174378
        mmTop = 9525
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14023
        mmWidth = 196586
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 6336
        mmTop = 14904
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 19745
        mmTop = 14728
        mmWidth = 14557
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 49291
        mmTop = 14552
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 97445
        mmTop = 14552
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 105382
        mmTop = 14552
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VL.BRUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 147980
        mmTop = 14552
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'REPRESENTANTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 169863
        mmTop = 14552
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 35531
        mmTop = 14552
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 18520
        mmWidth = 196850
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label65'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VL.LIQUIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 126549
        mmTop = 14552
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label77'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Emp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 14817
        mmWidth = 5998
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3260
        mmLeft = 5985
        mmTop = 176
        mmWidth = 10600
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_DTENTRADA'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3260
        mmLeft = 17363
        mmTop = 176
        mmWidth = 14600
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_UF'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3260
        mmLeft = 96916
        mmTop = 0
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'WQTDE'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 103795
        mmTop = 265
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLTOTAL_BRUTO'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3260
        mmLeft = 146922
        mmTop = 180
        mmWidth = 18000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBRep: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBRep'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_NOME'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3260
        mmLeft = 168805
        mmTop = 180
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_DTSAIDA'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3260
        mmLeft = 32798
        mmTop = 0
        mmWidth = 14600
        BandType = 4
        LayerName = Foreground
      end
      object ppDBCliente: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBCliente'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3260
        mmLeft = 48497
        mmTop = 0
        mmWidth = 47000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLTOTAL_LIQ'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3260
        mmLeft = 124962
        mmTop = 180
        mmWidth = 18000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'EMP_CODIGO'
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3351
        mmLeft = 534
        mmTop = 176
        mmWidth = 4673
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3810
        mmLeft = 0
        mmTop = 423
        mmWidth = 17639
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLTOTAL_BRUTO'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3387
        mmLeft = 148066
        mmTop = 0
        mmWidth = 18000
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc22: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'WQTDE'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3387
        mmLeft = 104938
        mmTop = 0
        mmWidth = 17992
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc14: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLTOTAL_LIQ'
        DataPipeline = ppDBRel01
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3387
        mmLeft = 126105
        mmTop = 0
        mmWidth = 18000
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 40217
        mmTop = 423
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label67'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 21696
        mmTop = 423
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'PED_MES_CC'
      DataPipeline = ppDBRel01
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRel01'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'M'#234's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3598
          mmLeft = 6774
          mmTop = 0
          mmWidth = 6914
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PED_MES_CC'
          DataPipeline = ppDBRel01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRel01'
          mmHeight = 3810
          mmLeft = 14023
          mmTop = 0
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Total do M'#234's:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3810
          mmLeft = 0
          mmTop = 0
          mmWidth = 20391
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PED_VLTOTAL_BRUTO'
          DataPipeline = ppDBRel01
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel01'
          mmHeight = 3387
          mmLeft = 148066
          mmTop = 0
          mmWidth = 18000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine6: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line6'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 265
          mmTop = 0
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine7: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line7'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 196321
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc21: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc21'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'WQTDE'
          DataPipeline = ppDBRel01
          DisplayFormat = '#,###0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel01'
          mmHeight = 3387
          mmLeft = 104938
          mmTop = 0
          mmWidth = 17992
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc13: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PED_VLTOTAL_LIQ'
          DataPipeline = ppDBRel01
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel01'
          mmHeight = 3387
          mmLeft = 126105
          mmTop = 0
          mmWidth = 18000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc11: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataPipeline = ppDBRel01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRel01'
          mmHeight = 3175
          mmLeft = 40217
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label14'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Quantidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 21960
          mmTop = 0
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object raCodeModule4: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBClienteOnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBClienteOnGetText(var Text: String);'#13#10'begin'#13#10#13#10'  Text' +
          ' := copy(DBRel01['#39'CLI_RAZAO'#39'],1,30);'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'DBCliente'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
      object raProgramInfo2: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBRepOnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBRepOnGetText(var Text: String);'#13#10'begin'#13#10#13#10'  Text := ' +
          'copy(DBRel01['#39'REP_NOME'#39'],1,20);'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'DBRep'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object SqlCdsClie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 616
    Top = 96
    object SqlCdsClieCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object SqlCdsClieCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
  end
  object SqlCdsRep: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 552
    Top = 112
    object SqlCdsRepREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsRepREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
  end
  object ppRReL02: TppReport
    AutoStop = False
    DataPipeline = ppDBRel02
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\RELPed02.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 952
    Top = 216
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel02'
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 197000
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 265
        mmTop = 794
        mmWidth = 29986
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 5292
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 9790
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy HH:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 169863
        mmTop = 794
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = PaginaGetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174378
        mmTop = 9790
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 197000
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 23812
        mmWidth = 197000
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 7216
        mmTop = 15257
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Data Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 19123
        mmTop = 15081
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Raz'#227'o Social do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 8467
        mmLeft = 52990
        mmTop = 15081
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 102908
        mmTop = 15081
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '% Com.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 169679
        mmTop = 15081
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Valor do Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 109347
        mmTop = 15081
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Valor Faturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 131217
        mmTop = 15081
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Valor '#224' Faturar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 152833
        mmTop = 15081
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Data Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 34734
        mmTop = 15081
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label64'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 178676
        mmTop = 15081
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel85: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label85'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Emp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 0
        mmTop = 15346
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBRel02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3598
        mmLeft = 7216
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_DTENTRADA'
        DataPipeline = ppDBRel02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3598
        mmLeft = 19123
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_UF'
        DataPipeline = ppDBRel02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3704
        mmLeft = 102379
        mmTop = 0
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_COMIS1'
        DataPipeline = ppDBRel02
        DisplayFormat = '#0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3598
        mmLeft = 168885
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'WVALOR_PEDIDO_LIQUIDO'
        DataPipeline = ppDBRel02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3598
        mmLeft = 109082
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'WVALOR_FATURADO_LIQUIDO'
        DataPipeline = ppDBRel02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3598
        mmLeft = 130775
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_PENDENTE_CC'
        DataPipeline = ppDBRel02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3704
        mmLeft = 152039
        mmTop = 0
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBTRazao: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBTRazao'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBRel02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3704
        mmLeft = 50344
        mmTop = 0
        mmWidth = 51065
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_DTSAIDA'
        DataPipeline = ppDBRel02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3598
        mmLeft = 34734
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Comissao_CC'
        DataPipeline = ppDBRel02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3704
        mmLeft = 179469
        mmTop = 0
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText85: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText85'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'EMP_CODIGO'
        DataPipeline = ppDBRel02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3704
        mmLeft = 265
        mmTop = 0
        mmWidth = 6359
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3316
        mmLeft = 0
        mmTop = 159
        mmWidth = 15593
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Comissao_CC'
        DataPipeline = ppDBRel02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3316
        mmLeft = 177882
        mmTop = 159
        mmWidth = 17463
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'WVALOR_PEDIDO_LIQUIDO'
        DataPipeline = ppDBRel02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3440
        mmLeft = 102203
        mmTop = 265
        mmWidth = 22490
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'WVALOR_FATURADO_LIQUIDO'
        DataPipeline = ppDBRel02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3440
        mmLeft = 126278
        mmTop = 265
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc10: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_PENDENTE_CC'
        DataPipeline = ppDBRel02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel02'
        mmHeight = 3440
        mmLeft = 150460
        mmTop = 265
        mmWidth = 17463
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5556
        mmTop = 0
        mmWidth = 197000
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 21696
        mmTop = 529
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc24: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDBRel01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRel01'
        mmHeight = 3175
        mmLeft = 40217
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'REP_CODIGO'
      DataPipeline = ppDBRel02
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRel02'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label9'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 0
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText22: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText22'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_CODIGO'
          DataPipeline = ppDBRel02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3704
          mmLeft = 16404
          mmTop = 0
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText23: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText23'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_NOME'
          DataPipeline = ppDBRel02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3704
          mmLeft = 23106
          mmTop = 0
          mmWidth = 67733
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 0
          mmWidth = 7620
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Comissao_CC'
          DataPipeline = ppDBRel02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3316
          mmLeft = 177617
          mmTop = 0
          mmWidth = 17463
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc5: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'WVALOR_PEDIDO_LIQUIDO'
          DataPipeline = ppDBRel02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3440
          mmLeft = 101674
          mmTop = 0
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc7: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'WVALOR_FATURADO_LIQUIDO'
          DataPipeline = ppDBRel02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3440
          mmLeft = 126807
          mmTop = 0
          mmWidth = 21167
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc9: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc9'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PED_PENDENTE_CC'
          DataPipeline = ppDBRel02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel02'
          mmHeight = 3440
          mmLeft = 150460
          mmTop = 0
          mmWidth = 17639
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc23: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc23'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataPipeline = ppDBRel01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRel01'
          mmHeight = 3175
          mmLeft = 40217
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel68: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label68'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Quantidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 21960
          mmTop = 0
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo3: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBText8OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBText8OnGetText(var Text: String);'#13#10'begin'#13#10'   if DBRe' +
          'l02['#39'WVLFTNFBRU'#39'] = 0 then'#13#10'     Text := '#39'0,00'#39';'#13#10'end;'#13#10
        raProgram.ComponentName = 'DBText8'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
      object raProgramInfo4: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBTRazaoOnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBTRazaoOnGetText(var Text: String);'#13#10'begin'#13#10#13#10'  Text ' +
          ':= Copy(DBRel02['#39'CLI_RAZAO'#39'],1,25);'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'DBTRazao'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object CdsTipo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 640
    Top = 32
    object CdsTipoOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      Required = True
    end
    object CdsTipoOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object CdsTipoOPV_TIPO: TStringField
      FieldName = 'OPV_TIPO'
      Size = 1
    end
    object CdsTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object ppDBRel01: TppDBPipeline
    DataSource = DsRel01
    CloseDataSource = True
    UserName = 'DBRel01'
    Left = 896
    Top = 160
  end
  object DsRel02: TDataSource
    DataSet = cdsRel02
    Left = 816
    Top = 216
  end
  object ppDBRel02: TppDBPipeline
    DataSource = DsRel02
    CloseDataSource = True
    UserName = 'DBRel02'
    Left = 880
    Top = 216
  end
  object ppRRel03: TppReport
    AutoStop = False
    DataPipeline = ppDBRel03
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELPed03.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 960
    Top = 264
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel03'
    object ppHeaderBand3: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 23813
      mmPrintPosition = 0
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape6'
        mmHeight = 9260
        mmLeft = 143149
        mmTop = 14552
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape5'
        mmHeight = 9260
        mmLeft = 96044
        mmTop = 14552
        mmWidth = 28874
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape4'
        mmHeight = 9260
        mmLeft = 89694
        mmTop = 14552
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape2'
        mmHeight = 9260
        mmLeft = 12435
        mmTop = 14552
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 259000
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_03_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_03_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 265
        mmTop = 794
        mmWidth = 29986
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_03_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_03_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 5292
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_03_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_03_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 9790
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy HH:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 232834
        mmTop = 794
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = PaginaGetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 237332
        mmTop = 9790
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape1'
        mmHeight = 9260
        mmLeft = 0
        mmTop = 14552
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'N.F.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 0
        mmTop = 16933
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 13229
        mmTop = 16933
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape3'
        mmHeight = 9260
        mmLeft = 30427
        mmTop = 14552
        mmWidth = 59531
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 52652
        mmTop = 16933
        mmWidth = 15099
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label301'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 90488
        mmTop = 16933
        mmWidth = 4727
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 101600
        mmTop = 16933
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 144207
        mmTop = 16818
        mmWidth = 13406
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape7'
        mmHeight = 9260
        mmLeft = 158750
        mmTop = 14552
        mmWidth = 36467
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TRANSPORTADORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 159279
        mmTop = 16933
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape8'
        mmHeight = 9260
        mmLeft = 194734
        mmTop = 14552
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label35'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SA'#205'DA NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 196057
        mmTop = 16933
        mmWidth = 16439
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape9'
        mmHeight = 9260
        mmLeft = 213255
        mmTop = 14552
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 216642
        mmTop = 16933
        mmWidth = 12277
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape10'
        mmHeight = 9260
        mmLeft = 233892
        mmTop = 14552
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label37'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'EXPEDI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 236273
        mmTop = 16933
        mmWidth = 20532
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape22: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape22'
        mmHeight = 9260
        mmLeft = 124803
        mmTop = 14736
        mmWidth = 18490
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel109: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label109'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 127265
        mmTop = 17463
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 7937
        mmWidth = 259292
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_NOTANUMBER'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3598
        mmLeft = 529
        mmTop = 1323
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 12435
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText25'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_EMISSAO'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3598
        mmLeft = 12965
        mmTop = 1323
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 30427
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 89694
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line16'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 96044
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 143149
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line18'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 158609
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line19'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 194734
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line20'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 213255
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line201'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 233892
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line22'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 259000
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 7673
        mmLeft = 30956
        mmTop = 0
        mmWidth = 58208
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_UF'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3598
        mmLeft = 90223
        mmTop = 1323
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 7673
        mmLeft = 96573
        mmTop = 0
        mmWidth = 28414
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3598
        mmLeft = 143942
        mmTop = 1208
        mmWidth = 14322
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText301'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_SAIDA'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3598
        mmLeft = 195263
        mmTop = 1323
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_TOT_NOTA'
        DataPipeline = ppDBRel03
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 3598
        mmLeft = 213784
        mmTop = 1323
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText92: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText302'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TRP_RAZAO'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 7673
        mmLeft = 160338
        mmTop = 0
        mmWidth = 33602
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText93: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText93'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBRel03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBRel03'
        mmHeight = 7673
        mmLeft = 125413
        mmTop = 0
        mmWidth = 16695
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine61: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line61'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 124999
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground2
      end
    end
    object raCodeModule2: TraCodeModule
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object SqlCdsRel03: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 760
    Top = 264
    object SqlCdsRel03NF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Required = True
      Size = 6
    end
    object SqlCdsRel03NF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object SqlCdsRel03NF_SAIDA: TDateField
      FieldName = 'NF_SAIDA'
    end
    object SqlCdsRel03NF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      Precision = 15
    end
    object SqlCdsRel03CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsRel03CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SqlCdsRel03CLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object SqlCdsRel03CLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsRel03PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsRel03TRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object SqlCdsRel03TRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object SqlCdsRel03EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRel03CLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
  end
  object DsRel03: TDataSource
    DataSet = cdsRel3
    Left = 824
    Top = 264
  end
  object ppDBRel03: TppDBPipeline
    DataSource = DsRel03
    CloseDataSource = True
    UserName = 'DBRel03'
    Left = 896
    Top = 264
  end
  object ppRRel04: TppReport
    AutoStop = False
    DataPipeline = ppDBRel04
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELPed04.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 968
    Top = 312
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel04'
    object ppHeaderBand4: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 23813
      mmPrintPosition = 0
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape6'
        mmHeight = 9260
        mmLeft = 143140
        mmTop = 14552
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground4
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape5'
        mmHeight = 9260
        mmLeft = 96044
        mmTop = 14552
        mmWidth = 29219
        BandType = 0
        LayerName = Foreground4
      end
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape4'
        mmHeight = 9260
        mmLeft = 89694
        mmTop = 14552
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground4
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape2'
        mmHeight = 9260
        mmLeft = 12435
        mmTop = 14552
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 259000
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_04_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_03_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 265
        mmTop = 794
        mmWidth = 29986
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_04_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_03_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 5292
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_04_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_03_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 9790
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy HH:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 232834
        mmTop = 794
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = PaginaGetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 237332
        mmTop = 9790
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground4
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape1'
        mmHeight = 9260
        mmLeft = 0
        mmTop = 14552
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'N.F.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 0
        mmTop = 16933
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 13229
        mmTop = 16933
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground4
      end
      object ppShape16: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape3'
        mmHeight = 9260
        mmLeft = 30427
        mmTop = 14552
        mmWidth = 59531
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 52652
        mmTop = 16933
        mmWidth = 15099
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label301'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 90488
        mmTop = 16933
        mmWidth = 4727
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 104246
        mmTop = 16933
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 143934
        mmTop = 16933
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground4
      end
      object ppShape17: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape7'
        mmHeight = 9260
        mmLeft = 158635
        mmTop = 14552
        mmWidth = 36582
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TRANSPORTADORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 159210
        mmTop = 16933
        mmWidth = 33591
        BandType = 0
        LayerName = Foreground4
      end
      object ppShape18: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape8'
        mmHeight = 9260
        mmLeft = 194734
        mmTop = 14552
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label35'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SA'#205'DA NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 196057
        mmTop = 16933
        mmWidth = 16439
        BandType = 0
        LayerName = Foreground4
      end
      object ppShape19: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape9'
        mmHeight = 9260
        mmLeft = 213255
        mmTop = 14552
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 216642
        mmTop = 16933
        mmWidth = 12277
        BandType = 0
        LayerName = Foreground4
      end
      object ppShape20: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape10'
        mmHeight = 9260
        mmLeft = 233892
        mmTop = 14552
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label37'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'EXPEDI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 236273
        mmTop = 16933
        mmWidth = 20532
        BandType = 0
        LayerName = Foreground4
      end
      object ppShape21: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape21'
        mmHeight = 9260
        mmLeft = 125080
        mmTop = 14552
        mmWidth = 18061
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel107: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label107'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 127000
        mmTop = 16933
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground4
      end
    end
    object ppDetailBand4: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 8731
        mmWidth = 259292
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_NOTANUMBER'
        DataPipeline = ppDBRel04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBRel04'
        mmHeight = 3810
        mmLeft = 529
        mmTop = 1323
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 12435
        mmTop = 529
        mmWidth = 265
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText25'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_EMISSAO'
        DataPipeline = ppDBRel04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel04'
        mmHeight = 3704
        mmLeft = 12965
        mmTop = 1323
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 30427
        mmTop = 265
        mmWidth = 265
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 89694
        mmTop = 265
        mmWidth = 265
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line16'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 96044
        mmTop = 265
        mmWidth = 265
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 142645
        mmTop = 265
        mmWidth = 230
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line18'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 158750
        mmTop = 265
        mmWidth = 345
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line19'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 194734
        mmTop = 265
        mmWidth = 265
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBRel04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBRel04'
        mmHeight = 7673
        mmLeft = 30956
        mmTop = 794
        mmWidth = 58208
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_UF'
        DataPipeline = ppDBRel04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel04'
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 1323
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDBRel04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBRel04'
        mmHeight = 7673
        mmLeft = 96573
        mmTop = 794
        mmWidth = 23928
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBRel04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel04'
        mmHeight = 3704
        mmLeft = 143485
        mmTop = 1323
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TRP_RAZAO'
        DataPipeline = ppDBRel04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBRel04'
        mmHeight = 7673
        mmLeft = 161051
        mmTop = 794
        mmWidth = 33591
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText301'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_SAIDA'
        DataPipeline = ppDBRel04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel04'
        mmHeight = 3704
        mmLeft = 195263
        mmTop = 1323
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 0
        mmTop = 265
        mmWidth = 265
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line20'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 213255
        mmTop = 265
        mmWidth = 265
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_TOT_NOTA'
        DataPipeline = ppDBRel04
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel04'
        mmHeight = 3704
        mmLeft = 213784
        mmTop = 1323
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line201'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 233892
        mmTop = 265
        mmWidth = 265
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line22'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 259000
        mmTop = 265
        mmWidth = 265
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 265
        mmWidth = 259292
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine60: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line60'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 125114
        mmTop = 265
        mmWidth = 265
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText91: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText91'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBRel04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBRel04'
        mmHeight = 7673
        mmLeft = 126471
        mmTop = 794
        mmWidth = 14380
        BandType = 4
        LayerName = Foreground4
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'NF_NOTANUMBER'
      DataPipeline = ppDBRel04
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRel04'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Border.mmPadding = 0
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppSubReport1: TppSubReport
          DesignLayer = ppDesignLayer5
          UserName = 'SubReport1'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          DataPipelineName = 'ppDBRel041'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 0
          mmWidth = 269000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = ppDBRel041
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Report'
            PrinterSetup.Duplex = dpNone
            PrinterSetup.Orientation = poLandscape
            PrinterSetup.PaperName = 'Carta'
            PrinterSetup.PrinterName = 'Default'
            PrinterSetup.SaveDeviceSettings = False
            PrinterSetup.mmMarginBottom = 10000
            PrinterSetup.mmMarginLeft = 5000
            PrinterSetup.mmMarginRight = 5000
            PrinterSetup.mmMarginTop = 10000
            PrinterSetup.mmPaperHeight = 216000
            PrinterSetup.mmPaperWidth = 279000
            PrinterSetup.PaperSize = 1
            Units = utMillimeters
            Version = '22.0'
            mmColumnWidth = 0
            DataPipelineName = 'ppDBRel041'
            object ppDetailBand5: TppDetailBand
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 4763
              mmPrintPosition = 0
              object ppDBText42: TppDBText
                DesignLayer = ppDesignLayer4
                UserName = 'DBText42'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'PRD_REFER'
                DataPipeline = ppDBRel041
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBRel041'
                mmHeight = 3598
                mmLeft = 12965
                mmTop = 529
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground3
              end
              object ppDBText43: TppDBText
                DesignLayer = ppDesignLayer4
                UserName = 'DBText43'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'PRD_DESCRI'
                DataPipeline = ppDBRel041
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBRel041'
                mmHeight = 3704
                mmLeft = 30956
                mmTop = 529
                mmWidth = 102394
                BandType = 4
                LayerName = Foreground3
              end
              object ppDBText44: TppDBText
                DesignLayer = ppDesignLayer4
                UserName = 'DBText44'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'NF_QTDE'
                DataPipeline = ppDBRel041
                DisplayFormat = '#,##0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBRel041'
                mmHeight = 3704
                mmLeft = 135467
                mmTop = 529
                mmWidth = 13494
                BandType = 4
                LayerName = Foreground3
              end
              object ppDBText45: TppDBText
                DesignLayer = ppDesignLayer4
                UserName = 'DBText45'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'NF_PRECO'
                DataPipeline = ppDBRel041
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBRel041'
                mmHeight = 3704
                mmLeft = 150813
                mmTop = 529
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground3
              end
            end
            object ppDesignLayers4: TppDesignLayers
              object ppDesignLayer4: TppDesignLayer
                UserName = 'Foreground3'
                LayerType = ltBanded
                Index = 0
              end
            end
          end
        end
      end
    end
    object raCodeModule3: TraCodeModule
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object SqlCdsRel04: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 760
    Top = 320
    object SqlCdsRel04NF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Required = True
      Size = 6
    end
    object SqlCdsRel04NF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object SqlCdsRel04NF_SAIDA: TDateField
      FieldName = 'NF_SAIDA'
    end
    object SqlCdsRel04NF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      Precision = 15
    end
    object SqlCdsRel04CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsRel04CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SqlCdsRel04CLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object SqlCdsRel04CLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsRel04PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsRel04TRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object SqlCdsRel04TRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object SqlCdsRel04EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRel04CLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
  end
  object DsRel04: TDataSource
    DataSet = cdsRel4
    Left = 824
    Top = 320
  end
  object SqlCdsRel041: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 752
    Top = 368
    object SqlCdsRel041NF_IT_NOTANUMER: TStringField
      FieldName = 'NF_IT_NOTANUMER'
      Required = True
      Size = 6
    end
    object SqlCdsRel041PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsRel041PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsRel041NF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 15
    end
    object SqlCdsRel041NF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      Precision = 15
    end
    object SqlCdsRel041NF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object SqlCdsRel041EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsRel041: TDataSource
    DataSet = cdsRel41
    Left = 816
    Top = 368
  end
  object ppDBRel041: TppDBPipeline
    DataSource = DsRel041
    CloseDataSource = True
    UserName = 'DBRel041'
    Left = 888
    Top = 368
    MasterDataPipelineName = 'ppDBRel04'
    object ppDBRel041ppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'NF_NOTANUMBER'
      GuidCollationType = gcString
      DetailFieldName = 'NF_IT_NOTANUMER'
      DetailSortOrder = soAscending
      IgnoreTrailingSpaces = False
    end
  end
  object ppDBRel04: TppDBPipeline
    DataSource = DsRel04
    CloseDataSource = True
    UserName = 'DBRel04'
    Left = 896
    Top = 320
  end
  object DsRel05: TDataSource
    AutoEdit = False
    DataSet = qRel05
    Left = 816
    Top = 416
  end
  object ppRRel05: TppReport
    AutoStop = False
    DataPipeline = ppDBRel05
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'X:\adjutor\fontesrelatorios\RELPED05'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 960
    Top = 408
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel05'
    object ppHeaderBand5: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 255000
        BandType = 0
        LayerName = Foreground5
      end
      object LBL_05_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'LBL_05_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground5
      end
      object LBL_05_TITULO01: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'LBL_05_TITULO01'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground5
      end
      object LBL_05_TITULO02: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'LBL_05_TITULO02'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground5
      end
      object ppSystemVariable13: TppSystemVariable
        DesignLayer = ppDesignLayer6
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy HH:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 228429
        mmTop = 794
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground5
      end
      object ppSystemVariable14: TppSystemVariable
        DesignLayer = ppDesignLayer6
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = PaginaGetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 236631
        mmTop = 9790
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 255000
        BandType = 0
        LayerName = Foreground5
      end
    end
    object ppDetailBand6: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'EMP_CODIGO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 13758
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText48'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_DTSAIDA'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_EMISSAO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 45508
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 61465
        mmTop = 0
        mmWidth = 72252
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLTOTAL_BRUTO'
        DataPipeline = ppDBRel05
        DisplayFormat = '#,###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 156369
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLFATURADO'
        DataPipeline = ppDBRel05
        DisplayFormat = '#,###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 174096
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText54: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_NOTANUMBER'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 133879
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText55: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText55'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_STATUS_CC'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 210344
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_NUM_NFE'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 144992
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText102: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText102'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PCL_NOME'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 229130
        mmTop = 0
        mmWidth = 27272
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'VLRFATURAR'
        DataPipeline = ppDBRel05
        DisplayFormat = '#,###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3704
        mmLeft = 192882
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground5
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'OPV_CODIGO'
      DataPipeline = ppDBRel05
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRel05'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 13229
        mmPrintPosition = 0
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label22'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 0
          mmWidth = 7620
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppDBText10: TppDBText
          DesignLayer = ppDesignLayer6
          UserName = 'DBText10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'OPV_CODIGO'
          DataPipeline = ppDBRel05
          DisplayFormat = '000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel05'
          mmHeight = 3704
          mmLeft = 8996
          mmTop = 0
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppDBText15: TppDBText
          DesignLayer = ppDesignLayer6
          UserName = 'DBText15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'OPV_DESCRICAO'
          DataPipeline = ppDBRel05
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRel05'
          mmHeight = 3704
          mmLeft = 15875
          mmTop = 0
          mmWidth = 108744
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLine40: TppLine
          DesignLayer = ppDesignLayer6
          UserName = 'Line40'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 255425
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLabel26: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label26'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'N'#186' do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 0
          mmTop = 4763
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLine41: TppLine
          DesignLayer = ppDesignLayer6
          UserName = 'Line401'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 12964
          mmWidth = 255425
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLabel27: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label27'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 13758
          mmTop = 4763
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLabel48: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label48'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Data da Entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 29633
          mmTop = 4763
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLabel49: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label49'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Data Faturado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 45508
          mmTop = 4763
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLabel50: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label50'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          WordWrap = True
          mmHeight = 3704
          mmLeft = 61383
          mmTop = 4763
          mmWidth = 41804
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLabel51: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label51'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Valor do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 159015
          mmTop = 4763
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLabel52: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label52'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Valor Faturado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 176742
          mmTop = 4763
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLabel53: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label53'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Status do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 212990
          mmTop = 4763
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLabel54: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label54'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'N'#186' da Fatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 137054
          mmTop = 4763
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLabel56: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label56'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Valor '#224' Faturar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 195263
          mmTop = 4763
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLabel66: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label66'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'N'#186' da NF-e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 6615
          mmLeft = 147902
          mmTop = 4763
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLabel113: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label113'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Prazo de Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 228763
          mmTop = 4763
          mmWidth = 27272
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 14288
        mmPrintPosition = 0
        object ppLine42: TppLine
          DesignLayer = ppDesignLayer6
          UserName = 'Line42'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 204
          mmLeft = 205
          mmTop = 0
          mmWidth = 256030
          BandType = 5
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLine43: TppLine
          DesignLayer = ppDesignLayer6
          UserName = 'Line43'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4498
          mmWidth = 256443
          BandType = 5
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLabel55: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label55'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Total do Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 113726
          mmTop = 0
          mmWidth = 33073
          BandType = 5
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppDBCalc16: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc16'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PED_VLFATURADO'
          DataPipeline = ppDBRel05
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel05'
          mmHeight = 3175
          mmLeft = 173257
          mmTop = 0
          mmWidth = 17992
          BandType = 5
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppDBCalc15: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'VLRFATURAR'
          DataPipeline = ppDBRel05
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel05'
          mmHeight = 3175
          mmLeft = 192836
          mmTop = 0
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppDBCalc31: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc31'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PED_VLTOTAL_BRUTO'
          DataPipeline = ppDBRel05
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel05'
          mmHeight = 3175
          mmLeft = 151561
          mmTop = 0
          mmWidth = 20902
          BandType = 5
          GroupNo = 0
          LayerName = Foreground5
        end
      end
    end
    object ppDesignLayers6: TppDesignLayers
      object ppDesignLayer6: TppDesignLayer
        UserName = 'Foreground5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object ppDBRel05: TppDBPipeline
    DataSource = DsRel05
    CloseDataSource = True
    AutoCreateFields = False
    UserName = 'DBRel05'
    Left = 888
    Top = 416
    object ppDBRel05ppField1: TppField
      FieldAlias = 'PED_CODIGO'
      FieldName = 'PED_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField2: TppField
      FieldAlias = 'OPV_CODIGO'
      FieldName = 'OPV_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField3: TppField
      FieldAlias = 'OPV_DESCRICAO'
      FieldName = 'OPV_DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField4: TppField
      FieldAlias = 'PED_DTENTRADA'
      FieldName = 'PED_DTENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField5: TppField
      FieldAlias = 'PED_DTSAIDA'
      FieldName = 'PED_DTSAIDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField6: TppField
      FieldAlias = 'PED_SITUACAO'
      FieldName = 'PED_SITUACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField7: TppField
      FieldAlias = 'PED_VLTOTAL_LIQ'
      FieldName = 'PED_VLTOTAL_LIQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField8: TppField
      FieldAlias = 'PED_VLTOTAL_BRUTO'
      FieldName = 'PED_VLTOTAL_BRUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField9: TppField
      FieldAlias = 'PED_VLFATURADO'
      FieldName = 'PED_VLFATURADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField10: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField11: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField12: TppField
      FieldAlias = 'NF_NOTANUMBER'
      FieldName = 'NF_NOTANUMBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField13: TppField
      FieldAlias = 'NF_EMISSAO'
      FieldName = 'NF_EMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField14: TppField
      FieldAlias = 'NF_TOT_NOTA'
      FieldName = 'NF_TOT_NOTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField15: TppField
      FieldAlias = 'PED_STATUS_CC'
      FieldName = 'PED_STATUS_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField16: TppField
      FieldAlias = 'NF_NUM_NFE'
      FieldName = 'NF_NUM_NFE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField17: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField18: TppField
      FieldAlias = 'REP_RAZAO'
      FieldName = 'REP_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField19: TppField
      FieldAlias = 'emp_codigo'
      FieldName = 'emp_codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField20: TppField
      FieldAlias = 'FPG_DESCRICAO'
      FieldName = 'FPG_DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField21: TppField
      FieldAlias = 'PCL_NOME'
      FieldName = 'PCL_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField22: TppField
      FieldAlias = 'VLRFATURAR'
      FieldName = 'VLRFATURAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBRel05ppField23: TppField
      FieldAlias = 'VALOR_A_FATURAR'
      FieldName = 'VALOR_A_FATURAR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 22
    end
  end
  object SqlCdsVendaSeg: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 744
    Top = 472
    object SqlCdsVendaSegQTDE: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDE'
      Precision = 15
    end
    object SqlCdsVendaSegTOTAL_FAT: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'TOTAL_FAT'
      DisplayFormat = '###.##0.00'
      EditFormat = '###.##0.00'
      Precision = 15
    end
    object SqlCdsVendaSegTOTAL_PED: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'TOTAL_PED'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
    end
    object SqlCdsVendaSegLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 3
    end
    object SqlCdsVendaSegLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object SqlCdsVendaSegCC_REPRES: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_REPRES'
      Calculated = True
    end
    object SqlCdsVendaSegTOTAL_GERAL_FAT: TAggregateField
      FieldName = 'TOTAL_GERAL_FAT'
      currency = True
      DisplayName = ''
      DisplayFormat = '##0.00'
      Expression = 'sum(TOTAL_FAT)'
    end
  end
  object DsVendaSeg: TDataSource
    DataSet = cdsVendaSeg
    Left = 816
    Top = 464
  end
  object ppRVendaSeg: TppReport
    AutoStop = False
    DataPipeline = DBVendaSeg
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
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
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\RELPED05.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 952
    Top = 464
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'DBVendaSeg'
    object ppHeaderBand6: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground6
      end
      object ppLblSegEmpresa: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LblSegEmpresa'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_05_TITULO01'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Relatorio Sint'#233'tico de Vendas por Linha do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground6
      end
      object ppSystemVariable7: TppSystemVariable
        DesignLayer = ppDesignLayer7
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy HH:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 169863
        mmTop = 794
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground6
      end
      object ppSystemVariable8: TppSystemVariable
        DesignLayer = ppDesignLayer7
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = PaginaGetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 178188
        mmTop = 9790
        mmWidth = 18133
        BandType = 0
        LayerName = Foreground6
      end
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Linha do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 11906
        mmTop = 15000
        mmWidth = 26670
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label59'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Qtde Total de Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4057
        mmLeft = 63765
        mmTop = 15000
        mmWidth = 30057
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Valor Total Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4057
        mmLeft = 100806
        mmTop = 15000
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Valor Total Faturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 15000
        mmWidth = 32173
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Representa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4057
        mmLeft = 170392
        mmTop = 15000
        mmWidth = 23495
        BandType = 0
        LayerName = Foreground6
      end
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line46'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 19579
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground6
      end
      object ppLblPeriodo: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'ppLblPeriodo'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ppLblPeriodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4057
        mmLeft = 265
        mmTop = 9790
        mmWidth = 20532
        BandType = 0
        LayerName = Foreground6
      end
    end
    object ppDetailBand7: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText56: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText56'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'LIN_CODIGO'
        DataPipeline = DBVendaSeg
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBVendaSeg'
        mmHeight = 3969
        mmLeft = 794
        mmTop = 260
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'LIN_DESCRI'
        DataPipeline = DBVendaSeg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBVendaSeg'
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 260
        mmWidth = 52652
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText58: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText58'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'QTDE'
        DataPipeline = DBVendaSeg
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBVendaSeg'
        mmHeight = 4057
        mmLeft = 71797
        mmTop = 260
        mmWidth = 18203
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText59: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText59'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTAL_PED'
        DataPipeline = DBVendaSeg
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBVendaSeg'
        mmHeight = 4057
        mmLeft = 111446
        mmTop = 260
        mmWidth = 15452
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText60'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTAL_FAT'
        DataPipeline = DBVendaSeg
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBVendaSeg'
        mmHeight = 4057
        mmLeft = 148541
        mmTop = 260
        mmWidth = 17357
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CC_REPRES'
        DataPipeline = DBVendaSeg
        DisplayFormat = '#00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBVendaSeg'
        mmHeight = 4057
        mmLeft = 173038
        mmTop = 216
        mmWidth = 17000
        BandType = 4
        LayerName = Foreground6
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppLine47: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line47'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 265
        mmWidth = 196586
        BandType = 8
        LayerName = Foreground6
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Geral :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 1000
        mmWidth = 19579
        BandType = 8
        LayerName = Foreground6
      end
      object ppDBCalc17: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'QTDE'
        DataPipeline = DBVendaSeg
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBVendaSeg'
        mmHeight = 3969
        mmLeft = 60000
        mmTop = 1000
        mmWidth = 29898
        BandType = 8
        LayerName = Foreground6
      end
      object ppDBCalc18: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTAL_PED'
        DataPipeline = DBVendaSeg
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBVendaSeg'
        mmHeight = 3969
        mmLeft = 97000
        mmTop = 1000
        mmWidth = 29898
        BandType = 8
        LayerName = Foreground6
      end
      object ppDBCalc19: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTAL_FAT'
        DataPipeline = DBVendaSeg
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBVendaSeg'
        mmHeight = 3969
        mmLeft = 136000
        mmTop = 1000
        mmWidth = 29898
        BandType = 8
        LayerName = Foreground6
      end
      object ppDBCalc20: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CC_REPRES'
        DataPipeline = DBVendaSeg
        DisplayFormat = '000 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBVendaSeg'
        mmHeight = 4057
        mmLeft = 173038
        mmTop = 1000
        mmWidth = 17000
        BandType = 8
        LayerName = Foreground6
      end
    end
    object ppDesignLayers7: TppDesignLayers
      object ppDesignLayer7: TppDesignLayer
        UserName = 'Foreground6'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object DBVendaSeg: TppDBPipeline
    DataSource = DsVendaSeg
    CloseDataSource = True
    UserName = 'DBVendaSeg'
    Left = 888
    Top = 464
    object DBVendaSegppField1: TppField
      FieldAlias = 'QTDE'
      FieldName = 'QTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object DBVendaSegppField2: TppField
      FieldAlias = 'TOTAL_FAT'
      FieldName = 'TOTAL_FAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object DBVendaSegppField3: TppField
      FieldAlias = 'TOTAL_PED'
      FieldName = 'TOTAL_PED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object DBVendaSegppField4: TppField
      FieldAlias = 'LIN_CODIGO'
      FieldName = 'LIN_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object DBVendaSegppField5: TppField
      FieldAlias = 'LIN_DESCRI'
      FieldName = 'LIN_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object DBVendaSegppField6: TppField
      FieldAlias = 'CC_REPRES'
      FieldName = 'CC_REPRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
  end
  object RDprintPedidos2: TRDprint
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
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
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
    Acentuacao = Transliterate
    CaptionSetup = 'Configura'#231#245'es'
    TitulodoRelatorio = 'Impress'#227'o do Pedido'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
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
    TamanhoQteLinhas = 33
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    FonteGrafica = sCourierNew
    ReduzParaCaber = True
    Left = 800
    Top = 16
  end
  object RDprintPedidos: TRDprint
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
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
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
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
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
    TamanhoQteLinhas = 33
    TamanhoQteColunas = 139
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    FonteGrafica = sCourierNew
    ReduzParaCaber = True
    Left = 704
    Top = 16
  end
  object CdsTransp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 520
    Top = 72
    object CdsTranspTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object CdsTranspTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
  end
  object dsTransp: TDataSource
    DataSet = cdsTransporte
    Left = 816
    Top = 528
  end
  object dbTransp: TppDBPipeline
    DataSource = dsTransp
    CloseDataSource = True
    UserName = 'dbTransp'
    Left = 888
    Top = 528
  end
  object ppTransp: TppReport
    AutoStop = False
    DataPipeline = dbTransp
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
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
    Template.FileName = 'C:\Developer\Adjutor\fontesrelatorios\RELPED05.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 952
    Top = 528
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbTransp'
    object ppHeaderBand7: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppLine48: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line48'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'LBL_05_EMPRESA1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label71'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label72'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = BandLayer8
      end
      object ppSystemVariable9: TppSystemVariable
        DesignLayer = ppDesignLayer8
        UserName = 'SystemVariable9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy HH:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 169863
        mmTop = 794
        mmWidth = 26458
        BandType = 0
        LayerName = BandLayer8
      end
      object ppSystemVariable10: TppSystemVariable
        DesignLayer = ppDesignLayer8
        UserName = 'SystemVariable10'
        HyperlinkEnabled = False
        OnGetText = PaginaGetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 178188
        mmTop = 9790
        mmWidth = 18133
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLine49: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line49'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 196057
        BandType = 0
        LayerName = BandLayer8
      end
    end
    object ppDetailBand8: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_CODIGO'
        DataPipeline = dbTransp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTransp'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText65: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_DTENTRADA'
        DataPipeline = dbTransp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTransp'
        mmHeight = 3175
        mmLeft = 14023
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText66: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = dbTransp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTransp'
        mmHeight = 3175
        mmLeft = 31221
        mmTop = 0
        mmWidth = 79375
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLFATURADO'
        DataPipeline = dbTransp
        DisplayFormat = '#,###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTransp'
        mmHeight = 3175
        mmLeft = 111125
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLFRETE'
        DataPipeline = dbTransp
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTransp'
        mmHeight = 3175
        mmLeft = 130175
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_DESP_ACES'
        DataPipeline = dbTransp
        DisplayFormat = '#,###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTransp'
        mmHeight = 3175
        mmLeft = 177007
        mmTop = 0
        mmWidth = 18256
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText64'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TIPOFRETE'
        DataPipeline = dbTransp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTransp'
        mmHeight = 3175
        mmLeft = 144198
        mmTop = 0
        mmWidth = 31485
        BandType = 4
        LayerName = BandLayer8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLabel79: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label79'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 85990
        mmTop = 529
        mmWidth = 16404
        BandType = 7
        LayerName = BandLayer8
      end
      object ppDBCalc28: TppDBCalc
        DesignLayer = ppDesignLayer8
        UserName = 'DBCalc28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLFATURADO'
        DataPipeline = dbTransp
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTransp'
        mmHeight = 3175
        mmLeft = 112184
        mmTop = 529
        mmWidth = 16140
        BandType = 7
        LayerName = BandLayer8
      end
      object ppDBCalc29: TppDBCalc
        DesignLayer = ppDesignLayer8
        UserName = 'DBCalc29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLFRETE'
        DataPipeline = dbTransp
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTransp'
        mmHeight = 3175
        mmLeft = 130175
        mmTop = 529
        mmWidth = 11113
        BandType = 7
        LayerName = BandLayer8
      end
      object ppDBCalc30: TppDBCalc
        DesignLayer = ppDesignLayer8
        UserName = 'DBCalc30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_DESP_ACES'
        DataPipeline = dbTransp
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbTransp'
        mmHeight = 3175
        mmLeft = 177007
        mmTop = 529
        mmWidth = 17992
        BandType = 7
        LayerName = BandLayer8
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'TRP_CODIGO'
      DataPipeline = dbTransp
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbTransp'
      NewFile = False
      object ppGroupHeaderBand5: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 13229
        mmPrintPosition = 0
        object ppLabel73: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label22'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Transportadora:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 0
          mmWidth = 24342
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppDBText70: TppDBText
          DesignLayer = ppDesignLayer8
          UserName = 'DBText15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'TRP_RAZAO'
          DataPipeline = dbTransp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbTransp'
          mmHeight = 3704
          mmLeft = 41010
          mmTop = 176
          mmWidth = 153988
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppLine50: TppLine
          DesignLayer = ppDesignLayer8
          UserName = 'Line40'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppLabel74: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label26'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'N'#186' do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 0
          mmTop = 4763
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppLine51: TppLine
          DesignLayer = ppDesignLayer8
          UserName = 'Line401'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 12964
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppLabel78: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label50'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          WordWrap = True
          mmHeight = 3704
          mmLeft = 31221
          mmTop = 6699
          mmWidth = 79375
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppLabel80: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label52'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Valor do Pedido  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 111125
          mmTop = 4763
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppLabel82: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label54'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Valor Frete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 130969
          mmTop = 4763
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppLabel75: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label75'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Tipo Frete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 144198
          mmTop = 4763
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppLabel76: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label76'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Valor Desp. Aces.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7933
          mmLeft = 177007
          mmTop = 4763
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppDBText71: TppDBText
          DesignLayer = ppDesignLayer8
          UserName = 'DBText10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'TRP_CODIGO'
          DataPipeline = dbTransp
          DisplayFormat = '000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbTransp'
          mmHeight = 3704
          mmLeft = 25665
          mmTop = 265
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppLabel84: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label84'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Data do pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 14023
          mmTop = 4763
          mmWidth = 16051
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer8
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLine52: TppLine
          DesignLayer = ppDesignLayer8
          UserName = 'Line42'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppLine53: TppLine
          DesignLayer = ppDesignLayer8
          UserName = 'Line43'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4498
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppLabel83: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label55'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 94456
          mmTop = 529
          mmWidth = 7938
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppDBCalc25: TppDBCalc
          DesignLayer = ppDesignLayer8
          UserName = 'DBCalc16'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PED_VLFRETE'
          DataPipeline = dbTransp
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbTransp'
          mmHeight = 3175
          mmLeft = 130175
          mmTop = 529
          mmWidth = 11113
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppDBCalc26: TppDBCalc
          DesignLayer = ppDesignLayer8
          UserName = 'DBCalc15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PED_VLFATURADO'
          DataPipeline = dbTransp
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbTransp'
          mmHeight = 3175
          mmLeft = 112184
          mmTop = 530
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer8
        end
        object ppDBCalc27: TppDBCalc
          DesignLayer = ppDesignLayer8
          UserName = 'DBCalc27'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PED_DESP_ACES'
          DataPipeline = dbTransp
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbTransp'
          mmHeight = 3175
          mmLeft = 177007
          mmTop = 529
          mmWidth = 17992
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer8
        end
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'PED_PLACA'
      DataPipeline = dbTransp
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbTransp'
      NewFile = False
      object ppGroupHeaderBand6: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel81: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label81'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Placa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 0
          mmWidth = 9260
          BandType = 3
          GroupNo = 1
          LayerName = BandLayer8
        end
        object ppDBText67: TppDBText
          DesignLayer = ppDesignLayer8
          UserName = 'DBText67'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PED_PLACA'
          DataPipeline = dbTransp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbTransp'
          mmHeight = 3704
          mmLeft = 10583
          mmTop = 265
          mmWidth = 33867
          BandType = 3
          GroupNo = 1
          LayerName = BandLayer8
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers8: TppDesignLayers
      object ppDesignLayer8: TppDesignLayer
        UserName = 'BandLayer8'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList7: TppParameterList
    end
  end
  object SqlCdsTransp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 744
    Top = 528
    object SqlCdsTranspPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object SqlCdsTranspCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsTranspPED_VLFATURADO: TFMTBCDField
      FieldName = 'PED_VLFATURADO'
      Precision = 18
      Size = 5
    end
    object SqlCdsTranspPED_VLFRETE: TFMTBCDField
      FieldName = 'PED_VLFRETE'
      Precision = 18
      Size = 5
    end
    object SqlCdsTranspTIPOFRETE: TStringField
      FieldName = 'TIPOFRETE'
      FixedChar = True
      Size = 16
    end
    object SqlCdsTranspPED_DESP_ACES: TFMTBCDField
      FieldName = 'PED_DESP_ACES'
      Precision = 18
      Size = 5
    end
    object SqlCdsTranspTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object SqlCdsTranspTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object SqlCdsTranspPED_PLACA: TStringField
      FieldName = 'PED_PLACA'
      Size = 7
    end
    object SqlCdsTranspPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
  end
  object dspItemPedi: TDataSetProvider
    DataSet = SqlCdsItenPedi
    Left = 448
    Top = 200
  end
  object cdsItemPedi: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItemPedi'
    Left = 480
    Top = 200
  end
  object cdsRel1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRel1'
    Left = 624
    Top = 160
  end
  object dspRel1: TDataSetProvider
    DataSet = SqlCdsRel01
    Left = 696
    Top = 160
  end
  object cdsRel3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRel3'
    Left = 623
    Top = 263
  end
  object dspRel3: TDataSetProvider
    DataSet = SqlCdsRel03
    Left = 695
    Top = 263
  end
  object cdsRel4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRel4'
    Left = 623
    Top = 318
  end
  object dspRel4: TDataSetProvider
    DataSet = SqlCdsRel04
    Left = 695
    Top = 318
  end
  object cdsRel41: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRel41'
    Left = 623
    Top = 366
  end
  object dspRel41: TDataSetProvider
    DataSet = SqlCdsRel041
    Left = 695
    Top = 366
  end
  object cdsTransporte: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransp'
    Left = 584
    Top = 512
  end
  object dspTransp: TDataSetProvider
    DataSet = SqlCdsTransp
    Left = 688
    Top = 528
  end
  object cdsVendaSeg: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspVendasSeg'
    OnCalcFields = cdsVendaSegCalcFields
    Left = 624
    Top = 472
    object cdsVendaSegQTDE: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'QTDE'
      Precision = 15
    end
    object cdsVendaSegTOTAL_FAT: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'TOTAL_FAT'
      DisplayFormat = '###.##0.00'
      EditFormat = '###.##0.00'
      Precision = 15
    end
    object cdsVendaSegTOTAL_PED: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'TOTAL_PED'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
    end
    object cdsVendaSegLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 3
    end
    object cdsVendaSegLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object cdsVendaSegCC_REPRES: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_REPRES'
      Calculated = True
    end
    object cdsVendaSegTOTAL_GERAL_FAT: TAggregateField
      FieldName = 'TOTAL_GERAL_FAT'
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '##0.00'
      Expression = 'sum(TOTAL_FAT)'
    end
  end
  object dspVendasSeg: TDataSetProvider
    DataSet = SqlCdsVendaSeg
    Left = 680
    Top = 472
  end
  object ppRRel09: TppReport
    AutoStop = False
    DataPipeline = ppDBRel05
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
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
    Template.FileName = 'X:\adjutor\fontesrelatorios\RELPED05'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 1072
    Top = 416
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel05'
    object ppHeaderBand8: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppLine54: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 0
        LayerName = BandLayer9
      end
      object LBL_09_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'LBL_09_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = BandLayer9
      end
      object LBL_09_TITULO01: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'LBL_09_TITULO01'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = BandLayer9
      end
      object LBL_09_TITULO02: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'LBL_09_TITULO02'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = BandLayer9
      end
      object ppSystemVariable15: TppSystemVariable
        DesignLayer = ppDesignLayer9
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy HH:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 169863
        mmTop = 794
        mmWidth = 26458
        BandType = 0
        LayerName = BandLayer9
      end
      object ppSystemVariable16: TppSystemVariable
        DesignLayer = ppDesignLayer9
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = PaginaGetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 178188
        mmTop = 9790
        mmWidth = 18133
        BandType = 0
        LayerName = BandLayer9
      end
      object ppLine55: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 196057
        BandType = 0
        LayerName = BandLayer9
      end
    end
    object ppDetailBand9: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText72: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = BandLayer9
      end
      object ppDBText73: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_DTENTRADA'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 13758
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = BandLayer9
      end
      object ppDBText74: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText48'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_DTSAIDA'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = BandLayer9
      end
      object ppDBText75: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_EMISSAO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 45508
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = BandLayer9
      end
      object ppDBText76: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 61383
        mmTop = 0
        mmWidth = 41804
        BandType = 4
        LayerName = BandLayer9
      end
      object ppDBText77: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLTOTAL_BRUTO'
        DataPipeline = ppDBRel05
        DisplayFormat = '#,###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 125942
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = BandLayer9
      end
      object ppDBText78: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLFATURADO'
        DataPipeline = ppDBRel05
        DisplayFormat = '#,###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 143669
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer9
      end
      object ppDBText79: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_NOTANUMBER'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 103717
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = BandLayer9
      end
      object ppDBText80: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText55'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_STATUS_CC'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 179917
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer9
      end
      object ppDBText81: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText53'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'VLRFATURAR'
        DataPipeline = ppDBRel05
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 162190
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = BandLayer9
      end
      object ppDBText82: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_NUM_NFE'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 114565
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = BandLayer9
      end
    end
    object ppSummaryBand6: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLine66: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line66'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 7
        LayerName = BandLayer9
      end
      object ppLabel110: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label110'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 108744
        mmTop = 529
        mmWidth = 7937
        BandType = 7
        LayerName = BandLayer9
      end
      object ppDBCalc40: TppDBCalc
        DesignLayer = ppDesignLayer9
        UserName = 'DBCalc40'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLTOTAL_BRUTO'
        DataPipeline = ppDBRel05
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 118798
        mmTop = 794
        mmWidth = 23636
        BandType = 7
        LayerName = BandLayer9
      end
      object ppDBCalc41: TppDBCalc
        DesignLayer = ppDesignLayer9
        UserName = 'DBCalc41'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLFATURADO'
        DataPipeline = ppDBRel05
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 143140
        mmTop = 794
        mmWidth = 17992
        BandType = 7
        LayerName = BandLayer9
      end
      object ppDBCalc42: TppDBCalc
        DesignLayer = ppDesignLayer9
        UserName = 'DBCalc42'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'vlrfaturar'
        DataPipeline = ppDBRel05
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 162190
        mmTop = 794
        mmWidth = 16404
        BandType = 7
        LayerName = BandLayer9
      end
      object ppLine67: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line67'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4760
        mmWidth = 196057
        BandType = 7
        LayerName = BandLayer9
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'REP_CODIGO'
      DataPipeline = ppDBRel05
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRel05'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 13229
        mmPrintPosition = 0
        object ppDBText83: TppDBText
          DesignLayer = ppDesignLayer9
          UserName = 'DBText10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_CODIGO'
          DataPipeline = ppDBRel05
          DisplayFormat = '000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel05'
          mmHeight = 3704
          mmLeft = 8731
          mmTop = 176
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppDBText84: TppDBText
          DesignLayer = ppDesignLayer9
          UserName = 'DBText15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_RAZAO'
          DataPipeline = ppDBRel05
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRel05'
          mmHeight = 3704
          mmLeft = 15875
          mmTop = 176
          mmWidth = 108744
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLine56: TppLine
          DesignLayer = ppDesignLayer9
          UserName = 'Line40'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLabel88: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label26'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'N'#186' do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 0
          mmTop = 4763
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLine57: TppLine
          DesignLayer = ppDesignLayer9
          UserName = 'Line401'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 12964
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLabel89: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label27'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Data de Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 13758
          mmTop = 4763
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLabel90: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label48'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Data da Entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 29633
          mmTop = 4763
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLabel91: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label49'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Data Faturado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 45508
          mmTop = 4763
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLabel92: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label50'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          WordWrap = True
          mmHeight = 3704
          mmLeft = 61383
          mmTop = 4763
          mmWidth = 41804
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLabel93: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label51'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Valor do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 125942
          mmTop = 4763
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLabel94: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label52'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Valor Faturado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 143669
          mmTop = 4763
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLabel95: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label53'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Status do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 179917
          mmTop = 4763
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLabel96: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label54'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'N'#186' da Fatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 103981
          mmTop = 4763
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLabel97: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label56'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Valor '#224' Faturar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          WordWrap = True
          mmHeight = 7938
          mmLeft = 162190
          mmTop = 4763
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLabel98: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label66'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'N'#186' da NF-e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 6615
          mmLeft = 115094
          mmTop = 4763
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer9
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLine58: TppLine
          DesignLayer = ppDesignLayer9
          UserName = 'Line42'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLine59: TppLine
          DesignLayer = ppDesignLayer9
          UserName = 'Line43'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4498
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppLabel99: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label55'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Total do vendedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 89429
          mmTop = 618
          mmWidth = 27252
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppDBCalc32: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc16'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PED_VLFATURADO'
          DataPipeline = ppDBRel05
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel05'
          mmHeight = 3175
          mmLeft = 143140
          mmTop = 705
          mmWidth = 17992
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppDBCalc33: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'vlrfaturar'
          DataPipeline = ppDBRel05
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel05'
          mmHeight = 3175
          mmLeft = 162190
          mmTop = 705
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer9
        end
        object ppDBCalc34: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc31'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'PED_VLTOTAL_BRUTO'
          DataPipeline = ppDBRel05
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel05'
          mmHeight = 3175
          mmLeft = 118710
          mmTop = 705
          mmWidth = 23636
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer9
        end
      end
    end
    object ppDesignLayers9: TppDesignLayers
      object ppDesignLayer9: TppDesignLayer
        UserName = 'BandLayer9'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList8: TppParameterList
    end
  end
  object CdsTotaOrcamentos: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'CdsTotaOrcamentosIndex1'
        Fields = 'digmes'
      end>
    IndexName = 'CdsTotaOrcamentosIndex1'
    Params = <>
    StoreDefs = True
    Left = 600
    Top = 592
    object CdsTotaOrcamentosDigMes: TIntegerField
      FieldName = 'DigMes'
    end
    object CdsTotaOrcamentosMes: TStringField
      FieldName = 'Mes'
      Size = 30
    end
    object CdsTotaOrcamentosOrcaSoli: TIntegerField
      FieldName = 'OrcaSoli'
    end
    object CdsTotaOrcamentosOrcaEfetivados: TIntegerField
      FieldName = 'OrcaEfetivados'
    end
    object CdsTotaOrcamentosVendasRealizadas: TIntegerField
      FieldName = 'VendasRealizadas'
    end
    object CdsTotaOrcamentosTotalVendas: TFMTBCDField
      FieldName = 'TotalVendas'
      Precision = 15
    end
  end
  object ppOrcamentos: TppReport
    AutoStop = False
    DataPipeline = dbTotalOrcamentos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 912
    Top = 592
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbTotalOrcamentos'
    object ppHeaderBand9: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 32808
      mmPrintPosition = 0
      object ppLabel86: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'LBL_09_EMPRESA1'
        HyperlinkEnabled = False
        OnGetText = ppLabel86GetText
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel87: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label87'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Relat'#243'rio de or'#231'amentos por origem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel100: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label100'
        HyperlinkEnabled = False
        OnGetText = ppLabel100GetText
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground7
      end
      object ppSystemVariable17: TppSystemVariable
        DesignLayer = ppDesignLayer10
        UserName = 'SystemVariable17'
        HyperlinkEnabled = False
        OnGetText = ppSystemVariable12GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy HH:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 169863
        mmTop = 794
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground7
      end
      object ppSystemVariable18: TppSystemVariable
        DesignLayer = ppDesignLayer10
        UserName = 'SystemVariable18'
        HyperlinkEnabled = False
        OnGetText = PaginaGetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 178065
        mmTop = 9790
        mmWidth = 18133
        BandType = 0
        LayerName = Foreground7
      end
      object ppOrigem: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label1001'
        HyperlinkEnabled = False
        OnGetText = ppOrigemGetText
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 5073
        mmLeft = 150
        mmTop = 15346
        mmWidth = 196858
        BandType = 0
        LayerName = Foreground7
      end
      object ppTableGrid3: TppTableGrid
        DesignLayer = ppDesignLayer10
        UserName = 'TableGrid3'
        DefaultColWidth = 0.500000000000000000
        DefaultRowHeight = 0.500000000000000000
        mmHeight = 12435
        mmLeft = 0
        mmTop = 20373
        mmWidth = 196986
        BandType = 0
        LayerName = Foreground7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmDefaultRowHeight = 12700
        mmDefaultColWidth = 12700
        object ppTableRow3: TppTableRow
          DesignLayer = ppDesignLayer10
          UserName = 'TableRow3'
          mmHeight = 12435
          mmLeft = 0
          mmTop = 0
          mmWidth = 48948
          BandType = 4
          LayerName = Foreground7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppTableCell11: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell11'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 12435
            mmLeft = 0
            mmTop = 20373
            mmWidth = 35314
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppLabel101: TppLabel
              DesignLayer = ppDesignLayer10
              UserName = 'Label1'
              Anchors = [atLeft, atRight]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'M'#234's'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4233
              mmLeft = 1058
              mmTop = 24781
              mmWidth = 33338
              BandType = 0
              LayerName = Foreground7
            end
          end
          object ppTableCell12: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell12'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppLabel102: TppLabel
              DesignLayer = ppDesignLayer10
              UserName = 'Label102'
              Anchors = [atLeft, atRight]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Or'#231'amentos solicitados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4233
              mmLeft = 36512
              mmTop = 24781
              mmWidth = 38365
              BandType = 0
              LayerName = Foreground7
            end
          end
          object ppTableCell13: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell13'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppLabel103: TppLabel
              DesignLayer = ppDesignLayer10
              UserName = 'Label103'
              Anchors = [atLeft, atRight]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Or'#231'amentos efetivados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 76993
              mmTop = 24781
              mmWidth = 40195
              BandType = 0
              LayerName = Foreground7
            end
          end
          object ppTableCell14: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell14'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppLabel104: TppLabel
              DesignLayer = ppDesignLayer10
              UserName = 'Label104'
              Anchors = [atLeft, atRight]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Vendas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 119304
              mmTop = 21965
              mmWidth = 35984
              BandType = 0
              LayerName = Foreground7
            end
            object ppLabel108: TppLabel
              DesignLayer = ppDesignLayer10
              UserName = 'Label108'
              Anchors = [atLeft, atRight]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'diretas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 119304
              mmTop = 26723
              mmWidth = 35984
              BandType = 0
              LayerName = Foreground7
            end
          end
          object ppTableCell15: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell15'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 12435
            mmLeft = 156346
            mmTop = 20373
            mmWidth = 40500
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppLabel105: TppLabel
              DesignLayer = ppDesignLayer10
              UserName = 'Label105'
              Anchors = [atLeft, atRight]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total de vendas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 157404
              mmTop = 24781
              mmWidth = 38524
              BandType = 0
              LayerName = Foreground7
            end
          end
        end
        object ppTableColumn11: TppTableColumn
          UserName = 'TableColumn11'
          mmWidth = 35454
        end
        object ppTableColumn12: TppTableColumn
          UserName = 'TableColumn12'
          mmWidth = 40481
        end
        object ppTableColumn13: TppTableColumn
          UserName = 'TableColumn13'
          mmWidth = 42311
        end
        object ppTableColumn14: TppTableColumn
          UserName = 'TableColumn14'
          mmWidth = 38100
        end
        object ppTableColumn15: TppTableColumn
          UserName = 'TableColumn15'
          mmWidth = 40640
        end
      end
    end
    object ppDetailBand10: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppTableGrid1: TppTableGrid
        DesignLayer = ppDesignLayer10
        UserName = 'TableGrid1'
        DefaultColWidth = 0.500000000000000000
        DefaultRowHeight = 0.500000000000000000
        mmHeight = 12435
        mmLeft = 0
        mmTop = 0
        mmWidth = 196901
        BandType = 4
        LayerName = Foreground7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmDefaultRowHeight = 12700
        mmDefaultColWidth = 12700
        object ppTableRow1: TppTableRow
          DesignLayer = ppDesignLayer10
          UserName = 'TableRow1'
          mmHeight = 12435
          mmLeft = 0
          mmTop = 0
          mmWidth = 48948
          BandType = 4
          LayerName = Foreground7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppTableCell1: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell1'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppDBText86: TppDBText
              DesignLayer = ppDesignLayer10
              UserName = 'DBText86'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'Mes'
              DataPipeline = dbTotalOrcamentos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbTotalOrcamentos'
              mmHeight = 4498
              mmLeft = 1058
              mmTop = 4763
              mmWidth = 33302
              BandType = 4
              LayerName = Foreground7
            end
          end
          object ppTableCell3: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell3'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppDBText87: TppDBText
              DesignLayer = ppDesignLayer10
              UserName = 'DBText87'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'OrcaSoli'
              DataPipeline = dbTotalOrcamentos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbTotalOrcamentos'
              mmHeight = 4498
              mmLeft = 36476
              mmTop = 4763
              mmWidth = 38330
              BandType = 4
              LayerName = Foreground7
            end
          end
          object ppTableCell5: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell5'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppDBText88: TppDBText
              DesignLayer = ppDesignLayer10
              UserName = 'DBText88'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'OrcaEfetivados'
              DataPipeline = dbTotalOrcamentos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbTotalOrcamentos'
              mmHeight = 4498
              mmLeft = 76922
              mmTop = 4763
              mmWidth = 40217
              BandType = 4
              LayerName = Foreground7
            end
          end
          object ppTableCell7: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell7'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppDBText89: TppDBText
              DesignLayer = ppDesignLayer10
              UserName = 'DBText89'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'VendasRealizadas'
              DataPipeline = dbTotalOrcamentos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbTotalOrcamentos'
              mmHeight = 4498
              mmLeft = 119255
              mmTop = 4763
              mmWidth = 35948
              BandType = 4
              LayerName = Foreground7
            end
          end
          object ppTableCell9: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell9'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppDBText90: TppDBText
              DesignLayer = ppDesignLayer10
              UserName = 'DBText90'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'TotalVendas'
              DataPipeline = dbTotalOrcamentos
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbTotalOrcamentos'
              mmHeight = 4498
              mmLeft = 158199
              mmTop = 4763
              mmWidth = 36060
              BandType = 4
              LayerName = Foreground7
            end
          end
        end
        object ppTableColumn1: TppTableColumn
          UserName = 'TableColumn1'
          mmWidth = 35418
        end
        object ppTableColumn2: TppTableColumn
          UserName = 'TableColumn2'
          mmWidth = 40446
        end
        object ppTableColumn3: TppTableColumn
          UserName = 'TableColumn3'
          mmWidth = 42333
        end
        object ppTableColumn4: TppTableColumn
          UserName = 'TableColumn4'
          mmWidth = 38064
        end
        object ppTableColumn5: TppTableColumn
          UserName = 'TableColumn5'
          mmWidth = 40640
        end
      end
    end
    object ppSummaryBand4: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppTableGrid2: TppTableGrid
        DesignLayer = ppDesignLayer10
        UserName = 'TableGrid2'
        DefaultColWidth = 0.500000000000000000
        DefaultRowHeight = 0.500000000000000000
        mmHeight = 11906
        mmLeft = 0
        mmTop = 0
        mmWidth = 196889
        BandType = 7
        LayerName = Foreground7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmDefaultRowHeight = 12700
        mmDefaultColWidth = 12700
        object ppTableRow2: TppTableRow
          DesignLayer = ppDesignLayer10
          UserName = 'TableRow2'
          mmHeight = 11906
          mmLeft = 0
          mmTop = 0
          mmWidth = 48948
          BandType = 4
          LayerName = Foreground7
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppTableCell2: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell2'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppLabel106: TppLabel
              DesignLayer = ppDesignLayer10
              UserName = 'Label106'
              Anchors = [atLeft, atRight]
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3704
              mmLeft = 1058
              mmTop = 4233
              mmWidth = 33338
              BandType = 7
              LayerName = Foreground7
            end
          end
          object ppTableCell4: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell4'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppDBCalc35: TppDBCalc
              DesignLayer = ppDesignLayer10
              UserName = 'DBCalc35'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'OrcaSoli'
              DataPipeline = dbTotalOrcamentos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbTotalOrcamentos'
              mmHeight = 4498
              mmLeft = 36512
              mmTop = 4233
              mmWidth = 38365
              BandType = 7
              LayerName = Foreground7
            end
          end
          object ppTableCell6: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell6'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppDBCalc36: TppDBCalc
              DesignLayer = ppDesignLayer10
              UserName = 'DBCalc36'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'OrcaEfetivados'
              DataPipeline = dbTotalOrcamentos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbTotalOrcamentos'
              mmHeight = 4498
              mmLeft = 76993
              mmTop = 4233
              mmWidth = 40257
              BandType = 7
              LayerName = Foreground7
            end
          end
          object ppTableCell8: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell8'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppDBCalc37: TppDBCalc
              DesignLayer = ppDesignLayer10
              UserName = 'DBCalc37'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'VendasRealizadas'
              DataPipeline = dbTotalOrcamentos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbTotalOrcamentos'
              mmHeight = 4498
              mmLeft = 119366
              mmTop = 4233
              mmWidth = 35719
              BandType = 7
              LayerName = Foreground7
            end
          end
          object ppTableCell10: TppTableCell
            DesignLayer = ppDesignLayer10
            UserName = 'TableCell10'
            Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1058
            Brush.Style = bsClear
            Padding = 0.041700001806020740
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = Foreground7
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 0
            mmPadding = 1058
            object ppDBCalc38: TppDBCalc
              DesignLayer = ppDesignLayer10
              UserName = 'DBCalc38'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'TotalVendas'
              DataPipeline = dbTotalOrcamentos
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbTotalOrcamentos'
              mmHeight = 4498
              mmLeft = 157201
              mmTop = 4233
              mmWidth = 38630
              BandType = 7
              LayerName = Foreground7
            end
          end
        end
        object ppTableColumn6: TppTableColumn
          UserName = 'TableColumn6'
          mmWidth = 35454
        end
        object ppTableColumn7: TppTableColumn
          UserName = 'TableColumn7'
          mmWidth = 40481
        end
        object ppTableColumn8: TppTableColumn
          UserName = 'TableColumn8'
          mmWidth = 42373
        end
        object ppTableColumn9: TppTableColumn
          UserName = 'TableColumn9'
          mmWidth = 37835
        end
        object ppTableColumn10: TppTableColumn
          UserName = 'TableColumn10'
          mmWidth = 40746
        end
      end
    end
    object ppDesignLayers10: TppDesignLayers
      object ppDesignLayer10: TppDesignLayer
        UserName = 'Foreground7'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList9: TppParameterList
    end
  end
  object dbTotalOrcamentos: TppDBPipeline
    DataSource = dsTotalOrcamentos
    CloseDataSource = True
    UserName = 'dbTotalOrcamentos'
    Left = 816
    Top = 592
    object dbTotalOrcamentosppField1: TppField
      FieldAlias = 'DigMes'
      FieldName = 'DigMes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbTotalOrcamentosppField2: TppField
      FieldAlias = 'Mes'
      FieldName = 'Mes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbTotalOrcamentosppField3: TppField
      FieldAlias = 'OrcaSoli'
      FieldName = 'OrcaSoli'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbTotalOrcamentosppField4: TppField
      FieldAlias = 'OrcaEfetivados'
      FieldName = 'OrcaEfetivados'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbTotalOrcamentosppField5: TppField
      FieldAlias = 'VendasRealizadas'
      FieldName = 'VendasRealizadas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbTotalOrcamentosppField6: TppField
      FieldAlias = 'TotalVendas'
      FieldName = 'TotalVendas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
  end
  object dsTotalOrcamentos: TDataSource
    DataSet = CdsTotaOrcamentos
    Left = 696
    Top = 592
  end
  object ppRRel11: TppReport
    AutoStop = False
    DataPipeline = ppDBRel05
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
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
    Template.FileName = 'X:\adjutor\fontesrelatorios\RELPED05'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 1056
    Top = 344
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel05'
    object ppHeaderBand10: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object LBL_11_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'LBL_11_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = BandLayer11
      end
      object LBL_11_TITULO01: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'LBL_11_TITULO01'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = BandLayer11
      end
      object LBL_11_TITULO02: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'LBL_11_TITULO02'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = BandLayer11
      end
      object ppSystemVariable19: TppSystemVariable
        DesignLayer = ppDesignLayer11
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy HH:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 169863
        mmTop = 794
        mmWidth = 26458
        BandType = 0
        LayerName = BandLayer11
      end
      object ppSystemVariable20: TppSystemVariable
        DesignLayer = ppDesignLayer11
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = PaginaGetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 178188
        mmTop = 9790
        mmWidth = 18133
        BandType = 0
        LayerName = BandLayer11
      end
      object ppLine62: TppLine
        DesignLayer = ppDesignLayer11
        UserName = 'Line402'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15521
        mmWidth = 196057
        BandType = 0
        LayerName = BandLayer11
      end
      object ppLabel111: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label111'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'N'#186' do Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 0
        mmTop = 16051
        mmWidth = 12700
        BandType = 0
        LayerName = BandLayer11
      end
      object ppLine63: TppLine
        DesignLayer = ppDesignLayer11
        UserName = 'Line63'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 24075
        mmWidth = 196057
        BandType = 0
        LayerName = BandLayer11
      end
      object ppLabel112: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label112'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Data de Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 13758
        mmTop = 16051
        mmWidth = 15346
        BandType = 0
        LayerName = BandLayer11
      end
      object ppLabel114: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label114'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Data Faturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 29633
        mmTop = 16051
        mmWidth = 15346
        BandType = 0
        LayerName = BandLayer11
      end
      object ppLabel115: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label501'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 45508
        mmTop = 16051
        mmWidth = 63452
        BandType = 0
        LayerName = BandLayer11
      end
      object ppLabel117: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label117'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Valor Faturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 133086
        mmTop = 16051
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer11
      end
      object ppLabel118: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label118'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Status do Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 179917
        mmTop = 16051
        mmWidth = 14288
        BandType = 0
        LayerName = BandLayer11
      end
      object ppLabel119: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label119'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'N'#186' da Fatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 110331
        mmTop = 16051
        mmWidth = 10319
        BandType = 0
        LayerName = BandLayer11
      end
      object ppLabel120: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label120'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Forma de pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 151607
        mmTop = 16051
        mmWidth = 24852
        BandType = 0
        LayerName = BandLayer11
      end
      object ppLabel121: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label121'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'N'#186' da NF-e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6615
        mmLeft = 121444
        mmTop = 16051
        mmWidth = 10583
        BandType = 0
        LayerName = BandLayer11
      end
    end
    object ppDetailBand11: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText94: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_EMISSAO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 29632
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = BandLayer11
      end
      object ppDBText95: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 45507
        mmTop = 0
        mmWidth = 63452
        BandType = 4
        LayerName = BandLayer11
      end
      object ppDBText97: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLFATURADO'
        DataPipeline = ppDBRel05
        DisplayFormat = '#,###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 133085
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer11
      end
      object ppDBText98: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_NOTANUMBER'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 110065
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = BandLayer11
      end
      object ppDBText99: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText55'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_STATUS_CC'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 179917
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer11
      end
      object ppDBText100: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText53'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FPG_DESCRICAO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 151606
        mmTop = 0
        mmWidth = 24852
        BandType = 4
        LayerName = BandLayer11
      end
      object ppDBText101: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_NUM_NFE'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 120913
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = BandLayer11
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = BandLayer11
      end
      object ppDBText96: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText96'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_DTENTRADA'
        DataPipeline = ppDBRel05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 13758
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = BandLayer11
      end
    end
    object ppSummaryBand5: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLine64: TppLine
        DesignLayer = ppDesignLayer11
        UserName = 'Line64'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 7
        LayerName = BandLayer11
      end
      object ppLine65: TppLine
        DesignLayer = ppDesignLayer11
        UserName = 'Line65'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4498
        mmWidth = 196057
        BandType = 7
        LayerName = BandLayer11
      end
      object ppLabel122: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label122'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 107950
        mmTop = 529
        mmWidth = 8731
        BandType = 7
        LayerName = BandLayer11
      end
      object ppDBCalc39: TppDBCalc
        DesignLayer = ppDesignLayer11
        UserName = 'DBCalc39'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_VLFATURADO'
        DataPipeline = ppDBRel05
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel05'
        mmHeight = 3175
        mmLeft = 133086
        mmTop = 529
        mmWidth = 17992
        BandType = 7
        LayerName = BandLayer11
      end
    end
    object ppDesignLayers11: TppDesignLayers
      object ppDesignLayer11: TppDesignLayer
        UserName = 'BandLayer11'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList10: TppParameterList
    end
  end
  object qRelOrdem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 512
    Top = 440
    object qRelOrdemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
    end
    object qRelOrdemPED_CONTATO_CLIENTE: TStringField
      FieldName = 'PED_CONTATO_CLIENTE'
      Size = 100
    end
    object qRelOrdemPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 100
    end
  end
  object cdsRelOrdem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelOrdem'
    Left = 480
    Top = 440
    object cdsRelOrdemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
    end
    object cdsRelOrdemPED_CONTATO_CLIENTE: TStringField
      FieldName = 'PED_CONTATO_CLIENTE'
      Size = 100
    end
    object cdsRelOrdemPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 100
    end
  end
  object dspRelOrdem: TDataSetProvider
    DataSet = qRelOrdem
    Left = 448
    Top = 440
  end
  object frxDBRelOrdem: TfrxDBDataset
    UserName = 'frxDBRelOrdem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PED_CODIGO=PED_CODIGO'
      'PED_CONTATO_CLIENTE=PED_CONTATO_CLIENTE'
      'PRF_PRDDESCRI=PRF_PRDDESCRI')
    DataSet = cdsRelOrdem
    BCDToCurrency = False
    Left = 456
    Top = 504
  end
  object frxRelOrdem: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44222.612355706020000000
    ReportOptions.LastChange = 44222.612355706020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxRelOrdemGetValue
    Left = 528
    Top = 512
    Datasets = <
      item
        DataSet = frxDBRelOrdem
        DataSetName = 'frxDBRelOrdem'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frxDBRelOrdem
        DataSetName = 'frxDBRelOrdem'
        RowCount = 0
        Stretched = True
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRelOrdem."PED_CONTATO_CLIENTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Width = 453.543600000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRelOrdem."PRF_PRDDESCRI"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRelOrdem."PED_CODIGO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 103.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object LogoEmpresa: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 75.590600000000000000
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 2.779530000000000000
          Width = 442.205010000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 21.677180000000000000
          Width = 563.149970000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 40.574830000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CEP]   [CIDADE] - [UF]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 59.472480000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'E-Mail: [EMAIL]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 40.574830000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TELEFONE]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 59.472480000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ: [CNPJ]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 87.929190000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTATO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 87.929190000000000000
          Width = 453.543600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O DA OBRA')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 87.929190000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE SERVI'#199'O')
          ParentFont = False
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 2.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object sqlOrcMes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT R.REP_RAZAO, '
      
        '  EXTRACT(year FROM PED.PED_DTENTRADA) AS ANO, LPAD(EXTRACT(MONT' +
        'H FROM PED.PED_DTENTRADA), 2,0) AS Mes, '
      
        '  count((SELECT count(p.PED_CODIGO) FROM PED0000 p WHERE p.PED_C' +
        'ODIGO = ped.PED_CODIGO AND ped.PED_SITUACAO = '#39'F'#39' )) AS QtdeOrca' +
        'do,'
      
        '  sum((SELECT sum(p.PED_VLTOTAL_LIQ) FROM PED0000 p WHERE p.PED_' +
        'CODIGO = ped.PED_CODIGO AND ped.PED_SITUACAO = '#39'F'#39' )) AS Orcado,'
      '  avg('
      '      (SELECT '
      '        count(ped2.PED_CODIGO)  '
      '      FROM PED0000 ped2'
      
        #9'  WHERE ped2.PED_DTENTRADA BETWEEN '#39'2022-01-01'#39' AND '#39'2022-12-31' +
        #39
      '      AND (PED2.PED_SITUACAO IN ('#39'T'#39', '#39'P'#39') )'
      '      AND ped2.EMP_CODIGO = PED.EMP_CODIGO'
      #9#9'    AND PED2.REP_CODIGO = PED.REP_CODIGO '
      
        '      AND EXTRACT(MONTH FROM PED2.PED_DTENTRADA) = EXTRACT(MONTH' +
        ' FROM PED.PED_DTENTRADA)  )'
      '  ) AS QtdeFaturado,'
      
        '  sum((SELECT sum(p.PED_VLFATURADO) FROM PED0000 p WHERE p.PED_C' +
        'ODIGO = ped.PED_CODIGO AND ped.PED_SITUACAO in ('#39'T'#39', '#39'P'#39'))) AS F' +
        'aturado'
      'FROM PED0000 ped'
      'LEFT JOIN REP0000 r ON (r.REP_CODIGO = ped.REP_CODIGO)'
      'LEFT JOIN CLI0000 cli ON (cli.CLI_CODIGO = ped.CLI_CODIGO)'
      
        'LEFT JOIN CLIENTE_ORIGEM clo ON (clo.CORI_CODIGO = ped.CORI_CODI' +
        'GO) '
      'LEFT JOIN  OPV0000 tpp ON (tpp.OPV_CODIGO = ped.OPV_CODIGO)  '
      'WHERE ped.PED_DTENTRADA BETWEEN '#39'2022-01-01'#39' AND '#39'2022-12-31'#39
      'AND ped.EMP_CODIGO = '#39'001'#39
      '--AND clo.CORI_CODIGO = 2'
      '--AND R.REP_CODIGO ='#39'001'#39
      'GROUP BY 1,2,3'
      'ORDER BY 1,2,3')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 1168
    Top = 256
  end
  object dspOrcMes: TDataSetProvider
    DataSet = sqlOrcMes
    Left = 1168
    Top = 312
  end
  object cdsOrcMes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcMes'
    Left = 1176
    Top = 368
    object cdsOrcMesREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object cdsOrcMesANO: TSmallintField
      FieldName = 'ANO'
    end
    object cdsOrcMesMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object cdsOrcMesQTDEORCADO: TIntegerField
      FieldName = 'QTDEORCADO'
      Required = True
    end
    object cdsOrcMesORCADO: TFMTBCDField
      FieldName = 'ORCADO'
      Precision = 18
      Size = 5
    end
    object cdsOrcMesQTDEFATURADO: TLargeintField
      FieldName = 'QTDEFATURADO'
    end
    object cdsOrcMesFATURADO: TFMTBCDField
      FieldName = 'FATURADO'
      Precision = 18
      Size = 5
    end
  end
  object dsOrcMes: TDataSource
    DataSet = cdsOrcMes
    Left = 1176
    Top = 432
  end
  object frxDBdsOrcMes: TfrxDBDataset
    UserName = 'frxDBdsOrcMes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'REP_RAZAO=REP_RAZAO'
      'ANO=ANO'
      'MES=MES'
      'QTDEORCADO=QTDEORCADO'
      'ORCADO=ORCADO'
      'QTDEFATURADO=QTDEFATURADO'
      'FATURADO=FATURADO')
    DataSource = dsOrcMes
    BCDToCurrency = False
    Left = 1176
    Top = 496
  end
  object frxOrcMes: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44222.612355706020000000
    ReportOptions.LastChange = 44222.612355706020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxRelOrdemGetValue
    Left = 1176
    Top = 560
    Datasets = <
      item
        DataSet = frxDBdsOrcMes
        DataSetName = 'frxDBdsOrcMes'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = frxDBdsOrcMes
        DataSetName = 'frxDBdsOrcMes'
        RowCount = 0
        Stretched = True
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBdsOrcMes."ANO"]')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsOrcMes
          DataSetName = 'frxDBdsOrcMes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[MES]')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsOrcMes
          DataSetName = 'frxDBdsOrcMes'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBdsOrcMes."QTDEORCADO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsOrcMes
          DataSetName = 'frxDBdsOrcMes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBdsOrcMes."ORCADO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsOrcMes
          DataSetName = 'frxDBdsOrcMes'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBdsOrcMes."QTDEFATURADO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsOrcMes
          DataSetName = 'frxDBdsOrcMes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBdsOrcMes."FATURADO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 76.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object LogoEmpresa: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 136.063080000000000000
          Height = 75.590600000000000000
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 2.779530000000000000
          Width = 442.205010000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 21.677180000000000000
          Width = 563.149970000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 40.574830000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CEP]   [CIDADE] - [UF]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 59.472480000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'E-Mail: [EMAIL]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 40.574830000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TELEFONE]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 59.472480000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ: [CNPJ]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 2.779530000000000000
          Width = 124.724490000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBdsOrcMes."REP_RAZAO"'
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 3.779530000000000000
          Width = 544.252320000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBdsOrcMes."REP_RAZAO"]')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 41.574830000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ano')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 41.574830000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#234's')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 41.574830000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde. Or'#231'amentos')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 41.574830000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Or'#231'ado')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 41.574830000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde. de Faturamentos')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 41.574830000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Faturado')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsOrcMes
          DataSetName = 'frxDBdsOrcMes'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBdsOrcMes."QTDEORCADO">, MasterData1, 0)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsOrcMes
          DataSetName = 'frxDBdsOrcMes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(<frxDBdsOrcMes."ORCADO">, masterdata1,0)]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsOrcMes
          DataSetName = 'frxDBdsOrcMes'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(<frxDBdsOrcMes."QTDEFATURADO">, masterdata1,0)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsOrcMes
          DataSetName = 'frxDBdsOrcMes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(<frxDBdsOrcMes."FATURADO">, masterdata1,0)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 389.291590000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsOrcMes
          DataSetName = 'frxDBdsOrcMes'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBdsOrcMes."QTDEORCADO">, MasterData1, 0)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsOrcMes
          DataSetName = 'frxDBdsOrcMes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(<frxDBdsOrcMes."ORCADO">, masterdata1,0)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779840000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsOrcMes
          DataSetName = 'frxDBdsOrcMes'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(<frxDBdsOrcMes."QTDEFATURADO">, masterdata1,0)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsOrcMes
          DataSetName = 'frxDBdsOrcMes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(<frxDBdsOrcMes."FATURADO">, masterdata1,0)]')
          ParentFont = False
        end
      end
    end
  end
  object qRel05: TFDQuery
    OnCalcFields = qRel05CalcFields
    Connection = DBInicio.FDACConn
    Left = 752
    Top = 416
    object qRel05PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object qRel05OPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object qRel05OPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object qRel05PED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object qRel05PED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
    end
    object qRel05PED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object qRel05PED_VLTOTAL_LIQ: TFMTBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      Precision = 15
    end
    object qRel05PED_VLTOTAL_BRUTO: TFMTBCDField
      FieldName = 'PED_VLTOTAL_BRUTO'
      Precision = 15
    end
    object qRel05PED_VLFATURADO: TFMTBCDField
      FieldName = 'PED_VLFATURADO'
      Precision = 15
    end
    object qRel05CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object qRel05CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object qRel05NF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Size = 6
    end
    object qRel05NF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object qRel05NF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      Precision = 15
    end
    object qRel05PED_STATUS_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'PED_STATUS_CC'
      Size = 10
      Calculated = True
    end
    object qRel05NF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object qRel05REP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object qRel05REP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object qRel05emp_codigo: TStringField
      FieldName = 'emp_codigo'
      Size = 3
    end
    object qRel05FPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object qRel05PCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
    object qRel05VLRFATURAR: TFMTBCDField
      FieldName = 'VLRFATURAR'
      Size = 5
    end
    object qRel05VALOR_A_FATURAR: TFMTBCDField
      FieldName = 'VALOR_A_FATURAR'
      Size = 5
    end
  end
  object cdsRel02: TFDQuery
    OnCalcFields = cdsRel02CalcFields
    Connection = DBInicio.FDACConn
    Left = 752
    Top = 216
    object cdsRel02PED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
    end
    object cdsRel02PED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object cdsRel02CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object cdsRel02CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object cdsRel02CLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object cdsRel02REP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object cdsRel02REP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object cdsRel02PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 6
    end
    object cdsRel02PED_DESCTOVL: TFMTBCDField
      FieldName = 'PED_DESCTOVL'
      Precision = 15
    end
    object cdsRel02WVALOR_FATURADO: TFMTBCDField
      FieldName = 'WVALOR_FATURADO'
      Precision = 15
    end
    object cdsRel02WVALOR_PEDIDO_LIQUIDO: TFMTBCDField
      FieldName = 'WVALOR_PEDIDO_LIQUIDO'
      Precision = 15
    end
    object cdsRel02WVALOR_FATURADO_LIQUIDO: TFMTBCDField
      FieldName = 'WVALOR_FATURADO_LIQUIDO'
      Precision = 15
    end
    object cdsRel02WVALOR_FATURADO_IPI: TFMTBCDField
      FieldName = 'WVALOR_FATURADO_IPI'
      Precision = 15
    end
    object cdsRel02PED_PENDENTE_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PED_PENDENTE_CC'
      Calculated = True
    end
    object cdsRel02PED_VLTUPS: TFMTBCDField
      FieldName = 'PED_VLTUPS'
      Precision = 15
    end
    object cdsRel02PED_TOTUPS: TFMTBCDField
      FieldName = 'PED_TOTUPS'
      Precision = 15
    end
    object cdsRel02PED_COMIS1: TFMTBCDField
      FieldName = 'PED_COMIS1'
      Precision = 15
    end
    object cdsRel02Comissao_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Comissao_CC'
      Calculated = True
    end
    object cdsRel02EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
end
