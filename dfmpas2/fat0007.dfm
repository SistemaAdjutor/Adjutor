object FormComplementarNFe: TFormComplementarNFe
  Left = 344
  Top = 148
  BorderIcons = [biSystemMenu]
  Caption = 'Edi'#231#227'o de Nota Fiscal Faturada'
  ClientHeight = 602
  ClientWidth = 1099
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label17: TLabel
    Left = 4
    Top = 572
    Width = 752
    Height = 15
    Caption = 
      'O usu'#225'rio assume toda a responsabilidade sobre as mudan'#231'as nos v' +
      'alores, os quais ter'#227'o impacto fiscal e cont'#225'bil para a empresa.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 197
    Width = 1099
    Height = 101
    Align = alTop
    Caption = 'Impostos e Totais'
    TabOrder = 1
    object Label1: TLabel
      Left = 19
      Top = 16
      Width = 52
      Height = 14
      Caption = 'Base ICMS'
    end
    object Label2: TLabel
      Left = 184
      Top = 17
      Width = 67
      Height = 14
      Caption = 'Valor do ICMS'
    end
    object Label3: TLabel
      Left = 331
      Top = 16
      Width = 68
      Height = 14
      Caption = 'Base ICMS ST'
    end
    object Label4: TLabel
      Left = 479
      Top = 16
      Width = 83
      Height = 14
      Caption = 'Valor do ICMS ST'
    end
    object Label5: TLabel
      Left = 479
      Top = 58
      Width = 53
      Height = 14
      Caption = 'Valor do IPI'
    end
    object Label6: TLabel
      Left = 603
      Top = 14
      Width = 89
      Height = 14
      Caption = 'Total dos Produtos'
    end
    object Label7: TLabel
      Left = 603
      Top = 56
      Width = 62
      Height = 14
      Caption = 'Total da Nota'
    end
    object Label10: TLabel
      Left = 331
      Top = 58
      Width = 84
      Height = 14
      Caption = 'Desp.Acess'#243'rias'
    end
    object Label8: TLabel
      Left = 19
      Top = 58
      Width = 25
      Height = 14
      Caption = 'Frete'
    end
    object Label9: TLabel
      Left = 184
      Top = 58
      Width = 35
      Height = 14
      Caption = 'Seguro'
    end
    object Label18: TLabel
      Left = 716
      Top = 56
      Width = 96
      Height = 14
      Hint = 'Chave da NF referenciada'
      Caption = 'Chave referenciada'
    end
    object DBEdit1: TDBEdit
      Left = 19
      Top = 34
      Width = 100
      Height = 22
      DataField = 'NF_BASEICMS'
      DataSource = DsNotaComplementar
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 184
      Top = 35
      Width = 100
      Height = 22
      DataField = 'NF_VL_ICMS'
      DataSource = DsNotaComplementar
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 331
      Top = 34
      Width = 100
      Height = 22
      DataField = 'NF_VLBASESUBTRIB'
      DataSource = DsNotaComplementar
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 479
      Top = 34
      Width = 100
      Height = 22
      DataField = 'NF_VL_SUBTRIB'
      DataSource = DsNotaComplementar
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 479
      Top = 72
      Width = 100
      Height = 22
      DataField = 'NF_VL_IPI'
      DataSource = DsNotaComplementar
      TabOrder = 8
    end
    object DBEdit6: TDBEdit
      Left = 603
      Top = 32
      Width = 100
      Height = 22
      DataField = 'NF_TOT_PROD'
      DataSource = DsNotaComplementar
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 603
      Top = 70
      Width = 100
      Height = 22
      DataField = 'NF_TOT_NOTA'
      DataSource = DsNotaComplementar
      TabOrder = 9
    end
    object DBEdit10: TDBEdit
      Left = 331
      Top = 72
      Width = 100
      Height = 22
      DataField = 'NF_DESP_ACES'
      DataSource = DsNotaComplementar
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 19
      Top = 72
      Width = 100
      Height = 22
      DataField = 'NF_VLFRETE'
      DataSource = DsNotaComplementar
      TabOrder = 5
    end
    object DBEdit9: TDBEdit
      Left = 184
      Top = 73
      Width = 100
      Height = 22
      DataField = 'NF_VLSEGURO'
      DataSource = DsNotaComplementar
      TabOrder = 6
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 709
      Top = 14
      Width = 250
      Height = 40
      Caption = 'Finalidade'
      Columns = 2
      DataField = 'nf_finalidade'
      DataSource = DsNotaComplementar
      Items.Strings = (
        'Complementar'
        'Ajuste')
      TabOrder = 10
      Values.Strings = (
        '2'
        '3')
    end
    object DBEdit17: TDBEdit
      Left = 716
      Top = 70
      Width = 282
      Height = 22
      Hint = 
        'Informar chave de 44 d'#237'gitos da Nfe de entrada da mercadoria que' +
        ' est'#225' sendo devolvida'
      CharCase = ecUpperCase
      DataField = 'NF_CHAVE_NFE_REFERENCIADA'
      DataSource = DsNotaComplementar
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
  end
  object BitConfirma: TBitBtn
    Left = 777
    Top = 570
    Width = 102
    Height = 25
    Caption = 'Confir&mar'
    TabOrder = 3
    TabStop = False
    OnClick = BitConfirmaClick
  end
  object BitCancelar: TBitBtn
    Left = 883
    Top = 570
    Width = 102
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 4
    TabStop = False
    OnClick = BitCancelarClick
  end
  object BitSair: TBitBtn
    Left = 987
    Top = 570
    Width = 100
    Height = 25
    Caption = '&Sair'
    TabOrder = 5
    TabStop = False
    OnClick = BitSairClick
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 298
    Width = 1099
    Height = 183
    Align = alTop
    Caption = 'Dados dos Produtos/Servi'#231'os'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 1095
      Height = 165
      Align = alClient
      DataSource = DsItemComplementar
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'PRD_REFER'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Cod.Produto'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 244
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'NF_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Unit.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nf_totalitem'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_ICMSALIQ'
          Title.Alignment = taCenter
          Title.Caption = 'ICMS Aliq.'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_ICMSBASE'
          Title.Alignment = taCenter
          Title.Caption = 'Base ICMS'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_ICMSVALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Vl. ICMS'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_ICMSREDUCAOPERC'
          Title.Caption = 'Redu'#231#227'o ICMS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_IPIALIQ'
          Title.Alignment = taCenter
          Title.Caption = 'IPI Aliq.'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_IPIVALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Vl. IPI'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_SUBTRIBASE'
          Title.Alignment = taCenter
          Title.Caption = 'Base ICMS ST'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_VLSUBST'
          Title.Alignment = taCenter
          Title.Caption = 'Vl. ICMS ST'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STB_TRIBUTACAO'
          Title.Alignment = taCenter
          Title.Caption = 'CST'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_CSOSN'
          Title.Alignment = taCenter
          Title.Caption = 'CSOSN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF_MVAPERC'
          Title.Alignment = taCenter
          Title.Caption = 'MVA%'
          Width = 50
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 125
    Width = 1099
    Height = 72
    Align = alTop
    TabOrder = 0
    object Label11: TLabel
      Left = 17
      Top = 23
      Width = 31
      Height = 14
      Caption = 'Fatura'
    end
    object Label12: TLabel
      Left = 100
      Top = 23
      Width = 40
      Height = 14
      Caption = 'Emiss'#227'o'
    end
    object Label13: TLabel
      Left = 180
      Top = 23
      Width = 48
      Height = 14
      Caption = 'Opera'#231#227'o'
    end
    object Label14: TLabel
      Left = 238
      Top = 25
      Width = 32
      Height = 14
      Caption = 'Cliente'
    end
    object Label15: TLabel
      Left = 752
      Top = 25
      Width = 59
      Height = 14
      Caption = 'Vlr.Produtos'
    end
    object Label16: TLabel
      Left = 859
      Top = 25
      Width = 62
      Height = 14
      Caption = 'Total da Nota'
    end
    object DBText1: TDBText
      Left = 184
      Top = 2
      Width = 65
      Height = 17
      DataField = 'OPE_NATUREZA'
      DataSource = DsNotaComplementar
    end
    object DBText2: TDBText
      Left = 233
      Top = 3
      Width = 474
      Height = 24
      DataField = 'cfop'
      DataSource = DsNotaComplementar
    end
    object Label19: TLabel
      Left = 148
      Top = 3
      Width = 30
      Height = 14
      Caption = 'CFOP:'
    end
    object DBEdit11: TDBEdit
      Left = 15
      Top = 40
      Width = 80
      Height = 22
      DataField = 'NF_NOTANUMBER'
      DataSource = DsNotaComplementar
      Enabled = False
      TabOrder = 0
    end
    object DBEdit12: TDBEdit
      Left = 98
      Top = 40
      Width = 80
      Height = 22
      DataField = 'NF_EMISSAO'
      DataSource = DsNotaComplementar
      Enabled = False
      TabOrder = 1
    end
    object DBEdit13: TDBEdit
      Left = 180
      Top = 40
      Width = 50
      Height = 22
      DataField = 'OPE_NATUREZA'
      DataSource = DsNotaComplementar
      Enabled = False
      TabOrder = 2
    end
    object DBEdit14: TDBEdit
      Left = 233
      Top = 40
      Width = 512
      Height = 22
      DataField = 'CLI_RAZAO'
      DataSource = DsNotaComplementar
      Enabled = False
      TabOrder = 3
    end
    object DBEdit15: TDBEdit
      Left = 752
      Top = 40
      Width = 100
      Height = 22
      DataField = 'NF_TOT_PROD'
      DataSource = DsNotaComplementar
      Enabled = False
      TabOrder = 4
    end
    object DBEdit16: TDBEdit
      Left = 859
      Top = 40
      Width = 100
      Height = 22
      DataField = 'NF_TOT_NOTA'
      DataSource = DsNotaComplementar
      Enabled = False
      TabOrder = 5
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 1099
    Height = 125
    Align = alTop
    Caption = 'Informativo'
    Enabled = False
    TabOrder = 6
    object mmo1: TMemo
      Left = 2
      Top = 16
      Width = 1095
      Height = 107
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Lines.Strings = (
        
          '1 - Devolu'#231#245'es com ajustes manuais de valores, bases e impostos,' +
          ' cuja as tributa'#231#245'es diferem de alguma forma das regras fiscais ' +
          'padr'#245'es.'
        '2 - Ajustes espec'#237'ficos para notas complementares'
        
          '3 - Ajustes manuais de valores em notas de entradas de Importa'#231#245 +
          'es / Exporta'#231#245'es'
        
          '4 - Nota de Devolu'#231#227'o, quando '#233' empresa do Simples Nacional os c' +
          'ampos a seguir tem o seguinte comportamento: IPI devolvido, Se o' +
          ' campo IPI estiver preenchido ele ser'#225' mostrado no XML '
        
          'no campo IPI devolvido sem mostrar no PDF; O campo ICMS e base I' +
          'CMS tem destaque normal nos campos pr'#243'prios e '#233' impresso na DANF' +
          'E, e o campo CSOSN dever'#225' ser o 900; PIS e COFINS '
        
          'informar o CST 99 (ourtas opera'#231#245'es) com base e valores zerados ' +
          'no XML')
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 481
    Width = 1099
    Height = 78
    Align = alTop
    Caption = 'Dados Adicionais'
    TabOrder = 7
    object DBMemo1: TDBMemo
      Left = 2
      Top = 16
      Width = 1095
      Height = 60
      Align = alClient
      DataField = 'NF_OBSERVACAO'
      DataSource = DsNotaComplementar
      TabOrder = 0
    end
  end
  object SqlCdsNotaComplementar: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT '#13#10'T1. *'#13#10' FROM NF0001 T1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterEdit = SqlCdsNotaComplementarAfterEdit
    OnCalcFields = SqlCdsNotaComplementarCalcFields
    CommandText = 'SELECT '#13#10'T1. *'#13#10' FROM NF0001 T1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 129
    Top = 308
    object SqlCdsNotaComplementarNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsNotaComplementarNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Required = True
      Size = 6
    end
    object SqlCdsNotaComplementarNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object SqlCdsNotaComplementarNF_SAIDA: TDateField
      FieldName = 'NF_SAIDA'
    end
    object SqlCdsNotaComplementarNF_VLFRETE: TFMTBCDField
      FieldName = 'NF_VLFRETE'
      DisplayFormat = '#,###0.00'
      EditFormat = '#,###0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_VLSEGURO: TFMTBCDField
      FieldName = 'NF_VLSEGURO'
      DisplayFormat = '#,###0.00'
      EditFormat = '#,###0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_DESP_ACES: TFMTBCDField
      FieldName = 'NF_DESP_ACES'
      DisplayFormat = '#,###0.00'
      EditFormat = '#,###0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_ALIQ_ICMS: TFMTBCDField
      FieldName = 'NF_ALIQ_ICMS'
      DisplayFormat = '#,###0.00'
      EditFormat = '#,###0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_BASEICMS: TFMTBCDField
      FieldName = 'NF_BASEICMS'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_VL_ICMS: TFMTBCDField
      FieldName = 'NF_VL_ICMS'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_VLBASESUBTRIB: TFMTBCDField
      FieldName = 'NF_VLBASESUBTRIB'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'NF_VL_SUBTRIB'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_TOT_CSUB: TFMTBCDField
      FieldName = 'NF_TOT_CSUB'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_TOT_PROD: TFMTBCDField
      FieldName = 'NF_TOT_PROD'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_VL_IPI: TFMTBCDField
      FieldName = 'NF_VL_IPI'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_BASE_IPI: TFMTBCDField
      FieldName = 'NF_BASE_IPI'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_VL_DESCTO: TFMTBCDField
      FieldName = 'NF_VL_DESCTO'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_PESOBRU: TFMTBCDField
      FieldName = 'NF_PESOBRU'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_PESOLIQ: TFMTBCDField
      FieldName = 'NF_PESOLIQ'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_ESPECIE: TStringField
      FieldName = 'NF_ESPECIE'
      Size = 25
    end
    object SqlCdsNotaComplementarNF_TP_DESCTO: TStringField
      FieldName = 'NF_TP_DESCTO'
      Size = 1
    end
    object SqlCdsNotaComplementarNF_BASE_ISS: TFMTBCDField
      FieldName = 'NF_BASE_ISS'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_VALOR_ISS: TFMTBCDField
      FieldName = 'NF_VALOR_ISS'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_ALIQPIS: TFMTBCDField
      FieldName = 'NF_ALIQPIS'
      DisplayFormat = '#,###0.00'
      EditFormat = '#,###0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_COMPLEMENTAR: TStringField
      FieldName = 'NF_COMPLEMENTAR'
      FixedChar = True
      Size = 1
    end
    object SqlCdsNotaComplementarNF_ALIQCOFINS: TFMTBCDField
      FieldName = 'NF_ALIQCOFINS'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_VALORTOT_PIS: TFMTBCDField
      FieldName = 'NF_VALORTOT_PIS'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_VALORTOT_COFINS: TFMTBCDField
      FieldName = 'NF_VALORTOT_COFINS'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaComplementarNF_OBSERVACAO: TBlobField
      FieldName = 'NF_OBSERVACAO'
    end
    object SqlCdsNotaComplementarNF_CHAVE_NFE_REFERENCIADA: TStringField
      FieldName = 'NF_CHAVE_NFE_REFERENCIADA'
      Size = 44
    end
    object SqlCdsNotaComplementarnf_finalidade: TIntegerField
      FieldName = 'nf_finalidade'
    end
    object SqlCdsNotaComplementarOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object SqlCdsNotaComplementarOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Size = 3
    end
    object SqlCdsNotaComplementarcfop: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'cfop'
      Size = 100
    end
    object SqlCdsNotaComplementarCLI_RAZAO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CLI_RAZAO'
      Size = 150
    end
    object SqlCdsNotaComplementarCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
  end
  object DsNotaComplementar: TDataSource
    DataSet = SqlCdsNotaComplementar
    Left = 137
    Top = 372
  end
  object CdsItemComplementar: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'Select'#13#10'T1.*'#13#10'from NF_IT01 T1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterEdit = CdsItemComplementarAfterEdit
    CommandText = 'Select'#13#10'T1.*'#13#10'from NF_IT01 T1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 272
    Top = 304
    object CdsItemComplementarNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsItemComplementarNF_IT_NOTANUMER: TStringField
      FieldName = 'NF_IT_NOTANUMER'
      Required = True
      Size = 6
    end
    object CdsItemComplementarPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsItemComplementarPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object CdsItemComplementarNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 5
    end
    object CdsItemComplementarNF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_IPIVALOR: TFMTBCDField
      FieldName = 'NF_IPIVALOR'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object CdsItemComplementarNF_VLSUBST: TFMTBCDField
      FieldName = 'NF_VLSUBST'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_IDESCTO1: TFMTBCDField
      FieldName = 'NF_IDESCTO1'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_IDESCTO2: TFMTBCDField
      FieldName = 'NF_IDESCTO2'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object CdsItemComplementarEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsItemComplementarNF_ICMSALIQ: TFMTBCDField
      FieldName = 'NF_ICMSALIQ'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_ICMSVALOR: TFMTBCDField
      FieldName = 'NF_ICMSVALOR'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_PMATPRIMA: TFMTBCDField
      FieldName = 'NF_PMATPRIMA'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_COMISSAO: TFMTBCDField
      FieldName = 'NF_COMISSAO'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_HORA: TTimeField
      FieldName = 'NF_HORA'
    end
    object CdsItemComplementarNTP_CFOP: TIntegerField
      FieldName = 'NTP_CFOP'
    end
    object CdsItemComplementarNF_IPIBASE: TFMTBCDField
      FieldName = 'NF_IPIBASE'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarnf_totalitem: TFMTBCDField
      FieldName = 'nf_totalitem'
      Precision = 15
    end
    object CdsItemComplementarNF_ICMSBASE: TFMTBCDField
      FieldName = 'NF_ICMSBASE'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_SUBTRIBASE: TFMTBCDField
      FieldName = 'NF_SUBTRIBASE'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_ALIQSUBTRIB: TFMTBCDField
      FieldName = 'NF_ALIQSUBTRIB'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_MVAPERC: TFMTBCDField
      FieldName = 'NF_MVAPERC'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_ICMSREDUCAOPERC: TFMTBCDField
      FieldName = 'NF_ICMSREDUCAOPERC'
      DisplayFormat = '0.0 %'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_ALIQDOSIMPLES: TFMTBCDField
      FieldName = 'NF_ALIQDOSIMPLES'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_CREDICMSDOSIMPLES: TFMTBCDField
      FieldName = 'NF_CREDICMSDOSIMPLES'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_IFRETE: TFMTBCDField
      FieldName = 'NF_IFRETE'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_ISEGURO: TFMTBCDField
      FieldName = 'NF_ISEGURO'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_IBASEISSQN: TFMTBCDField
      FieldName = 'NF_IBASEISSQN'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_IDESP_ACES: TFMTBCDField
      FieldName = 'NF_IDESP_ACES'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_IALIQISSQN: TFMTBCDField
      FieldName = 'NF_IALIQISSQN'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_IVLISSQN: TFMTBCDField
      FieldName = 'NF_IVLISSQN'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_CST_PIS: TFMTBCDField
      FieldName = 'NF_CST_PIS'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_BASE_PIS: TFMTBCDField
      FieldName = 'NF_BASE_PIS'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_ALIQPIS: TFMTBCDField
      FieldName = 'NF_ALIQPIS'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_VLPIS: TFMTBCDField
      FieldName = 'NF_VLPIS'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_CST_COFINS: TFMTBCDField
      FieldName = 'NF_CST_COFINS'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_BASE_COFINS: TFMTBCDField
      FieldName = 'NF_BASE_COFINS'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_ALIQCOFINS: TFMTBCDField
      FieldName = 'NF_ALIQCOFINS'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarNF_VLCOFINS: TFMTBCDField
      FieldName = 'NF_VLCOFINS'
      Precision = 15
      Size = 4
    end
    object CdsItemComplementarOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Size = 3
    end
    object CdsItemComplementarAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object CdsItemComplementarAMX_CODIGO_ORIGEM: TStringField
      FieldName = 'AMX_CODIGO_ORIGEM'
      Size = 4
    end
    object CdsItemComplementarUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CdsItemComplementarPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 6
    end
    object CdsItemComplementarPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
    end
    object CdsItemComplementarPRD_COMPL_DESCRI: TStringField
      FieldName = 'PRD_COMPL_DESCRI'
      Size = 500
    end
    object CdsItemComplementarSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 3
    end
    object CdsItemComplementarNF_CSOSN: TStringField
      FieldName = 'NF_CSOSN'
      Size = 3
    end
  end
  object DsItemComplementar: TDataSource
    DataSet = CdsItemComplementar
    Left = 257
    Top = 369
  end
end
