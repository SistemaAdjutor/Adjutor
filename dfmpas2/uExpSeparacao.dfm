inherited frmExpSeparacao: TfrmExpSeparacao
  Caption = 'Separa'#231#227'o'
  ClientHeight = 438
  ClientWidth = 935
  ExplicitWidth = 943
  ExplicitHeight = 465
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid [0]
    Left = 0
    Top = 164
    Width = 935
    Height = 140
    Align = alBottom
    DataSource = dsitemseparar
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawDataCell = DBGrid1DrawDataCell
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRF_PRDDESCRI'
        Title.Caption = 'Descri'#231#227'o do item'
        Width = 178
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRF_QTDE'
        Title.Caption = 'Quantidade total'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_UND'
        Title.Caption = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRF_QTDE_EXPEDIDOS'
        Title.Caption = 'Qtde entregue'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRF_FALTA'
        Title.Caption = 'Falta'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        ReadOnly = True
        Title.Caption = 'Estoque'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRF_SELECIONADA'
        Title.Caption = 'Qtde a entregar'
        Visible = True
      end>
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 397
    Width = 935
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnConfirmar: TButton
      Left = 748
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Confirma'
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TButton
      Left = 835
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 0
    Width = 935
    Height = 164
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = -6
    DesignSize = (
      935
      164)
    object Label1: TLabel
      Left = 3
      Top = 50
      Width = 62
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object Label2: TLabel
      Left = 495
      Top = 72
      Width = 91
      Height = 13
      Caption = 'Data de Abertura :'
    end
    object Label4: TLabel
      Left = 495
      Top = 121
      Width = 74
      Height = 13
      Caption = 'Data de Envio :'
    end
    object Label3: TLabel
      Left = 496
      Top = 97
      Width = 115
      Height = 13
      Caption = 'Data de Encerramento :'
    end
    object labelPedido: TLabel
      Left = 4
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Pedido'
    end
    object labelCliente: TLabel
      Left = 4
      Top = 27
      Width = 32
      Height = 13
      Caption = 'Pedido'
    end
    object Memo1: TMemo
      Left = 3
      Top = 69
      Width = 486
      Height = 89
      MaxLength = 100
      TabOrder = 0
    end
    object horaEnvio: TJvDateTimePicker
      Left = 744
      Top = 118
      Width = 81
      Height = 21
      Date = 43664.385183611110000000
      Time = 43664.385183611110000000
      Kind = dtkTime
      TabOrder = 1
      DropDownDate = 43664.000000000000000000
    end
    object dtAbertura: TJvDateEdit
      Left = 617
      Top = 66
      Width = 121
      Height = 21
      DefaultToday = True
      ShowNullDate = False
      TabOrder = 2
    end
    object dtEnvio: TJvDateEdit
      Left = 617
      Top = 118
      Width = 121
      Height = 21
      DefaultToday = True
      ShowNullDate = False
      TabOrder = 3
    end
    object dtEncerramento: TJvDateEdit
      Left = 617
      Top = 91
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 4
    end
    object Panel14: TPanel
      Left = 65
      Top = 44
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      TabOrder = 5
      object SpeedButton3: TSpeedButton
        Left = 1
        Top = 1
        Width = 23
        Height = 22
        Hint = 'Adicionar Observa'#231#227'o Cadastrada'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EFFFFFF0E0E0E8F690A8F
          690A8F690A8F690A8F690AFFFFFFFFFFFF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0E0E0E0E0E0E0E0E0E97740B97740B97740B97740B97740B000000FFFF
          FF0E0E0EFFFFFFFFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0EA2
          830DA2830DA2830DA2830DFFFFFFFFFFFF0E0E0EFFFFFFFFFFFF0E0E0EBFC7C7
          BFC7C7BFC7C7BFC7C7BFC7C70E0E0EAF940FAF940FAF940FAF940F000000FFFF
          FF0E0E0EFFFFFFFFFFFF0E0E0ED7DBDBD7DBDBD7DBDBD7DBDBD7DBDB0E0E0EBA
          A411BAA411BAA411BAA411FFFFFFFFFFFF0E0E0EFFFFFFFFFFFF0E0E0EEEEFEF
          EEEFEFEEEFEFEEEFEFEEEFEF0E0E0EC2AE12C2AE12C2AE12C2AE12000000FFFF
          FF0E0E0EFFFFFFFFFFFF0000000000008181810000008181810000000E0E0EBA
          A411BAA411BAA411BAA411FFFFFFFFFFFF0E0E0EFFFFFFFFFFFF000000FFFFFF
          000000FFFFFF000000FFFFFF0E0E0EAF940FAF940FAF940FAF940F000000FFFF
          FF0E0E0EFFFFFFFFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0EA2
          830DA2830DA2830DA2830DFFFFFFFFFFFF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0E0E0E0E0E0E0E0E0E97740B97740B97740B97740B97740B000000FFFF
          FF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EFFFFFF0E0E0E8F690A8F
          690A8F690A8F690A8F690AFFFFFFFFFFFF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton3Click
      end
    end
  end
  object cxGrid2: TDBGrid [3]
    Left = 0
    Top = 304
    Width = 935
    Height = 93
    Align = alBottom
    DataSource = dssaldos
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AMX_CODIGO_RET'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AMX_DESCRI_RET'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Almoxarifado'
        Width = 728
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AMX_SALDO_RET'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Saldo'
        Width = 119
        Visible = True
      end>
  end
  inherited coCalcula: TACBrCalculadora
    Left = 520
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 600
    Top = 8
  end
  inherited DBConn: TSQLConnection
    Left = 560
    Top = 9
  end
  inherited qAux: TSQLQuery
    Left = 298
    Top = 65533
  end
  inherited qAuxEstorna: TSQLQuery
    Left = 450
    Top = 65533
  end
  inherited qAuxEstornaItem: TSQLQuery
    Left = 402
    Top = 65532
  end
  object cdsItensSeparar: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'dspItemSeparar'
    AfterScroll = cdsItensSepararAfterScroll
    Left = 847
    Top = 24
    object cdsItensSepararprf_registro: TIntegerField
      FieldName = 'prf_registro'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsItensSepararPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsItensSepararPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsItensSepararPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.000'
      Precision = 18
    end
    object cdsItensSepararPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object cdsItensSepararPRD_CODBARRA: TStringField
      FieldName = 'PRD_CODBARRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object cdsItensSepararPRD_CODORIGINAL: TStringField
      FieldName = 'PRD_CODORIGINAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cdsItensSepararEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object cdsItensSepararPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
    object cdsItensSepararPRF_FALTA: TFMTBCDField
      FieldName = 'PRF_FALTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object cdsItensSepararPRF_QTDE_EXPEDIDOS: TFMTBCDField
      FieldName = 'PRF_QTDE_EXPEDIDOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object cdsItensSepararPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object cdsItensSepararESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 5
    end
    object cdsItensSepararPRF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PRF_FLAG_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object cdsItensSepararPRF_SELECIONADA: TFMTBCDField
      FieldName = 'PRF_SELECIONADA'
      OnValidate = cdsItensSepararPRF_SELECIONADAValidate
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 5
    end
    object cdsItensSepararTotalSele: TAggregateField
      FieldName = 'TotalSele'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(prf_selecionada)'
    end
  end
  object dsitemseparar: TDataSource
    DataSet = cdsItensSeparar
    Left = 776
    Top = 24
  end
  object CdsSaldos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'AMX_CODIGO_RET'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'AMX_DESCRI_RET'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'AMX_SALDO_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'CdsReceberIndex1'
        Fields = 'FAT_CODIGO'
      end>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspSaldos'
    StoreDefs = True
    Left = 851
    Top = 81
    object CdsSaldosAMX_CODIGO_RET: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO_RET'
      Size = 4
    end
    object CdsSaldosAMX_DESCRI_RET: TStringField
      FieldName = 'AMX_DESCRI_RET'
      Size = 35
    end
    object CdsSaldosAMX_SALDO_RET: TFMTBCDField
      FieldName = 'AMX_SALDO_RET'
      DisplayFormat = '###,##0.00'
      Precision = 15
    end
  end
  object dssaldos: TDataSource
    DataSet = CdsSaldos
    Left = 808
    Top = 88
  end
  object dspSaldos: TDataSetProvider
    DataSet = qSaldos
    Left = 760
    Top = 88
  end
  object qSaldos: TSQLQuery
    Params = <>
    Left = 704
    Top = 96
  end
end
