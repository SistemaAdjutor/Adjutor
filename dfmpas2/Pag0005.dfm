object FormChequesItens: TFormChequesItens
  Left = 14
  Top = 89
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cheque'
  ClientHeight = 428
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 9
    Top = 8
    Width = 293
    Height = 16
    Caption = 'Estes s'#227'o os pagamentos para o cheque :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 517
    Top = 276
    Width = 118
    Height = 16
    Caption = 'Total do cheque:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 15
    Top = 292
    Width = 47
    Height = 13
    Caption = 'BANCO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpedRecalcula: TSpeedButton
    Left = 304
    Top = 302
    Width = 110
    Height = 22
    Caption = '&Recalcula Cheque'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpedRecalculaClick
  end
  object SpdFinaliza: TSpeedButton
    Left = 528
    Top = 302
    Width = 110
    Height = 22
    Caption = '&Finaliza Cheque'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpdFinalizaClick
  end
  object SpdContinua: TSpeedButton
    Left = 641
    Top = 302
    Width = 110
    Height = 22
    Caption = '&Continua Cheque'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpdContinuaClick
  end
  object SpdRemove: TSpeedButton
    Left = 416
    Top = 302
    Width = 110
    Height = 22
    Caption = 'R&emove Conta'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpdRemoveClick
  end
  object SpdImprime: TSpeedButton
    Left = 12
    Top = 387
    Width = 120
    Height = 22
    Caption = '&Imprimir Cheque'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    ParentFont = False
  end
  object Label5: TLabel
    Left = 366
    Top = 8
    Width = 81
    Height = 16
    Caption = 'Finalizado :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 308
    Top = 339
    Width = 61
    Height = 13
    Caption = 'NOMINAL:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 659
    Top = 339
    Width = 93
    Height = 13
    Caption = 'Data do Cheque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DbGridCheques: TDBGrid
    Left = 8
    Top = 31
    Width = 751
    Height = 243
    DataSource = DataCadastros1.DsChequeItens
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CHQ_CODIGO'
        Title.Caption = 'CHQ'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_FAVORECIDO'
        Title.Caption = 'FAVORECIDO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 315
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_NUMDOC'
        Title.Caption = 'No.Doc.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_PARCELA'
        Title.Caption = 'Pc'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_REMOVE'
        Title.Caption = 'Rem'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_OBS'
        Title.Caption = 'OBS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHE_VLPAGO'
        Title.Caption = 'VALOR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 303
    Top = 296
    Width = 449
    Height = 3
    TabOrder = 8
  end
  object DBLookupBanco: TDBLookupComboBox
    Left = 65
    Top = 288
    Width = 216
    Height = 21
    DataField = 'BAN_CODIGO'
    DataSource = DataCadastros1.DsCheques
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    KeyField = 'BAN_CODIGO'
    ListField = 'BAN_APELIDO'
    ListSource = DataCadastros.DsBanco
    ParentFont = False
    TabOrder = 1
    OnEnter = DBLookupBancoEnter
    OnExit = DBLookupBancoExit
  end
  object RadNominal: TRadioGroup
    Left = 12
    Top = 325
    Width = 265
    Height = 49
    Caption = 'Selecione Nominal'
    Columns = 3
    Items.Strings = (
      'Favorecido'
      'Banco'
      'Outro')
    TabOrder = 2
    OnClick = RadNominalClick
  end
  object BitListaCheque: TBitBtn
    Left = 624
    Top = 385
    Width = 130
    Height = 25
    Caption = '&Ver Lista de Cheques'
    TabOrder = 9
    TabStop = False
    OnClick = BitListaChequeClick
  end
  object DbeChq_codigo: TDBEdit
    Left = 305
    Top = 6
    Width = 46
    Height = 21
    Color = 14145495
    DataField = 'CHQ_CODIGO'
    DataSource = DataCadastros1.DsCheques
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object DbeTotal: TDBEdit
    Left = 637
    Top = 274
    Width = 103
    Height = 21
    Color = 14145495
    DataField = 'CHQ_TOTAL'
    DataSource = DataCadastros1.DsCheques
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object DBNavCheque: TDBNavigator
    Left = 657
    Top = 2
    Width = 100
    Height = 25
    DataSource = DataCadastros1.DsCheques
    VisibleButtons = [nbPrior, nbNext]
    TabOrder = 7
  end
  object DbeFinaliza: TDBEdit
    Left = 450
    Top = 6
    Width = 19
    Height = 21
    Color = 14145495
    DataField = 'CHQ_FINALIZA'
    DataSource = DataCadastros1.DsCheques
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object DbeNominal: TDBEdit
    Left = 307
    Top = 354
    Width = 354
    Height = 21
    DataField = 'CHQ_NOMINAL'
    DataSource = DataCadastros1.DsCheques
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnExit = DbeNominalExit
  end
  object DBDateEdit1: TDBDateEdit
    Left = 663
    Top = 354
    Width = 90
    Height = 21
    DataField = 'CHQ_DATA'
    DataSource = DataCadastros1.DsCheques
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    GlyphKind = gkEllipsis
    NumGlyphs = 1
    ParentFont = False
    TabOrder = 4
    YearDigits = dyFour
    OnEnter = DBDateEdit1Enter
    OnExit = DBDateEdit1Exit
  end
end
