inherited frmFATPARC: TfrmFATPARC
  Left = 569
  Top = 183
  BorderStyle = bsDialog
  Caption = 'Parcelamento de Faturas.'
  ClientHeight = 411
  ClientWidth = 833
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  ExplicitWidth = 839
  ExplicitHeight = 436
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel [0]
    Left = 18
    Top = 295
    Width = 99
    Height = 14
    Caption = 'Data de Vencimento:'
  end
  object Label2: TLabel [1]
    Left = 316
    Top = 296
    Width = 82
    Height = 14
    Caption = 'Valor da Parcela:'
  end
  object Label3: TLabel [2]
    Left = 36
    Top = 319
    Width = 81
    Height = 14
    Caption = 'Valor '#224' Receber:'
  end
  object Label5: TLabel [3]
    Left = 21
    Top = 343
    Width = 96
    Height = 14
    Caption = 'Total da Nota Fiscal:'
  end
  object lblDiferenca: TLabel [4]
    Left = 348
    Top = 343
    Width = 50
    Height = 14
    Caption = 'Diferen'#231'a:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [5]
    Left = 255
    Top = 319
    Width = 140
    Height = 14
    Caption = 'Valores Antecipados/Cr'#233'dito:'
  end
  object btnCredito: TSpeedButton [6]
    Left = 513
    Top = 316
    Width = 23
    Height = 22
    Caption = 'F4'
    OnClick = btnCreditoClick
  end
  object DBGrid1: TDBGrid [7]
    Left = 0
    Top = 66
    Width = 833
    Height = 168
    Align = alTop
    Color = 16776176
    DataSource = dsRecParce
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FPC_NUMER'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Parcela'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FPC_DTEMIS'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 107
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FAT_CODIGO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Fatura'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 102
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FPC_VENCTO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Vencimento'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FPC_VLPARC'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_APELIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Banco'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPG_DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'Forma de Pgto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOTAO'
        Title.Alignment = taCenter
        Title.Caption = 'Alterar'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end>
  end
  object BitConfirmaParcelas: TBitBtn [8]
    Left = 543
    Top = 367
    Width = 129
    Height = 27
    Cursor = crHandPoint
    Hint = 'Confirma Parcelas'
    Caption = '&Confirmar'
    Glyph.Data = {
      AA040000424DAA04000000000000360000002800000013000000130000000100
      18000000000074040000C40E0000C40E00000000000000000000008080008080
      0080800080800080800080808000008000000080800080800080800080800080
      8000808000808000808000808000808000808000000000808000808000808000
      8080008080800000008000008000800000008080008080008080008080008080
      0080800080800080800080800080800000000080800080800080800080808000
      0000800000800000800000800080000000808000808000808000808000808000
      8080008080008080008080000000008080008080008080800000008000008000
      0080000080000080000080008000000080800080800080800080800080800080
      8000808000808000000000808000808080000000800000800000800000FF0000
      8000008000008000008000800000008080008080008080008080008080008080
      00808000000000808000808000800000800000800000FF0000800000FF000080
      0000800000800080000000808000808000808000808000808000808000808000
      000000808000808000FF0000800000FF0000800000800000800000FF00008000
      0080000080008000000080800080800080800080800080800080800000000080
      8000808080000000FF0000800000800000800000800000800000FF0000800000
      8000008000800000008080008080008080008080008080000000008080800000
      00800000800000800000FF0000800000800000800000800000FF000080000080
      0000800080000000808000808000808000808000000000808000800000800000
      800000FF0000808000FF0000800000800000800080000000FF00008000008000
      00800080000000808000808000808000000000808000FF0000800000FF000080
      8000808000808000FF0000800000800000800080000000FF0000800000800000
      800080000000808000808000000000808000808000FF00008080008080008080
      00808000808000FF0000800000800000800080000000FF000080000080000080
      0080000000808000000000808000808000808000808000808000808000808000
      808000808000FF0000800000800000800080000000FF00008000008000800000
      0080800000000080800080800080800080800080800080800080800080800080
      8000808000FF0000800000800000800080000000FF0000800000800000808000
      0000008080008080008080008080008080008080008080008080008080008080
      00808000FF0000800000800000800080000000FF000080800080800000000080
      8000808000808000808000808000808000808000808000808000808000808000
      808000FF00008000008000008000800000008080008080000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000FF0000800000800080000000808000808000000000808000808000808000
      8080008080008080008080008080008080008080008080008080008080008080
      00FF000080000080000080800080800000000080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000808000
      FF00008080008080008080000000}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = BitConfirmaParcelasClick
  end
  object edParcela: TDBEdit [9]
    Left = 400
    Top = 292
    Width = 112
    Height = 22
    DataField = 'FPC_VLPARC'
    DataSource = dsRecParce
    TabOrder = 3
    OnChange = edParcelaChange
    OnExit = edParcelaExit
  end
  object edTotalReceber: TEdit [10]
    Left = 120
    Top = 316
    Width = 113
    Height = 22
    BiDiMode = bdRightToLeft
    Color = clSilver
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 4
  end
  object BitBtn2: TBitBtn [11]
    Left = 678
    Top = 367
    Width = 129
    Height = 27
    Cursor = crHandPoint
    Cancel = True
    Caption = '&Abandonar'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = BitBtn2Click
  end
  object pnParc: TPanel [12]
    Left = 0
    Top = 0
    Width = 833
    Height = 33
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object edTotalNF: TEdit [13]
    Left = 120
    Top = 340
    Width = 113
    Height = 22
    BiDiMode = bdRightToLeft
    Color = clSilver
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 6
  end
  object grpContaFinanceira: TGroupBox [14]
    Left = 0
    Top = 234
    Width = 833
    Height = 48
    Align = alTop
    Caption = 'Conta Financeira'
    TabOrder = 1
    object EdtOpe_Codigo: TEdit
      Left = 9
      Top = 18
      Width = 48
      Height = 22
      MaxLength = 3
      TabOrder = 0
      OnExit = EdtOpe_CodigoExit
    end
    object CbxCtaAnalise: TComboBoxRw
      Left = 63
      Top = 18
      Width = 706
      Height = 22
      TabOrder = 1
      CharCase = ecUpperCase
      LookupSelect = 'CCT_DESCRI'
      LookupOrderBy = 'CCT_DESCRI'
      LookupTable = 'CCT_0000'
      OnSelect = CbxCtaAnaliseSelect
      GridAutoSize = False
      LookupSource = CbxCtaAnalise.InternalSource
      LookupKeyField = 'CCT_CODIGO'
      FiltroTabela = 'CCT_CONTA = '#39'E'#39
      ShowButton = True
      LookupTableShare = 'PLANODECONTAS'
      AutoF8WinTitulo = 'Contas Financeiras'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'CCT_0000'
      CamposCarregar = 'CCT_DESCRI'
      CamposRetornar = 'CCT_CODIGO'
      Condicao = 'CCT_CONTA = '#39'E'#39
      CamposOrdernar = 'CCT_DESCRI'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'PLANODECONTAS'
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
  object pnPgto: TPanel [15]
    Left = 0
    Top = 33
    Width = 833
    Height = 33
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object DBDateEdit1: TJvDBDateEdit [16]
    Left = 120
    Top = 292
    Width = 113
    Height = 22
    DataField = 'FPC_VENCTO'
    DataSource = dsRecParce
    Glyph.Data = {
      76050000424D760500000000000036000000280000001C0000000C0000000100
      2000000000004005000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
      0000800000008000000000000000800000000000000000000000800000008080
      8000FF00FF008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
      FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
      FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
      0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
      8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
      80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
      C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
      FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
      FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
      8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
      FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
      FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
      FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
      8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
      FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
      FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
      8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
      FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000FF00FF00}
    ImageKind = ikCustom
    NumGlyphs = 2
    PopupColor = clBtnFace
    ShowNullDate = False
    YearDigits = dyFour
    TabOrder = 2
  end
  object currValorAntecipado: TJvValidateEdit [17]
    Left = 401
    Top = 316
    Width = 111
    Height = 21
    AutoSize = False
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfCurrency
    DecimalPlaces = 2
    EditText = '00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    ZeroEmpty = True
    OnExit = currValorAntecipadoExit
  end
  object edtDiferenca: TCurrencyEdit [18]
    Left = 400
    Top = 340
    Width = 112
    Height = 21
    AutoSize = False
    Color = 14145495
    DisplayFormat = ',0.00;-,0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 272
  end
  inherited qAux: TSQLQuery
    Left = 258
    Top = 85
  end
  object dsRecParce: TDataSource [23]
    DataSet = FormFatPedido.CdsRecParce
    Left = 401
    Top = 176
  end
  inherited qAux2: TSQLQuery
    Left = 354
    Top = 108
  end
  inherited qAux3: TSQLQuery
    Left = 458
    Top = 124
  end
  object cdsParcelas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 216
    Top = 144
    object cdsParcelasFPC_NUMBER: TStringField
      FieldName = 'FPC_NUMBER'
      Size = 3
    end
    object cdsParcelasFAT_NUMSERIE: TStringField
      FieldName = 'FAT_NUMSERIE'
      Size = 5
    end
  end
  object cdsCreditoConta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 160
    Top = 184
    object cdsCreditoContaselecionado: TBooleanField
      FieldName = 'selecionado'
    end
    object cdsCreditoContaCodigo: TStringField
      FieldName = 'Codigo'
      Size = 5
    end
    object cdsCreditoContaDocumento: TStringField
      FieldName = 'Documento'
    end
    object cdsCreditoContaData: TSQLTimeStampField
      FieldName = 'Data'
    end
    object cdsCreditoContacredito: TFMTBCDField
      FieldName = 'credito'
      Precision = 15
    end
    object cdsCreditoContausado: TFMTBCDField
      FieldName = 'usado'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
  end
end
