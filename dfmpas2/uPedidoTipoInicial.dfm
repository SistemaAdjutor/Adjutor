inherited FrmPedidoTipoInicial: TFrmPedidoTipoInicial
  Left = 501
  Top = 308
  Caption = 'Selecione o Tipo do Pedido'
  ClientHeight = 478
  ClientWidth = 512
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  Position = poDesktopCenter
  ExplicitWidth = 520
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel [0]
    Left = 8
    Top = 448
    Width = 266
    Height = 14
    Caption = 'AE = Se estiver marcado significa que atualiza estoque'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 462
    Width = 163
    Height = 14
    Caption = 'SV = Verifica se '#233' do tipo Servi'#231'o'
  end
  object GroupBox1: TGroupBox [2]
    Left = 0
    Top = 0
    Width = 512
    Height = 441
    Align = alTop
    Caption = 'Tipos Dispon'#237'veis'
    TabOrder = 0
    object DbGradeItemPedido: TDBGrid
      Left = 2
      Top = 16
      Width = 508
      Height = 423
      Align = alClient
      Color = 16776176
      DataSource = dsTipoPedido
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DbGradeItemPedidoDrawColumnCell
      OnDblClick = DbGradeItemPedidoDblClick
      OnKeyPress = DbGradeItemPedidoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'OPV_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 353
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_TIPO'
          Title.Caption = 'TP'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_ATESTOQUE'
          Title.Alignment = taCenter
          Title.Caption = 'AE'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPV_SERVICO'
          Title.Alignment = taCenter
          Title.Caption = 'SV'
          Width = 20
          Visible = True
        end>
    end
  end
  object Bit_Gravar: TBitBtn [3]
    Left = 404
    Top = 448
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Caption = '&Selecionar'
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
    TabOrder = 1
    OnClick = Bit_GravarClick
  end
  inherited coCalcula: TACBrCalculadora
    Left = 88
    Top = 288
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 136
    Top = 296
  end
  inherited DBConn: TSQLConnection
    Left = 32
    Top = 289
  end
  inherited qAux: TSQLQuery
    Left = 298
    Top = 269
  end
  inherited qAux2: TSQLQuery
    Left = 338
    Top = 268
  end
  inherited qAux3: TSQLQuery
    Left = 378
    Top = 268
  end
  object dsTipoPedido: TDataSource
    DataSet = CdsTipoPedido
    Left = 240
    Top = 176
  end
  object CdsTipoPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoPedido'
    Left = 336
    Top = 88
    object CdsTipoPedidoOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000'
    end
    object CdsTipoPedidoOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object CdsTipoPedidoOPV_TIPO: TStringField
      FieldName = 'OPV_TIPO'
      Size = 1
    end
    object CdsTipoPedidoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsTipoPedidoOPV_ATESTOQUE: TStringField
      FieldName = 'OPV_ATESTOQUE'
      FixedChar = True
      Size = 1
    end
    object CdsTipoPedidoAMX_DESTINO: TStringField
      FieldName = 'AMX_DESTINO'
      Size = 4
    end
    object CdsTipoPedidoAMX_ORIGEM: TStringField
      FieldName = 'AMX_ORIGEM'
      Size = 4
    end
    object CdsTipoPedidoOPV_TIPOPADRAO: TStringField
      FieldName = 'OPV_TIPOPADRAO'
      Size = 1
    end
    object CdsTipoPedidoOPV_SERVICO: TStringField
      FieldName = 'OPV_SERVICO'
      Size = 1
    end
    object CdsTipoPedidoOPV_VENDA: TStringField
      FieldName = 'OPV_VENDA'
      Size = 1
    end
    object CdsTipoPedidoOPV_ORCAMENTO: TStringField
      FieldName = 'OPV_ORCAMENTO'
      Size = 1
    end
    object CdsTipoPedidoOPV_CALCULA_ST: TStringField
      FieldName = 'OPV_CALCULA_ST'
      Size = 1
    end
  end
  object qTipoPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM OPV0000 ORDER BY OPV_DESCRICAO')
    SQLConnection = DBConn
    Left = 64
    Top = 176
  end
  object dspTipoPedido: TDataSetProvider
    DataSet = qTipoPedido
    Left = 144
    Top = 136
  end
end
