object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 239
  ClientWidth = 545
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PanEtiqueta: TPanel
    Left = 1
    Top = 1
    Width = 540
    Height = 236
    TabOrder = 0
    Visible = False
    object Panel4: TPanel
      Left = -18
      Top = -2
      Width = 534
      Height = 21
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = #39
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object BitBtn2: TBitBtn
        Left = 516
        Top = 2
        Width = 18
        Height = 17
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object GrBEtiqueta: TGroupBox
      Left = 4
      Top = 24
      Width = 261
      Height = 120
      Caption = 'Etiquetas de volumes da nota'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label3: TLabel
        Left = 21
        Top = 52
        Width = 84
        Height = 14
        Caption = 'Nota Fiscal Final :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 13
        Top = 26
        Width = 91
        Height = 14
        Caption = 'Nota Fiscal  Inicial :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object EditFinal: TEdit
        Left = 108
        Top = 49
        Width = 65
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 1
      end
      object EditInicial: TEdit
        Left = 108
        Top = 22
        Width = 65
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 0
      end
      object Rad_Etiq_Sistema: TRadioButton
        Left = 10
        Top = 76
        Width = 139
        Height = 17
        Caption = 'Etiqueta do Destinat'#225'rio'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
      end
      object Rad_Etiq_Pre_Impressa: TRadioButton
        Left = 10
        Top = 97
        Width = 215
        Height = 17
        Caption = 'Etiqueta Pr'#233'-Impressa (configurada)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object BitEtiqFechar: TBitBtn
      Left = 451
      Top = 200
      Width = 80
      Height = 25
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object BitImprimeEtiq: TBitBtn
      Left = 367
      Top = 200
      Width = 80
      Height = 25
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Gb_Estilo_Etiqueta: TGroupBox
      Left = 268
      Top = 25
      Width = 261
      Height = 119
      Caption = 'Tipo da Etiqueta'
      TabOrder = 2
      object rbModelo1: TRadioButton
        Left = 10
        Top = 18
        Width = 231
        Height = 17
        Caption = 'Modelo 1 - 1 Coluna (21,00 x 14,85 cm)'
        TabOrder = 0
      end
      object rbModelo3: TRadioButton
        Left = 10
        Top = 57
        Width = 247
        Height = 17
        Caption = 'Modelo 3 - '#218'nica (10,00 x 15,50 cm) - Retrato'
        TabOrder = 2
      end
      object rbModelo2: TRadioButton
        Left = 10
        Top = 37
        Width = 215
        Height = 17
        Caption = 'Modelo 2 - 2 Colunas  (10,50 x 7,50 cm)'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object rbModelo4: TRadioButton
        Left = 10
        Top = 76
        Width = 247
        Height = 17
        Caption = 'Modelo 4 - Cont'#237'nuo (6,50 cm ) - Retrato'
        TabOrder = 3
      end
      object rbModelo5: TRadioButton
        Left = 10
        Top = 96
        Width = 247
        Height = 17
        Caption = 'Modelo 5 - '#218'nica (10,00 x 05,00 cm)'
        TabOrder = 4
      end
    end
    object grpMensagem: TGroupBox
      Left = 5
      Top = 146
      Width = 524
      Height = 44
      Caption = 'Mensagem'
      TabOrder = 5
      object edtMensagem: TEdit
        Left = 5
        Top = 16
        Width = 512
        Height = 21
        MaxLength = 50
        TabOrder = 0
        Text = 'edtMensagem'
      end
    end
    object chkSolicitarQuantidade: TCheckBox
      Left = 8
      Top = 200
      Width = 241
      Height = 17
      Caption = 'Revisar Quantidade de Volume'
      TabOrder = 6
    end
  end
end
