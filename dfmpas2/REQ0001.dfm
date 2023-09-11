object FrmReqCompra: TFrmReqCompra
  Left = -1
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 544
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grp_Producao: TGroupBox
    Left = 0
    Top = 63
    Width = 793
    Height = 367
    Caption = 'Materia-Prima - Produ'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 787
      Height = 347
      Color = 16776176
      DataSource = DsFaltaComprar
      FixedColor = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER_ITENS'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Mat'#233'ria-Prima'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o da Mat'#233'ria-Prima'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 340
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PTI_SIGLA'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = '*'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 22
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_UND'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Und'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FALTA_COMPRAR'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Solicitada'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OSV_CODIGO'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' OP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OSV_EMISSAO'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORIGEM_CC'
          Title.Alignment = taCenter
          Title.Caption = 'Origem'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end>
    end
  end
  object Grp_Simulacao: TGroupBox
    Left = 0
    Top = 63
    Width = 793
    Height = 367
    Caption = 'Materia-Prima - Simula'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 787
      Height = 347
      Color = 16776176
      DataSource = DsPrevisao
      FixedColor = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Materia'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Mat'#233'ria-Prima'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o da Mat'#233'ria-Prima'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 452
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sigla'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = '*'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 22
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Und'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtde'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Solicitada'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Origem'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 247
    Top = 508
    Width = 546
    Height = 35
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 10841658
    TabOrder = 2
    object BitGeraReq: TBitBtn
      Left = 129
      Top = 5
      Width = 125
      Height = 25
      Caption = '&Gerar Requisi'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = BitGeraReqClick
    end
    object BitSair: TBitBtn
      Left = 447
      Top = 5
      Width = 95
      Height = 25
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
      TabOrder = 4
      TabStop = False
      OnClick = BitSairClick
    end
    object BitCancelar: TBitBtn
      Left = 351
      Top = 5
      Width = 95
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = BitCancelarClick
    end
    object BitConfirma: TBitBtn
      Left = 255
      Top = 5
      Width = 95
      Height = 25
      Caption = 'Con&firmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = BitConfirmaClick
    end
    object BitAtualizar: TBitBtn
      Left = 3
      Top = 5
      Width = 125
      Height = 25
      Caption = '&Atualizar Tela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = BitAtualizarClick
    end
  end
  object GrpReq: TGroupBox
    Left = 0
    Top = 430
    Width = 793
    Height = 75
    Caption = 'Dados da Requisi'#231#227'o de Compra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 23
      Width = 71
      Height = 13
      Caption = 'Requisi'#231#227'o N'#186':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 23
      Width = 26
      Height = 13
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 233
      Top = 23
      Width = 26
      Height = 13
      Caption = 'Hora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 9
      Top = 47
      Width = 70
      Height = 13
      Caption = 'Departamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 426
      Top = 23
      Width = 61
      Height = 13
      Caption = 'Observa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 615
      Top = 23
      Width = 33
      Height = 13
      Caption = 'Status:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 435
      Top = 47
      Width = 52
      Height = 13
      Caption = 'Solicitante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CurrCod: TCurrencyEdit
      Left = 80
      Top = 19
      Width = 49
      Height = 21
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Cbx_Depto: TComboBox
      Left = 130
      Top = 44
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Cbx_DeptoClick
    end
    object CurrDepto: TCurrencyEdit
      Left = 80
      Top = 44
      Width = 49
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnExit = CurrDeptoExit
    end
    object Edt_Data: TEdit
      Left = 163
      Top = 19
      Width = 66
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Edt_Hora: TEdit
      Left = 260
      Top = 19
      Width = 50
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object Cbx_Obs: TComboBox
      Left = 488
      Top = 19
      Width = 121
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        'NORMAL'
        'URGENTE'
        'PRIORIDADE')
    end
    object Edt_Status: TEdit
      Left = 649
      Top = 19
      Width = 112
      Height = 21
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 4
    end
    object Edt_Solicitante: TEdit
      Left = 488
      Top = 44
      Width = 121
      Height = 21
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 7
    end
  end
  object Panel1: TPanel
    Left = 1
    Top = 508
    Width = 240
    Height = 35
    BevelOuter = bvLowered
    TabOrder = 3
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 10
      Width = 223
      Height = 17
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 62
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 4
    object LBL_TITULO: TLabel
      Left = 8
      Top = 16
      Width = 214
      Height = 24
      Caption = 'Requisi'#231#227'o de Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object SqlFaltaComprar: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'O2.OSI_REGISTRO,'#13#10'O2.EMP_CODIGO,'#13#10'O2.OSV_CODIGO,'#13#10'O1.OSV' +
      '_EMISSAO,'#13#10'O2.PRD_REFER_ITENS,'#13#10'O2.OSI_ORIGEM,'#13#10'P1.PRD_DESCRI,'#13#10 +
      'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'CAST((O2.osi_uc*(O2.osi_qtde1+O2.osi' +
      '_qtde2+O2.osi_qtde3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.os' +
      'i_qtde7+O2.osi_qtde8)-O2.osi_empenho) AS FLOAT) AS FALTA_COMPRAR' +
      #13#10'from OSV_IT02 O2'#13#10'left join OSV0001 O1 on (O2.OSV_CODIGO = O1.' +
      'OSV_CODIGO)'#13#10'left join PRD0000 P1 ON (O2.PRD_REFER_ITENS = P1.PR' +
      'D_REFER)'#13#10'left join PRD_TIPO P2 on (P1.PTI_CODIGO = P2.PTI_CODIG' +
      'O)'#13#10'where O2.OSI_REQ_COMPRA = '#39'N'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlFaltaComprarCalcFields
    CommandText = 
      'select'#13#10'O2.OSI_REGISTRO,'#13#10'O2.EMP_CODIGO,'#13#10'O2.OSV_CODIGO,'#13#10'O1.OSV' +
      '_EMISSAO,'#13#10'O2.PRD_REFER_ITENS,'#13#10'O2.OSI_ORIGEM,'#13#10'P1.PRD_DESCRI,'#13#10 +
      'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'CAST((O2.osi_uc*(O2.osi_qtde1+O2.osi' +
      '_qtde2+O2.osi_qtde3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.os' +
      'i_qtde7+O2.osi_qtde8)-O2.osi_empenho) AS FLOAT) AS FALTA_COMPRAR' +
      #13#10'from OSV_IT02 O2'#13#10'left join OSV0001 O1 on (O2.OSV_CODIGO = O1.' +
      'OSV_CODIGO)'#13#10'left join PRD0000 P1 ON (O2.PRD_REFER_ITENS = P1.PR' +
      'D_REFER)'#13#10'left join PRD_TIPO P2 on (P1.PTI_CODIGO = P2.PTI_CODIG' +
      'O)'#13#10'where O2.OSI_REQ_COMPRA = '#39'N'#39
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 184
    Top = 144
    object SqlFaltaComprarOSI_REGISTRO: TIntegerField
      FieldName = 'OSI_REGISTRO'
      Required = True
    end
    object SqlFaltaComprarEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlFaltaComprarOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 8
    end
    object SqlFaltaComprarOSV_EMISSAO: TSQLTimeStampField
      FieldName = 'OSV_EMISSAO'
    end
    object SqlFaltaComprarPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlFaltaComprarPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlFaltaComprarPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlFaltaComprarPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlFaltaComprarFALTA_COMPRAR: TFloatField
      FieldName = 'FALTA_COMPRAR'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object SqlFaltaComprarOSI_ORIGEM: TStringField
      FieldName = 'OSI_ORIGEM'
      Size = 1
    end
    object SqlFaltaComprarORIGEM_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'ORIGEM_CC'
      Size = 15
      Calculated = True
    end
  end
  object DsFaltaComprar: TDataSource
    DataSet = SqlFaltaComprar
    Left = 216
    Top = 144
  end
  object SqlDeptos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select DEP_CODIGO, DEP_NOME from DEP0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select DEP_CODIGO, DEP_NOME from DEP0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 315
    Top = 469
    object SqlDeptosDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      Required = True
    end
    object SqlDeptosDEP_NOME: TStringField
      FieldName = 'DEP_NOME'
    end
  end
  object DsPrevisao: TDataSource
    DataSet = CdsTeste
    Left = 216
    Top = 176
  end
  object CdsTeste: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'Idx_Descricao'
        Fields = 'Descricao'
      end>
    Params = <>
    StoreDefs = True
    Left = 184
    Top = 176
    object CdsTesteMateria: TStringField
      FieldName = 'Materia'
      Size = 11
    end
    object CdsTesteDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object CdsTesteSigla: TStringField
      FieldName = 'Sigla'
      Size = 2
    end
    object CdsTesteUnd: TStringField
      FieldName = 'Und'
      Size = 3
    end
    object CdsTesteQtde: TCurrencyField
      FieldName = 'Qtde'
      DisplayFormat = '#,###0.000'
      currency = False
    end
    object CdsTesteOrigem: TStringField
      FieldName = 'Origem'
      Size = 15
    end
  end
end
