inherited frmBaixaPedidoCompra: TfrmBaixaPedidoCompra
  Caption = 'Baixa do Pedido de Compra'
  ClientHeight = 506
  ClientWidth = 796
  ExplicitWidth = 812
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 465
    Width = 796
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 120
    ExplicitTop = 384
    ExplicitWidth = 185
    object btnGravaritem: TBitBtn
      Left = 555
      Top = 8
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
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
      OnClick = btnGravaritemClick
    end
    object btnCancelarItem: TBitBtn
      Left = 675
      Top = 8
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Cancela baixa atual.'
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 41
    Width = 796
    Height = 424
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 96
    ExplicitTop = 200
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 794
      Height = 422
      Align = alClient
      DataSource = FormOrdCompra.DsGrid
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          ReadOnly = True
          Title.Caption = 'Refer'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          ReadOnly = True
          Title.Caption = 'Descri'#231#227'o'
          Width = 248
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_UND'
          ReadOnly = True
          Title.Caption = 'Unidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCI_QTDES'
          ReadOnly = True
          Title.Caption = 'Qtde. Soliitada'
          Visible = True
        end
        item
          Color = clYellow
          Expanded = False
          FieldName = 'OCI_QTDER'
          Title.Caption = 'Qtde. Recebida'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 0
    Width = 796
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = -5
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 63
      Height = 13
      Caption = 'Almoxarifado'
    end
    object Label2: TLabel
      Left = 480
      Top = 16
      Width = 86
      Height = 13
      Caption = 'N'#186' da Nota Fiscal:'
    end
    object CbAlmoxarifado: TComboBoxRw
      Left = 77
      Top = 11
      Width = 352
      Height = 21
      TabOrder = 0
      CharCase = ecUpperCase
      LookupSelect = 'amx_CODIGO,AMX_DESCRI'
      LookupOrderBy = 'AMX_DESCRI'
      LookupTable = 'ALMOX0000'
      LookupDispl = 'AMX_DESCRI'
      GridAutoSize = False
      LookupSource = CbAlmoxarifado.InternalSource
      LookupKeyField = 'amx_CODIGO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Almoxarifados'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
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
    object NotaFiscal: TEdit
      Left = 572
      Top = 14
      Width = 140
      Height = 21
      TabOrder = 1
      OnExit = NotaFiscalExit
    end
  end
  inherited coCalcula: TACBrCalculadora
    Top = 80
  end
  inherited qAux: TSQLQuery
    Top = 77
  end
  inherited qAux2: TSQLQuery
    Top = 76
  end
  inherited qAux3: TSQLQuery
    Top = 76
  end
end
