inherited FormContasReceberBaixas: TFormContasReceberBaixas
  Left = 490
  Top = 237
  Caption = 'Recebimentos Efetuados do Contas '#224' Receber'
  ClientHeight = 602
  ClientWidth = 964
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  Position = poDesktopCenter
  ExplicitWidth = 980
  ExplicitHeight = 641
  PixelsPerInch = 96
  TextHeight = 14
  object bitBtn2: TJvArrowButton [0]
    Left = 859
    Top = 33
    Width = 100
    Height = 25
    GroupIndex = 1
    DropDown = PopupMenu2
    Caption = '&Imprimir'
    FillFont.Charset = DEFAULT_CHARSET
    FillFont.Color = clWindowText
    FillFont.Height = -11
    FillFont.Name = 'Tahoma'
    FillFont.Style = []
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
    OnClick = BitBtn2Click
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 857
    Height = 105
    Caption = 'Pesquisa'
    TabOrder = 0
    object Label1: TLabel
      Left = 44
      Top = 25
      Width = 34
      Height = 14
      Caption = 'Fatura:'
    end
    object Label2: TLabel
      Left = 158
      Top = 25
      Width = 65
      Height = 14
      Caption = 'Recebimento:'
    end
    object Label3: TLabel
      Left = 320
      Top = 25
      Width = 17
      Height = 14
      Caption = 'At'#233
    end
    object Label4: TLabel
      Left = 470
      Top = 25
      Width = 35
      Height = 14
      Caption = 'Cliente:'
    end
    object Label5: TLabel
      Left = 1
      Top = 48
      Width = 78
      Height = 14
      Caption = 'Forma de Pagto:'
    end
    object Label6: TLabel
      Left = 441
      Top = 49
      Width = 65
      Height = 14
      Caption = 'Conta Banco:'
    end
    object Label8: TLabel
      Left = 13
      Top = 72
      Width = 66
      Height = 14
      Caption = 'Centro Custo:'
    end
    object EdFatura: TEdit
      Left = 80
      Top = 21
      Width = 73
      Height = 22
      MaxLength = 6
      TabOrder = 0
      OnExit = EdFaturaExit
    end
    object RxDataInicial: TDateEdit
      Left = 226
      Top = 21
      Width = 88
      Height = 22
      ButtonWidth = 20
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 1
    end
    object RxDataFinal: TDateEdit
      Left = 345
      Top = 21
      Width = 89
      Height = 22
      ButtonWidth = 20
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 2
      OnExit = RxDataFinalExit
    end
    object CbCliente: TComboBoxRw
      Left = 552
      Top = 19
      Width = 273
      Height = 22
      TabOrder = 4
      OnExit = CbClienteExit
      OnChange = CbClienteChange
      CharCase = ecUpperCase
      LookupSelect = 'CLI_RAZAO'
      LookupOrderBy = 'CLI_RAZAO'
      LookupTable = 'cli0000'
      OnButtonClick = CbClienteButtonClick
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
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
      Tabela = 'cli0000'
      CamposCarregar = 'CLI_RAZAO'
      CamposRetornar = 'CLI_CODIGO'
      CamposOrdernar = 'CLI_RAZAO'
      ConexaoBanco = DataCadastros.SQLConnection1
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
    object EdClienteCodigo: TEdit
      Left = 508
      Top = 19
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 3
      OnExit = EdClienteCodigoExit
    end
    object EdFormaCodigo: TEdit
      Left = 80
      Top = 45
      Width = 39
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 5
      OnExit = EdFormaCodigoExit
    end
    object CbForma: TComboBoxRw
      Left = 120
      Top = 45
      Width = 289
      Height = 22
      TabOrder = 6
      OnExit = CbFormaExit
      OnChange = CbFormaChange
      CharCase = ecUpperCase
      LookupSelect = 'FPG_DESCRICAO'
      LookupOrderBy = 'FPG_DESCRICAO'
      LookupTable = 'FORMA_PAGAMENTO'
      OnSelect = CbFormaSelect
      GridAutoSize = False
      LookupSource = CbForma.InternalSource
      LookupKeyField = 'FPG_REGISTRO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Formas de Pagamento'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
      Tabela = 'FORMA_PAGAMENTO'
      CamposCarregar = 'FPG_DESCRICAO'
      CamposRetornar = 'FPG_REGISTRO'
      CamposOrdernar = 'FPG_DESCRICAO'
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
    object EdContaBancoCodigo: TEdit
      Left = 508
      Top = 43
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 4
      TabOrder = 7
      OnExit = EdContaBancoCodigoExit
    end
    object CbContaBanco: TComboBoxRw
      Left = 552
      Top = 43
      Width = 273
      Height = 22
      TabOrder = 8
      OnExit = CbContaBancoExit
      OnChange = CbContaBancoChange
      CharCase = ecUpperCase
      LookupSelect = 'BAN_APELIDO'
      LookupOrderBy = 'BAN_APELIDO'
      LookupTable = 'BAN0000'
      OnSelect = CbContaBancoSelect
      GridAutoSize = False
      LookupSource = CbContaBanco.InternalSource
      LookupKeyField = 'BAN_CODIGO'
      ShowButton = True
      LookupTableShare = 'BANCOS'
      AutoF8WinTitulo = 'Contas Banc'#225'rias'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
      Tabela = 'BAN0000'
      CamposCarregar = 'BAN_APELIDO'
      CamposRetornar = 'BAN_CODIGO'
      CamposOrdernar = 'BAN_APELIDO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'BANCOS'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object chkMultiEmpresa: TCheckBox
      Left = 508
      Top = 72
      Width = 91
      Height = 17
      Caption = 'Multiempresa'
      TabOrder = 11
      OnClick = chkMultiEmpresaClick
    end
    object EdCentroCustoCodigo: TEdit
      Left = 80
      Top = 69
      Width = 39
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 9
      OnExit = EdCentroCustoCodigoExit
    end
    object CbCentroCusto: TComboBoxRw
      Left = 120
      Top = 69
      Width = 289
      Height = 22
      TabOrder = 10
      OnExit = CbCentroCustoExit
      OnChange = CbCentroCustoChange
      CharCase = ecUpperCase
      LookupSelect = 'PCX_DESCRI'
      LookupOrderBy = 'PCX_DESCRI'
      LookupTable = 'PCX0000'
      OnSelect = CbCentroCustoSelect
      GridAutoSize = False
      LookupSource = CbCentroCusto.InternalSource
      LookupKeyField = 'PCX_CODIGO'
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
    object chkAntecipado: TCheckBox
      Left = 605
      Top = 72
      Width = 91
      Height = 17
      Caption = 'Antecipado'
      TabOrder = 12
      OnClick = chkMultiEmpresaClick
    end
  end
  object Bit_Cancelar: TBitBtn [2]
    Left = 858
    Top = 5
    Width = 100
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    Visible = False
    OnClick = Bit_CancelarClick
  end
  object Bit_Sair: TBitBtn [3]
    Left = 858
    Top = 80
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
    TabOrder = 3
    OnClick = Bit_SairClick
  end
  object BitPesquisar: TBitBtn [4]
    Left = 858
    Top = 5
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
    TabOrder = 1
    OnClick = BitPesquisarClick
  end
  object GroupBox2: TGroupBox [5]
    Left = 0
    Top = 112
    Width = 964
    Height = 439
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 
      'Recebimento - Para imprimir o recibo bot'#227'o direito no mouse sobr' +
      'e a parcela (Imprimir Recibo)'
    TabOrder = 4
    object DBGridRecParce: TcxGrid
      Left = 2
      Top = 16
      Width = 960
      Height = 421
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      object DBGridRecParceDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.DataSource = DsReceberBaixas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        object DBGridRecParceDBTableView1EMP_CODIGO: TcxGridDBColumn
          Caption = 'Emp.'
          DataBinding.FieldName = 'EMP_CODIGO'
          Width = 37
        end
        object DBGridRecParceDBTableView1FAT_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'FAT_CODIGO'
          Width = 59
        end
        object DBGridRecParceDBTableView1FPC_NUMER: TcxGridDBColumn
          Caption = '*'
          DataBinding.FieldName = 'FPC_NUMER'
          HeaderAlignmentHorz = taCenter
          Width = 35
        end
        object DBGridRecParceDBTableView1NF_NUM_NFE: TcxGridDBColumn
          Caption = 'NFe'
          DataBinding.FieldName = 'NF_NUM_NFE'
          Width = 80
        end
        object DBGridRecParceDBTableView1FPC_VENCTO: TcxGridDBColumn
          Caption = 'Vencimento'
          DataBinding.FieldName = 'FPC_VENCTO'
          Width = 79
        end
        object DBGridRecParceDBTableView1FRE_DATA_RECEBIMENTO: TcxGridDBColumn
          Caption = 'Recebimento'
          DataBinding.FieldName = 'FRE_DATA_RECEBIMENTO'
          Width = 89
        end
        object DBGridRecParceDBTableView1CLI_RAZAO: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'CLI_RAZAO'
        end
        object DBGridRecParceDBTableView1FRE_VALOR: TcxGridDBColumn
          DataBinding.FieldName = 'FRE_VALOR'
        end
        object DBGridRecParceDBTableView1FRE_DESCONTO: TcxGridDBColumn
          DataBinding.FieldName = 'FRE_DESCONTO'
        end
        object DBGridRecParceDBTableView1FRE_JUROS: TcxGridDBColumn
          DataBinding.FieldName = 'FRE_JUROS'
        end
        object DBGridRecParceDBTableView1FRE_MULTA: TcxGridDBColumn
          DataBinding.FieldName = 'FRE_MULTA'
        end
        object DBGridRecParceDBTableView1FRE_RECEBIDO: TcxGridDBColumn
          DataBinding.FieldName = 'FRE_RECEBIDO'
        end
        object DBGridRecParceDBTableView1FPG_DESCRICAO: TcxGridDBColumn
          Caption = 'Forma'
          DataBinding.FieldName = 'FPG_DESCRICAO'
          Width = 255
        end
        object DBGridRecParceDBTableView1BAN_APELIDO: TcxGridDBColumn
          DataBinding.FieldName = 'BAN_APELIDO'
        end
        object DBGridRecParceDBTableView1USU_NOME: TcxGridDBColumn
          DataBinding.FieldName = 'USU_NOME'
          Width = 146
        end
      end
      object DBGridRecParceLevel1: TcxGridLevel
        GridView = DBGridRecParceDBTableView1
      end
    end
  end
  object GroupBox3: TGroupBox [6]
    Left = 0
    Top = 551
    Width = 964
    Height = 51
    Align = alBottom
    Caption = 'Totais'
    Enabled = False
    TabOrder = 5
    object Label7: TLabel
      Left = 57
      Top = 19
      Width = 28
      Height = 14
      Caption = 'Valor:'
    end
    object Label9: TLabel
      Left = 229
      Top = 19
      Width = 49
      Height = 14
      Alignment = taRightJustify
      Caption = 'Desconto:'
    end
    object Label10: TLabel
      Left = 424
      Top = 19
      Width = 30
      Height = 14
      Alignment = taRightJustify
      Caption = 'Juros:'
    end
    object Label11: TLabel
      Left = 626
      Top = 19
      Width = 28
      Height = 14
      Alignment = taRightJustify
      Caption = 'Multa:'
    end
    object Label12: TLabel
      Left = 822
      Top = 19
      Width = 48
      Height = 14
      Alignment = taRightJustify
      Caption = 'Recebido:'
    end
    object CurTotalValor: TCurrencyEdit
      Left = 86
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      ZeroEmpty = False
    end
    object CurTotalDesconto: TCurrencyEdit
      Left = 278
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = False
    end
    object CurTotalJuros: TCurrencyEdit
      Left = 454
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      ZeroEmpty = False
    end
    object CurTotalMulta: TCurrencyEdit
      Left = 654
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      ZeroEmpty = False
    end
    object CurTotalPago: TCurrencyEdit
      Left = 870
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      ZeroEmpty = False
    end
  end
  object chkImpAgrupado: TCheckBox [7]
    Left = 859
    Top = 61
    Width = 97
    Height = 17
    Caption = 'Agrup. Forma'
    TabOrder = 6
  end
  inherited coCalcula: TACBrCalculadora
    CalcTop = 210
    CalcLeft = 558
    Left = 96
    Top = 200
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 160
    Top = 200
  end
  inherited DBConn: TSQLConnection
    Top = 201
  end
  inherited qAux: TSQLQuery
    Left = 274
    Top = 189
  end
  inherited qAux2: TSQLQuery
    Left = 338
    Top = 196
  end
  inherited qAux3: TSQLQuery
    Left = 402
    Top = 196
  end
  object CdsReceberBaixas: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.BAN_APELIDO,'#13#10'T3.FPG_DESCRICAO,'#13#10'T4.USU_NOME,'#13 +
      #10'T5.CLI_CODIGO,'#13#10'T6.CLI_RAZAO,'#13#10't5.FAT_CODIGO,'#13#10't5.FPC_NUMER,'#13#10't' +
      '5.FPC_VENCTO,'#13#10't8.nf_num_nfe'#13#10'FROM'#13#10'FAT_RECEBIMENTO T1'#13#10'JOIN BAN' +
      '0000 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO)'#13#10'JOIN FORMA_PAGAMENTO' +
      ' T3 ON (T3.FPG_REGISTRO = T1.FPG_REGISTRO)'#13#10'JOIN USUARIO T4 ON (' +
      'T4.USU_CODIGO = T1.USU_CODIGO)'#13#10'JOIN FAT_PC01 T5 ON (T5.FAT_REGI' +
      'STRO = T1.FAT_REGISTRO)'#13#10'JOIN CLI0000 T6 ON (T6.CLI_CODIGO = T5.' +
      'CLI_CODIGO)'#13#10'left join fat0000 t7 on(t7.fat_codigo = t5.fat_codi' +
      'go)'#13#10'left join nf0001 t8 on (t8.ped_codigo = t7.ped_codigo and t' +
      '8.nf_cancelada <> '#39'S'#39')'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.BAN_APELIDO,'#13#10'T3.FPG_DESCRICAO,'#13#10'T4.USU_NOME,'#13 +
      #10'T5.CLI_CODIGO,'#13#10'T6.CLI_RAZAO,'#13#10't5.FAT_CODIGO,'#13#10't5.FPC_NUMER,'#13#10't' +
      '5.FPC_VENCTO,'#13#10't8.nf_num_nfe'#13#10'FROM'#13#10'FAT_RECEBIMENTO T1'#13#10'JOIN BAN' +
      '0000 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO)'#13#10'JOIN FORMA_PAGAMENTO' +
      ' T3 ON (T3.FPG_REGISTRO = T1.FPG_REGISTRO)'#13#10'JOIN USUARIO T4 ON (' +
      'T4.USU_CODIGO = T1.USU_CODIGO)'#13#10'JOIN FAT_PC01 T5 ON (T5.FAT_REGI' +
      'STRO = T1.FAT_REGISTRO)'#13#10'JOIN CLI0000 T6 ON (T6.CLI_CODIGO = T5.' +
      'CLI_CODIGO)'#13#10'left join fat0000 t7 on(t7.fat_codigo = t5.fat_codi' +
      'go)'#13#10'left join nf0001 t8 on (t8.ped_codigo = t7.ped_codigo and t' +
      '8.nf_cancelada <> '#39'S'#39')'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 424
    object CdsReceberBaixasFRE_REGISTRO: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'FRE_REGISTRO'
      Required = True
    end
    object CdsReceberBaixasEMP_CODIGO: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsReceberBaixasFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
    end
    object CdsReceberBaixasFRE_DATA_RECEBIMENTO: TDateField
      DisplayLabel = 'Data Recebimento'
      FieldName = 'FRE_DATA_RECEBIMENTO'
    end
    object CdsReceberBaixasFRE_VALOR: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'FRE_VALOR'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsReceberBaixasFRE_DESCONTO: TFMTBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'FRE_DESCONTO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsReceberBaixasFRE_JUROS: TFMTBCDField
      DisplayLabel = 'Juros'
      FieldName = 'FRE_JUROS'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsReceberBaixasFRE_MULTA: TFMTBCDField
      DisplayLabel = 'Multa'
      FieldName = 'FRE_MULTA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsReceberBaixasFRE_RECEBIDO: TFMTBCDField
      DisplayLabel = 'Recebido'
      FieldName = 'FRE_RECEBIDO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsReceberBaixasBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object CdsReceberBaixasFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object CdsReceberBaixasUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CdsReceberBaixasBAN_APELIDO: TStringField
      DisplayLabel = 'Conta Banco'
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object CdsReceberBaixasFPG_DESCRICAO: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object CdsReceberBaixasUSU_NOME: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USU_NOME'
      Size = 40
    end
    object CdsReceberBaixasCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsReceberBaixasCLI_RAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object CdsReceberBaixasFAT_CODIGO: TStringField
      DisplayLabel = 'Fatura'
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object CdsReceberBaixasFPC_NUMER: TStringField
      DisplayLabel = 'N'#186' da Parcela'
      FieldName = 'FPC_NUMER'
      OnGetText = CdsReceberBaixasFPC_NUMERGetText
      Size = 2
    end
    object CdsReceberBaixasFPC_VENCTO: TSQLTimeStampField
      DisplayLabel = 'Data do Vencimento'
      FieldName = 'FPC_VENCTO'
    end
    object CdsReceberBaixasNF_NUM_NFE: TIntegerField
      DisplayLabel = 'N'#186' da Nota Fiscal'
      FieldName = 'NF_NUM_NFE'
    end
    object CdsReceberBaixasFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object CdsReceberBaixasCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
  end
  object DsReceberBaixas: TDataSource
    DataSet = CdsReceberBaixas
    Left = 416
    Top = 488
  end
  object frxReportReceber: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791670000000
    ReportOptions.LastChange = 41444.461989039350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReportReceberGetValue
    Left = 168
    Top = 293
    Datasets = <
      item
        DataSet = frxDBDatasetReceber
        DataSetName = 'frxDBDatasetReceber'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDatasetReceber
        DataSetName = 'frxDBDatasetReceber'
        RowCount = 0
        object frxDBDatasetReceberFPC_NUMER: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'FAT_CODIGO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_NUMER'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_NUMER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'FRE_DATA_RECEBIMENTO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_DATA_RECEBIMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDatasetReceber."CLI_CODIGO"] [frxDBDatasetReceber."CLI_RAZ' +
              'AO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'FRE_VALOR'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_VALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'FRE_DESCONTO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_DESCONTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'FRE_JUROS'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_JUROS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_MULTA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'FRE_RECEBIDO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_RECEBIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 937.323440000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'FPG_DESCRICAO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPG_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 817.717070000000000000
          Top = 0.220470000000006000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'BAN_APELIDO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."BAN_APELIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_VENCTO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VENCTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'EMP_CODIGO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."EMP_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'NF_NUM_NFE'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."NF_NUM_NFE"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 1046.929810000000000000
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(MasterData1,3)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_VALOR">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_DESCONTO">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_JUROS">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_MULTA">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_RECEBIDO">,MasterData1,3)]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Recebimentos do Contas '#224' Receber')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 56.692949999999990000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 56.692949999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 56.692949999999990000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 56.692949999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recebimento')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 56.692949999999990000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 56.692949999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 56.692949999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 56.692949999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Top = 56.692949999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recebido')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 56.692949999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Multa'
            '')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 937.323440000000000000
          Top = 56.472479999999990000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Forma de pag')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 816.378480000000000000
          Top = 56.692949999999990000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Conta Banco')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 56.692949999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emp.')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 56.692949999999990000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NFe')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetReceber: TfrxDBDataset
    UserName = 'frxDBDatasetReceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FRE_REGISTRO=FRE_REGISTRO'
      'EMP_CODIGO=EMP_CODIGO'
      'FAT_REGISTRO=FAT_REGISTRO'
      'FRE_DATA_RECEBIMENTO=FRE_DATA_RECEBIMENTO'
      'FRE_VALOR=FRE_VALOR'
      'FRE_DESCONTO=FRE_DESCONTO'
      'FRE_JUROS=FRE_JUROS'
      'FRE_MULTA=FRE_MULTA'
      'FRE_RECEBIDO=FRE_RECEBIDO'
      'BAN_CODIGO=BAN_CODIGO'
      'FPG_REGISTRO=FPG_REGISTRO'
      'USU_CODIGO=USU_CODIGO'
      'BAN_APELIDO=BAN_APELIDO'
      'FPG_DESCRICAO=FPG_DESCRICAO'
      'USU_NOME=USU_NOME'
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_RAZAO=CLI_RAZAO'
      'FAT_CODIGO=FAT_CODIGO'
      'FPC_NUMER=FPC_NUMER'
      'FPC_VENCTO=FPC_VENCTO'
      'NF_NUM_NFE=NF_NUM_NFE'
      'FPC_NPARCELAS=FPC_NPARCELAS'
      'CLI_CGC=CLI_CGC')
    DataSource = DsReceberBaixas
    BCDToCurrency = False
    Left = 168
    Top = 357
  end
  object frxODSExport1: TfrxODSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 0.000000000000000000
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Background = True
    Creator = 'FastReport'
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 64
    Top = 413
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 64
    Top = 349
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 64
    Top = 293
  end
  object PopupMenu1: TPopupMenu
    Left = 464
    Top = 200
    object ImprimirRecibo1: TMenuItem
      Caption = 'Imprimir Recibo'
      OnClick = ImprimirRecibo1Click
    end
  end
  object frxReportReceberAgrupado: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791670000000
    ReportOptions.LastChange = 41444.461989039350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReportReceberGetValue
    Left = 160
    Top = 421
    Datasets = <
      item
        DataSet = frxDBDatasetReceber
        DataSetName = 'frxDBDatasetReceber'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 200.315090000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDatasetReceber
        DataSetName = 'frxDBDatasetReceber'
        RowCount = 0
        object frxDBDatasetReceberFPC_NUMER: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'FAT_CODIGO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_NUMER'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_NUMER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'FRE_DATA_RECEBIMENTO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_DATA_RECEBIMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDatasetReceber."CLI_CODIGO"] [frxDBDatasetReceber."CLI_RAZ' +
              'AO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'FRE_VALOR'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_VALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'FRE_DESCONTO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_DESCONTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'FRE_JUROS'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_JUROS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_MULTA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'FRE_RECEBIDO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_RECEBIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 816.378480000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'FPG_DESCRICAO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPG_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          DataField = 'BAN_APELIDO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."BAN_APELIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'FPC_VENCTO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VENCTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'EMP_CODIGO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."EMP_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'NF_NUM_NFE'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."NF_NUM_NFE"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(MasterData1,2)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_VALOR">,MasterData1,2)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_DESCONTO">,MasterData1,2)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_JUROS">,MasterData1,2)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_MULTA">,MasterData1,2)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_RECEBIDO">,MasterData1,2)]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Recebimentos do Contas '#224' Receber')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 56.692950000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 56.692950000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Parc.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recebimento')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 56.692950000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recebido')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Multa'
            '')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 816.378480000000000000
          Top = 56.692950000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Forma de Rec.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Top = 56.692950000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Conta Banco')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emp.')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 56.692950000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NFe')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDatasetReceber."FPG_DESCRICAO"'
        KeepTogether = True
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Width = 389.291590000000000000
          Height = 15.118120000000000000
          DataField = 'FPG_DESCRICAO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPG_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_VALOR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_DESCONTO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_JUROS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo11: TfrxSysMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_MULTA">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo12: TfrxSysMemoView
          AllowVectorExport = True
          Left = 744.567410000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetReceber."FRE_RECEBIDO">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 888
    Top = 176
    object Relatrioderecebimentos1: TMenuItem
      Caption = 'Relat'#243'rio de recebimentos padrao'
      OnClick = Relatrioderecebimentos1Click
    end
    object Relatioderecebimentoscomcpfcnpj1: TMenuItem
      Caption = 'Relat'#243'rio de recebimentos com cpf/cnpj'
      OnClick = Relatioderecebimentoscomcpfcnpj1Click
    end
    object ReceberagrupadoporBanco1: TMenuItem
      Caption = 'Receber agrupado por Banco'
      OnClick = ReceberagrupadoporBanco1Click
    end
    object ReceberAgrupadoporCentrodeCusto1: TMenuItem
      Caption = 'Receber Agrupado por Centro de Custo'
      OnClick = ReceberAgrupadoporCentrodeCusto1Click
    end
    object ExportarparaCSV1: TMenuItem
      Caption = 'Exportar para CSV'
      OnClick = ExportarparaCSV1Click
    end
  end
  object frxRecebimentosCPFCNPJ: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791700000000
    ReportOptions.LastChange = 43656.391219479200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   quantidade:Integer;'
      '   totalValor,'
      '   totalDesconto,'
      '   totalJuros,'
      '   totalMulta,'
      '   totalRecebido,'
      
        '   totalPendente:real;                                          ' +
        '       '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '   //verifica se o item n'#227'o esta escluido pois nao faz parte do ' +
        'total'
      '   //if (<frxDBDatasetReceber."FPC_EXCLUSAO"> <> '#39'S'#39') then'
      '     // begin'
      '         quantidade := quantidade + 1;'
      
        '         totalValor := totalValor + <frxDBDatasetReceber."FRE_VA' +
        'LOR">;       '
      
        '         totalDesconto := totalDesconto + <frxDBDatasetReceber."' +
        'FRE_DESCONTO">;       '
      
        '         totalJuros := totalJuros + <frxDBDatasetReceber."FRE_JU' +
        'ROS">;       '
      
        '         totalMulta := totalMulta + <frxDBDatasetReceber."FRE_MU' +
        'LTA">;    '
      
        '         totalRecebido := totalRecebido + <frxDBDatasetReceber."' +
        'FRE_RECEBIDO">;       '
      
        '         //totalPendente := totalPendente + <frxDBDatasetReceber' +
        '."CCPendente">;                    '
      '     // end;                       '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   quantidade := 0;'
      '   totalValor := 0;            '
      '   totalDesconto := 0;'
      '   totalJuros := 0;'
      '   totalMulta := 0;'
      '   totalRecebido := 0;'
      '   totalPendente := 0;           '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'var CNPJ: String;'
      'begin '
      '       CNPJ := <frxDBDatasetReceber."CLI_CGC">;'
      '       case Length(CNPJ) of '
      
        '       11: frxCNPJ.Text := Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)+'#39'.'#39 +
        '+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);    '
      
        '       14: frxCNPJ.Text := Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,3)+'#39'.'#39 +
        '+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '       else'
      '       frxCNPJ.Text := CNPJ;                      '
      '       end; '
      'end;'
      '  '
      'procedure Memo3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                           '
      '         '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReportReceberGetValue
    Left = 304
    Top = 421
    Datasets = <
      item
        DataSet = frxDBDatasetReceber
        DataSetName = 'frxDBDatasetReceber'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 139.842610000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxDBDatasetReceber
        DataSetName = 'frxDBDatasetReceber'
        KeepHeader = True
        RowCount = 0
        object frxDBDatasetReceberFPC_VENCTO: TfrxMemoView
          AllowVectorExport = True
          Left = 108.622140000000000000
          Width = 56.692913390000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_VENCTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 246.275820000000000000
          Width = 318.849896960000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CLI_RAZAO"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 666.197280000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_VALOR"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 730.346940000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_JUROS"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 170.275820000000000000
          Width = 71.811028500000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF(<frxDBDatasetReceber."FRE_DATA_RECEBIMENTO"> = '#39'0'#39','#39#39' , <fr' +
              'xDBDatasetReceber."FRE_DATA_RECEBIMENTO"> )]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'EMP_CODIGO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."EMP_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxCNPJ: TfrxMemoView
          AllowVectorExport = True
          Left = 564.504330000000000000
          Width = 102.047273390000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."CLI_CGC"]')
          ParentFont = False
        end
        object frxDBDatasetReceberBAN_APELIDO: TfrxMemoView
          AllowVectorExport = True
          Left = 853.024120000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'BAN_APELIDO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetReceber."BAN_APELIDO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 942.441560000000000000
          Width = 102.701798500000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPG_DESCRICAO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 795.187733910000000000
          Width = 56.692908500000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FRE_RECEBIDO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 26.695652170000000000
          Width = 46.870105590000000000
          Height = 15.118120000000000000
          DataField = 'FAT_CODIGO'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 76.460887830000000000
          Width = 32.972455590000000000
          Height = 15.118120000000000000
          DataField = 'FPC_NUMER'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetReceber."FPC_NUMER"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 1046.929810000000000000
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 77.531728260000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[quantidade]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 666.197280000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalValor]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 795.187733910000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalRecebido]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 606.412237650000000000
          Width = 58.957850850000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 730.882352950000000000
          Width = 64.251968490000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de rec:')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 58.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 171.209266470000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Contas '#224' Receber')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 173.270144710000000000
          Top = 18.677180000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo3OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Filtro: [DataIni] a [DataFim]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 39.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 58.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 28.574830000000000000
          Top = 42.472480000000000000
          Width = 46.870105590000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 242.496290000000000000
          Top = 42.472480000000000000
          Width = 232.958027830000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 106.622140000000000000
          Top = 42.472480000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 666.197280000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 730.346940000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 170.275820000000000000
          Top = 42.472480000000000000
          Width = 71.811028500000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebimento')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Top = 42.472480000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emp.')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 564.504330000000000000
          Top = 42.472480000000000000
          Width = 102.047273390000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ/CPF')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 853.024120000000000000
          Top = 42.472480000000000000
          Width = 86.929153390000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Conta Banco')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 942.441560000000000000
          Top = 42.472480000000000000
          Width = 92.790388500000000000
          Height = 15.118112680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 795.187733910000000000
          Top = 42.472480000000000000
          Width = 56.692908500000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebido')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 76.460887830000000000
          Top = 42.472480000000000000
          Width = 25.413395590000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Parc.')
          ParentFont = False
        end
      end
    end
  end
  object frxReceberporBanco: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791700000000
    ReportOptions.LastChange = 43656.391380821800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   quantidade, quantidadeTotal:Integer;'
      '   totalValor,'
      '   totalDesconto,'
      '   totalJuros,'
      '   totalMulta,'
      '   totalRecebido,'
      
        '   totalPendente:real;                                          ' +
        '       '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '   //verifica se o item n'#227'o esta escluido pois nao faz parte do ' +
        'total'
      '   if (<frxDBReceberBanco."FPC_EXCLUSAO"> <> '#39'S'#39') then'
      '      begin'
      '         quantidade := quantidade + 1;'
      '         quantidadetotal := quantidadeTotal + 1;             '
      
        '         totalValor := totalValor + <frxDBReceberBanco."FPC_VLPA' +
        'RC">;           '
      
        '         totalDesconto := totalDesconto + <frxDBReceberBanco."FP' +
        'C_DESCTO">;       '
      
        '         totalJuros := totalJuros + <frxDBReceberBanco."FPC_JURO' +
        'S">;       '
      
        '         totalMulta := totalMulta + <frxDBReceberBanco."FPC_MULT' +
        'A">;    '
      
        '         totalRecebido := totalRecebido + <frxDBReceberBanco."FP' +
        'C_VLPAGO">;       '
      
        '         totalPendente := totalPendente + <frxDBReceberBanco."CC' +
        'Pendente">;                    '
      '      end;                       '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   quantidade := 0;'
      
        '   quantidadeTotal := 0;                                        ' +
        '         '
      '   totalValor := 0;            '
      '   totalDesconto := 0;'
      '   totalJuros := 0;'
      '   totalMulta := 0;'
      '   totalRecebido := 0;'
      '   totalPendente := 0;              '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'var CNPJ: String;'
      'begin '
      '       CNPJ := <frxDBReceberBanco."CLI_CGC">;'
      '       case Length(CNPJ) of '
      
        '       11: frxCNPJ.Text := Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)+'#39'.'#39 +
        '+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);    '
      
        '       14: frxCNPJ.Text := Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,3)+'#39'.'#39 +
        '+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '       else'
      '       frxCNPJ.Text := CNPJ;                      '
      '       end; '
      'end;'
      '  '
      'procedure Memo34OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  quantidade := 0;      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReceberporBancoGetValue
    Left = 768
    Top = 229
    Datasets = <
      item
        DataSet = frxDBReceberBanco
        DataSetName = 'frxDBReceberBanco'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 181.417440000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxDBReceberBanco
        DataSetName = 'frxDBReceberBanco'
        KeepHeader = True
        RowCount = 0
        object frxDBDatasetReceberFPC_VENCTO: TfrxMemoView
          AllowVectorExport = True
          Left = 103.692950000000000000
          Width = 64.251973390000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBReceberBanco."FPC_VENCTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 234.708666300000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReceberBanco."CLI_RAZAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 45.354335590000000000
          Height = 15.118120000000000000
          DataField = 'FAT_CODIGO'
          DataSet = frxDBReceberBanco
          DataSetName = 'frxDBReceberBanco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReceberBanco."FAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 73.252022210000000000
          Width = 26.456685590000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBReceberBanco."FPC_NUMER"]/[frxDBReceberBanco."FPC_NPARCELA' +
              'S"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 169.653680000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBReceberBanco
          DataSetName = 'frxDBReceberBanco'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBReceberBanco."FRE_DATA_RECEBIMENTO"> = '#39'0'#39','#39#39' , <frxD' +
              'BReceberBanco."FRE_DATA_RECEBIMENTO"> )]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 565.134200000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBReceberBanco."FPC_VLPARC"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 631.945270000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataField = 'FRE_JUROS'
          DataSet = frxDBReceberBanco
          DataSetName = 'frxDBReceberBanco'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBReceberBanco."FRE_JUROS"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 699.378480000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBReceberBanco."FPC_VLPAGO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 769.969080000000000000
          Width = 86.929148500000000000
          Height = 15.118120000000000000
          DataField = 'BAN_APELIDO'
          DataSet = frxDBReceberBanco
          DataSetName = 'frxDBReceberBanco'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBReceberBanco."BAN_APELIDO"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReceberBanco."EMP_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxCNPJ: TfrxMemoView
          AllowVectorExport = True
          Left = 457.000310000000000000
          Width = 102.047273390000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBReceberBanco."CLI_CGC"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 921.205320000000000000
          Width = 124.724448500000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReceberBanco."FPG_DESCRICAO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 58.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Contas '#224' Receber')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 18.677180000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 39.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 42.472480000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 58.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 74.488250000000000000
          Top = 42.472480000000000000
          Width = 22.677155590000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Parc.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 167.653680000000000000
          Top = 42.472480000000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recebimento')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 227.244280000000000000
          Top = 42.472480000000000000
          Width = 230.551330000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 103.133890000000000000
          Top = 42.472480000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 565.134200000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 631.945270000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 699.378480000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebido')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 769.969080000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Conta Banco')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Top = 42.472480000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emp.')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 460.779840000000000000
          Top = 42.472480000000000000
          Width = 102.047273390000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ/CPF')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 922.205320000000000000
          Top = 42.472480000000000000
          Width = 117.165388500000000000
          Height = 15.118112680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 139.842610000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBReceberBanco."BAN_APELIDO"'
        object frxDBDatasetReceberBAN_APELIDO: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 3.779530000000000000
          Width = 302.362400000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Banco: [IIF( <frxDBReceberBanco."BAN_APELIDO">='#39#39','#39'SEM BANCO'#39',<f' +
              'rxDBReceberBanco."BAN_APELIDO">)]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 28.913420000000000000
        Top = 219.212740000000000000
        Width = 1046.929810000000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 28.118120000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Top = 10.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 10.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnAfterPrint = 'Memo34OnAfterPrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[quantidade]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 6.236240000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBReceberBanco."FPC_VLPARC">,MasterData1)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 633.740570000000000000
          Top = 6.236240000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBReceberBanco."FPC_DESCTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 701.173780000000000000
          Top = 6.236240000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBReceberBanco."FPC_VLPAGO">,MasterData1)]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 6.236240000000000000
          Width = 302.362400000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            ' [frxDBReceberBanco."BAN_APELIDO"] Total :')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 272.126160000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnAfterPrint = 'Memo34OnAfterPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[quantidadeTotal]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 567.913730000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalValor]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 634.724800000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalDesconto]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 702.158010000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalRecebido]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object qReceberBanco: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '  SELECT '
      '      T1.FRE_DATA_RECEBIMENTO, '
      '      T1.FRE_VALOR, '
      '      T1.FRE_JUROS, '
      '      T1.FRE_RECEBIDO, '
      '       T2.ban_apelido, '
      '       T8.EMP_CODIGO, '
      '       T8.NF_NUM_NFE, '
      '       T5.FAT_CODIGO, '
      '       T5.FPC_NUMER, '
      '       T5.FPC_NPARCELAS, '
      '       T5.FPC_STATUS, '
      '       T5.FPC_DTEMIS, '
      '       COALESCE(T6.CLI_CGC, '#39#39') AS CLI_CGC, '
      '       T6.CLI_RAZAO, '
      '       T5.FPC_VENCTO, '
      '       T5.FPC_VLPARC, '
      '       T5.FPC_DESCTO, '
      '       T5.FPC_VLPAGO, '
      '       T5.FPC_EXCLUSAO, '
      '       T5.FPC_JUROS, '
      '       T5.FPC_MULTA, '
      '        T3.FPG_DESCRICAO '
      ' FROM FAT_RECEBIMENTO T1 '
      '  JOIN BAN0000 T2 ON'#9'(T2.BAN_CODIGO = T1.BAN_CODIGO) '
      
        '  JOIN FORMA_PAGAMENTO T3 ON'#9'(T3.FPG_REGISTRO = T1.FPG_REGISTRO)' +
        ' '
      '  JOIN USUARIO T4 ON'#9'(T4.USU_CODIGO = T1.USU_CODIGO) '
      
        '  JOIN FAT_PC01 T5 ON'#9'(T5.FAT_REGISTRO = T1.FAT_REGISTRO'#9'AND t5.' +
        'EMP_CODIGO = t1.EMP_CODIGO) '
      
        '  JOIN fat0000 t7 ON'#9'(t7.fat_codigo = t5.fat_codigo'#9#9'AND t5.EMP_' +
        'CODIGO = t7.emp_codigo) '
      '  JOIN CLI0000 T6 ON'#9'(T6.CLI_CODIGO = T7.CLI_CODIGO) '
      
        '  LEFT JOIN nf0001 t8 ON'#9'(t8.nf_notanumber = t7.fat_codigo'#9#9'AND ' +
        't8.EMP_CODIGO = t7.emp_codigo'#9#9'AND t8.nf_cancelada <> '#39'S'#39#9#9'AND t' +
        '8.nf_status_nfe <> '#39'C'#39#9#9'AND t8.ope_semvlcom <> '#39#39#9#9'AND t8.ope_se' +
        'mvlcom IS NOT NULL) ')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 296
    Top = 234
  end
  object DSPReceberBanco: TDataSetProvider
    DataSet = qReceberBanco
    Options = [poFetchDetailsOnDemand, poAutoRefresh, poAllowCommandText]
    Left = 384
    Top = 234
  end
  object CdsReceberBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPReceberBanco'
    OnCalcFields = CdsReceberBancoCalcFields
    Left = 480
    Top = 232
    object CdsReceberBancoCCPendente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CCPendente'
      Calculated = True
    end
    object CdsReceberBancoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object CdsReceberBancoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsReceberBancoNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object CdsReceberBancoFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 15
    end
    object CdsReceberBancoFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      OnGetText = CdsReceberBancoFPC_NUMERGetText
      Size = 2
    end
    object CdsReceberBancoFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object CdsReceberBancoFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object CdsReceberBancoCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object CdsReceberBancoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object CdsReceberBancoFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object CdsReceberBancoFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 18
      Size = 5
    end
    object CdsReceberBancoFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 18
      Size = 5
    end
    object CdsReceberBancoFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 18
      Size = 5
    end
    object CdsReceberBancoFPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      Size = 1
    end
    object CdsReceberBancoFPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      Precision = 18
      Size = 5
    end
    object CdsReceberBancoFPC_MULTA: TFMTBCDField
      FieldName = 'FPC_MULTA'
      Precision = 18
      Size = 5
    end
    object CdsReceberBancoFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object CdsReceberBancoFRE_DATA_RECEBIMENTO: TDateField
      FieldName = 'FRE_DATA_RECEBIMENTO'
    end
    object CdsReceberBancoFRE_VALOR: TFMTBCDField
      FieldName = 'FRE_VALOR'
      Precision = 18
      Size = 5
    end
    object CdsReceberBancoFRE_JUROS: TFMTBCDField
      FieldName = 'FRE_JUROS'
      Precision = 18
      Size = 5
    end
    object CdsReceberBancoFRE_RECEBIDO: TFMTBCDField
      FieldName = 'FRE_RECEBIDO'
      Precision = 18
      Size = 5
    end
    object CdsReceberBancoFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
  end
  object DsReceberBanco: TDataSource
    DataSet = CdsReceberBanco
    Left = 568
    Top = 232
  end
  object frxDBReceberBanco: TfrxDBDataset
    UserName = 'frxDBReceberBanco'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CCPendente=CCPendente'
      'BAN_APELIDO=BAN_APELIDO'
      'EMP_CODIGO=EMP_CODIGO'
      'NF_NUM_NFE=NF_NUM_NFE'
      'FAT_CODIGO=FAT_CODIGO'
      'FPC_NUMER=FPC_NUMER'
      'FPC_STATUS=FPC_STATUS'
      'FPC_DTEMIS=FPC_DTEMIS'
      'CLI_CGC=CLI_CGC'
      'CLI_RAZAO=CLI_RAZAO'
      'FPC_VENCTO=FPC_VENCTO'
      'FPC_VLPARC=FPC_VLPARC'
      'FPC_DESCTO=FPC_DESCTO'
      'FPC_VLPAGO=FPC_VLPAGO'
      'FPC_EXCLUSAO=FPC_EXCLUSAO'
      'FPC_JUROS=FPC_JUROS'
      'FPC_MULTA=FPC_MULTA'
      'FPG_DESCRICAO=FPG_DESCRICAO'
      'FRE_DATA_RECEBIMENTO=FRE_DATA_RECEBIMENTO'
      'FRE_VALOR=FRE_VALOR'
      'FRE_JUROS=FRE_JUROS'
      'FRE_RECEBIDO=FRE_RECEBIDO'
      'FPC_NPARCELAS=FPC_NPARCELAS')
    DataSource = DsReceberBanco
    BCDToCurrency = False
    Left = 664
    Top = 229
  end
  object qReceberCentroCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '  SELECT '
      '       PCX.PCX_DESCRI, '
      '       T1.FRE_DATA_RECEBIMENTO, '
      '       T1.FRE_VALOR, '
      '       T1.FRE_JUROS, '
      '       T1.FRE_RECEBIDO, '
      '       T2.ban_apelido, '
      '       T1.EMP_CODIGO, '
      '       T8.NF_NUM_NFE, '
      '       T5.FAT_CODIGO, '
      '       T5.FPC_NUMER, '
      '       T5.FPC_NPARCELAS, '
      '       T5.FPC_STATUS, '
      '       T5.FPC_DTEMIS, '
      '       COALESCE(T6.CLI_CGC, '#39#39') AS CLI_CGC, '
      '       T6.CLI_RAZAO, '
      '       T5.FPC_VENCTO, '
      '       T5.FPC_VLPARC, '
      '       T5.FPC_DESCTO, '
      '       T5.FPC_VLPAGO, '
      '       T5.FPC_EXCLUSAO, '
      '       T5.FPC_JUROS, '
      '       T5.FPC_MULTA, '
      '       T3.FPG_DESCRICAO '
      ' FROM FAT_RECEBIMENTO T1 '
      '  JOIN BAN0000 T2 ON'#9'(T2.BAN_CODIGO = T1.BAN_CODIGO) '
      
        '  JOIN FORMA_PAGAMENTO T3 ON'#9'(T3.FPG_REGISTRO = T1.FPG_REGISTRO)' +
        ' '
      '  JOIN USUARIO T4 ON'#9'(T4.USU_CODIGO = T1.USU_CODIGO) '
      
        '  JOIN FAT_PC01 T5 ON'#9'(T5.FAT_REGISTRO = T1.FAT_REGISTRO'#9'AND t5.' +
        'EMP_CODIGO = t1.EMP_CODIGO) '
      
        '  LEFT JOIN PCX0000 PCX ON'#9'(PCX.PCX_CODIGO = T5.PCX_CODIGO'#9'AND P' +
        'CX.EMP_CODIGO = T5.EMP_CODIGO) '
      
        '  JOIN fat0000 t7 ON'#9'(t7.fat_codigo = t5.fat_codigo'#9#9'AND t5.EMP_' +
        'CODIGO = t7.emp_codigo) '
      '  JOIN CLI0000 T6 ON'#9'(T6.CLI_CODIGO = T7.CLI_CODIGO) '
      
        '  LEFT JOIN nf0001 t8 ON'#9'(t8.nf_notanumber = t7.fat_codigo'#9#9'AND ' +
        't8.EMP_CODIGO = t7.emp_codigo'#9#9'AND t8.nf_cancelada <> '#39'S'#39#9#9'AND t' +
        '8.nf_status_nfe <> '#39'C'#39#9#9'AND t8.ope_semvlcom <> '#39#39#9#9'AND t8.ope_se' +
        'mvlcom IS NOT NULL) '
      
        ' where T1.FRE_DATA_RECEBIMENTO BETWEEN '#39'06/05/2023'#39' AND '#39'07/05/2' +
        '023'#39
      ' and T1.EMP_CODIGO = '#39'003'#39
      ' ORDER BY PCX.PCX_DESCRI, T1.FRE_DATA_RECEBIMENTO DESC ')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 296
    Top = 290
  end
  object dspReceberCentroCusto: TDataSetProvider
    DataSet = qReceberCentroCusto
    Options = [poFetchDetailsOnDemand, poAutoRefresh, poAllowCommandText]
    Left = 392
    Top = 306
  end
  object cdsReceberCentroCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReceberCentroCusto'
    OnCalcFields = cdsReceberCentroCustoCalcFields
    Left = 488
    Top = 328
    object cdsReceberCentroCustoCCPendente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CCPendente'
      Calculated = True
    end
    object cdsReceberCentroCustoPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object cdsReceberCentroCustoFRE_DATA_RECEBIMENTO: TDateField
      FieldName = 'FRE_DATA_RECEBIMENTO'
    end
    object cdsReceberCentroCustoFRE_VALOR: TFMTBCDField
      FieldName = 'FRE_VALOR'
      Precision = 18
      Size = 5
    end
    object cdsReceberCentroCustoFRE_JUROS: TFMTBCDField
      FieldName = 'FRE_JUROS'
      Precision = 18
      Size = 5
    end
    object cdsReceberCentroCustoFRE_RECEBIDO: TFMTBCDField
      FieldName = 'FRE_RECEBIDO'
      Precision = 18
      Size = 5
    end
    object cdsReceberCentroCustoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object cdsReceberCentroCustoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsReceberCentroCustoNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object cdsReceberCentroCustoFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 15
    end
    object cdsReceberCentroCustoFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object cdsReceberCentroCustoFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object cdsReceberCentroCustoFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object cdsReceberCentroCustoFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object cdsReceberCentroCustoCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object cdsReceberCentroCustoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object cdsReceberCentroCustoFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object cdsReceberCentroCustoFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 18
      Size = 5
    end
    object cdsReceberCentroCustoFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 18
      Size = 5
    end
    object cdsReceberCentroCustoFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 18
      Size = 5
    end
    object cdsReceberCentroCustoFPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      Size = 1
    end
    object cdsReceberCentroCustoFPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      Precision = 18
      Size = 5
    end
    object cdsReceberCentroCustoFPC_MULTA: TFMTBCDField
      FieldName = 'FPC_MULTA'
      Precision = 18
      Size = 5
    end
    object cdsReceberCentroCustoFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
  end
  object dsReceberCentroCusto: TDataSource
    DataSet = cdsReceberCentroCusto
    Left = 576
    Top = 352
  end
  object frxDBReceberCentroCusto: TfrxDBDataset
    UserName = 'frxDBReceberCentroCusto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CCPendente=CCPendente'
      'PCX_DESCRI=PCX_DESCRI'
      'FRE_DATA_RECEBIMENTO=FRE_DATA_RECEBIMENTO'
      'FRE_VALOR=FRE_VALOR'
      'FRE_JUROS=FRE_JUROS'
      'FRE_RECEBIDO=FRE_RECEBIDO'
      'BAN_APELIDO=BAN_APELIDO'
      'EMP_CODIGO=EMP_CODIGO'
      'NF_NUM_NFE=NF_NUM_NFE'
      'FAT_CODIGO=FAT_CODIGO'
      'FPC_NUMER=FPC_NUMER'
      'FPC_NPARCELAS=FPC_NPARCELAS'
      'FPC_STATUS=FPC_STATUS'
      'FPC_DTEMIS=FPC_DTEMIS'
      'CLI_CGC=CLI_CGC'
      'CLI_RAZAO=CLI_RAZAO'
      'FPC_VENCTO=FPC_VENCTO'
      'FPC_VLPARC=FPC_VLPARC'
      'FPC_DESCTO=FPC_DESCTO'
      'FPC_VLPAGO=FPC_VLPAGO'
      'FPC_EXCLUSAO=FPC_EXCLUSAO'
      'FPC_JUROS=FPC_JUROS'
      'FPC_MULTA=FPC_MULTA'
      'FPG_DESCRICAO=FPG_DESCRICAO')
    DataSource = dsReceberCentroCusto
    BCDToCurrency = False
    Left = 664
    Top = 333
  end
  object frxReceberCentroCusto: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791700000000
    ReportOptions.LastChange = 45112.559586875000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   quantidade, quantidadeTotal:Integer;'
      '   totalValor,'
      '   totalDesconto,'
      '   totalJuros,'
      '   totalMulta,'
      '   totalRecebido,'
      
        '   totalPendente:real;                                          ' +
        '       '
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '   //verifica se o item n'#227'o esta exclu'#237'do pois nao faz parte do ' +
        'total'
      '   if (<frxDBReceberCentroCusto."FPC_EXCLUSAO"> <> '#39'S'#39') then'
      '      begin'
      '         quantidade := quantidade + 1;'
      '         quantidadetotal := quantidadeTotal + 1;             '
      
        '         totalValor := totalValor + <frxDBReceberCentroCusto."FP' +
        'C_VLPARC">;           '
      
        '         totalDesconto := totalDesconto + <frxDBReceberCentroCus' +
        'to."FPC_DESCTO">;       '
      
        '         totalJuros := totalJuros + <frxDBReceberCentroCusto."FP' +
        'C_JUROS">;       '
      
        '         totalMulta := totalMulta + <frxDBReceberCentroCusto."FP' +
        'C_MULTA">;    '
      
        '         totalRecebido := totalRecebido + <frxDBReceberCentroCus' +
        'to."FPC_VLPAGO">;       '
      
        '         totalPendente := totalPendente + <frxDBReceberCentroCus' +
        'to."CCPendente">;                    '
      '      end;                       '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   quantidade := 0;'
      
        '   quantidadeTotal := 0;                                        ' +
        '         '
      '   totalValor := 0;            '
      '   totalDesconto := 0;'
      '   totalJuros := 0;'
      '   totalMulta := 0;'
      '   totalRecebido := 0;'
      '   totalPendente := 0;              '
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'var CNPJ: String;'
      'begin '
      '       CNPJ := <frxDBReceberCentroCusto."CLI_CGC">;'
      '       case Length(CNPJ) of '
      
        '       11: frxCNPJ.Text := Copy(CNPJ,1,3)+'#39'.'#39'+Copy(CNPJ,4,3)+'#39'.'#39 +
        '+Copy(CNPJ,7,3)+'#39'-'#39'+Copy(CNPJ,9,2);    '
      
        '       14: frxCNPJ.Text := Copy(CNPJ,1,2)+'#39'.'#39'+Copy(CNPJ,3,3)+'#39'.'#39 +
        '+Copy(CNPJ,6,3)+'#39'/'#39'+Copy(CNPJ,9,4)+'#39'-'#39'+Copy(CNPJ,13,2);'
      '       else'
      '       frxCNPJ.Text := CNPJ;                      '
      '       end; '
      'end;'
      '  '
      'procedure Memo34OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  quantidade := 0;      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReceberporBancoGetValue
    Left = 752
    Top = 317
    Datasets = <
      item
        DataSet = frxDBReceberCentroCusto
        DataSetName = 'frxDBReceberCentroCusto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 181.417440000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxDBReceberCentroCusto
        DataSetName = 'frxDBReceberCentroCusto'
        KeepHeader = True
        RowCount = 0
        object frxDBDatasetReceberFPC_VENCTO: TfrxMemoView
          AllowVectorExport = True
          Left = 103.692950000000000000
          Width = 64.251973390000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBReceberCentroCusto."FPC_VENCTO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 234.708666300000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReceberCentroCusto."CLI_RAZAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 45.354335590000000000
          Height = 15.118120000000000000
          DataField = 'FAT_CODIGO'
          DataSet = frxDBReceberCentroCusto
          DataSetName = 'frxDBReceberCentroCusto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReceberCentroCusto."FAT_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 73.252022210000000000
          Width = 26.456685590000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBReceberCentroCusto."FPC_NUMER"]/[frxDBReceberCentroCusto."' +
              'FPC_NPARCELAS"]')
          ParentFont = False
          WordWrap = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 169.653680000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBReceberCentroCusto
          DataSetName = 'frxDBReceberCentroCusto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<frxDBReceberCentroCusto."FRE_DATA_RECEBIMENTO"> = '#39'0'#39','#39#39' ,' +
              ' <frxDBReceberCentroCusto."FRE_DATA_RECEBIMENTO"> )]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 565.134200000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBReceberCentroCusto."FPC_VLPARC"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 631.945270000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DataSet = frxDBReceberCentroCusto
          DataSetName = 'frxDBReceberCentroCusto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBReceberCentroCusto."FRE_JUROS"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 699.378480000000000000
          Width = 90.708678500000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBReceberCentroCusto."FPC_VLPAGO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 793.969080000000000000
          Width = 86.929148500000000000
          Height = 15.118120000000000000
          DataSet = frxDBReceberCentroCusto
          DataSetName = 'frxDBReceberCentroCusto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBReceberCentroCusto."BAN_APELIDO"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReceberCentroCusto."EMP_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxCNPJ: TfrxMemoView
          AllowVectorExport = True
          Left = 457.000310000000000000
          Width = 102.047273390000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo44OnBeforePrint'
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBReceberCentroCusto."CLI_CGC"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 921.205320000000000000
          Width = 124.724448500000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBReceberCentroCusto."FPG_DESCRICAO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 58.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Contas '#224' Receber por Centro de Custo')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 18.677180000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 39.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 42.472480000000000000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 58.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 74.488250000000000000
          Top = 42.472480000000000000
          Width = 22.677155590000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Parc.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 167.653680000000000000
          Top = 42.472480000000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Recebimento')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 227.244280000000000000
          Top = 42.472480000000000000
          Width = 230.551330000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 103.133890000000000000
          Top = 42.472480000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 565.134200000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 631.945270000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 699.378480000000000000
          Top = 42.472480000000000000
          Width = 90.708678500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Recebido')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 793.969080000000000000
          Top = 42.472480000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Conta Banco')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Top = 42.472480000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emp.')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 460.779840000000000000
          Top = 42.472480000000000000
          Width = 102.047273390000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ/CPF')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 922.205320000000000000
          Top = 42.472480000000000000
          Width = 117.165388500000000000
          Height = 15.118112680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma de pagamento')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 139.842610000000000000
        Width = 1046.929810000000000000
        Condition = '<frxDBReceberCentroCusto."PCX_DESCRI">'
        object frxDBDatasetReceberBAN_APELIDO: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 3.779530000000000000
          Width = 302.362400000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Centro de Custo: [IIF( <frxDBReceberCentroCusto."PCX_DESCRI">='#39#39 +
              ','#39'SEM CENTRO DE CUSTO'#39',<frxDBReceberCentroCusto."PCX_DESCRI">)]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 28.913420000000000000
        Top = 219.212740000000000000
        Width = 1046.929810000000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 28.118120000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Top = 10.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 10.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnAfterPrint = 'Memo34OnAfterPrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[quantidade]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 6.236240000000000000
          Width = 94.488208500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBReceberCentroCusto."FPC_VLPARC">,MasterData1)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 633.740570000000000000
          Top = 6.236240000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBReceberCentroCusto."FPC_DESCTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 701.173780000000000000
          Top = 6.236240000000000000
          Width = 90.708678500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBReceberCentroCusto."FPC_VLPAGO">,MasterData1)]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 6.236240000000000000
          Width = 291.023810000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetReceber
          DataSetName = 'frxDBDatasetReceber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              ' [IIF( <frxDBReceberCentroCusto."PCX_DESCRI">='#39#39','#39'SEM CENTRO DE ' +
              'CUSTO'#39',<frxDBReceberCentroCusto."PCX_DESCRI">)]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 272.126160000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnAfterPrint = 'Memo34OnAfterPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[quantidadeTotal]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 537.677490000000000000
          Width = 94.488208500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalValor]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 634.724800000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalDesconto]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 702.158010000000000000
          Width = 90.708678500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalRecebido]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
end
