inherited FormFaturar: TFormFaturar
  Left = 660
  Top = 14
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Detalhamento do item da fatura'
  ClientHeight = 366
  ClientWidth = 866
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  ExplicitWidth = 872
  ExplicitHeight = 394
  PixelsPerInch = 96
  TextHeight = 14
  object Panel5: TPanel [0]
    Left = 0
    Top = 331
    Width = 866
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitConfirmaNota: TBitBtn
      Left = 112
      Top = 4
      Width = 102
      Height = 25
      Caption = 'Confir&mar'
      TabOrder = 0
    end
    object BitCancelar: TBitBtn
      Left = 215
      Top = 4
      Width = 100
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
    end
  end
  object GrpVariacao: TGroupBox [1]
    Left = 0
    Top = 49
    Width = 866
    Height = 361
    Align = alTop
    Caption = 'Item '#224' faturar'
    TabOrder = 0
    object Label1: TLabel
      Left = 37
      Top = 19
      Width = 56
      Height = 14
      Caption = 'Refer'#234'ncia:'
    end
    object Label2: TLabel
      Left = 44
      Top = 67
      Width = 49
      Height = 14
      Caption = 'Qtde total:'
    end
    object Label3: TLabel
      Left = 20
      Top = 115
      Width = 73
      Height = 14
      Caption = 'Qtde '#224' Faturar:'
    end
    object Label4: TLabel
      Left = 22
      Top = 91
      Width = 71
      Height = 14
      Caption = 'Total Faturada:'
    end
    object Label5: TLabel
      Left = 41
      Top = 44
      Width = 52
      Height = 14
      Caption = 'Descri'#231#227'o:'
    end
    object DBEdtRefer: TDBEdit
      Left = 93
      Top = 16
      Width = 100
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'PRD_REFER'
      DataSource = FormFatPedido.DsItemPedido
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdtQtdeTotal: TDBEdit
      Left = 93
      Top = 64
      Width = 100
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'PRF_QTDE'
      DataSource = FormFatPedido.DsItemPedido
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdtQtdeFatu: TDBEdit
      Left = 93
      Top = 88
      Width = 100
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'PRF_QTDEFAT'
      DataSource = FormFatPedido.DsItemPedido
      ReadOnly = True
      TabOrder = 3
    end
    object CurrQtdeFatu: TCurrencyEdit
      Left = 93
      Top = 111
      Width = 100
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,###0.000'
      TabOrder = 4
      ZeroEmpty = False
      OnExit = CurrQtdeFatuExit
    end
    object DBEdit25: TDBEdit
      Left = 93
      Top = 40
      Width = 311
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'PRF_PRDDESCRI'
      DataSource = FormFatPedido.DsItemPedido
      ReadOnly = True
      TabOrder = 1
    end
    object Button1: TButton
      Left = 233
      Top = 110
      Width = 75
      Height = 25
      Caption = '&Confirma'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 329
      Top = 110
      Width = 75
      Height = 25
      Caption = '&Abandona'
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object GroupBox1: TGroupBox [2]
    Left = 0
    Top = 0
    Width = 866
    Height = 49
    Align = alTop
    Caption = 'Definir Cfop Espec'#237'fido'
    TabOrder = 2
    object CbOper: TComboBoxRw
      Left = 8
      Top = 18
      Width = 372
      Height = 22
      TabOrder = 0
      CharCase = ecUpperCase
      LookupSelect = 'ope_codigo, cfop'
      LookupOrderBy = 'ope_descri'
      LookupTable = 'OPE0000_VIEW_PESQUISA'
      LookupDispl = 'CFOP'
      GridAutoSize = False
      LookupSource = qCfop
      LookupKeyField = 'ope_codigo'
      FiltroTabela = 'OPE_ATIVA='#39'S'#39
      ShowButton = True
      LookupTableShare = 'OPERACAOFISCAL'
      AutoF8WinTitulo = 'Opera'#231#245'es Fiscais - CFOP '
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'OPE0000_VIEW_PESQUISA'
      CamposCarregar = 'ope_codigo, cfop'
      CamposRetornar = 'ope_codigo'
      Condicao = 'OPE_ATIVA='#39'S'#39
      CamposOrdernar = 'ope_descri'
      Compartilhar = 'OPERACAOFISCAL'
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
  inherited coCalcula: TACBrCalculadora
    Left = 344
    Top = 248
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 448
    Top = 248
  end
  inherited DBConn: TSQLConnection
    Left = 264
    Top = 249
  end
  object qCfop: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 453
    Top = 4
  end
end
