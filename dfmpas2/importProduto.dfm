inherited frmImporProduto: TfrmImporProduto
  Caption = 'Importando produtos para cadastro e verificando erros..'
  ClientHeight = 447
  ClientWidth = 906
  ExplicitWidth = 914
  ExplicitHeight = 474
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 397
    Width = 141
    Height = 39
    Caption = 
      'Erros - n'#227'o ser'#227'o importados'#13#10'Avisos - ser'#227'o importados'#13#10'CTRL+DE' +
      'L - excluir o registro'
  end
  object Label2: TLabel [1]
    Left = 331
    Top = 399
    Width = 63
    Height = 13
    Caption = 'Almoxarifado'
  end
  object chkUpdate: TCheckBox [2]
    Left = 168
    Top = 399
    Width = 157
    Height = 17
    Caption = 'Atualizar dados cadastrais'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object chkUpdEstoque: TCheckBox [3]
    Left = 168
    Top = 422
    Width = 124
    Height = 17
    Caption = 'Atualizar ESTOQUE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = chkUpdEstoqueClick
  end
  object bitcancelar: TBitBtn [4]
    Left = 817
    Top = 409
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = bitcancelarClick
  end
  object bitconfirmar: TBitBtn [5]
    Left = 736
    Top = 409
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 2
    OnClick = bitconfirmarClick
  end
  object bitrevalidar: TBitBtn [6]
    Left = 656
    Top = 409
    Width = 75
    Height = 25
    Caption = 'Revalidar'
    TabOrder = 1
    OnClick = bitrevalidarClick
  end
  object DBGrid1: TDBGrid [7]
    Left = 0
    Top = 0
    Width = 906
    Height = 393
    Align = alTop
    DataSource = dsImport
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Status'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'obs'
        ReadOnly = True
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'Tipo'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Grupo'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIN_CODIGO'
        Title.Caption = 'Linha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCR'
        Title.Caption = 'Descri'#231#227'o'
        Width = 229
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_UND'
        Title.Caption = 'Medida'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_COMPL'
        Title.Caption = 'Complemento'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCM_CODIGO'
        Title.Caption = 'NCM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_CEST'
        Title.Caption = 'CEST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_PCUSTO'
        Title.Caption = 'Custo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_MARGEMVENDA'
        Title.Caption = 'Margem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_PVENDA'
        Title.Caption = 'Pre'#231'o de venda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Title.Caption = 'Estoque'
        Visible = True
      end>
  end
  object CbAlmoxarifadoDestino: TComboBoxRw [8]
    Left = 331
    Top = 416
    Width = 292
    Height = 21
    TabOrder = 6
    CharCase = ecUpperCase
    LookupSelect = 'amx_CODIGO,AMX_DESCRI'
    LookupOrderBy = 'AMX_DESCRI'
    LookupTable = 'ALMOX0000'
    LookupDispl = 'AMX_DESCRI'
    GridAutoSize = False
    LookupSource = CbAlmoxarifadoDestino.InternalSource
    LookupKeyField = 'amx_CODIGO'
    ShowButton = True
    LookupTableShare = 'TABELAS'
    AutoF8WinTitulo = 'Almoxarifados'
    AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
    Tabela = 'ALMOX0000'
    CamposCarregar = 'amx_CODIGO,AMX_DESCRI'
    CamposRetornar = 'amx_CODIGO'
    CamposOrdernar = 'AMX_DESCRI'
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
  object dsImport: TDataSource
    DataSet = cdsImport
    Left = 208
    Top = 136
  end
  object cdsImport: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 144
    object cdsImportobs: TStringField
      FieldName = 'obs'
      Size = 400
    end
    object cdsImportStatus: TStringField
      FieldName = 'Status'
      Size = 12
    end
    object cdsImportPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsImportPRD_DESCR: TStringField
      FieldName = 'PRD_DESCR'
      Size = 120
    end
    object cdsImportPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 500
    end
    object cdsImportPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object cdsImportPRD_CEST: TStringField
      FieldName = 'PRD_CEST'
      Size = 7
    end
    object cdsImportNCM_CODIGO: TStringField
      FieldName = 'NCM_CODIGO'
    end
    object cdsImportIPI_CODIGO: TIntegerField
      FieldName = 'IPI_CODIGO'
    end
    object cdsImportTIPO: TStringField
      FieldName = 'TIPO'
      Size = 4
    end
    object cdsImportGrupo: TStringField
      FieldName = 'Grupo'
      Size = 4
    end
    object cdsImportLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 3
    end
    object cdsImportPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object cdsImportPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
      Precision = 15
    end
    object cdsImportPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 15
    end
    object cdsImportPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object cdsImportESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 460
    Top = 268
  end
end
