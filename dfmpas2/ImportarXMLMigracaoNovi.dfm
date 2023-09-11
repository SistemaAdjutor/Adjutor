inherited frmImportarXMLMigracaoNovi: TfrmImportarXMLMigracaoNovi
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Importa'#231#227'o de XML (migra'#231#227'o)'
  ClientHeight = 470
  ClientWidth = 1008
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  ExplicitWidth = 1016
  ExplicitHeight = 497
  PixelsPerInch = 96
  TextHeight = 13
  object ListViewLNK: TListView [0]
    Left = 0
    Top = 57
    Width = 792
    Height = 372
    Align = alClient
    Columns = <
      item
        Caption = 'Arquivo'
        Width = 300
      end
      item
        Caption = 'Pasta'
        Width = 600
      end>
    TabOrder = 0
    ViewStyle = vsReport
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 429
    Width = 1008
    Height = 41
    Align = alBottom
    TabOrder = 1
    object lbQtd: TLabel
      Left = 8
      Top = 16
      Width = 162
      Height = 13
      Caption = 'Pasta com arquivos XML importar:'
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 0
    Width = 1008
    Height = 57
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 82
      Top = 128
      Width = 162
      Height = 13
      Caption = 'Pasta com arquivos XML importar:'
    end
    object DirectoryEdit1: TDirectoryEdit
      Left = 8
      Top = 24
      Width = 385
      Height = 21
      NumGlyphs = 1
      TabOrder = 0
      Text = 'C:\'
    end
    object Button1: TButton
      Left = 399
      Top = 22
      Width = 137
      Height = 25
      Caption = 'Buscar Arquivos'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 542
      Top = 22
      Width = 137
      Height = 25
      Caption = 'Importar'
      Enabled = False
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Panel3: TPanel [3]
    Left = 792
    Top = 57
    Width = 216
    Height = 372
    Align = alRight
    TabOrder = 4
    Visible = False
    object lbCntFornecedor: TLabel
      Left = 112
      Top = 24
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = '---------------------'
    end
    object lbCntCliente: TLabel
      Left = 112
      Top = 51
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = '---------------------'
    end
    object lbCntTranspotadora: TLabel
      Left = 112
      Top = 78
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = '---------------------'
    end
    object lbCntTPParcela: TLabel
      Left = 112
      Top = 106
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = '---------------------'
    end
    object lbCntProduto: TLabel
      Left = 112
      Top = 133
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = '---------------------'
    end
    object lbCntFatura: TLabel
      Left = 112
      Top = 161
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = '---------------------'
    end
    object lbCntParcela: TLabel
      Left = 112
      Top = 188
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = '---------------------'
    end
    object lbCntParcelaFat: TLabel
      Left = 112
      Top = 216
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = '---------------------'
    end
    object lbCntNF: TLabel
      Left = 112
      Top = 243
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = '---------------------'
    end
    object lbCntItemNF: TLabel
      Left = 112
      Top = 326
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = '---------------------'
    end
    object lbCntPed: TLabel
      Left = 112
      Top = 271
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = '---------------------'
    end
    object lbCntItemPED: TLabel
      Left = 112
      Top = 298
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = '---------------------'
    end
  end
  object PageControl1: TPageControl [4]
    Left = 160
    Top = 200
    Width = 289
    Height = 193
    ActivePage = TabSheet2
    TabOrder = 3
    Visible = False
    object TabSheet1: TTabSheet
      Caption = 'Processadas'
      object ListView1: TListView
        Left = 0
        Top = 0
        Width = 281
        Height = 165
        Align = alClient
        Columns = <
          item
            Caption = 'Arquivo'
            Width = 600
          end>
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Ignoradas'
      ImageIndex = 1
      object ListView2: TListView
        Left = 0
        Top = 0
        Width = 281
        Height = 165
        Align = alClient
        Columns = <
          item
            Caption = 'Arquivo'
            Width = 600
          end
          item
            Caption = 'Motivo'
            Width = 600
          end>
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 616
    Top = 288
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 720
    Top = 288
  end
  inherited DBConn: TSQLConnection
    Left = 440
    Top = 273
  end
  inherited qAux: TSQLQuery
    Left = 818
    Top = 413
  end
  inherited qAux2: TSQLQuery
    Left = 906
    Top = 404
  end
  inherited qAux3: TSQLQuery
    Left = 954
    Top = 404
  end
  object acbrnf1: TACBrNFe
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.RetirarAcentos = False
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.TimeOut = 30000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 372
    Top = 136
  end
  object dspXML: TDataSetProvider
    DataSet = qXML
    Left = 544
    Top = 136
  end
  object qXML: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select pd.PRD_REFER,'
      '       it.PRDCO_CODIGO_ORIGINAL,'
      '       it.PRD_DESCRI,'
      '       it.STB_TRIBUTACAO, '
      '       it.IPI_CODIGO, '
      '       it.NF_QTDE, '
      '       it.NF_PRECO, '
      '       it.NTP_CFOP,'
      '       it.NF_ICMSALIQ, '
      '       it.NF_IPIALIQ, '
      '       it.NF_VLSUBST, '
      '       it.NF_IFRETE, '
      '       it.NF_ISEGURO, '
      '       it.NF_IDESP_ACES, '
      '       it.NF_VLPIS, '
      '       it.NF_VLCOFINS,'
      '       it.NF_CSOSN'
      'from NF_IT01 it '
      '     LEFT JOIN PRD0000 PD ON (PD.PRD_REFER = it.PRD_REFER )'
      'where it.nf_registro='#39'-0030'#39)
    SQLConnection = DBConn
    Left = 540
    Top = 76
    object qXMLNFX_REGISTRO: TIntegerField
      FieldName = 'NFX_REGISTRO'
    end
    object qXMLEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object qXMLNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
    end
    object qXMLNFX_XML: TBlobField
      FieldName = 'NFX_XML'
      Size = 4000
    end
    object qXMLNFX_XML_RECIBO: TBlobField
      FieldName = 'NFX_XML_RECIBO'
      Size = 4000
    end
  end
  object CdsXML: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspXML'
    Left = 544
    Top = 192
    object CdsXMLNFX_REGISTRO: TIntegerField
      FieldName = 'NFX_REGISTRO'
    end
    object CdsXMLEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object CdsXMLNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
    end
    object CdsXMLNFX_XML: TBlobField
      FieldName = 'NFX_XML'
      Size = 4000
    end
    object CdsXMLNFX_XML_RECIBO: TBlobField
      FieldName = 'NFX_XML_RECIBO'
      Size = 4000
    end
  end
end
