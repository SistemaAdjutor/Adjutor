object formCompraMenu: TformCompraMenu
  Left = 4
  Top = -6
  BorderIcons = [biSystemMenu]
  Caption = 'Centro de compras'
  ClientHeight = 0
  ClientWidth = 116
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 116
    Height = 58
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    ExplicitWidth = 800
    object Label1: TLabel
      Left = 24
      Top = 5
      Width = 286
      Height = 29
      Caption = 'CENTRO DE COMPRAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Notebook1: TNotebook
    Left = 0
    Top = 58
    Width = 800
    Height = 430
    PageIndex = 1
    TabOrder = 1
    object TPage
      Left = 0
      Top = 0
      Caption = 'Previsao'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 96
        Top = 48
        Width = 241
        Height = 33
        Color = 10841658
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 8
          Top = 6
          Width = 225
          Height = 22
          Caption = 'Previs'#227'o de consumo'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton1Click
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Menu'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 112
        Top = 9
        Width = 569
        Height = 67
        Caption = 'Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 139
          Top = 44
          Width = 23
          Height = 13
          Caption = 'Qtde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RadRefer: TRadioButton
          Left = 8
          Top = 15
          Width = 81
          Height = 17
          Caption = '&Refer'#234'ncia'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = RadReferClick
        end
        object RadPedido: TRadioButton
          Left = 224
          Top = 16
          Width = 65
          Height = 17
          Caption = '&Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = RadPedidoClick
        end
        object RadOp: TRadioButton
          Left = 392
          Top = 16
          Width = 161
          Height = 17
          Caption = '&Ordem de produ'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = RadOpClick
        end
        object EdPesqPrevisao: TEdit
          Left = 8
          Top = 39
          Width = 121
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'EdPesqPrevisao'
        end
        object BtnConfirmar: TBitBtn
          Left = 392
          Top = 36
          Width = 100
          Height = 25
          Caption = 'Confirmar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Cqtde: TCurrencyEdit
          Left = 168
          Top = 40
          Width = 41
          Height = 21
          Alignment = taCenter
          AutoSize = False
          DisplayFormat = '00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object GroupBox2: TGroupBox
        Left = 69
        Top = 78
        Width = 641
        Height = 160
        Caption = 'Pedido/Ordens de produ'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 5
          Top = 16
          Width = 623
          Height = 129
          Color = 16776176
          DataSource = DsTempPed
          FixedColor = 10841658
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsItalic]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMERO'
              Title.Alignment = taCenter
              Title.Caption = 'N'#250'mero'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_CLIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cliente'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 302
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PREVISAO'
              Title.Alignment = taCenter
              Title.Caption = 'Previs'#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 79
              Visible = True
            end>
        end
      end
      object GroupBox3: TGroupBox
        Left = 69
        Top = 223
        Width = 641
        Height = 176
        Caption = 'Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object DBGrid2: TDBGrid
          Left = 5
          Top = 16
          Width = 628
          Height = 155
          DataSource = DsTempProd
          FixedColor = 10841658
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'REFERENCIA'
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 282
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUM_PEDIDO'
              Title.Alignment = taCenter
              Title.Caption = 'N.Pedido'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUM_OP'
              Title.Alignment = taCenter
              Title.Caption = 'N.O.P'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 68
              Visible = True
            end>
        end
      end
    end
  end
  object DsTempPed: TDataSource
    DataSet = CdsTempPed
    Left = 440
    Top = 256
  end
  object CdsTempPed: TClientDataSet
    PersistDataPacket.Data = {
      AD0000009619E0BD010000001800000006000000000003000000AD00064E554D
      45524F0100490000000100055749445448020002001400044441544101004900
      00000100055749445448020002001400045449504F0100490000000100055749
      4454480200020014000B434F445F434C49454E544504000100000000000C4E4F
      4D455F434C49454E544501004900000001000557494454480200020014000850
      5245564953414F04000600000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 240
    object CdsTempPedNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object CdsTempPedDATA: TStringField
      FieldName = 'DATA'
    end
    object CdsTempPedTIPO: TStringField
      FieldName = 'TIPO'
    end
    object CdsTempPedCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object CdsTempPedNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
    end
    object CdsTempPedPREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
  end
  object CdsTempProd: TClientDataSet
    PersistDataPacket.Data = {
      E80100009619E0BD01000000180000000D000000000003000000E8010A524546
      4552454E43494101004900000001000557494454480200020014000944455343
      524943414F010049000000010005574944544802000200140009515444455F56
      415231080004000000010007535542545950450200490006004D6F6E65790009
      515444455F56415232080004000000010007535542545950450200490006004D
      6F6E65790009515444455F564152330800040000000100075355425459504502
      00490006004D6F6E65790009515444455F564152340800040000000100075355
      42545950450200490006004D6F6E65790009515444455F564152350800040000
      00010007535542545950450200490006004D6F6E65790009515444455F564152
      36080004000000010007535542545950450200490006004D6F6E657900095154
      44455F56415237080004000000010007535542545950450200490006004D6F6E
      65790009515444455F5641523808000400000001000753554254595045020049
      0006004D6F6E6579000A515444455F544F54414C080004000000010007535542
      545950450200490006004D6F6E657900064E554D5F4F50010049000000010005
      57494454480200020014000A4E554D5F50454449444F01004900000001000557
      494454480200020014000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 360
    object CdsTempProdREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object CdsTempProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object CdsTempProdQTDE_VAR1: TCurrencyField
      FieldName = 'QTDE_VAR1'
    end
    object CdsTempProdQTDE_VAR2: TCurrencyField
      FieldName = 'QTDE_VAR2'
    end
    object CdsTempProdQTDE_VAR3: TCurrencyField
      FieldName = 'QTDE_VAR3'
    end
    object CdsTempProdQTDE_VAR4: TCurrencyField
      FieldName = 'QTDE_VAR4'
    end
    object CdsTempProdQTDE_VAR5: TCurrencyField
      FieldName = 'QTDE_VAR5'
    end
    object CdsTempProdQTDE_VAR6: TCurrencyField
      FieldName = 'QTDE_VAR6'
    end
    object CdsTempProdQTDE_VAR7: TCurrencyField
      FieldName = 'QTDE_VAR7'
    end
    object CdsTempProdQTDE_VAR8: TCurrencyField
      FieldName = 'QTDE_VAR8'
    end
    object CdsTempProdQTDE_TOTAL: TCurrencyField
      FieldName = 'QTDE_TOTAL'
    end
    object CdsTempProdNUM_OP: TStringField
      FieldName = 'NUM_OP'
    end
    object CdsTempProdNUM_PEDIDO: TStringField
      FieldName = 'NUM_PEDIDO'
    end
  end
  object DsTempProd: TDataSource
    DataSet = CdsTempProd
    Left = 480
    Top = 392
  end
end
