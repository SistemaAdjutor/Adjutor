object FrmInformativoNF: TFrmInformativoNF
  Left = 939
  Top = 65
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informativo das Opera'#231#245'es Fiscais'
  ClientHeight = 602
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 0
    Top = 49
    Width = 964
    Height = 507
    Align = alTop
    Caption = 'Totais'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 960
      Height = 457
      Align = alClient
      Color = 16776176
      DataSource = DsInfNF
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'OPE_NATUREZA'
          Title.Alignment = taCenter
          Title.Caption = 'CFOP'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_ICMS'
          Title.Alignment = taCenter
          Title.Caption = 'Base ICMS'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_ICMS'
          Title.Alignment = taCenter
          Title.Caption = 'Valor ICMS'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASE_ICMS_ST'
          Title.Alignment = taCenter
          Title.Caption = 'Base ICMS ST'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_ICMS_ST'
          Title.Alignment = taCenter
          Title.Caption = 'Valor ICMS ST'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_IPI'
          Title.Alignment = taCenter
          Title.Caption = 'Valor IPI'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_FRETE'
          Title.Alignment = taCenter
          Title.Caption = 'Frete'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_SEGURO'
          Title.Alignment = taCenter
          Title.Caption = 'Seguro'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_DESPESAS'
          Title.Alignment = taCenter
          Title.Caption = 'Despesas'
          Width = 100
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 473
      Width = 960
      Height = 32
      Align = alBottom
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 1
      object CurBaseICms: TCurrencyEdit
        Left = 148
        Top = 5
        Width = 100
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        ReadOnly = True
        TabOrder = 0
      end
      object CurValorIcms: TCurrencyEdit
        Left = 250
        Top = 5
        Width = 100
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        ReadOnly = True
        TabOrder = 1
      end
      object CurBaseIcmsST: TCurrencyEdit
        Left = 351
        Top = 5
        Width = 100
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        ReadOnly = True
        TabOrder = 2
      end
      object CurValorIcmsSt: TCurrencyEdit
        Left = 453
        Top = 5
        Width = 100
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        ReadOnly = True
        TabOrder = 3
      end
      object CurValorIPI: TCurrencyEdit
        Left = 554
        Top = 5
        Width = 100
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        ReadOnly = True
        TabOrder = 4
      end
      object CurValorFrete: TCurrencyEdit
        Left = 656
        Top = 5
        Width = 89
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        ReadOnly = True
        TabOrder = 5
      end
      object CurValorSeguro: TCurrencyEdit
        Left = 747
        Top = 5
        Width = 94
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        ReadOnly = True
        TabOrder = 6
      end
      object CurValorDespesas: TCurrencyEdit
        Left = 841
        Top = 5
        Width = 100
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        ReadOnly = True
        TabOrder = 7
      end
      object CurProdutos: TCurrencyEdit
        Left = 44
        Top = 5
        Width = 100
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        ReadOnly = True
        TabOrder = 8
      end
    end
  end
  object BitSair: TBitBtn
    Left = 856
    Top = 574
    Width = 100
    Height = 22
    Cancel = True
    Caption = '&Sair'
    TabOrder = 1
    OnClick = BitSairClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 964
    Height = 49
    Align = alTop
    TabOrder = 2
    object chkAutorizadas: TCheckBox
      Left = 24
      Top = 16
      Width = 97
      Height = 17
      Hint = 'Autorizadas'
      Caption = 'Vendas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = chkAutorizadasClick
    end
    object chkCanceladas: TCheckBox
      Left = 153
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Canceladas'
      TabOrder = 1
      OnClick = chkCanceladasClick
    end
  end
  object SqlInfNF: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'T2.OPE_NATUREZA,'#13#10'T2.OPE_DESCRI,'#13#10'SUM(T1.nf_qtde * t1.nf' +
      '_preco) AS produto,'#13#10'SUM(T1.nf_icmsbase) AS base_icms,'#13#10'SUM(T1.n' +
      'f_icmsvalor) AS valor_icms,'#13#10'SUM(T1.nf_subtribase) AS base_icms_' +
      'st,'#13#10'SUM(T1.nf_vlsubst) AS valor_icms_st,'#13#10'SUM(T1.nf_ipivalor) A' +
      'S valor_ipi,'#13#10'SUM(T1.nf_ifrete) AS valor_frete,'#13#10'SUM(T1.nf_isegu' +
      'ro) AS valor_seguro,'#13#10'SUM(T1.nf_idesp_aces) AS valor_despesas'#13#10'F' +
      'ROM nf_it01 T1'#13#10'JOIN OPE0000 T2 ON (T2.OPE_CODIGO = T1.OPE_CODIG' +
      'O)'#13#10'join nf0001 t3 on (t3.nf_notanumber = t1.nf_it_notanumer and' +
      ' t3.NF_EMISSAO BETWEEN '#39'01.02.2013'#39' AND '#39'28.02.2013'#39' AND t3.EMP_' +
      'CODIGO = '#39'001'#39' AND t3.NF_CANCELADA = '#39'N'#39')'#13#10'GROUP BY'#13#10'T2.OPE_NATU' +
      'REZA,'#13#10'T2.OPE_DESCRI'#13#10'ORDER BY'#13#10'T2.OPE_NATUREZA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 24
    Top = 80
    object SqlInfNFOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object SqlInfNFOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
    object SqlInfNFPRODUTO: TFMTBCDField
      FieldName = 'PRODUTO'
      Precision = 20
      Size = 10
    end
    object SqlInfNFBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlInfNFVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlInfNFBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlInfNFVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlInfNFVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlInfNFVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlInfNFVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlInfNFVALOR_DESPESAS: TFMTBCDField
      FieldName = 'VALOR_DESPESAS'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
  end
  object DspInfNF: TDataSetProvider
    DataSet = SqlInfNF
    Options = [poAllowCommandText]
    Left = 56
    Top = 80
  end
  object CdsInfNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspInfNF'
    Left = 88
    Top = 80
    object CdsInfNFOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object CdsInfNFOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
    object CdsInfNFPRODUTO: TFMTBCDField
      FieldName = 'PRODUTO'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 10
    end
    object CdsInfNFBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsInfNFVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsInfNFBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsInfNFVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsInfNFVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsInfNFVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsInfNFVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsInfNFVALOR_DESPESAS: TFMTBCDField
      FieldName = 'VALOR_DESPESAS'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
  end
  object DsInfNF: TDataSource
    DataSet = CdsInfNF
    Left = 120
    Top = 80
  end
end
