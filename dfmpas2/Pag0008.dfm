inherited FormContasPagarBaixas: TFormContasPagarBaixas
  Left = 750
  Top = 234
  Caption = 'Pagamentos Efetuados do Contas '#224' Pagar'
  ClientHeight = 602
  ClientWidth = 964
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  Position = poDesktopCenter
  ExplicitWidth = 980
  ExplicitHeight = 641
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 857
    Height = 97
    Caption = 'Pesquisa'
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 25
      Width = 34
      Height = 14
      Caption = 'Fatura:'
    end
    object Label2: TLabel
      Left = 134
      Top = 25
      Width = 56
      Height = 14
      Caption = 'Pagamento:'
    end
    object Label3: TLabel
      Left = 288
      Top = 25
      Width = 17
      Height = 14
      Caption = 'At'#233
    end
    object Label4: TLabel
      Left = 414
      Top = 25
      Width = 59
      Height = 14
      Caption = 'Fornecedor:'
    end
    object Label5: TLabel
      Left = 13
      Top = 56
      Width = 33
      Height = 14
      Caption = 'Forma:'
    end
    object Label6: TLabel
      Left = 409
      Top = 57
      Width = 65
      Height = 14
      Caption = 'Conta Banco:'
    end
    object EdFatura: TEdit
      Left = 48
      Top = 21
      Width = 73
      Height = 22
      MaxLength = 5
      TabOrder = 0
      OnExit = EdFaturaExit
      OnKeyPress = EdFaturaKeyPress
    end
    object RxDataInicial: TDateEdit
      Left = 196
      Top = 20
      Width = 88
      Height = 22
      ButtonWidth = 20
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 1
      OnChange = RxDataInicialChange
    end
    object RxDataFinal: TDateEdit
      Left = 313
      Top = 20
      Width = 89
      Height = 22
      ButtonWidth = 20
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 2
      OnChange = RxDataInicialChange
    end
    object CbFornecedor: TComboBoxRw
      Left = 520
      Top = 19
      Width = 305
      Height = 22
      TabOrder = 4
      OnExit = CbFornecedorExit
      OnChange = CbFornecedorChange
      CharCase = ecUpperCase
      LookupSelect = 'FOR_RAZAO'
      LookupOrderBy = 'FOR_RAZAO'
      LookupTable = 'FOR0000'
      OnButtonClick = CbFornecedorButtonClick
      OnSelect = CbFornecedorSelect
      GridAutoSize = False
      LookupSource = CbFornecedor.InternalSource
      LookupKeyField = 'FOR_CODIGO'
      ShowButton = True
      LookupTableShare = 'FORNECEDORES'
      AutoF8WinTitulo = 'Fornecedores'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
      Tabela = 'FOR0000'
      CamposCarregar = 'FOR_RAZAO'
      CamposRetornar = 'FOR_CODIGO'
      CamposOrdernar = 'FOR_RAZAO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'FORNECEDORES'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object EdFornecedorCodigo: TEdit
      Left = 476
      Top = 19
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 3
      OnExit = EdFornecedorCodigoExit
    end
    object EdFormaCodigo: TEdit
      Left = 48
      Top = 53
      Width = 39
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 5
      OnExit = EdFormaCodigoExit
    end
    object CbForma: TComboBoxRw
      Left = 88
      Top = 53
      Width = 172
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
      AutoF8WinTitulo = 'Formas de Pagamneto'
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
      Left = 476
      Top = 51
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 4
      TabOrder = 8
      OnExit = EdContaBancoCodigoExit
    end
    object CbContaBanco: TComboBoxRw
      Left = 520
      Top = 51
      Width = 305
      Height = 22
      TabOrder = 9
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
      Left = 313
      Top = 56
      Width = 89
      Height = 17
      Caption = 'Multiempresa'
      TabOrder = 7
    end
  end
  object Bit_Cancelar: TBitBtn [1]
    Left = 858
    Top = 5
    Width = 100
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    Visible = False
    OnClick = Bit_CancelarClick
  end
  object BitBtn2: TBitBtn [2]
    Left = 858
    Top = 31
    Width = 100
    Height = 25
    Hint = 'Baixar'
    Caption = '&Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
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
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BitBtn2Click
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
    TabOrder = 4
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
      'Pagamentos - Para imprimir o recibo bot'#227'o direito no mouse sobre' +
      ' a parcela (Imprimir Recibo)'
    TabOrder = 5
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
        PopupMenu = PopupMenu1
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
        DataController.DataSource = DsPagarBaixas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        object DBGridRecParceDBTableView1EMP_CODIGO: TcxGridDBColumn
          Caption = 'Emp'
          DataBinding.FieldName = 'EMP_CODIGO'
          Width = 29
        end
        object DBGridRecParceDBTableView1PAG_CODIGO: TcxGridDBColumn
          Caption = 'Fatura'
          DataBinding.FieldName = 'PAG_CODIGO'
          Width = 44
        end
        object DBGridRecParceDBTableView1PPC_NUMER: TcxGridDBColumn
          Caption = '*'
          DataBinding.FieldName = 'PPC_NUMER'
          HeaderAlignmentHorz = taCenter
          Width = 34
        end
        object DBGridRecParceDBTableView1PAG_DATA_PAGAMENTO: TcxGridDBColumn
          Caption = 'Pagamento'
          DataBinding.FieldName = 'PAG_DATA_PAGAMENTO'
          Width = 70
        end
        object DBGridRecParceDBTableView1FOR_CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'FOR_CODIGO'
          Width = 42
        end
        object DBGridRecParceDBTableView1FOR_RAZAO: TcxGridDBColumn
          Caption = 'Fornecedor'
          DataBinding.FieldName = 'FOR_RAZAO'
        end
        object DBGridRecParceDBTableView1PAG_VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'PAG_VALOR'
        end
        object DBGridRecParceDBTableView1PAG_DESCONTO: TcxGridDBColumn
          Caption = 'Desconto'
          DataBinding.FieldName = 'PAG_DESCONTO'
        end
        object DBGridRecParceDBTableView1PAG_JUROS: TcxGridDBColumn
          Caption = 'Juros'
          DataBinding.FieldName = 'PAG_JUROS'
        end
        object DBGridRecParceDBTableView1PAG_MULTA: TcxGridDBColumn
          Caption = 'Multa'
          DataBinding.FieldName = 'PAG_MULTA'
        end
        object DBGridRecParceDBTableView1PAG_PAGO: TcxGridDBColumn
          Caption = 'Pago'
          DataBinding.FieldName = 'PAG_PAGO'
        end
        object DBGridRecParceDBTableView1FPG_DESCRICAO: TcxGridDBColumn
          Caption = 'Forma'
          DataBinding.FieldName = 'FPG_DESCRICAO'
          Width = 196
        end
        object DBGridRecParceDBTableView1BAN_APELIDO: TcxGridDBColumn
          Caption = 'Conta Banco'
          DataBinding.FieldName = 'BAN_APELIDO'
        end
        object DBGridRecParceDBTableView1USU_NOME: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USU_NOME'
          Width = 110
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
    TabOrder = 6
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
      Left = 843
      Top = 19
      Width = 27
      Height = 14
      Alignment = taRightJustify
      Caption = 'Pago:'
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
    TabOrder = 7
  end
  inherited coCalcula: TACBrCalculadora
    Top = 96
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 136
    Top = 96
  end
  object CdsPagarBaixas: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.BAN_APELIDO,'#13#10'T3.FPG_DESCRICAO,'#13#10'T4.USU_NOME,'#13 +
      #10'T5.FOR_CODIGO,'#13#10'T6.FOR_razao,'#13#10't5.PAG_CODIGO,'#13#10't5.PPC_NUMER,'#13#10't' +
      '5.PPC_VENCTO'#13#10'FROM'#13#10'PAG_PAGAMENTO T1'#13#10'JOIN BAN0000 T2 ON (T2.BAN' +
      '_CODIGO = T1.BAN_CODIGO)'#13#10'JOIN FORMA_PAGAMENTO T3 ON (T3.FPG_REG' +
      'ISTRO = T1.FPG_REGISTRO)'#13#10'JOIN USUARIO T4 ON (T4.USU_CODIGO = T1' +
      '.USU_CODIGO)'#13#10'JOIN PAG_PC01 T5 ON (T5.PAG_REGISTRO = T1.PAG_REGI' +
      'STRO)'#13#10'JOIN FOR0000 T6 ON (T6.FOR_CODIGO = T5.FOR_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.BAN_APELIDO,'#13#10'T3.FPG_DESCRICAO,'#13#10'T4.USU_NOME,'#13 +
      #10'T5.FOR_CODIGO,'#13#10'T6.FOR_razao,'#13#10't5.PAG_CODIGO,'#13#10't5.PPC_NUMER,'#13#10't' +
      '5.PPC_VENCTO'#13#10'FROM'#13#10'PAG_PAGAMENTO T1'#13#10'JOIN BAN0000 T2 ON (T2.BAN' +
      '_CODIGO = T1.BAN_CODIGO)'#13#10'JOIN FORMA_PAGAMENTO T3 ON (T3.FPG_REG' +
      'ISTRO = T1.FPG_REGISTRO)'#13#10'JOIN USUARIO T4 ON (T4.USU_CODIGO = T1' +
      '.USU_CODIGO)'#13#10'JOIN PAG_PC01 T5 ON (T5.PAG_REGISTRO = T1.PAG_REGI' +
      'STRO)'#13#10'JOIN FOR0000 T6 ON (T6.FOR_CODIGO = T5.FOR_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 856
    Top = 120
    object CdsPagarBaixasPAP_REGISTRO: TIntegerField
      FieldName = 'PAP_REGISTRO'
      Required = True
    end
    object CdsPagarBaixasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsPagarBaixasPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
    end
    object CdsPagarBaixasPAG_DATA_PAGAMENTO: TDateField
      FieldName = 'PAG_DATA_PAGAMENTO'
    end
    object CdsPagarBaixasPAG_VALOR: TFMTBCDField
      FieldName = 'PAG_VALOR'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPagarBaixasPAG_DESCONTO: TFMTBCDField
      FieldName = 'PAG_DESCONTO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPagarBaixasPAG_JUROS: TFMTBCDField
      FieldName = 'PAG_JUROS'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPagarBaixasPAG_MULTA: TFMTBCDField
      FieldName = 'PAG_MULTA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPagarBaixasPAG_PAGO: TFMTBCDField
      FieldName = 'PAG_PAGO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPagarBaixasBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object CdsPagarBaixasFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object CdsPagarBaixasUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CdsPagarBaixasBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object CdsPagarBaixasFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object CdsPagarBaixasUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
    object CdsPagarBaixasFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object CdsPagarBaixasFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object CdsPagarBaixasPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object CdsPagarBaixasPPC_NUMER: TStringField
      FieldName = 'PPC_NUMER'
      OnGetText = CdsPagarBaixasPPC_NUMERGetText
      Size = 2
    end
    object CdsPagarBaixasPPC_VENCTO: TSQLTimeStampField
      FieldName = 'PPC_VENCTO'
    end
    object CdsPagarBaixasPPC_NPARCELAS: TSmallintField
      FieldName = 'PPC_NPARCELAS'
    end
  end
  object DsPagarBaixas: TDataSource
    DataSet = CdsPagarBaixas
    Left = 928
    Top = 120
  end
  object frxReportPagar: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791670000000
    ReportOptions.LastChange = 41185.618476400450000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReportPagarGetValue
    Left = 856
    Top = 173
    Datasets = <
      item
        DataSet = frxDBDatasetPagar
        DataSetName = 'frxDBDatasetPagar'
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
        DataSet = frxDBDatasetPagar
        DataSetName = 'frxDBDatasetPagar'
        RowCount = 0
        object frxDBDatasetReceberFPC_NUMER: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_CODIGO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."PAG_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'PPC_NUMER'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."PPC_NUMER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_DATA_PAGAMENTO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."PAG_DATA_PAGAMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."FOR_CODIGO"] [frxDBDatasetPagar."FOR_RAZAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_VALOR'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
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
            '[frxDBDatasetPagar."PAG_VALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_DESCONTO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
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
            '[frxDBDatasetPagar."PAG_DESCONTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_JUROS'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
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
            '[frxDBDatasetPagar."PAG_JUROS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_MULTA'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
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
            '[frxDBDatasetPagar."PAG_MULTA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 725.669760000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_PAGO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
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
            '[frxDBDatasetPagar."PAG_PAGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 797.480830000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'FPG_DESCRICAO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."FPG_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          DataField = 'BAN_APELIDO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."BAN_APELIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'PPC_VENCTO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."PPC_VENCTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'EMP_CODIGO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."EMP_CODIGO"]')
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
          Left = 438.425480000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_VALOR">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_DESCONTO">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_JUROS">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_MULTA">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 725.669760000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_PAGO">,MasterData1,3)]')
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
            'Relat'#243'rio de Pagamentos do Contas '#224' Pagar')
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
          Width = 56.692950000000000000
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
          Left = 83.149660000000000000
          Top = 56.692950000000000000
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
          Left = 192.756030000000000000
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
            'Pagamento')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 56.692950000000000000
          Width = 173.858380000000000000
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
            'Fornecedor')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
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
          Left = 510.236550000000000000
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
          Left = 582.047620000000000000
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
          Left = 725.669760000000000000
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
            'Pago')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
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
          Left = 797.480830000000000000
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
            'Forma de Pag.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Top = 56.692950000000000000
          Width = 139.842610000000000000
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
          Left = 124.724490000000000000
          Top = 56.692950000000000000
          Width = 68.031540000000000000
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
      end
    end
  end
  object frxDBDatasetPagar: TfrxDBDataset
    UserName = 'frxDBDatasetPagar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PAP_REGISTRO=PAP_REGISTRO'
      'EMP_CODIGO=EMP_CODIGO'
      'PAG_REGISTRO=PAG_REGISTRO'
      'PAG_DATA_PAGAMENTO=PAG_DATA_PAGAMENTO'
      'PAG_VALOR=PAG_VALOR'
      'PAG_DESCONTO=PAG_DESCONTO'
      'PAG_JUROS=PAG_JUROS'
      'PAG_MULTA=PAG_MULTA'
      'PAG_PAGO=PAG_PAGO'
      'BAN_CODIGO=BAN_CODIGO'
      'FPG_REGISTRO=FPG_REGISTRO'
      'USU_CODIGO=USU_CODIGO'
      'BAN_APELIDO=BAN_APELIDO'
      'FPG_DESCRICAO=FPG_DESCRICAO'
      'USU_NOME=USU_NOME'
      'FOR_CODIGO=FOR_CODIGO'
      'FOR_RAZAO=FOR_RAZAO'
      'PAG_CODIGO=PAG_CODIGO'
      'PPC_NUMER=PPC_NUMER'
      'PPC_VENCTO=PPC_VENCTO')
    DataSource = DsPagarBaixas
    BCDToCurrency = False
    Left = 872
    Top = 237
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
    Left = 776
    Top = 237
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
    Left = 776
    Top = 173
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
    Left = 768
    Top = 117
  end
  object PopupMenu1: TPopupMenu
    Left = 760
    Top = 296
    object ImprimirRecibo1: TMenuItem
      Caption = 'Imprimir Recibo'
      OnClick = ImprimirRecibo1Click
    end
  end
  object frxReportPagarAgrupado: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41163.478694791670000000
    ReportOptions.LastChange = 41185.618476400450000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReportPagarGetValue
    Left = 864
    Top = 301
    Datasets = <
      item
        DataSet = frxDBDatasetPagar
        DataSetName = 'frxDBDatasetPagar'
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
        DataSet = frxDBDatasetPagar
        DataSetName = 'frxDBDatasetPagar'
        RowCount = 0
        object frxDBDatasetReceberFPC_NUMER: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_CODIGO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."PAG_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'PPC_NUMER'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."PPC_NUMER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_DATA_PAGAMENTO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."PAG_DATA_PAGAMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."FOR_CODIGO"] [frxDBDatasetPagar."FOR_RAZAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_VALOR'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
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
            '[frxDBDatasetPagar."PAG_VALOR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_DESCONTO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
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
            '[frxDBDatasetPagar."PAG_DESCONTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_JUROS'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
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
            '[frxDBDatasetPagar."PAG_JUROS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_MULTA'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
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
            '[frxDBDatasetPagar."PAG_MULTA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 725.669760000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_PAGO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
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
            '[frxDBDatasetPagar."PAG_PAGO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 797.480830000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'FPG_DESCRICAO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."FPG_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          DataField = 'BAN_APELIDO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."BAN_APELIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'PPC_VENCTO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."PPC_VENCTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'EMP_CODIGO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."EMP_CODIGO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 283.464750000000000000
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
          Left = 438.425480000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_VALOR">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_DESCONTO">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_JUROS">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_MULTA">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 725.669760000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_PAGO">,MasterData1,3)]')
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
            'Relat'#243'rio de Pagamentos do Contas '#224' Pagar')
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
          Width = 56.692950000000000000
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
          Left = 83.149660000000000000
          Top = 56.692950000000000000
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
          Left = 192.756030000000000000
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
            'Pagamento')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 56.692950000000000000
          Width = 173.858380000000000000
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
            'Fornecedor')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
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
          Left = 510.236550000000000000
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
          Left = 582.047620000000000000
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
          Left = 725.669760000000000000
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
            'Pago')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
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
          Left = 797.480830000000000000
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
            'Forma de Pag.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Top = 56.692950000000000000
          Width = 139.842610000000000000
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
          Left = 124.724490000000000000
          Top = 56.692950000000000000
          Width = 68.031540000000000000
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDatasetPagar."FPG_DESCRICAO"'
        KeepTogether = True
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Width = 374.173470000000000000
          Height = 15.118120000000000000
          DataField = 'FPG_DESCRICAO'
          DataSet = frxDBDatasetPagar
          DataSetName = 'frxDBDatasetPagar'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPagar."FPG_DESCRICAO"]')
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
        Height = 22.677180000000000000
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
          Left = 438.425480000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_VALOR">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_DESCONTO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_JUROS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo11: TfrxSysMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_MULTA">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo12: TfrxSysMemoView
          AllowVectorExport = True
          Left = 725.669760000000000000
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
            '[SUM(<frxDBDatasetPagar."PAG_PAGO">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
end
