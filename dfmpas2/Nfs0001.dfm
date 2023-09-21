inherited FormNfEntrada: TFormNfEntrada
  Left = 26
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Entrada de Notas'
  ClientHeight = 605
  ClientWidth = 1763
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  ExplicitWidth = 1769
  ExplicitHeight = 634
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 44
    Width = 978
    Height = 186
    ActivePage = tsDadosNota
    TabOrder = 2
    object tsDadosNota: TTabSheet
      Caption = 'Dados da Nota'
      object Label24: TLabel
        Left = 6
        Top = 8
        Width = 77
        Height = 14
        Alignment = taRightJustify
        Caption = 'Chave NFe/CTe:'
      end
      object Label30: TLabel
        Left = 412
        Top = 7
        Width = 37
        Height = 14
        Caption = 'Modelo:'
      end
      object Label15: TLabel
        Left = 866
        Top = 7
        Width = 28
        Height = 14
        Caption = 'S'#233'rie:'
      end
      object Label16: TLabel
        Left = 40
        Top = 32
        Width = 43
        Height = 14
        Alignment = taRightJustify
        Caption = 'Emiss'#227'o:'
      end
      object Label20: TLabel
        Left = 237
        Top = 32
        Width = 40
        Height = 14
        Caption = 'Entrada:'
      end
      object Label19: TLabel
        Left = 419
        Top = 33
        Width = 30
        Height = 14
        Caption = 'CFOP:'
      end
      object lbl_frete: TLabel
        Left = 55
        Top = 59
        Width = 28
        Height = 14
        Alignment = taRightJustify
        Caption = 'Frete:'
      end
      object Label5: TLabel
        Left = 217
        Top = 57
        Width = 61
        Height = 14
        Caption = 'Vl. Frete (+):'
      end
      object LbFreteNaoNota: TLabel
        Left = 362
        Top = 59
        Width = 9
        Height = 16
        Hint = 'Frete n'#227'o participa do total da nota'
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
      object Label7: TLabel
        Left = 380
        Top = 59
        Width = 69
        Height = 14
        Caption = 'Despesas (+):'
      end
      object Label10: TLabel
        Left = 608
        Top = 58
        Width = 55
        Height = 14
        Caption = 'Seguro (+):'
      end
      object Label14: TLabel
        Left = 815
        Top = 58
        Width = 64
        Height = 14
        Caption = 'Desconto (-):'
      end
      object Label28: TLabel
        Left = 787
        Top = 82
        Width = 90
        Height = 14
        Caption = 'Valor total da nota:'
      end
      object LabCondPgto: TLabel
        Left = 20
        Top = 130
        Width = 61
        Height = 14
        Caption = 'Prazo Pagto:'
      end
      object Label4: TLabel
        Left = 562
        Top = 82
        Width = 97
        Height = 14
        Caption = 'Valor total produtos:'
      end
      object Label18: TLabel
        Left = 378
        Top = 82
        Width = 70
        Height = 14
        Caption = 'Valor do ICMS:'
      end
      object LblCtaAnalise: TLabel
        Left = 365
        Top = 106
        Width = 84
        Height = 14
        Caption = 'Conta Financeira:'
      end
      object Label2: TLabel
        Left = 178
        Top = 82
        Width = 99
        Height = 14
        Caption = 'Percentual ICMS(%):'
      end
      object Label31: TLabel
        Left = 182
        Top = 105
        Width = 94
        Height = 14
        Caption = 'Valor Subs.Trib (+):'
      end
      object Label17: TLabel
        Left = 28
        Top = 85
        Width = 55
        Height = 14
        Alignment = taRightJustify
        Caption = 'Base ICMS:'
      end
      object Label32: TLabel
        Left = 13
        Top = 108
        Width = 70
        Height = 14
        Alignment = taRightJustify
        Caption = 'Base ICMS ST:'
      end
      object BitOrdem: TSpeedButton
        Left = 882
        Top = 102
        Width = 81
        Height = 53
        Hint = 'Busca Ordem'
        Caption = 'Pedido Compra'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF314B62
          AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
          106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
          00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
          9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
          E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
          FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
          B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
          FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
          DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
          B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
          BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
          D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
          6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        OnClick = BitOrdemClick
      end
      object Label62: TLabel
        Left = 368
        Top = 130
        Width = 81
        Height = 14
        Alignment = taRightJustify
        Caption = 'Centro de Custo:'
      end
      object Label63: TLabel
        Left = 210
        Top = 130
        Width = 68
        Height = 14
        Caption = 'Tipo de pagto:'
      end
      object btnOutrosCustos: TSpeedButton
        Left = 799
        Top = 102
        Width = 81
        Height = 54
        Hint = 
          'Outros valores para ratear no custo : Frete por fora, diferen'#231'a ' +
          'de ICMS etc'
        Caption = 'Outros Custos'
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        OnClick = btnOutrosCustosClick
      end
      object Label9: TLabel
        Left = 788
        Top = 32
        Width = 35
        Height = 14
        Caption = 'Pedido:'
      end
      object SpeedButton1: TSpeedButton
        Left = 1002
        Top = 27
        Width = 23
        Height = 21
        Hint = 'Busca Ordem'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF314B62
          AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
          106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
          00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
          9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
          E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
          FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
          B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
          FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
          DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
          B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
          BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
          D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
          6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object DbeChaveNFe: TDBEdit
        Left = 83
        Top = 4
        Width = 326
        Height = 22
        CharCase = ecUpperCase
        DataField = 'ENF_CHAVE_NFE'
        DataSource = DataMovimento.DsEnf
        MaxLength = 44
        TabOrder = 0
        OnExit = DbeChaveNFeExit
      end
      object DBeModelo: TDBEdit
        Left = 451
        Top = 4
        Width = 31
        Height = 22
        CharCase = ecUpperCase
        DataField = 'ENF_MODELO_NF'
        DataSource = DataMovimento.DsEnf
        TabOrder = 1
      end
      object dblkcbbModeloNf: TDBLookupComboBox
        Left = 486
        Top = 4
        Width = 363
        Height = 22
        DataField = 'ENF_MODELO_NF'
        DataSource = DataMovimento.DsEnf
        KeyField = 'SMDF_CODIGO'
        ListField = 'SMDF_CODIGO;SMDF_DESCRICAO'
        ListFieldIndex = 1
        ListSource = dsModeloNotaFiscal
        TabOrder = 2
      end
      object DBeENF_SERIE: TDBEdit
        Left = 896
        Top = 4
        Width = 65
        Height = 22
        CharCase = ecUpperCase
        DataField = 'ENF_SERIE'
        DataSource = DataMovimento.DsEnf
        TabOrder = 3
        OnKeyPress = DBeENF_SERIEKeyPress
      end
      object DbeENF_EMISSAO: TDBDateEdit
        Left = 83
        Top = 29
        Width = 106
        Height = 22
        DataField = 'ENF_EMISSAO'
        DataSource = DataMovimento.DsEnf
        NumGlyphs = 2
        TabOrder = 4
        YearDigits = dyFour
        OnExit = DbeENF_EMISSAOExit
      end
      object DBeENF_ENTRADA: TDBDateEdit
        Left = 279
        Top = 29
        Width = 106
        Height = 22
        DataField = 'ENF_ENTRADA'
        DataSource = DataMovimento.DsEnf
        NumGlyphs = 2
        TabOrder = 5
        YearDigits = dyFour
        OnClick = DBeENF_ENTRADAClick
        OnEnter = DBeENF_ENTRADAClick
        OnExit = DBeENF_ENTRADAExit
      end
      object DbeOPE_NATUREZA: TDBEdit
        Left = 450
        Top = 29
        Width = 32
        Height = 22
        CharCase = ecUpperCase
        DataField = 'OPE_NATUREZA'
        DataSource = DataMovimento.DsEnf
        TabOrder = 6
        OnExit = DbeOPE_NATUREZAExit
      end
      object CbOP: TComboBox
        Left = 487
        Top = 30
        Width = 260
        Height = 22
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 7
        OnClick = CbOPClick
        OnExit = CbOPExit
      end
      object CbFreteT: TComboBox
        Left = 83
        Top = 55
        Width = 105
        Height = 22
        Style = csDropDownList
        CharCase = ecUpperCase
        TabOrder = 8
        Items.Strings = (
          'PAGO-CIF'
          #193' PAGAR-FOB'
          'OUTROS')
      end
      object CurrVlFrete: TCurrencyEdit
        Left = 279
        Top = 55
        Width = 82
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        TabOrder = 9
        ZeroEmpty = False
      end
      object CurrVlDespesas: TCurrencyEdit
        Left = 451
        Top = 55
        Width = 82
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        TabOrder = 10
        ZeroEmpty = False
        OnExit = CurrVlDespesasExit
      end
      object CurrVlSeguro: TCurrencyEdit
        Left = 665
        Top = 55
        Width = 82
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        TabOrder = 11
        ZeroEmpty = False
        OnExit = CurrVlSeguroExit
      end
      object CurrVlDescto: TCurrencyEdit
        Left = 881
        Top = 55
        Width = 82
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        TabOrder = 12
        ZeroEmpty = False
        OnExit = CurrVlDesctoExit
      end
      object CurrTotalNota: TCurrencyEdit
        Left = 881
        Top = 79
        Width = 82
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        TabOrder = 17
        ZeroEmpty = False
        OnExit = CurrTotalNotaExit
      end
      object CbPgto: TComboBox
        Left = 116
        Top = 127
        Width = 86
        Height = 22
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
        OnChange = CbPgtoChange
        OnClick = CbPgtoClick
        OnExit = CbPgtoClick
      end
      object EdtPcl_Codigo: TEdit
        Left = 83
        Top = 127
        Width = 31
        Height = 22
        MaxLength = 3
        TabOrder = 22
        OnExit = EdtPcl_CodigoExit
      end
      object Curr_Valor_Produtos: TCurrencyEdit
        Left = 665
        Top = 79
        Width = 82
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        TabOrder = 16
        ZeroEmpty = False
      end
      object CbCtaAnalise: TComboBox
        Left = 486
        Top = 103
        Width = 307
        Height = 22
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
        OnChange = CbCtaAnaliseChange
        OnExit = CbCtaAnaliseExit
      end
      object DbeCCT_CODIGO: TDBEdit
        Left = 451
        Top = 103
        Width = 33
        Height = 22
        DataField = 'CCT_CODIGO'
        DataSource = DataMovimento.DsEnf
        TabOrder = 20
        OnEnter = DbeCCT_CODIGOEnter
        OnExit = DbeCCT_CODIGOExit
      end
      object Curr_Vl_Icms: TCurrencyEdit
        Left = 451
        Top = 79
        Width = 82
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        TabOrder = 15
        OnExit = Curr_Vl_IcmsExit
      end
      object CurrVlST: TCurrencyEdit
        Left = 279
        Top = 103
        Width = 82
        Height = 21
        AutoSize = False
        DisplayFormat = '#,###,##0.00'
        TabOrder = 19
        ZeroEmpty = False
        OnExit = CurrVlSTExit
      end
      object CurrVlICms: TCurrencyEdit
        Left = 279
        Top = 79
        Width = 82
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        TabOrder = 14
        ZeroEmpty = False
        OnExit = CurrVlICmsExit
      end
      object CurrBaseIcms: TCurrencyEdit
        Left = 83
        Top = 79
        Width = 82
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        TabOrder = 13
        OnExit = CurrBaseIcmsExit
      end
      object CurrBaseST: TCurrencyEdit
        Left = 83
        Top = 103
        Width = 82
        Height = 21
        AutoSize = False
        DisplayFormat = '#,###,##0.00'
        TabOrder = 18
        ZeroEmpty = False
        OnExit = CurrVlDespesasExit
      end
      object DbePCX_CODIGO: TDBEdit
        Left = 451
        Top = 127
        Width = 32
        Height = 22
        DataField = 'PCX_CODIGO'
        DataSource = DataMovimento.DsEnf
        TabOrder = 24
        OnEnter = DbePCX_CODIGOEnter
        OnExit = DbePCX_CODIGOExit
      end
      object CbCentroCusto: TComboBox
        Left = 487
        Top = 127
        Width = 307
        Height = 22
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 25
        OnChange = CbCentroCustoChange
        OnExit = CbCentroCustoExit
      end
      object edTipoPagamento: TComboBox
        Left = 279
        Top = 127
        Width = 83
        Height = 22
        TabOrder = 26
        Text = 'Tipo de pagamento'
        OnChange = edTipoPagamentoChange
        Items.Strings = (
          #192' vista'
          'A prazo'
          'Outros'
          'Cart'#227'o de cr'#233'dito'
          'Cart'#227'o de d'#233'bito'
          'Sem pagamento')
      end
      object edPedidodireto: TEdit
        Left = 828
        Top = 30
        Width = 108
        Height = 22
        TabStop = False
        MaxLength = 6
        TabOrder = 27
        OnExit = edPedidodiretoExit
      end
    end
    object tsObservacao: TTabSheet
      Caption = 'Dados Adicionais ou OBS'
      ImageIndex = 1
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 970
        Height = 157
        Align = alClient
        DataField = 'ENF_DADOS_ADICIONAIS'
        DataSource = DataMovimento.DsEnf
        TabOrder = 0
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Informa'#231#245'es ao Fisco'
      ImageIndex = 2
      object DBMemo2: TDBMemo
        Left = 0
        Top = 0
        Width = 970
        Height = 157
        Align = alClient
        DataField = 'ENF_DADOS_ADICIONAIS_FISCO'
        DataSource = DataMovimento.DsEnf
        TabOrder = 0
      end
    end
  end
  object Grp003: TGroupBox [1]
    Left = 2
    Top = 224
    Width = 976
    Height = 205
    Color = clBtnFace
    Enabled = False
    ParentColor = False
    TabOrder = 3
    object Label23: TLabel
      Left = 190
      Top = 157
      Width = 46
      Height = 14
      Caption = 'Produtos:'
    end
    object Label25: TLabel
      Left = 806
      Top = 181
      Width = 71
      Height = 14
      Caption = 'Total Faturado:'
    end
    object Label52: TLabel
      Left = 2
      Top = 157
      Width = 99
      Height = 14
      Caption = 'Quantidade de Itens:'
    end
    object Label53: TLabel
      Left = 338
      Top = 157
      Width = 55
      Height = 14
      Alignment = taRightJustify
      Caption = 'Base ICMS:'
    end
    object Label54: TLabel
      Left = 493
      Top = 157
      Width = 55
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor ICMS:'
    end
    object Label3: TLabel
      Left = 643
      Top = 157
      Width = 70
      Height = 14
      Alignment = taRightJustify
      Caption = 'Base ICMS ST:'
    end
    object Label21: TLabel
      Left = 807
      Top = 157
      Width = 70
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor ICMS ST:'
    end
    object Label22: TLabel
      Left = 195
      Top = 181
      Width = 41
      Height = 14
      Alignment = taRightJustify
      Caption = 'Base IPI:'
    end
    object Label55: TLabel
      Left = 352
      Top = 181
      Width = 41
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor IPI:'
    end
    object Label56: TLabel
      Left = 502
      Top = 181
      Width = 46
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor PIS:'
    end
    object Label57: TLabel
      Left = 651
      Top = 181
      Width = 62
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Cofins:'
    end
    object DbGridComOC: TDBGrid
      Left = 2
      Top = 16
      Width = 972
      Height = 133
      Align = alTop
      Color = 16776176
      DataSource = DsGridComOC
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDblClick = DbGridComOCDblClick
      OnKeyPress = DbGridComOCKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 319
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCI_QTDES'
          Title.Alignment = taCenter
          Title.Caption = 'Solicitada'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCI_QTDER'
          Title.Alignment = taCenter
          Title.Caption = 'Recebida'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 61
          Visible = True
        end
        item
          Color = 13434879
          Expanded = False
          FieldName = 'ENTRADA_CC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Entrada'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCI_PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'Vl.Unit'#225'rio'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCI_TOTAL_CC'
          Title.Alignment = taCenter
          Title.Caption = 'Vl.Total'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCI_IPI'
          Title.Alignment = taCenter
          Title.Caption = 'IPI'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCI_ICMS'
          Title.Alignment = taCenter
          Title.Caption = 'ICMS'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ICMS ST'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCI_SITUACAO_CC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Situa'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCI_CFOP'
          Title.Alignment = taCenter
          Title.Caption = 'CFOP'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 26
          Visible = True
        end>
    end
    object DBGridSemOC: TDBGrid
      Left = 3
      Top = 15
      Width = 967
      Height = 134
      Color = 16776176
      DataSource = DsGridSemOC
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      PopupMenu = PopupMenu1
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDblClick = DBGridSemOCDblClick
      OnKeyPress = DBGridSemOCKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'Vl.Unit'#225'rio'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_TOTAL_CC'
          Title.Alignment = taCenter
          Title.Caption = 'Vl.Total'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCP_CODIGO'
          Title.Caption = 'Ped. Compra'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_CFOP'
          Title.Caption = 'CFOP'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_CFOP_RETORNO'
          Title.Caption = 'CFOP Retorno'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_ORIGEM_MERCADORIA'
          Title.Caption = 'Origem'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STB_TRIBUTACAO'
          Title.Caption = 'CST'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_BASEICMS'
          Title.Alignment = taCenter
          Title.Caption = 'Base ICMS'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_ICMSALIQ'
          Title.Alignment = taCenter
          Title.Caption = 'Aliq. ICMS'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_ICMS'
          Title.Alignment = taCenter
          Title.Caption = 'ICMS'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_BASESUBTRIB'
          Title.Alignment = taCenter
          Title.Caption = 'Base ICMS ST'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_ALIQSUBTRIB'
          Title.Alignment = taCenter
          Title.Caption = 'Aliq. ICMS ST'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_VLSUBST'
          Title.Alignment = taCenter
          Title.Caption = 'ICMS ST'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CST_IPI'
          Title.Caption = 'CST IPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_BASEIPI'
          Title.Alignment = taCenter
          Title.Caption = 'Base IPI'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IPIALIQ'
          Title.Alignment = taCenter
          Title.Caption = 'Aliq. IPI'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_VLIPI'
          Title.Alignment = taCenter
          Title.Caption = 'IPI'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_VALFRETE'
          Title.Alignment = taCenter
          Title.Caption = 'Frete'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_VLSEGURO'
          Title.Alignment = taCenter
          Title.Caption = 'Seguro'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_VLDESP_ACES'
          Title.Alignment = taCenter
          Title.Caption = 'Despesas'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CST_PIS'
          Title.Alignment = taCenter
          Title.Caption = 'CST PIS'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_BASEPIS'
          Title.Alignment = taCenter
          Title.Caption = 'Base PIS'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_ALIQPIS'
          Title.Alignment = taCenter
          Title.Caption = 'Aliq. PIS'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_VLPIS'
          Title.Alignment = taCenter
          Title.Caption = 'PIS'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CST_COFINS'
          Title.Alignment = taCenter
          Title.Caption = 'CST COFINS'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_BASECOFINS'
          Title.Alignment = taCenter
          Title.Caption = 'Base COFINS'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_ALIQCOFINS'
          Title.Alignment = taCenter
          Title.Caption = 'Aliq. COFINS'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_VLCOFINS'
          Title.Alignment = taCenter
          Title.Caption = 'COFINS'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_CODIGO'
          Title.Caption = 'Cod'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Almoxarifado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 163
          Visible = True
        end>
    end
    object CurTotalProdutos: TCurrencyEdit
      Left = 239
      Top = 154
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = False
    end
    object NTotalGeral: TCurrencyEdit
      Left = 881
      Top = 178
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      ReadOnly = True
      TabOrder = 2
      ZeroEmpty = False
      OnChange = NTotalGeralChange
    end
    object CurTotalItens: TCurrencyEdit
      Left = 105
      Top = 155
      Width = 70
      Height = 21
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DisplayFormat = '0000'
      ReadOnly = True
      TabOrder = 4
      ZeroEmpty = False
      OnExit = CrCfopItemExit
    end
    object CurTotalBaseICMS: TCurrencyEdit
      Left = 394
      Top = 154
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      ReadOnly = True
      TabOrder = 5
      ZeroEmpty = False
    end
    object CurTotalValorICMS: TCurrencyEdit
      Left = 551
      Top = 154
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      ReadOnly = True
      TabOrder = 6
      ZeroEmpty = False
    end
    object CurTotalValorICMSST: TCurrencyEdit
      Left = 880
      Top = 154
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      ReadOnly = True
      TabOrder = 7
      ZeroEmpty = False
    end
    object CurTotalBaseICMSST: TCurrencyEdit
      Left = 715
      Top = 154
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      ReadOnly = True
      TabOrder = 8
      ZeroEmpty = False
    end
    object CurTotalBaseIPI: TCurrencyEdit
      Left = 239
      Top = 178
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      ReadOnly = True
      TabOrder = 9
      ZeroEmpty = False
    end
    object CurTotalValorIPI: TCurrencyEdit
      Left = 394
      Top = 178
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      ReadOnly = True
      TabOrder = 10
      ZeroEmpty = False
    end
    object CurTotalValorPIS: TCurrencyEdit
      Left = 551
      Top = 178
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      ReadOnly = True
      TabOrder = 11
      ZeroEmpty = False
    end
    object CurTotalValorCofins: TCurrencyEdit
      Left = 715
      Top = 178
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      ReadOnly = True
      TabOrder = 12
      ZeroEmpty = False
    end
  end
  object GrpDigitaItens: TGroupBox [2]
    Left = 0
    Top = 429
    Width = 978
    Height = 140
    Color = clBtnFace
    Ctl3D = True
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 4
    object Label11: TLabel
      Left = 6
      Top = 8
      Width = 53
      Height = 14
      Caption = '&Refer'#234'ncia'
      FocusControl = CbRef
    end
    object Label13: TLabel
      Left = 270
      Top = 48
      Width = 28
      Height = 14
      Caption = 'Pre'#231'o'
    end
    object Label26: TLabel
      Left = 112
      Top = 8
      Width = 52
      Height = 14
      Caption = 'Descri'#231#227'o '
    end
    object Label37: TLabel
      Left = 70
      Top = 48
      Width = 39
      Height = 14
      Caption = 'Estoque'
    end
    object Label27: TLabel
      Left = 155
      Top = 48
      Width = 55
      Height = 14
      Caption = 'Quantidade'
    end
    object SpPesquisa: TSpeedButton
      Left = 513
      Top = 22
      Width = 24
      Height = 21
      Hint = 'Busca Produto'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
        00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
        9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
        E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
        FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
        B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
        FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
        DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
        B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
        BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
        D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
        6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpPesquisaClick
    end
    object LblAlmox: TLabel
      Left = 2
      Top = 89
      Width = 67
      Height = 14
      Caption = 'Almoxarifado:'
    end
    object LblLote: TLabel
      Left = 45
      Top = 113
      Width = 24
      Height = 14
      Caption = 'Lote:'
    end
    object Label6: TLabel
      Left = 470
      Top = 48
      Width = 27
      Height = 14
      Caption = 'CFOP'
    end
    object btnCadastroLote: TSpeedButton
      Left = 506
      Top = 111
      Width = 31
      Height = 23
      Hint = 'Cadastro de Natureza de Opera'#231#227'o'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCadastroLoteClick
    end
    object Label59: TLabel
      Left = 350
      Top = 48
      Width = 37
      Height = 14
      Caption = '% ICMS'
    end
    object Label60: TLabel
      Left = 412
      Top = 48
      Width = 23
      Height = 14
      Caption = '% IPI'
    end
    object Label67: TLabel
      Left = 236
      Top = 47
      Width = 19
      Height = 14
      Caption = 'Und'
    end
    object Label69: TLabel
      Left = 312
      Top = 89
      Width = 41
      Height = 14
      Caption = 'C. Custo'
    end
    object CurrQtdeS: TCurrencyEdit
      Left = 12
      Top = 52
      Width = 21
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Enabled = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 11
      Visible = False
      ZeroEmpty = False
    end
    object CurrPreco: TCurrencyEdit
      Left = 268
      Top = 62
      Width = 80
      Height = 21
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '###,##0.00000'
      Enabled = False
      TabOrder = 4
      ZeroEmpty = False
      OnClick = CurrPrecoClick
      OnEnter = CurrPrecoClick
      OnExit = CurrPrecoExit
    end
    object CurrSaldo: TCurrencyEdit
      Left = 71
      Top = 62
      Width = 80
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 4
      DisplayFormat = ',0.0000;-,0.0000'
      ReadOnly = True
      TabOrder = 2
      ZeroEmpty = False
    end
    object CurrQtdeR: TCurrencyEdit
      Left = 154
      Top = 62
      Width = 78
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,##0.0000'
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 3
      ZeroEmpty = False
      OnEnter = CurrQtdeREnter
      OnExit = CurrQtdeRExit
    end
    object EdDescricao: TEdit
      Left = 115
      Top = 22
      Width = 393
      Height = 22
      CharCase = ecUpperCase
      Color = 14145495
      ReadOnly = True
      TabOrder = 1
    end
    object EdtAlmox: TEdit
      Left = 71
      Top = 86
      Width = 35
      Height = 22
      MaxLength = 4
      TabOrder = 8
      OnClick = EdtAlmoxClick
      OnExit = EdtAlmoxExit
      OnKeyPress = EdtAlmoxKeyPress
    end
    object CbAlmox: TComboBox
      Left = 106
      Top = 86
      Width = 192
      Height = 22
      CharCase = ecUpperCase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = CbAlmoxClick
      OnExit = CbAlmoxClick
    end
    object BitConfirmar: TBitBtn
      Left = 761
      Top = 107
      Width = 100
      Height = 25
      Caption = 'Con&firmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 13
      OnClick = BitConfirmarClick
    end
    object BitCancelItem: TBitBtn
      Left = 867
      Top = 107
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033333333333333333333333F333333333333
        0000333333333333333333333388F333333F3333000033300333333300033333
        38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
        000333000333333338F3338F833338F3000033333000300033333333338F3338
        3333F8330000333333000003333333333338F333333F83330000333333300033
        3333333333338F3333383333000033333300000333333333333338F333833333
        00003333300030003333333333333833338F3333000033330003330003333333
        33338333338F333300003330003333300033333333383338F338F33300003330
        0333333300033333338333838F338F3300003333333333333003333333833833
        38F338F300003333333333333333333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      TabStop = False
      OnClick = BitCancelItemClick
    end
    object CbRef: TComboBox
      Left = 4
      Top = 22
      Width = 105
      Height = 22
      CharCase = ecUpperCase
      Ctl3D = True
      Enabled = False
      MaxLength = 11
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = CbRefClick
      OnExit = CbRefExit
    end
    object Edt_Almox_ant: TEdit
      Left = 15
      Top = 109
      Width = 24
      Height = 22
      MaxLength = 3
      TabOrder = 15
      Visible = False
    end
    object Bit_Estoque: TBitBtn
      Left = 580
      Top = 107
      Width = 135
      Height = 25
      Cursor = crHandPoint
      Caption = 'Incluir prod&uto Novo'
      TabOrder = 16
      OnClick = Bit_EstoqueClick
    end
    object CrCfopItem: TCurrencyEdit
      Left = 468
      Top = 62
      Width = 71
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DisplayFormat = '0000'
      TabOrder = 7
      ZeroEmpty = False
      OnExit = CrCfopItemExit
    end
    object pgcImpostos: TPageControl
      Left = 548
      Top = 13
      Width = 421
      Height = 88
      ActivePage = tsPedidoCompra
      TabOrder = 12
      object tsIcms: TTabSheet
        Caption = 'ICMS'
        object Label34: TLabel
          Left = 144
          Top = 11
          Width = 22
          Height = 14
          Alignment = taRightJustify
          Caption = 'CST:'
        end
        object Label36: TLabel
          Left = 6
          Top = 36
          Width = 55
          Height = 14
          Alignment = taRightJustify
          Caption = 'Base ICMS:'
        end
        object Label38: TLabel
          Left = 163
          Top = 36
          Width = 42
          Height = 14
          Alignment = taRightJustify
          Caption = 'Al'#237'quota:'
        end
        object Label39: TLabel
          Left = 296
          Top = 36
          Width = 28
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor:'
        end
        object Label68: TLabel
          Left = 3
          Top = 11
          Width = 34
          Height = 14
          Caption = 'Origem'
        end
        object cbbItemCST: TComboBox
          Left = 168
          Top = 8
          Width = 241
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 0
          Items.Strings = (
            '00 - TRIBUTADA INTEGRALMENTE'
            '10 - TRIBUTADA COM COBRAN'#199'A DO ICMS POR SUBSTITUI'#199#195'O TRIBUTARIA'
            '20 - COM REDU'#199#195'O DE BASE DE C'#193'CULO'
            
              '30 - ISENTA OU N'#195'O TRIBUTADA E C/ COBRAN'#199'A DO ICMS POR  SUBSTITU' +
              'I'
            '40 - ISENTA'
            '41 - N'#195'O TRIBUTADA'
            '50 - SUSPENS'#195'O'
            '51 - DIFERIMENTO'
            '60 - ICMS COBRADO ANTERIORMENTE POR SUBSTITUI'#199#195'O TRIBUT'#193'RIA'
            '70 - COM REDU'#199#195'O DE BASE C'#193'LCULO E COBRAN'#199'A DO ICMS SUB. TRIB.'
            '90 - OUTROS')
        end
        object CurItemBaseICMS: TCurrencyEdit
          Left = 64
          Top = 33
          Width = 82
          Height = 21
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          TabOrder = 1
          OnExit = CurrBaseIcmsExit
        end
        object CurItemAliquotaICMS: TCurrencyEdit
          Left = 207
          Top = 33
          Width = 55
          Height = 21
          AutoSize = False
          DisplayFormat = '##0.00'
          TabOrder = 2
          ZeroEmpty = False
          OnClick = CurrIpiClick
          OnEnter = CurrIpiClick
        end
        object CurItemValorICMS: TCurrencyEdit
          Left = 327
          Top = 33
          Width = 82
          Height = 21
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          TabOrder = 3
          OnEnter = CurItemValorICMSEnter
        end
        object cbENF_ORIGEM_MERCADORIA: TComboBox
          Left = 43
          Top = 8
          Width = 95
          Height = 22
          Hint = 
            '0 - Nacional: exceto as indicadas nos c'#243'digos 3, 4, 5 e 8'#13#10'1 - E' +
            'strangeira: importa'#231#227'o direta, exceto a indicada no c'#243'digo 6'#13#10'2 ' +
            '- Estrangeira: adquirida no mercado interno, exceto a indicada n' +
            'o c'#243'digo 7'#13#10'3 - Nacional: mercadoria ou bem com conte'#250'do de impo' +
            'rta'#231#227'o superior a 40% e inferior ou igual a 70%'#13#10'4 - Nacional: c' +
            'uja produ'#231#227'o tenha sido feita em conformidade com os processos p' +
            'rodutivos b'#225'sicos de que tratam o Decreto-Lei n'#186' 288/1967, e as ' +
            'Leis n'#186' 8.248/1991, 8.387/1991, 10.176/2001 e 11.484/2007'#13#10'5 - N' +
            'acional: mercadoria ou bem com Conte'#250'do de Importa'#231#227'o inferior o' +
            'u igual a 40%'#13#10'6 - Estrangeira: importa'#231#227'o direta, sem similar n' +
            'acional, constante em lista de Resolu'#231#227'o Camex e g'#225's natural'#13#10'7 ' +
            '- Estrangeira: adquirida no mercado interno, sem similar naciona' +
            'l, constante em lista de Resolu'#231#227'o Camex e g'#225's natural'#13#10'8 - Naci' +
            'onal:'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Items.Strings = (
            '0 - Nacional'
            '1 - Estrangeira'
            '2 - Estrangeira'
            '3 - Nacional'
            '4 - Nacional'
            '5 - Nacional'
            '6 - Estrangeira'
            '7 - Estrangeira'
            '8 - Nacional')
        end
      end
      object tsICMSST: TTabSheet
        Caption = 'ICMS ST'
        ImageIndex = 1
        object Label40: TLabel
          Left = 18
          Top = 11
          Width = 43
          Height = 14
          Alignment = taRightJustify
          Caption = 'Base ST:'
        end
        object Label41: TLabel
          Left = 171
          Top = 11
          Width = 42
          Height = 14
          Alignment = taRightJustify
          Caption = 'Al'#237'quota:'
        end
        object Label42: TLabel
          Left = 296
          Top = 11
          Width = 28
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor:'
        end
        object CurItemBaseICMSST: TCurrencyEdit
          Left = 64
          Top = 8
          Width = 82
          Height = 21
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          TabOrder = 0
          OnExit = CurrBaseIcmsExit
        end
        object CurItemAliquotaICMSST: TCurrencyEdit
          Left = 215
          Top = 8
          Width = 55
          Height = 21
          AutoSize = False
          DisplayFormat = '##0.00'
          TabOrder = 1
          ZeroEmpty = False
          OnClick = CurrIpiClick
          OnEnter = CurrIpiClick
        end
        object CurItemValorICMSST: TCurrencyEdit
          Left = 327
          Top = 8
          Width = 82
          Height = 21
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          TabOrder = 2
          OnEnter = CurItemValorICMSSTEnter
        end
      end
      object tsIPI: TTabSheet
        Caption = 'IPI'
        ImageIndex = 2
        object Label29: TLabel
          Left = 40
          Top = 11
          Width = 22
          Height = 14
          Alignment = taRightJustify
          Caption = 'CST:'
        end
        object Label33: TLabel
          Left = 20
          Top = 36
          Width = 41
          Height = 14
          Alignment = taRightJustify
          Caption = 'Base IPI:'
        end
        object Label35: TLabel
          Left = 163
          Top = 36
          Width = 42
          Height = 14
          Alignment = taRightJustify
          Caption = 'Al'#237'quota:'
        end
        object Label43: TLabel
          Left = 296
          Top = 36
          Width = 28
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor:'
        end
        object cbbItemCSTIPI: TComboBox
          Left = 64
          Top = 8
          Width = 345
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 0
          Items.Strings = (
            '00 - Entrada com Recupera'#231#227'o de Cr'#233'dito '
            '01 - Entrada Tribut'#225'vel com Al'#237'quota Zero '
            '02 - Entrada Isenta '
            '03 - Entrada N'#227'o Tributada '
            '04 - Entrada Imune '
            '05 - Entrada com Suspens'#227'o'
            '49 - Outras Entradas'
            '50 - Sa'#237'da Tributada '
            '51 - Sa'#237'da Tribut'#225'vel com Al'#237'quota Zero '
            '52 - Sa'#237'da Isenta'
            '53 - Sa'#237'da N'#227'o Tributada'
            '54 - Sa'#237'da Imune'
            '55 - Sa'#237'da com Suspens'#227'o'
            '99 - Outras Sa'#237'das')
        end
        object CurItemBaseIPI: TCurrencyEdit
          Left = 64
          Top = 33
          Width = 82
          Height = 21
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          TabOrder = 1
          OnExit = CurrBaseIcmsExit
        end
        object CurItemAliquotaIPI: TCurrencyEdit
          Left = 207
          Top = 33
          Width = 55
          Height = 21
          AutoSize = False
          DisplayFormat = '##0.00'
          TabOrder = 2
          ZeroEmpty = False
          OnClick = CurrIpiClick
          OnEnter = CurrIpiClick
        end
        object CurItemValorIPI: TCurrencyEdit
          Left = 327
          Top = 33
          Width = 82
          Height = 21
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          TabOrder = 3
          OnEnter = CurItemValorIPIEnter
        end
      end
      object tsPIS: TTabSheet
        Caption = 'PIS'
        ImageIndex = 3
        object Label44: TLabel
          Left = 40
          Top = 11
          Width = 22
          Height = 14
          Alignment = taRightJustify
          Caption = 'CST:'
        end
        object Label45: TLabel
          Left = 15
          Top = 36
          Width = 46
          Height = 14
          Alignment = taRightJustify
          Caption = 'Base PIS:'
        end
        object Label46: TLabel
          Left = 155
          Top = 36
          Width = 42
          Height = 14
          Alignment = taRightJustify
          Caption = 'Al'#237'quota:'
        end
        object Label47: TLabel
          Left = 296
          Top = 36
          Width = 28
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor:'
        end
        object cbbItemCSTPIS: TComboBox
          Left = 64
          Top = 8
          Width = 346
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 0
          Items.Strings = (
            '01 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
            '02 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
            
              '03 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de P' +
              'roduto'
            '04 - Opera'#231#227'o Tribut'#225'vel Monof'#225'sica '#8211' Revenda a Al'#237'quota Zero'
            '05 - Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
            '06 - Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
            '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o'
            '08 - Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
            '49 - Outras Opera'#231#245'es de Sa'#237'da'
            
              '50 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada Exclusivamente a' +
              ' Receita Tributada no Mercado Interno'
            
              '51 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada Exclusivamente a' +
              ' Receita N'#227'o Tributada no Mercado Interno'
            
              '52 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada Exclusivamente a' +
              ' Receita de Exporta'#231#227'o'
            
              '53 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada a Receitas Tribu' +
              'tadas e N'#227'o-Tributadas no Mercado Interno'
            
              '54 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada a Receitas Tribu' +
              'tadas no Mercado Interno e de Exporta'#231#227'o'
            
              '55 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada a Receitas N'#227'o-T' +
              'ributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '56 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada a Receitas Tribu' +
              'tadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o'
            
              '60 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
              'vamente a Receita Tributada no Mercado Interno'
            
              '61 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
              'vamente a Receita N'#227'o-Tributada no Mercado Interno'
            
              '62 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
              'vamente a Receita de Exporta'#231#227'o'
            
              '63 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
              'tas Tributadas e N'#227'o-Tributadas no Mercado Interno'
            
              '64 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
              'tas Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '65 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
              'tas N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '66 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
              'tas Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta' +
              #231#227'o'
            '67 - Cr'#233'dito Presumido '#8211' Outras Opera'#231#245'es'
            '70 - Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
            '71 - Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
            '72 - Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
            '73 - Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
            '74 - Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '75 - Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
            '98 - Outras Opera'#231#245'es de Entrada'
            '99 - Outras Opera'#231#245'es')
        end
        object CurItemBasePIS: TCurrencyEdit
          Left = 64
          Top = 33
          Width = 82
          Height = 21
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          TabOrder = 1
          OnExit = CurrBaseIcmsExit
        end
        object CurItemAliquotaPIS: TCurrencyEdit
          Left = 199
          Top = 33
          Width = 55
          Height = 21
          AutoSize = False
          DisplayFormat = '##0.00'
          TabOrder = 2
          ZeroEmpty = False
          OnClick = CurrIpiClick
          OnEnter = CurrIpiClick
        end
        object CurItemValorPIS: TCurrencyEdit
          Left = 327
          Top = 33
          Width = 82
          Height = 21
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          TabOrder = 3
          OnEnter = CurItemValorPISEnter
        end
      end
      object tsCOFINS: TTabSheet
        Caption = 'COFINS'
        ImageIndex = 4
        object Label48: TLabel
          Left = 40
          Top = 11
          Width = 22
          Height = 14
          Alignment = taRightJustify
          Caption = 'CST:'
        end
        object Label49: TLabel
          Left = 33
          Top = 36
          Width = 28
          Height = 14
          Alignment = taRightJustify
          Caption = 'Base:'
        end
        object Label50: TLabel
          Left = 163
          Top = 36
          Width = 42
          Height = 14
          Alignment = taRightJustify
          Caption = 'Al'#237'quota:'
        end
        object Label51: TLabel
          Left = 296
          Top = 36
          Width = 28
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor:'
        end
        object cbbItemCSTCofins: TComboBox
          Left = 64
          Top = 8
          Width = 347
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 0
          Items.Strings = (
            '01 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota B'#225'sica'
            '02 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota Diferenciada'
            
              '03 - Opera'#231#227'o Tribut'#225'vel com Al'#237'quota por Unidade de Medida de P' +
              'roduto'
            '04 - Opera'#231#227'o Tribut'#225'vel Monof'#225'sica '#8211' Revenda a Al'#237'quota Zero'
            '05 - Opera'#231#227'o Tribut'#225'vel por Substitui'#231#227'o Tribut'#225'ria'
            '06 - Opera'#231#227'o Tribut'#225'vel a Al'#237'quota Zero'
            '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o'
            '08 - Opera'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o'
            '49 - Outras Opera'#231#245'es de Sa'#237'da'
            
              '50 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada Exclusivamente a' +
              ' Receita Tributada no Mercado Interno'
            
              '51 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada Exclusivamente a' +
              ' Receita N'#227'o Tributada no Mercado Interno'
            
              '52 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada Exclusivamente a' +
              ' Receita de Exporta'#231#227'o'
            
              '53 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada a Receitas Tribu' +
              'tadas e N'#227'o-Tributadas no Mercado Interno'
            
              '54 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada a Receitas Tribu' +
              'tadas no Mercado Interno e de Exporta'#231#227'o'
            
              '55 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada a Receitas N'#227'o-T' +
              'ributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '56 - Opera'#231#227'o com Direito a Cr'#233'dito '#8211' Vinculada a Receitas Tribu' +
              'tadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o'
            
              '60 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
              'vamente a Receita Tributada no Mercado Interno'
            
              '61 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
              'vamente a Receita N'#227'o-Tributada no Mercado Interno'
            
              '62 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
              'vamente a Receita de Exporta'#231#227'o'
            
              '63 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
              'tas Tributadas e N'#227'o-Tributadas no Mercado Interno'
            
              '64 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
              'tas Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '65 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
              'tas N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'
            
              '66 - Cr'#233'dito Presumido '#8211' Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
              'tas Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta' +
              #231#227'o'
            '67 - Cr'#233'dito Presumido '#8211' Outras Opera'#231#245'es'
            '70 - Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito'
            '71 - Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'
            '72 - Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'
            '73 - Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero'
            '74 - Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o'
            '75 - Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria'
            '98 - Outras Opera'#231#245'es de Entrada'
            '99 - Outras Opera'#231#245'es')
        end
        object CurItemBaseCofins: TCurrencyEdit
          Left = 64
          Top = 33
          Width = 82
          Height = 21
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          TabOrder = 1
          OnExit = CurrBaseIcmsExit
        end
        object CurItemAliquotaCofins: TCurrencyEdit
          Left = 207
          Top = 33
          Width = 55
          Height = 21
          AutoSize = False
          DisplayFormat = '##0.00'
          TabOrder = 2
          ZeroEmpty = False
          OnClick = CurrIpiClick
          OnEnter = CurrIpiClick
        end
        object CurItemValorCofins: TCurrencyEdit
          Left = 327
          Top = 33
          Width = 82
          Height = 21
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          TabOrder = 3
          OnEnter = CurItemValorCofinsEnter
        end
      end
      object tsPedidoCompra: TTabSheet
        Caption = 'Pedido de Compra'
        ImageIndex = 5
        object Label12: TLabel
          Left = 26
          Top = 13
          Width = 35
          Height = 14
          Caption = 'Pedido:'
        end
        object btnPedidoCompraUnico: TSpeedButton
          Left = 126
          Top = 10
          Width = 23
          Height = 21
          Hint = 'Busca Ordem'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF314B62
            AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
            106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
            00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
            9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
            E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
            FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
            B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
            FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
            DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
            B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
            BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
            D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
            6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnPedidoCompraUnicoClick
        end
        object Label58: TLabel
          Left = 235
          Top = 13
          Width = 58
          Height = 14
          Caption = 'Recebendo:'
        end
        object btnLimparOc: TSpeedButton
          Left = 151
          Top = 10
          Width = 23
          Height = 21
          Hint = 'Desvincular item do Pedido de Compra'
          Caption = 'X'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnLimparOcClick
        end
        object edtItemOrdemCompra: TEdit
          Left = 64
          Top = 10
          Width = 60
          Height = 22
          TabStop = False
          Color = 14145495
          MaxLength = 6
          ReadOnly = True
          TabOrder = 0
        end
        object CurItemOrdemCompraBaixada: TCurrencyEdit
          Left = 296
          Top = 10
          Width = 110
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 4
          DisplayFormat = '###,##0.0000'
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 1
          ZeroEmpty = False
          OnEnter = CurrQtdeREnter
          OnExit = CurrQtdeRExit
        end
        object edtRegistroOrdemCompraItem: TEdit
          Left = 384
          Top = 37
          Width = 9
          Height = 22
          TabOrder = 2
          Visible = False
        end
      end
      object tsFrete: TTabSheet
        Caption = 'Frete'
        ImageIndex = 6
        object Label61: TLabel
          Left = 33
          Top = 12
          Width = 28
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor:'
        end
        object CurFrete: TCurrencyEdit
          Left = 64
          Top = 9
          Width = 82
          Height = 21
          AutoSize = False
          DisplayFormat = '###,###,##0.00'
          TabOrder = 0
          OnExit = CurrBaseIcmsExit
        end
      end
    end
    object CurItemAliquotaICMSRapida: TCurrencyEdit
      Left = 351
      Top = 62
      Width = 55
      Height = 21
      AutoSize = False
      DisplayFormat = '##0.00'
      TabOrder = 5
      ZeroEmpty = False
      OnExit = CurItemAliquotaICMSRapidaExit
    end
    object CurItemAliquotaIPIRapida: TCurrencyEdit
      Left = 411
      Top = 62
      Width = 55
      Height = 21
      AutoSize = False
      DisplayFormat = '##0.00'
      TabOrder = 6
      ZeroEmpty = False
      OnExit = CurItemAliquotaIPIRapidaExit
    end
    object CbLoteProduto: TcxLookupComboBox
      Left = 71
      Top = 111
      Properties.KeyFieldNames = 'PRDL_REGISTRO'
      Properties.ListColumns = <
        item
          Caption = 'Lote'
          Width = 100
          FieldName = 'PRDL_LOTE'
        end
        item
          Caption = 'Entrada'
          FieldName = 'PRDL_CADASTRO'
        end
        item
          Caption = 'Validade'
          FieldName = 'PRDL_DATA_VALIDADE'
        end
        item
          Caption = 'Saldo'
          FieldName = 'PRDL_SALDO'
        end>
      Properties.ListSource = dsLoteProduto
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 10
      Width = 429
    end
    object edUnd: TEdit
      Left = 233
      Top = 62
      Width = 33
      Height = 22
      Color = 14145495
      Enabled = False
      ReadOnly = True
      TabOrder = 17
    end
    object edENF_ORIGEM_MERCADORIA_res: TEdit
      Left = 39
      Top = 52
      Width = 24
      Height = 22
      TabStop = False
      TabOrder = 18
      Text = ' '
      Visible = False
    end
    object cxCentroCustoItem: TcxLookupComboBox
      Left = 354
      Top = 86
      Properties.HideSelection = False
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'PCX_CODIGO'
      Properties.ListColumns = <
        item
          Caption = 'Descri'#231#227'o'
          FieldName = 'PCX_DESCRI'
        end>
      Properties.ListOptions.ColumnSorting = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsCentroCustoItem
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 19
      Width = 188
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 571
    Width = 1763
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object btnNovaEntrada: TJvArrowButton
      Left = 241
      Top = 4
      Width = 149
      Height = 25
      DropDown = pmImportar
      Caption = '+ Nova entrada'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E0000000000000000000080A0C5004D99
        004D99004D99004D99004D99004D99004D99004D99004D99004D99004D99004D
        99004D99004D9900479280A0C5005BA9005BA9005BA9005BA9005BA9005BA900
        5BA9005BA9005BA9005BA9005BA9005BA9005BA9005BA9004D9A80A0C5005CAC
        005CAC005CAC005CAC005CAC005CAC005CAC005CAC005CAC005CAC005CAC005C
        AC005CAC005CAC004E9B80A0C5005EB0005EB0005EB0005EB0005EB0005EB000
        5EB0005EB0005EB0005EB0005EB0005EB0005EB0005EB0004F9D80A0C50060B4
        0060B40060B40060B40060B40060B40060B40060B40060B40060B40060B40060
        B40060B40060B400509F80A0C52F7FC45D9BD10062B82F7FC45D9BD13A85C72F
        7FC55D9BD10764B85D9BD12F7EC45D9BD15D9BD15D9BD10051A180A0C51974C2
        FFFFFF7EAADAFCFDFEBFD7EEBCD6ED81B2DDFFFFFF8DBAE1FFFFFF80ADDBFFFF
        FFFFFFFFFFFFFF0052A380A0C50067C15C9CD7FFFFFFEAF2FA0064C0BCD7EFF9
        FBFEFFFFFF9EC5E8FFFFFF80AFDEFFFFFF0067C10067C10054A680A0C5006AC6
        84B6E3FCFDFEFFFFFF1878CBBCD8F0FFFFFF9EC3E8FCFDFEFFFFFF80B0E1FFFF
        FF006AC6006AC60055A880A0C54090D7FFFFFF4F99DBC0D9F2C3DBF2BED9F2FF
        FFFF1273CDFFFFFFFFFFFF80B1E3FFFFFF006CCA006CCA0056AA80A0C5006FCE
        006FCE006FCE006FCE006FCE006FCE006FCE006FCE006FCE006FCE006FCE006F
        CE006FCE006FCE0057AC80A0C50070D20070D20070D20070D20070D20070D200
        70D20070D20070D20070D20070D20070D20070D20070D20058AE80A0C50073D6
        0073D60073D60073D60073D60073D60073D60073D60073D60073D60073D60073
        D60073D60073D60059B0809FC50075DA0075DA0075DA0075DA0075DA0075DA00
        75DA0075DA0075DA0075DA0075DA0075DA0075DA0075DA005AB2809FC50076DC
        0076DC0076DC0076DC0076DC0076DC0076DC0076DC0076DC0076DC0076DC0076
        DC0076DC0076DC005AB3C1D0E3809FC5809FC5809FC5809FC5809FC5809FC580
        9FC5809FC5809FC5809FC5809FC5809FC5809FC5809FC581A0C6}
    end
    object Bit_Sair: TBitBtn
      Left = 869
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      NumGlyphs = 2
      TabOrder = 3
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 771
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Enabled = False
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033333333333333333333333F333333333333
        0000333333333333333333333388F333333F3333000033300333333300033333
        38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
        000333000333333338F3338F833338F3000033333000300033333333338F3338
        3333F8330000333333000003333333333338F333333F83330000333333300033
        3333333333338F3333383333000033333300000333333333333338F333833333
        00003333300030003333333333333833338F3333000033330003330003333333
        33338333338F333300003330003333300033333333383338F338F33300003330
        0333333300033333338333838F338F3300003333333333333003333333833833
        38F338F300003333333333333333333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Gravar: TBitBtn
      Left = 670
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Enabled = False
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_pagar: TBitBtn
      Left = 530
      Top = 4
      Width = 138
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Lan'#231'ar Contas '#224' Pagar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
        555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
        05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
        FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
        FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
        FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
        05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
        555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
        9055575757575757775505050505055505557575757575557555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = Bit_pagarClick
    end
    object btnDevolucao: TBitBtn
      Left = 2
      Top = 4
      Width = 151
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Devolver Nota Fiscal'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033333333333333333333333F333333333333
        0000333333333333333333333388F333333F3333000033300333333300033333
        38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
        000333000333333338F3338F833338F3000033333000300033333333338F3338
        3333F8330000333333000003333333333338F333333F83330000333333300033
        3333333333338F3333383333000033333300000333333333333338F333833333
        00003333300030003333333333333833338F3333000033330003330003333333
        33338333338F333300003330003333300033333333383338F338F33300003330
        0333333300033333338333838F338F3300003333333333333003333333833833
        38F338F300003333333333333333333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TabStop = False
      OnClick = btnDevolucaoClick
    end
    object BitLocalizarNota: TBitBtn
      Left = 395
      Top = 4
      Width = 136
      Height = 25
      Cursor = crHandPoint
      Hint = 'Busca Notas j'#225' Cadastradas'
      Caption = '&Localizar Nota Fiscal'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
        00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
        9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
        E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
        FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
        B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
        FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
        DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
        B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
        BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
        D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
        6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TabStop = False
      OnClick = BitLocalizarNotaClick
    end
    object btnDanfe: TBitBtn
      Left = 154
      Top = 4
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = 'Danfe'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      TabOrder = 6
      TabStop = False
      OnClick = btnDanfeClick
    end
  end
  object GrpTipoEntrada: TGroupBox [4]
    Left = 1127
    Top = 415
    Width = 183
    Height = 103
    Caption = 'Tipo'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object RadComOC: TRadioButton
      Left = 11
      Top = 34
      Width = 153
      Height = 17
      Caption = 'Com &Pedido de Compra'
      Checked = True
      TabOrder = 0
      TabStop = True
      Visible = False
      OnClick = RadComOCClick
    end
    object RadSemOC: TRadioButton
      Left = 10
      Top = 11
      Width = 158
      Height = 17
      Caption = 'Nota Fiscal'
      TabOrder = 1
      OnClick = RadSemOCClick
    end
  end
  object GrpNota: TGroupBox [5]
    Left = -1
    Top = -1
    Width = 642
    Height = 43
    Caption = 'Nota'
    Color = clBtnFace
    Ctl3D = True
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 1
    object PanDados: TPanel
      Left = 2
      Top = 16
      Width = 638
      Height = 25
      Align = alClient
      BevelOuter = bvNone
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      object LabNota: TLabel
        Left = 14
        Top = 5
        Width = 40
        Height = 14
        Caption = 'N'#186' Nota:'
      end
      object GrpFornecedor: TGroupBox
        Left = 143
        Top = -9
        Width = 482
        Height = 34
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        object Label8: TLabel
          Left = 4
          Top = 13
          Width = 59
          Height = 14
          Caption = 'Fornecedor:'
        end
        object lcnpj: TLabel
          Left = 354
          Top = 13
          Width = 86
          Height = 14
          Caption = 'AJHSJAHSJAHSJ'
        end
        object EdtFor_Codigo: TEdit
          Left = 65
          Top = 9
          Width = 35
          Height = 22
          MaxLength = 4
          TabOrder = 0
          OnExit = EdtFor_CodigoExit
        end
        object PesqFornecedor: TSgDbSearchCombo
          AlignWithMargins = True
          Left = 101
          Top = 9
          Width = 223
          Height = 22
          EmptyText = 'TODOS OS FORNECEDORES'
          TabOrder = 1
          CharCase = ecUpperCase
          LookupSelect = 
            'FOR_CGC, for_codigo,for_razao,  for_bairro, for_cidade, CCT_CODI' +
            'GO, FOR_UF, FOR_ATUALIZA_PVENDA'
          LookupOrderBy = 'for_razao'
          LookupTable = 'for0000'
          LookupDispl = 'FOR_RAZAO'
          OnSelect = PesqFornecedorSelect
          GridAutoSize = False
          LookupSource = qforne
          LookupKeyField = 'for_codigo'
          ShowButton = True
          LookupTableShare = 'fornecedores'
          AutoF8WinTitulo = 'Fornecedores'
          AutoF8ColumnsTitulo = 'CNPJ, C'#243'digo, Nome, Bairro'
          LookupDbGridColumns = 'FOR_CGC, for_codigo,for_razao,  for_bairro, for_cidade'
          LookupDbGridColumnsTitle = 'CNPJ, C'#243'digo, Nome, Bairro, Cidade'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridTop = 0
          GridShowWhenEnter = False
          SelectWithDoubleClick = True
          LimparCampoAoSair = True
        end
      end
      object EdtNota: TEdit
        Left = 56
        Top = 2
        Width = 81
        Height = 22
        TabStop = False
        MaxLength = 10
        TabOrder = 1
        OnExit = EdtNotaExit
        OnKeyPress = EdtNotaKeyPress
      end
    end
  end
  object GroupBox2: TGroupBox [6]
    Left = 832
    Top = 0
    Width = 146
    Height = 43
    Caption = 'Vincula'#231#227'o Centro de Custo'
    TabOrder = 7
    object LblSituacaoProjetoObra: TLabel
      Left = 16
      Top = 16
      Width = 3
      Height = 14
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PanIPI: TPanel [7]
    Left = 377
    Top = 263
    Width = 222
    Height = 103
    Locked = True
    TabOrder = 6
    Visible = False
    object GroupBox1: TGroupBox
      Left = 4
      Top = 24
      Width = 214
      Height = 49
      TabOrder = 0
      object Label1: TLabel
        Left = 27
        Top = 21
        Width = 56
        Height = 14
        Caption = 'Valor do IPI:'
      end
      object CurrIPIalterado: TCurrencyEdit
        Left = 101
        Top = 16
        Width = 90
        Height = 21
        AutoSize = False
        DisplayFormat = '#,##0.00'
        TabOrder = 0
        OnChange = CurrIPIalteradoChange
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 220
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object SpXPanIPI: TSpeedButton
        Left = 193
        Top = 2
        Width = 23
        Height = 22
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpXPanIPIClick
      end
    end
    object BitConfIPIalter: TBitBtn
      Left = 4
      Top = 75
      Width = 100
      Height = 25
      Caption = 'Con&firmar'
      Enabled = False
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = BitConfIPIalterClick
    end
    object BitCancIPIalter: TBitBtn
      Left = 118
      Top = 75
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Enabled = False
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033333333333333333333333F333333333333
        0000333333333333333333333388F333333F3333000033300333333300033333
        38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
        000333000333333338F3338F833338F3000033333000300033333333338F3338
        3333F8330000333333000003333333333338F333333F83330000333333300033
        3333333333338F3333383333000033333300000333333333333338F333833333
        00003333300030003333333333333833338F3333000033330003330003333333
        33338333338F333300003330003333300033333333383338F338F33300003330
        0333333300033333338333838F338F3300003333333333333003333333833833
        38F338F300003333333333333333333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = SpXPanIPIClick
    end
  end
  object pOutrosCustos: TPanel [8]
    Left = 1115
    Top = 229
    Width = 289
    Height = 168
    TabOrder = 8
    Visible = False
    object Label64: TLabel
      Left = 70
      Top = 16
      Width = 28
      Height = 14
      Caption = 'Frete:'
    end
    object Label65: TLabel
      Left = 21
      Top = 48
      Width = 77
      Height = 14
      Caption = 'Diferen'#231'a ICMS:'
    end
    object Label66: TLabel
      Left = 62
      Top = 80
      Width = 36
      Height = 14
      Caption = 'Outros:'
    end
    object currFrete: TCurrencyEdit
      Left = 104
      Top = 16
      Width = 89
      Height = 22
      TabOrder = 0
      OnChange = currOutrosChange
    end
    object currDifICMS: TCurrencyEdit
      Left = 104
      Top = 44
      Width = 89
      Height = 22
      TabOrder = 1
      OnChange = currOutrosChange
    end
    object currOutros: TCurrencyEdit
      Left = 104
      Top = 72
      Width = 89
      Height = 22
      TabOrder = 2
      OnChange = currOutrosChange
    end
    object btnOkOutrosCustos: TButton
      Left = 40
      Top = 115
      Width = 75
      Height = 25
      Caption = 'Ok'
      Default = True
      TabOrder = 3
      OnClick = btnOkOutrosCustosClick
    end
    object btnCancelarOutros: TButton
      Left = 136
      Top = 115
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Default = True
      TabOrder = 4
      OnClick = btnCancelarOutrosClick
    end
  end
  object Panel2: TPanel [9]
    Left = 647
    Top = 0
    Width = 179
    Height = 41
    BevelOuter = bvNone
    TabOrder = 9
    object cbMovimentaEstoque: TCheckBox
      Left = 19
      Top = 5
      Width = 128
      Height = 17
      BiDiMode = bdLeftToRight
      Caption = 'Movimenta Estoque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      State = cbGrayed
      TabOrder = 0
      StyleElements = [seFont, seBorder]
      OnClick = cbMovimentaEstoqueClick
    end
    object chkIndustrializacao: TCheckBox
      Left = 18
      Top = 24
      Width = 105
      Height = 17
      BiDiMode = bdLeftToRight
      Caption = 'Industrializa'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnClick = chkIndustrializacaoClick
    end
  end
  object pnIE: TPanel [10]
    Left = 392
    Top = 42
    Width = 416
    Height = 24
    TabOrder = 10
    object lbIE: TLabel
      Left = 7
      Top = 5
      Width = 91
      Height = 14
      Caption = 'Inscri'#231#227'o Estadual:'
    end
    object dblcInscricaoEstadual: TDBLookupComboBox
      Left = 104
      Top = 1
      Width = 310
      Height = 22
      KeyField = 'EMI_CODIGO'
      ListField = 'EMI_DESCRICAO'
      ListSource = dsInscricaoEstadual
      TabOrder = 0
      OnClick = dblcInscricaoEstadualClick
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 864
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 472
    Top = 144
  end
  inherited qAux: TSQLQuery
    Left = 578
    Top = 133
  end
  inherited qAux2: TSQLQuery
    Left = 1074
    Top = 84
  end
  inherited qAux3: TSQLQuery
    Left = 842
  end
  inherited qAuxEstorna: TSQLQuery
    Left = 538
    Top = 128
  end
  inherited qAuxEstornaItem: TSQLQuery
    Left = 386
    Top = 136
  end
  object SqlCdsGridComOC: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'Select'#13#10'O1.OPV_CODIGO,'#13#10'O1.FOR_CODIGO,'#13#10'O1.PCL_CODIGO,'#13#10'O1.ocp_s' +
      'tatus,'#13#10'P1.PRD_CODIGO,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_' +
      'ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.PRD_LOTE,'#13#10'P1.PRD_ALIQICM,'#13#10'I1.*,'#13#10't' +
      '1.enf_registro,'#13#10't1.amx_codigo,'#13#10't1.enf_it_vlipi,'#13#10't1.ENF_ATUALI' +
      'ZA_PRECO,'#13#10't1.ENF_ATUALIZA_ESTOQUE,'#13#10't1.PRDL_REGISTRO,'#13#10't1.enf_v' +
      'lsubst'#13#10'from ocp_it01 I1'#13#10'JOIN ocp0000 O1 ON I1.ocp_codigo = O1.' +
      'ocp_codigo'#13#10'JOIN prd0000 P1 ON I1.prd_refer  = P1.prd_refer'#13#10'LEF' +
      'T JOIN enf_it01 T1 ON T1.ocp_codigo = i1.ocp_codigo'#13#10'ORDER BY O1' +
      '.ocp_codigo'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsGridComOCCalcFields
    CommandText = 
      'Select'#13#10'O1.OPV_CODIGO,'#13#10'O1.FOR_CODIGO,'#13#10'O1.PCL_CODIGO,'#13#10'O1.ocp_s' +
      'tatus,'#13#10'P1.PRD_CODIGO,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_' +
      'ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.PRD_LOTE,'#13#10'P1.PRD_ALIQICM,'#13#10'I1.*,'#13#10't' +
      '1.enf_registro,'#13#10't1.amx_codigo,'#13#10't1.enf_it_vlipi,'#13#10't1.ENF_ATUALI' +
      'ZA_PRECO,'#13#10't1.ENF_ATUALIZA_ESTOQUE,'#13#10't1.PRDL_REGISTRO,'#13#10't1.enf_v' +
      'lsubst'#13#10'from ocp_it01 I1'#13#10'JOIN ocp0000 O1 ON I1.ocp_codigo = O1.' +
      'ocp_codigo'#13#10'JOIN prd0000 P1 ON I1.prd_refer  = P1.prd_refer'#13#10'LEF' +
      'T JOIN enf_it01 T1 ON T1.ocp_codigo = i1.ocp_codigo'#13#10'ORDER BY O1' +
      '.ocp_codigo'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1592
    Top = 288
    object SqlCdsGridComOCOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsGridComOCOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object SqlCdsGridComOCFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsGridComOCPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object SqlCdsGridComOCOCP_STATUS: TStringField
      FieldName = 'OCP_STATUS'
      Size = 1
    end
    object SqlCdsGridComOCPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsGridComOCPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      DisplayFormat = '#0.0000'
      Precision = 15
    end
    object SqlCdsGridComOCPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      DisplayFormat = '#0.0000'
      Precision = 15
    end
    object SqlCdsGridComOCPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      DisplayFormat = '#0.0000'
      Precision = 15
    end
    object SqlCdsGridComOCPRD_FISICO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_FISICO_CC'
      DisplayFormat = '#0.0000'
      Calculated = True
    end
    object SqlCdsGridComOCOCI_REGISTRO: TIntegerField
      FieldName = 'OCI_REGISTRO'
      Required = True
    end
    object SqlCdsGridComOCPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsGridComOCOCI_QTDES: TFMTBCDField
      FieldName = 'OCI_QTDES'
      DisplayFormat = '#0.0000'
      Precision = 15
    end
    object SqlCdsGridComOCOCI_QTDER: TFMTBCDField
      FieldName = 'OCI_QTDER'
      DisplayFormat = '#0.0000'
      Precision = 15
    end
    object SqlCdsGridComOCOCI_IPI: TFMTBCDField
      FieldName = 'OCI_IPI'
      DisplayFormat = '#0.00'
      Precision = 15
    end
    object SqlCdsGridComOCOCI_SITUACAO: TStringField
      FieldName = 'OCI_SITUACAO'
      Size = 1
    end
    object SqlCdsGridComOCOCI_SITUACAO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'OCI_SITUACAO_CC'
      Calculated = True
    end
    object SqlCdsGridComOCOCI_TOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'OCI_TOTAL_CC'
      DisplayFormat = '#,##0.00'
      currency = False
      Calculated = True
    end
    object SqlCdsGridComOCEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsGridComOCBASE_IPI_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'BASE_IPI_CC'
      Calculated = True
    end
    object SqlCdsGridComOCENTRADA_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ENTRADA_CC'
      DisplayFormat = '#,###0.0000'
      currency = False
      Calculated = True
    end
    object SqlCdsGridComOCOCI_PRECO: TFMTBCDField
      FieldName = 'OCI_PRECO'
      Precision = 15
      Size = 5
    end
    object SqlCdsGridComOCPRD_LOTE: TStringField
      FieldName = 'PRD_LOTE'
      Size = 15
    end
    object SqlCdsGridComOCPRD_ALIQICM: TFMTBCDField
      Alignment = taCenter
      FieldName = 'PRD_ALIQICM'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsGridComOCOCI_ICMS: TFMTBCDField
      FieldName = 'OCI_ICMS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsGridComOCOCI_CFOP: TStringField
      Alignment = taCenter
      FieldName = 'OCI_CFOP'
      Size = 4
    end
    object SqlCdsGridComOCPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsGridComOCENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
    end
    object SqlCdsGridComOCAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object SqlCdsGridComOCENF_ATUALIZA_PRECO: TStringField
      FieldName = 'ENF_ATUALIZA_PRECO'
      Size = 1
    end
    object SqlCdsGridComOCENF_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'ENF_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object SqlCdsGridComOCPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object SqlCdsGridComOCENF_VLSUBST: TFMTBCDField
      FieldName = 'ENF_VLSUBST'
      DisplayFormat = '#,##0.00'
      Precision = 20
      Size = 5
    end
    object SqlCdsGridComOCENF_IT_VLIPI: TFMTBCDField
      FieldName = 'ENF_IT_VLIPI'
      Precision = 20
      Size = 5
    end
    object SqlCdsGridComOCenf_ucom: TStringField
      FieldName = 'enf_ucom'
      ProviderFlags = []
      Size = 100
    end
    object SqlCdsGridComOCPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
  end
  object DsGridComOC: TDataSource
    DataSet = SqlCdsGridComOC
    Left = 1592
    Top = 352
  end
  object SqlCdsFor: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select FOR_CODIGO, FOR_RAZAO, FOR_FONCONT, FOR_FAXCONT, FOR_CONT' +
      'ATO, FOR_EMAILCONT, FOR_EMAIL,FOR_UF, FOR_ATUALIZA_PVENDA,CCT_CO' +
      'DIGO,EMP_CODIGO from FOR0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select FOR_CODIGO, FOR_RAZAO, FOR_FONCONT, FOR_FAXCONT, FOR_CONT' +
      'ATO, FOR_EMAILCONT, FOR_EMAIL,FOR_UF, FOR_ATUALIZA_PVENDA,CCT_CO' +
      'DIGO,EMP_CODIGO from FOR0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1336
    Top = 200
    object SqlCdsForFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsForFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsForFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      EditMask = '!\(999\) 9999-9999;0;_'
      Size = 11
    end
    object SqlCdsForFOR_FAXCONT: TStringField
      FieldName = 'FOR_FAXCONT'
      EditMask = '!\(999\) 9999-9999;0;_'
      Size = 11
    end
    object SqlCdsForFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object SqlCdsForFOR_EMAILCONT: TStringField
      FieldName = 'FOR_EMAILCONT'
      Size = 35
    end
    object SqlCdsForFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Size = 35
    end
    object SqlCdsForFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object SqlCdsForEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsForCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsForFOR_ATUALIZA_PVENDA: TStringField
      FieldName = 'FOR_ATUALIZA_PVENDA'
      Size = 1
    end
  end
  object DsFor: TDataSource
    DataSet = SqlCdsFor
    Left = 1400
    Top = 200
  end
  object SqlCdsRef: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select '#13#10'PRD_REFER'#13#10'from PRD0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select '#13#10'PRD_REFER'#13#10'from PRD0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1032
    Top = 432
    object SqlCdsRefPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
  end
  object SqlCdsAlmox: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from ALMOX0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from ALMOX0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1360
    Top = 3
    object SqlCdsAlmoxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsAlmoxAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 60
    end
    object SqlCdsAlmoxEMI_IE: TStringField
      FieldName = 'EMI_IE'
    end
    object SqlCdsAlmoxEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
    end
  end
  object SqlCdsCta: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from CCT_0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from CCT_0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1266
    Top = 234
    object SqlCdsCtaCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsCtaCCT_PROVISAO: TFMTBCDField
      FieldName = 'CCT_PROVISAO'
      Precision = 15
    end
    object SqlCdsCtaCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 35
    end
    object SqlCdsCtaCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      Size = 3
    end
    object SqlCdsCtaCCT_TIPO: TStringField
      FieldName = 'CCT_TIPO'
      Size = 1
    end
    object SqlCdsCtaCCT_CONTA: TStringField
      FieldName = 'CCT_CONTA'
      Size = 1
    end
    object SqlCdsCtaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsTipo: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from OPV0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from OPV0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1399
    Top = 142
    object SqlCdsTipoOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsTipoOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object SqlCdsTipoOPV_TIPO: TStringField
      FieldName = 'OPV_TIPO'
      Size = 1
    end
    object SqlCdsTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsTipoOPV_ATESTOQUE: TStringField
      FieldName = 'OPV_ATESTOQUE'
      FixedChar = True
      Size = 1
    end
  end
  object SqlCdsPcl: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select '#13#10'*'#13#10'from PCL0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select '#13#10'*'#13#10'from PCL0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1269
    Top = 178
    object SqlCdsPclPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsPclPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
    object SqlCdsPclPCL_NPARCELAS: TIntegerField
      FieldName = 'PCL_NPARCELAS'
    end
    object SqlCdsPclPCL_DIASENTREP: TSmallintField
      FieldName = 'PCL_DIASENTREP'
    end
    object SqlCdsPclPCL_CARENC_PRI: TSmallintField
      FieldName = 'PCL_CARENC_PRI'
    end
    object SqlCdsPclPCL_MANTERDIA: TStringField
      FieldName = 'PCL_MANTERDIA'
      Size = 1
    end
    object SqlCdsPclEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsPclPCL_DESCTO: TFMTBCDField
      FieldName = 'PCL_DESCTO'
      Precision = 15
      Size = 5
    end
    object SqlCdsPclPCL_MULTA: TFMTBCDField
      FieldName = 'PCL_MULTA'
      Precision = 15
      Size = 5
    end
    object SqlCdsPclPCL_JUROS: TFMTBCDField
      FieldName = 'PCL_JUROS'
      Precision = 15
      Size = 5
    end
    object SqlCdsPclPCL_OBS: TStringField
      FieldName = 'PCL_OBS'
      Size = 50
    end
    object SqlCdsPclPCL_DISPONIVEL: TStringField
      FieldName = 'PCL_DISPONIVEL'
      Size = 1
    end
    object SqlCdsPclPCL_PERCENTUAL_PRIMEIRA_P: TFMTBCDField
      FieldName = 'PCL_PERCENTUAL_PRIMEIRA_P'
      Precision = 15
      Size = 2
    end
    object SqlCdsPclPCL_TIPO: TStringField
      FieldName = 'PCL_TIPO'
      Size = 1
    end
  end
  object SqlCdsGridSemOC: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT E1.OPE_CODIGO_RETORNO,'#9'E1.ENF_REGISTRO,'#9'E1.ENF_IT_NOTANUM' +
      'BER,'#9'P1.PRD_CODIGO,'#9'E1.PRD_REFER,'#9'E1.ENF_QTDE_PEDIDO_COMPRA,'#9'E1.' +
      'OCI_REGISTRO,'#9'E1.PRD_DESCRI,'#9'E1.OCP_CODIGO,'#9'E1.FOR_CODIGO,'#9'E1.PC' +
      'X_CODIGO,'#9'E1.ENF_QTDE,'#9'E1.ENF_PRECO,'#9'e1.cst_ipi,'#9'e1.enf_it_basei' +
      'pi,'#9'E1.ENF_IPIALIQ,'#9'e1.enf_it_vlipi,'#9'e1.stb_tributacao,'#9'e1.enf_i' +
      't_baseicms,'#9'e1.enf_icmsaliq,'#9'E1.ENF_ICMS,'#9'e1.enf_it_basesubtrib,' +
      #9'e1.enf_it_aliqsubtrib,'#9'e1.enf_vlsubst,'#9'e1.cst_pis,'#9'e1.enf_basep' +
      'is,'#9'e1.enf_it_aliqpis,'#9'e1.enf_it_vlpis,'#9'e1.cst_cofins,'#9'e1.enf_ba' +
      'secofins,'#9'e1.enf_it_aliqcofins,'#9'e1.enf_it_vlcofins,'#9'E1.ENF_ATUAL' +
      'IZA_PRECO,'#9'E1.ENF_ATUALIZA_ESTOQUE,'#9'E1.ENF_LOTE,'#9'E1.ENF_CFOP,'#9'('#9 +
      'SELECT'#9#9'OPE_NATUREZA'#9'FROM'#9#9'OPE0000 op'#9'WHERE'#9#9'op.OPE_CODIGO = E1.' +
      'OPE_CODIGO_RETORNO) AS ENF_CFOP_RETORNO,'#9'E1.ENF_ORIGEM_MERCADORI' +
      'A,'#9'E1.AMX_CODIGO,'#9'A1.AMX_DESCRI,'#9'P1.PRD_ESTOQUE,'#9'P1.PRD_ENTRADA,' +
      #9'E1.ENF_UNIDADE_TRABALHO,'#9'E1.REPETICAO_REFER,'#9'P1.PRD_ALIQICM,'#9'P1' +
      '.PRD_SAIDA,'#9'e1.ENF_IT_DESCTO,'#9'E1.PRDL_REGISTRO,'#9'e1.enf_it_valfre' +
      'te,'#9'e1.enf_it_vlseguro,'#9'e1.enf_it_vldesp_aces,'#9'enf_ucom ,'#9'ENF_UT' +
      'RIB,'#9'ENF_QTDE_ORIGINAL,'#9'ENF_PRECO_ORIGINAL,'#9'ENF_PTOTAL_ORIGINAL ' +
      'FROM'#9'ENF_IT01 E1 LEFT JOIN PRD0000 P1 ON '#9'(E1.PRD_CODIGO = P1.PR' +
      'D_CODIGO) LEFT JOIN ALMOX0000 A1 ON '#9'(A1.AMX_CODIGO = E1.AMX_COD' +
      'IGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsGridSemOCCalcFields
    CommandText = 
      'SELECT E1.OPE_CODIGO_RETORNO,'#9'E1.ENF_REGISTRO,'#9'E1.ENF_IT_NOTANUM' +
      'BER,'#9'P1.PRD_CODIGO,'#9'E1.PRD_REFER,'#9'E1.ENF_QTDE_PEDIDO_COMPRA,'#9'E1.' +
      'OCI_REGISTRO,'#9'E1.PRD_DESCRI,'#9'E1.OCP_CODIGO,'#9'E1.FOR_CODIGO,'#9'E1.PC' +
      'X_CODIGO,'#9'E1.ENF_QTDE,'#9'E1.ENF_PRECO,'#9'e1.cst_ipi,'#9'e1.enf_it_basei' +
      'pi,'#9'E1.ENF_IPIALIQ,'#9'e1.enf_it_vlipi,'#9'e1.stb_tributacao,'#9'e1.enf_i' +
      't_baseicms,'#9'e1.enf_icmsaliq,'#9'E1.ENF_ICMS,'#9'e1.enf_it_basesubtrib,' +
      #9'e1.enf_it_aliqsubtrib,'#9'e1.enf_vlsubst,'#9'e1.cst_pis,'#9'e1.enf_basep' +
      'is,'#9'e1.enf_it_aliqpis,'#9'e1.enf_it_vlpis,'#9'e1.cst_cofins,'#9'e1.enf_ba' +
      'secofins,'#9'e1.enf_it_aliqcofins,'#9'e1.enf_it_vlcofins,'#9'E1.ENF_ATUAL' +
      'IZA_PRECO,'#9'E1.ENF_ATUALIZA_ESTOQUE,'#9'E1.ENF_LOTE,'#9'E1.ENF_CFOP,'#9'('#9 +
      'SELECT'#9#9'OPE_NATUREZA'#9'FROM'#9#9'OPE0000 op'#9'WHERE'#9#9'op.OPE_CODIGO = E1.' +
      'OPE_CODIGO_RETORNO) AS ENF_CFOP_RETORNO,'#9'E1.ENF_ORIGEM_MERCADORI' +
      'A,'#9'E1.AMX_CODIGO,'#9'A1.AMX_DESCRI,'#9'P1.PRD_ESTOQUE,'#9'P1.PRD_ENTRADA,' +
      #9'E1.ENF_UNIDADE_TRABALHO,'#9'E1.REPETICAO_REFER,'#9'P1.PRD_ALIQICM,'#9'P1' +
      '.PRD_SAIDA,'#9'e1.ENF_IT_DESCTO,'#9'E1.PRDL_REGISTRO,'#9'e1.enf_it_valfre' +
      'te,'#9'e1.enf_it_vlseguro,'#9'e1.enf_it_vldesp_aces,'#9'enf_ucom ,'#9'ENF_UT' +
      'RIB,'#9'ENF_QTDE_ORIGINAL,'#9'ENF_PRECO_ORIGINAL,'#9'ENF_PTOTAL_ORIGINAL ' +
      'FROM'#9'ENF_IT01 E1 LEFT JOIN PRD0000 P1 ON '#9'(E1.PRD_CODIGO = P1.PR' +
      'D_CODIGO) LEFT JOIN ALMOX0000 A1 ON '#9'(A1.AMX_CODIGO = E1.AMX_COD' +
      'IGO)'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1600
    Top = 416
    object SqlCdsGridSemOCENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
      Required = True
    end
    object SqlCdsGridSemOCENF_IT_NOTANUMBER: TStringField
      FieldName = 'ENF_IT_NOTANUMBER'
      Required = True
      Size = 6
    end
    object SqlCdsGridSemOCPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsGridSemOCOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsGridSemOCENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      DisplayFormat = '#,####0.0000'
      Precision = 15
    end
    object SqlCdsGridSemOCENF_IPIALIQ: TFMTBCDField
      FieldName = 'ENF_IPIALIQ'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 15
    end
    object SqlCdsGridSemOCPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsGridSemOCFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsGridSemOCPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      DisplayFormat = '#,####0.000'
      Precision = 15
    end
    object SqlCdsGridSemOCPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      DisplayFormat = '#,####0.000'
      Precision = 15
    end
    object SqlCdsGridSemOCPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      DisplayFormat = '#,####0.000'
      Precision = 15
    end
    object SqlCdsGridSemOCVL_TOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VL_TOTAL_CC'
      DisplayFormat = '###,###,###,##0.00'
      currency = False
      Calculated = True
    end
    object SqlCdsGridSemOCFISICO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FISICO_CC'
      Calculated = True
    end
    object SqlCdsGridSemOCENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      DisplayFormat = '#,####0.0000'
      Precision = 15
      Size = 5
    end
    object SqlCdsGridSemOCENF_UNIDADE_TRABALHO: TFMTBCDField
      FieldName = 'ENF_UNIDADE_TRABALHO'
      Precision = 15
    end
    object SqlCdsGridSemOCENF_LOTE: TStringField
      FieldName = 'ENF_LOTE'
      Size = 15
    end
    object SqlCdsGridSemOCPRD_ALIQICM: TFMTBCDField
      Alignment = taCenter
      FieldName = 'PRD_ALIQICM'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsGridSemOCENF_ICMS: TFMTBCDField
      FieldName = 'ENF_ICMS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsGridSemOCENF_CFOP: TStringField
      Alignment = taCenter
      FieldName = 'ENF_CFOP'
      Size = 4
    end
    object SqlCdsGridSemOCENF_CFOP_RETORNO: TStringField
      FieldName = 'ENF_CFOP_RETORNO'
      Size = 4
    end
    object SqlCdsGridSemOCAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 60
    end
    object SqlCdsGridSemOCAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object SqlCdsGridSemOCREPETICAO_REFER: TIntegerField
      FieldName = 'REPETICAO_REFER'
    end
    object SqlCdsGridSemOCPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 4
    end
    object SqlCdsGridSemOCENF_ATUALIZA_PRECO: TStringField
      FieldName = 'ENF_ATUALIZA_PRECO'
      Size = 1
    end
    object SqlCdsGridSemOCENF_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'ENF_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object SqlCdsGridSemOCPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object SqlCdsGridSemOCENF_ICMSALIQ: TFMTBCDField
      FieldName = 'ENF_ICMSALIQ'
      DisplayFormat = '##0.00%'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCENF_VLSUBST: TFMTBCDField
      FieldName = 'ENF_VLSUBST'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCENF_IT_VLIPI: TFMTBCDField
      FieldName = 'ENF_IT_VLIPI'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 3
    end
    object SqlCdsGridSemOCENF_IT_BASEIPI: TFMTBCDField
      FieldName = 'ENF_IT_BASEIPI'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 3
    end
    object SqlCdsGridSemOCENF_IT_BASEICMS: TFMTBCDField
      FieldName = 'ENF_IT_BASEICMS'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCENF_IT_BASESUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_BASESUBTRIB'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCENF_IT_ALIQSUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_ALIQSUBTRIB'
      DisplayFormat = '##0.00%'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 3
    end
    object SqlCdsGridSemOCENF_BASEPIS: TFMTBCDField
      FieldName = 'ENF_BASEPIS'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCENF_IT_ALIQPIS: TFMTBCDField
      FieldName = 'ENF_IT_ALIQPIS'
      DisplayFormat = '##0.00%'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCENF_IT_VLPIS: TFMTBCDField
      FieldName = 'ENF_IT_VLPIS'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 3
    end
    object SqlCdsGridSemOCENF_BASECOFINS: TFMTBCDField
      FieldName = 'ENF_BASECOFINS'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCENF_IT_ALIQCOFINS: TFMTBCDField
      FieldName = 'ENF_IT_ALIQCOFINS'
      DisplayFormat = '##0.00%'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCENF_IT_VLCOFINS: TFMTBCDField
      FieldName = 'ENF_IT_VLCOFINS'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCENF_IT_VALFRETE: TFMTBCDField
      FieldName = 'ENF_IT_VALFRETE'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCENF_IT_VLSEGURO: TFMTBCDField
      FieldName = 'ENF_IT_VLSEGURO'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCENF_IT_VLDESP_ACES: TFMTBCDField
      FieldName = 'ENF_IT_VLDESP_ACES'
      DisplayFormat = '###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCENF_QTDE_PEDIDO_COMPRA: TFMTBCDField
      FieldName = 'ENF_QTDE_PEDIDO_COMPRA'
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCOCI_REGISTRO: TIntegerField
      FieldName = 'OCI_REGISTRO'
    end
    object SqlCdsGridSemOCENF_IT_DESCTO: TFMTBCDField
      FieldName = 'ENF_IT_DESCTO'
      Precision = 20
      Size = 5
    end
    object SqlCdsGridSemOCenf_ucom: TStringField
      FieldName = 'enf_ucom'
      ProviderFlags = []
      Size = 5
    end
    object SqlCdsGridSemOCENF_UTRIB: TStringField
      FieldName = 'ENF_UTRIB'
      Size = 5
    end
    object SqlCdsGridSemOCENF_PRECO_ORIGINAL: TFMTBCDField
      FieldName = 'ENF_PRECO_ORIGINAL'
      Precision = 18
      Size = 5
    end
    object SqlCdsGridSemOCENF_QTDE_ORIGINAL: TFMTBCDField
      FieldName = 'ENF_QTDE_ORIGINAL'
      Precision = 18
      Size = 5
    end
    object SqlCdsGridSemOCENF_PTOTAL_ORIGINAL: TFMTBCDField
      FieldName = 'ENF_PTOTAL_ORIGINAL'
      Precision = 18
      Size = 5
    end
    object SqlCdsGridSemOCENF_ORIGEM_MERCADORIA: TIntegerField
      FieldName = 'ENF_ORIGEM_MERCADORIA'
    end
    object SqlCdsGridSemOCPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsGridSemOCOPE_CODIGO_RETORNO: TStringField
      FieldName = 'OPE_CODIGO_RETORNO'
      Size = 3
    end
  end
  object DsGridSemOC: TDataSource
    DataSet = SqlCdsGridSemOC
    Left = 1600
    Top = 480
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 280
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      OnClick = Alterar1Click
    end
    object MudarCFOP1: TMenuItem
      Caption = 'Mudar CFOP'
      OnClick = MudarCFOP1Click
    end
    object AlterarCFOPdeRetorno1: TMenuItem
      Caption = 'Alterar CFOP de Retorno'
      OnClick = AlterarCFOPdeRetorno1Click
    end
  end
  object SqlCdsProduto: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select '#13#10'PRD_CODIGO,'#13#10'PRD_REFER, '#13#10'PRD_DESCRI, '#13#10'PRD_ESTOQUE, '#13#10 +
      'PRD_ENTRADA, '#13#10'PRD_SAIDA,'#13#10'PRD_PENDENTE, '#13#10'EMP_CODIGO '#13#10'from PRD' +
      '0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsProdutoCalcFields
    CommandText = 
      'select '#13#10'PRD_CODIGO,'#13#10'PRD_REFER, '#13#10'PRD_DESCRI, '#13#10'PRD_ESTOQUE, '#13#10 +
      'PRD_ENTRADA, '#13#10'PRD_SAIDA,'#13#10'PRD_PENDENTE, '#13#10'EMP_CODIGO '#13#10'from PRD' +
      '0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1320
    Top = 108
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsProdutoPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlCdsProdutoPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlCdsProdutoPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlCdsProdutoPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlCdsProdutoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsProdutoFISICO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FISICO_CC'
      Calculated = True
    end
    object SqlCdsProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsProdutoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 5
    end
  end
  object SqlCdsOP: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select O1.* from OPE0000 O1'#13#10'where O1.OPE_TIPO = '#39'E'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select O1.* from OPE0000 O1'#13#10'where O1.OPE_TIPO = '#39'E'#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1202
    Top = 176
    object SqlCdsOPEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsOPOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsOPOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object SqlCdsOPOPE_TIPO: TStringField
      FieldName = 'OPE_TIPO'
      Size = 1
    end
    object SqlCdsOPOPE_ESCRITA: TStringField
      FieldName = 'OPE_ESCRITA'
      Size = 1
    end
    object SqlCdsOPOPE_DENTRO: TStringField
      FieldName = 'OPE_DENTRO'
      Size = 1
    end
    object SqlCdsOPOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
    object SqlCdsOPOPE_TRIBICMS: TStringField
      FieldName = 'OPE_TRIBICMS'
      Size = 1
    end
    object SqlCdsOPOPE_TRIBIPI: TStringField
      FieldName = 'OPE_TRIBIPI'
      Size = 1
    end
    object SqlCdsOPOPE_REDU_ICM: TFMTBCDField
      FieldName = 'OPE_REDU_ICM'
      Precision = 15
    end
    object SqlCdsOPOPE_REDU_IPI: TFMTBCDField
      FieldName = 'OPE_REDU_IPI'
      Precision = 15
    end
    object SqlCdsOPOPE_IPINABASEICMS: TStringField
      FieldName = 'OPE_IPINABASEICMS'
      Size = 1
    end
    object SqlCdsOPOPE_FRETENABASE: TStringField
      FieldName = 'OPE_FRETENABASE'
      Size = 1
    end
    object SqlCdsOPOPE_SEMVLCOM: TStringField
      FieldName = 'OPE_SEMVLCOM'
      Size = 1
    end
    object SqlCdsOPOPE_IMP_AVISO: TStringField
      FieldName = 'OPE_IMP_AVISO'
      Size = 1
    end
    object SqlCdsOPOPE_AVISOLEGAL: TStringField
      FieldName = 'OPE_AVISOLEGAL'
      Size = 1000
    end
    object SqlCdsOPOPE_AVISOLEGAL2: TStringField
      FieldName = 'OPE_AVISOLEGAL2'
      Size = 1000
    end
    object SqlCdsOPOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      Size = 4
    end
    object SqlCdsOPOPE_SUBTRIBUTARIA: TStringField
      FieldName = 'OPE_SUBTRIBUTARIA'
      Size = 1
    end
    object SqlCdsOPOPE_ESTOQUE: TStringField
      FieldName = 'OPE_ESTOQUE'
      Size = 1
    end
    object SqlCdsOPCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsOPOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object SqlCdsOPOPE_SERVICO: TStringField
      FieldName = 'OPE_SERVICO'
      Size = 1
    end
    object SqlCdsOPOPE_PIS: TFMTBCDField
      FieldName = 'OPE_PIS'
      Precision = 15
    end
    object SqlCdsOPOPE_COFINS: TFMTBCDField
      FieldName = 'OPE_COFINS'
      Precision = 15
    end
    object SqlCdsOPOPE_CONTRISOCIAL: TFMTBCDField
      FieldName = 'OPE_CONTRISOCIAL'
      Precision = 15
    end
    object SqlCdsOPOPE_DESCRINATUREZA: TStringField
      FieldName = 'OPE_DESCRINATUREZA'
      Size = 25
    end
    object SqlCdsOPOPE_INDICE_IMP: TFMTBCDField
      FieldName = 'OPE_INDICE_IMP'
      Precision = 15
    end
    object SqlCdsOPOPE_NOTA_COMPLEMENTAR: TStringField
      FieldName = 'OPE_NOTA_COMPLEMENTAR'
      Size = 1
    end
    object SqlCdsOPOPE_ATUALIZA_CUSTO: TStringField
      FieldName = 'OPE_ATUALIZA_CUSTO'
      Size = 1
    end
  end
  object CdsConsultaEstoque: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'Select'#13#10'P1.PRD_CODIGO,'#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P2.PTI_SI' +
      'GLA,'#13#10'P2.PTI_ATUALIZAR_ESTOQUE,'#13#10'P3.PGR_ATUALIZA_ESTOQUE,'#13#10'P1.PR' +
      'D_PVENDA,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_DCVAR3,'#13#10'P1.PR' +
      'D_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_DCVAR7,'#13#10'P1.PR' +
      'D_DCVAR8,'#13#10'P1.PGR_CODIGO,'#13#10'I1.IPI_ALIQ,'#13#10'((P1.PRD_ESTOQUE + P1.P' +
      'RD_ENTRADA) -( P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) as P' +
      'RD_QDTE'#13#10'from PRD0000 P1'#13#10'LEFT JOIN IPI0000 I1 ON (P1.IPI_CODIGO' +
      ' = I1.IPI_CODIGO)'#13#10'LEFT JOIN PRD_TIPO P2 ON (P2.PTI_CODIGO = P1.' +
      'PTI_CODIGO)'#13#10'LEFT JOIN PRD_GRUPO P3 ON (P1.PGR_CODIGO = P3.PGR_C' +
      'ODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'P1.PRD_CODIGO,'#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P2.PTI_SI' +
      'GLA,'#13#10'P2.PTI_ATUALIZAR_ESTOQUE,'#13#10'P3.PGR_ATUALIZA_ESTOQUE,'#13#10'P1.PR' +
      'D_PVENDA,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_DCVAR3,'#13#10'P1.PR' +
      'D_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_DCVAR7,'#13#10'P1.PR' +
      'D_DCVAR8,'#13#10'P1.PGR_CODIGO,'#13#10'I1.IPI_ALIQ,'#13#10'((P1.PRD_ESTOQUE + P1.P' +
      'RD_ENTRADA) -( P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) as P' +
      'RD_QDTE'#13#10'from PRD0000 P1'#13#10'LEFT JOIN IPI0000 I1 ON (P1.IPI_CODIGO' +
      ' = I1.IPI_CODIGO)'#13#10'LEFT JOIN PRD_TIPO P2 ON (P2.PTI_CODIGO = P1.' +
      'PTI_CODIGO)'#13#10'LEFT JOIN PRD_GRUPO P3 ON (P1.PGR_CODIGO = P3.PGR_C' +
      'ODIGO)'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1288
    Top = 76
    object CdsConsultaEstoquePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object CdsConsultaEstoquePRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsConsultaEstoquePRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object CdsConsultaEstoquePTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object CdsConsultaEstoquePRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 15
    end
    object CdsConsultaEstoquePRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object CdsConsultaEstoquePGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object CdsConsultaEstoqueIPI_ALIQ: TFMTBCDField
      FieldName = 'IPI_ALIQ'
      Precision = 15
    end
    object CdsConsultaEstoquePRD_QDTE: TFMTBCDField
      FieldName = 'PRD_QDTE'
      Precision = 15
    end
    object CdsConsultaEstoquePTI_ATUALIZAR_ESTOQUE: TStringField
      FieldName = 'PTI_ATUALIZAR_ESTOQUE'
      Size = 1
    end
    object CdsConsultaEstoquePGR_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PGR_ATUALIZA_ESTOQUE'
      Size = 1
    end
  end
  object Cds_Prod_Conv: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'    T1.PRD_REFER,'#13#10'    COALESCE(T1.PRD_UTILCONV,'#39'N'#39') AS ' +
      'PRD_UTILCONV,'#13#10'    --compra custo'#13#10'    COALESCE(T1.PRD_FATORC,0)' +
      ' AS PRD_FATORC,'#13#10'    COALESCE(T1.PRD_DIVMULT,'#39'N'#39') AS PRD_DIVMULT' +
      ','#13#10'    --quantidade'#13#10'    COALESCE(T1.PRD_FATOR_PROD,0) AS PRD_FA' +
      'TOR_PROD,'#13#10'    COALESCE(T1.PRD_DIV_MULT_PROD,'#39'N'#39') AS PRD_DIV_MUL' +
      'T_PROD'#13#10'FROM PRD0000  T1'#13#10'   WHERE T1.PRD_REFER = '#39'301435'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsProdutoCalcFields
    CommandText = 
      'SELECT'#13#10'    T1.PRD_REFER,'#13#10'    COALESCE(T1.PRD_UTILCONV,'#39'N'#39') AS ' +
      'PRD_UTILCONV,'#13#10'    --compra custo'#13#10'    COALESCE(T1.PRD_FATORC,0)' +
      ' AS PRD_FATORC,'#13#10'    COALESCE(T1.PRD_DIVMULT,'#39'N'#39') AS PRD_DIVMULT' +
      ','#13#10'    --quantidade'#13#10'    COALESCE(T1.PRD_FATOR_PROD,0) AS PRD_FA' +
      'TOR_PROD,'#13#10'    COALESCE(T1.PRD_DIV_MULT_PROD,'#39'N'#39') AS PRD_DIV_MUL' +
      'T_PROD'#13#10'FROM PRD0000  T1'#13#10'   WHERE T1.PRD_REFER = '#39'301435'#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1384
    Top = 88
    object Cds_Prod_ConvPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object Cds_Prod_ConvPRD_UTILCONV: TStringField
      FieldName = 'PRD_UTILCONV'
      Size = 1
    end
    object Cds_Prod_ConvPRD_FATORC: TFMTBCDField
      FieldName = 'PRD_FATORC'
      Precision = 15
    end
    object Cds_Prod_ConvPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      Size = 1
    end
    object Cds_Prod_ConvPRD_FATOR_PROD: TFMTBCDField
      FieldName = 'PRD_FATOR_PROD'
      Precision = 15
      Size = 4
    end
    object Cds_Prod_ConvPRD_DIV_MULT_PROD: TStringField
      FieldName = 'PRD_DIV_MULT_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object CdsTemp: TClientDataSet
    PersistDataPacket.Data = {
      4C0000009619E0BD0100000018000000020000000000030000004C000A726566
      6572656E63696101004900000001000557494454480200020014000A7175616E
      74696461646508000400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 1560
    Top = 48
    object CdsTempreferencia: TStringField
      FieldName = 'referencia'
    end
    object CdsTempquantidade: TFloatField
      FieldName = 'quantidade'
    end
  end
  object acbrnf1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.TimeOut = 30000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFEFR1
    Left = 1560
    Top = 160
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.xml'
    Left = 1504
    Top = 8
  end
  object CdsLoteProduto: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from PRD_LOTE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD_LOTE'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1296
    Top = 438
    object CdsLoteProdutoPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object CdsLoteProdutoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsLoteProdutoPRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
      OnGetText = CdsLoteProdutoPRDL_DATA_FABRICACAOGetText
    end
    object CdsLoteProdutoPRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
      OnGetText = CdsLoteProdutoPRDL_DATA_FABRICACAOGetText
    end
    object CdsLoteProdutoPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Size = 30
    end
    object CdsLoteProdutoPRDL_PRECO_MAXIMO: TFMTBCDField
      FieldName = 'PRDL_PRECO_MAXIMO'
      Precision = 20
      Size = 5
    end
    object CdsLoteProdutoPRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      Precision = 20
      Size = 5
    end
    object CdsLoteProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 10
    end
  end
  object dsLoteProduto: TDataSource
    DataSet = CdsLoteProduto
    Left = 1392
    Top = 440
  end
  object dsModeloNotaFiscal: TDataSource
    DataSet = CdsModeloNotaFiscal
    Left = 1116
    Top = 145
  end
  object CdsModeloNotaFiscal: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from SPED_MODELO_DOC_FISCAL'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from SPED_MODELO_DOC_FISCAL'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1148
    Top = 79
    object CdsModeloNotaFiscalSMDF_REGISTRO: TIntegerField
      FieldName = 'SMDF_REGISTRO'
    end
    object CdsModeloNotaFiscalSMDF_CODIGO: TStringField
      FieldName = 'SMDF_CODIGO'
      Size = 5
    end
    object CdsModeloNotaFiscalSMDF_DESCRICAO: TStringField
      FieldName = 'SMDF_DESCRICAO'
      Size = 100
    end
  end
  object CdsCentroCusto: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'SELECT * FROM PCX0000 T1 ORDER BY T1.PCX_NIVEL'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT * FROM PCX0000 T1 ORDER BY T1.PCX_NIVEL'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1170
    Top = 250
    object CdsCentroCustoPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object CdsCentroCustoPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object CdsCentroCustoPCX_NIVEL: TStringField
      FieldName = 'PCX_NIVEL'
      Size = 15
    end
    object CdsCentroCustoPCX_INICIO: TSQLTimeStampField
      FieldName = 'PCX_INICIO'
    end
    object CdsCentroCustoPCX_FIM: TSQLTimeStampField
      FieldName = 'PCX_FIM'
    end
    object CdsCentroCustoPCX_TERMINADO: TStringField
      FieldName = 'PCX_TERMINADO'
      Size = 1
    end
    object CdsCentroCustoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      FixedChar = True
      Size = 3
    end
  end
  object ACBrNFeDANFEFR1: TACBrNFeDANFeRL
    MostraSetup = True
    Sistema = 'Novi Sistemas'
    MargemInferior = 7.000000000000000000
    MargemSuperior = 7.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = acbrnf1
    ExibeCampoFatura = False
    Left = 1560
    Top = 216
  end
  object qforne: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DBConn
    Left = 306
    Top = 125
    object qfornefor_cgc: TStringField
      FieldName = 'for_cgc'
      Size = 14
    end
    object qfornefor_codigo: TStringField
      FieldName = 'for_codigo'
      Size = 4
    end
    object qfornefor_razao: TStringField
      FieldName = 'for_razao'
      Size = 50
    end
    object qforneFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object qfornefor_bairro: TStringField
      FieldName = 'for_bairro'
      Size = 100
    end
    object qforneFOR_ATUALIZA_PVENDA: TStringField
      FieldName = 'FOR_ATUALIZA_PVENDA'
      Size = 1
    end
    object qforneCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object qforneFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
  end
  object pmImportar: TPopupMenu
    Left = 304
    Top = 520
    object miImportarXML: TMenuItem
      Caption = 'Importar NF-e pelo XML'
      OnClick = miImportarXMLClick
    end
    object miLancarManual: TMenuItem
      Caption = 'Lan'#231'ar manualmente'
      OnClick = miLancarManualClick
    end
  end
  object qInscricaoEstadual: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from EMP_MULTIPLAS_IE')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 1008
    Top = 5
  end
  object dspInscricaoEstadual: TDataSetProvider
    DataSet = qInscricaoEstadual
    Left = 1100
    Top = 5
  end
  object cdsInscricaoEstadual: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInscricaoEstadual'
    Left = 1191
    Top = 5
  end
  object dsInscricaoEstadual: TDataSource
    DataSet = cdsInscricaoEstadual
    Left = 1271
    Top = 5
  end
  object dsCentroCustoItem: TDataSource
    DataSet = cdsCentroCustoItem
    Left = 1446
    Top = 336
  end
  object cdsCentroCustoItem: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'Select PCX_CODIGO,PCX_DESCRI AS DESCRICAO, PCX_CODIGO||'#39'-'#39'||PCX_' +
      'DESCRI as PCX_DESCRI   FROM PCX0000 ORDER BY PCX_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select PCX_CODIGO,PCX_DESCRI AS DESCRICAO, PCX_CODIGO||'#39'-'#39'||PCX_' +
      'DESCRI as PCX_DESCRI   FROM PCX0000 ORDER BY PCX_DESCRI'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1331
    Top = 336
    object StringField1: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object cdsCentroCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object StringField2: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 29
    end
  end
end
