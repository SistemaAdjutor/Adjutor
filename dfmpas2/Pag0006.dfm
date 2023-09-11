object FormCheque: TFormCheque
  Left = 66
  Top = 86
  Width = 692
  Height = 444
  BorderIcons = [biSystemMenu]
  Caption = 'CHEQUES GERADOS'
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
    Left = 360
    Top = 339
    Width = 130
    Height = 13
    Caption = 'Imprimir Cheque do Banco :'
  end
  object SpdImprime: TSpeedButton
    Left = 484
    Top = 389
    Width = 193
    Height = 22
    Caption = 'Impress'#227'o do(s) Cheque(s)'
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
    OnClick = SpdImprimeClick
  end
  object SpeedButton1: TSpeedButton
    Left = 214
    Top = 390
    Width = 249
    Height = 22
    Caption = 'Impress'#227'o da(s) C'#243'pia de Cheque(s)'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
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
    OnClick = SpdImprimeClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 6
    Width = 665
    Height = 320
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CHQ_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'CHQ'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHQ_NOMINAL'
        Title.Alignment = taCenter
        Title.Caption = 'Nominal'
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHQ_DATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Cheque'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHQ_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Total do Cheque'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Banco'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CHQ_IMP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Imp'
        Visible = True
      end>
  end
  object DBLookupBanco: TDBLookupComboBox
    Left = 492
    Top = 336
    Width = 180
    Height = 21
    KeyField = 'BAN_CODIGO'
    ListField = 'BAN_APELIDO'
    TabOrder = 1
    OnEnter = DBLookupBancoEnter
    OnExit = DBLookupBancoExit
  end
  object BitLimpa: TBitBtn
    Left = 8
    Top = 388
    Width = 153
    Height = 25
    Caption = '&Limpar cheques impressos'
    TabOrder = 2
    OnClick = BitLimpaClick
  end
end
