inherited FormClienteGrid: TFormClienteGrid
  Left = 170
  Top = 147
  ActiveControl = RadCPF
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Cliente '
  ClientHeight = 602
  ClientWidth = 964
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  ExplicitWidth = 970
  ExplicitHeight = 630
  PixelsPerInch = 96
  TextHeight = 14
  
  object BitCancelar: TBitBtn [1]
    Left = 845
    Top = 32
    Width = 110
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = BitCancelarClick
  end
  object BitPesquisa: TBitBtn [2]
    Left = 845
    Top = 32
    Width = 110
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 1
    OnClick = BitPesquisaClick
  end
  object BitSair: TBitBtn [3]
    Left = 845
    Top = 58
    Width = 110
    Height = 25
    Caption = '&Sair'
    TabOrder = 4
    OnClick = BitSairClick
  end
  object GroupBox1: TGroupBox [4]
    Left = 2
    Top = 1
    Width = 831
    Height = 72
    Caption = 'Op'#231#227'o de pesquisa'
    TabOrder = 0
    TabStop = True
    object RadNome: TRadioButton
      Left = 6
      Top = 19
      Width = 52
      Height = 17
      Caption = '&Raz'#227'o'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadNomeClick
    end
    object RadCodigo: TRadioButton
      Left = 108
      Top = 19
      Width = 63
      Height = 17
      Caption = 'C'#243'&digo'
      TabOrder = 1
      OnClick = RadNomeClick
    end
    object RadCgc: TRadioButton
      Left = 299
      Top = 19
      Width = 51
      Height = 17
      Caption = 'C&NPJ'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 2
      OnClick = RadNomeClick
    end
    object RadCPF: TRadioButton
      Left = 383
      Top = 19
      Width = 58
      Height = 17
      Caption = 'CP&F'
      TabOrder = 3
      OnClick = RadNomeClick
    end
    object RadFantasia: TRadioButton
      Left = 200
      Top = 19
      Width = 62
      Height = 17
      Caption = 'Fan&tasia'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 4
      OnClick = RadNomeClick
    end
    object RadCidade: TRadioButton
      Left = 470
      Top = 19
      Width = 62
      Height = 17
      Caption = '&Cidade'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 5
      OnClick = RadCidadeClick
    end
    object RadBairro: TRadioButton
      Left = 569
      Top = 19
      Width = 62
      Height = 17
      Caption = '&Bairro'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 6
      OnClick = RadBairroClick
    end
    object chkOcultarInativas: TCheckBox
      Left = 726
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Ocultar Inativos'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object Msk_Lista: TMaskEdit
      Left = 3
      Top = 42
      Width = 117
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 8
      Text = ''
      OnEnter = Msk_ListaEnter
      OnKeyPress = Msk_ListaKeyPress
    end
  end
  object DBGridCliente: TDBGrid [5]
    Left = 0
    Top = 90
    Width = 960
    Height = 478
    Hint = 'Duplo clique mostra Hist'#243'rico de Compras'
    Color = 16776176
    DataSource = DsCons
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnCellClick = DBGridClienteCellClick
    OnDrawColumnCell = DBGridClienteDrawColumnCell
    OnDblClick = DBGridClienteDblClick
    OnKeyDown = DBGridClienteKeyDown
    OnTitleClick = DBGridClienteTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CLI_CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Cod.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_RAZAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Raz'#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FANTASIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Fantasia'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 156
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CLI_CGC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ/CPF'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Fone'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_DTULTCOM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Ult.Compra'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_BAIRRO'
        Title.Alignment = taCenter
        Title.Caption = 'Bairro'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ENDERE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Endere'#231'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object BitHistorico: TBitBtn [6]
    Left = 845
    Top = 6
    Width = 110
    Height = 25
    Caption = '&Ficha Cliente'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
      55555575555555775F55509999999901055557F55555557F75F5001111111101
      105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
      01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
      8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
      0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
      0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
      05555555575FF777755555555500055555555555557775555555}
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BitHistoricoClick
  end
  inherited coCalcula: TACBrCalculadora
    Left = 376
    Top = 392
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 424
    Top = 400
  end
  inherited DBConn: TSQLConnection
    Left = 320
    Top = 393
  end
  inherited qAux: TSQLQuery
    Left = 586
    Top = 373
  end
  inherited qAux2: TSQLQuery
    Left = 626
    Top = 372
  end
  inherited qAux3: TSQLQuery
    Left = 666
    Top = 372
  end
  object cdsCons: TClientDataSet
    Aggregates = <>
    PacketRecords = 20
    Params = <>
    ProviderName = 'dspCons'
    Left = 392
    Top = 248
    object cdsConsCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object cdsConsCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object cdsConsCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 50
    end
    object cdsConsCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object cdsConsCLI_DTULTCOM: TSQLTimeStampField
      FieldName = 'CLI_DTULTCOM'
    end
    object cdsConsCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object cdsConsCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object cdsConsCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object cdsConsCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object cdsConsCLI_INATIVO: TStringField
      FieldName = 'CLI_INATIVO'
      Size = 1
    end
    object cdsConsstrngfldSqlCdsCliConsCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
  end
  object DsCons: TDataSource
    DataSet = cdsCons
    Left = 536
    Top = 248
  end
  object qCons: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT '
      'C1.CLI_CODIGO,'
      'C1.CLI_RAZAO,'
      'C1.CLI_FANTASIA,'
      'C1.CLI_FONE,'
      'C1.CLI_DTULTCOM,'
      'C1.CLI_CIDADE,'
      'C1.CLI_UF,'
      'C1.CLI_ENDERE,'
      'C1.CLI_BAIRRO,'
      'C1.CLI_CGC,'
      'C1.CLI_INATIVO'
      'FROM CLI0000 C1'
      'where cli_codigo='#39'-1'#39)
    SQLConnection = DBConn
    Left = 168
    Top = 232
  end
  object dspCons: TDataSetProvider
    DataSet = qCons
    Left = 296
    Top = 224
  end
end
