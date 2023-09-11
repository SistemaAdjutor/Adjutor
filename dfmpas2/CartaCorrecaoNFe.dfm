inherited FrmCartaNfe: TFrmCartaNfe
  Caption = 'Carta corre'#231#227'o'
  ClientHeight = 402
  ClientWidth = 821
  ExplicitWidth = 837
  ExplicitHeight = 440
  PixelsPerInch = 96
  TextHeight = 13
  object BitCancelar: TJvNavPanelButton [0]
    Left = 690
    Top = 352
    Width = 110
    Height = 32
    Alignment = taCenter
    Caption = 'Cancela&r'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -12
    HotTrackFont.Name = 'Segoe UI'
    HotTrackFont.Style = [fsBold]
    ParentFont = False
    Colors.ButtonColorFrom = clSilver
    Colors.ButtonColorTo = clWhite
    Colors.ButtonHotColorFrom = 8421631
    Colors.ButtonHotColorTo = clWhite
    Colors.ButtonSelectedColorFrom = 8421631
    Colors.ButtonSelectedColorTo = clWhite
    Colors.ButtonSeparatorColor = clBlack
    Colors.SplitterColorFrom = clBlack
    Colors.SplitterColorTo = 8484478
    Colors.DividerColorFrom = 16315380
    Colors.DividerColorTo = 15391451
    Colors.HeaderColorFrom = 12232890
    Colors.HeaderColorTo = 9532021
    Colors.FrameColor = 5406098
    Colors.ToolPanelHeaderColorFrom = clWhite
    Colors.ToolPanelHeaderColorTo = clWhite
    ParentStyleManager = False
    ImageIndex = 8
    OnClick = BitCancelarClick
  end
  object BitConfirmar: TJvNavPanelButton [1]
    Left = 578
    Top = 352
    Width = 110
    Height = 32
    Alignment = taCenter
    Caption = '&Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -12
    HotTrackFont.Name = 'Segoe UI'
    HotTrackFont.Style = [fsBold]
    ParentFont = False
    Colors.ButtonColorFrom = clSilver
    Colors.ButtonColorTo = clWhite
    Colors.ButtonHotColorFrom = 8454016
    Colors.ButtonHotColorTo = clWhite
    Colors.ButtonSelectedColorFrom = 8454016
    Colors.ButtonSelectedColorTo = clWhite
    Colors.ButtonSeparatorColor = clBlack
    Colors.SplitterColorFrom = clBlack
    Colors.SplitterColorTo = 8484478
    Colors.DividerColorFrom = 16315380
    Colors.DividerColorTo = 15391451
    Colors.HeaderColorFrom = 12232890
    Colors.HeaderColorTo = 9532021
    Colors.FrameColor = 5406098
    Colors.ToolPanelHeaderColorFrom = clWhite
    Colors.ToolPanelHeaderColorTo = clWhite
    ParentStyleManager = False
    ImageIndex = 8
    OnClick = BitConfirmarClick
  end
  object Panel1: TPanel [2]
    Left = 8
    Top = 340
    Width = 561
    Height = 48
    Color = clWhite
    TabOrder = 0
    object JvImage1: TJvImage
      Left = 1
      Top = 0
      Width = 56
      Height = 49
      Cursor = crHandPoint
      Picture.Data = {
        0954474946496D61676547494638396130002A00B30000FFFFFFEEEEEEFFFF00
        EAEA00CCCCCCCCCC00AEAEAE8E8E8E9999005F5F5F6666004A4A4A3333333333
        001B1B0D00000021F90404140000002C0000000030002A000004FF10C849AB9D
        E1EACDBB4909D18DE4152C8F9364653B1E8CE330876B6BC4E2348D2ADE4040E0
        B0432066B5E08D1053140ABDC54F590A248A0201A2B7A2960CCD4176A09819BC
        23C2B551C866A12A165A037328C46E32728ED339DD6E70527C154358806E5B0E
        077284607678880205650C6784426B080203469E086D8A5D8E61930FA7A89B7A
        9684563B6DA6A8A79B935C535443A5B1B2B45A488D413976B0BBA98151B74086
        0DBDC5B3808A8C548F778003B2A7C49C9597CA9A92D80FDA5A5CC02DD4916E0E
        D892ABDD2EC26C92020DEC92702136B9CCF3020AB20DFA6DA1618E83B03FF310
        00EC47C9C1A02A44F831E4D58F5C9C2FBAE615A0D8CF1D095712952BCA1A8748
        54C10A75AA559CF48424A2554936C47309A865CB95B51C26A3B0AF59BF703413
        F59076E160503740713664656199CF9FD88E663169011DCE2C49717AE4F9EDAA
        80AC4A6D514899CEAB59680D084A9879B62DA2860F89EC5040B7AEDDBB78F3EA
        A5DB238EAB1432020B1E4CB8B061C1A7186430B080C182C790234B9E4CB97264
        066A0310D8CCB9B3E7CFA04387CE1001003B}
    end
    object cxLabel2: TcxLabel
      Left = 64
      Top = 1
      Align = alRight
      AutoSize = False
      Caption = 
        'Esta carta de corre'#231#227'o substituir'#225' todas as anteriores!!! portan' +
        'do caso desejar que as corre'#231#245'es anteriores sejam mantidas estas' +
        ' dever'#227'o ser enviadas novamente. conforme pr'#233' carragadas acima, ' +
        'tambem poder'#227'o ser alteradas caso necessite.'
      Style.TextColor = clMaroon
      Style.TextStyle = []
      Properties.PenWidth = 2
      Properties.WordWrap = True
      Height = 46
      Width = 496
    end
  end
  object GroupBox4: TGroupBox [3]
    Left = 0
    Top = 232
    Width = 821
    Height = 104
    Align = alTop
    Caption = 'Corre'#231#227'o [M'#237'nimo de 15 caracteres e m'#225'ximo de 1000]'
    TabOrder = 1
    object MemoDescricao: TMemo
      Left = 2
      Top = 15
      Width = 817
      Height = 87
      Align = alClient
      TabOrder = 0
      OnChange = MemoDescricaoChange
    end
    object Panel2: TPanel
      Left = 750
      Top = 65
      Width = 57
      Height = 22
      Caption = 'Panel1'
      TabOrder = 1
      object edConta: TEdit
        Left = 1
        Top = 1
        Width = 55
        Height = 20
        Align = alClient
        ReadOnly = True
        TabOrder = 0
        ExplicitHeight = 21
      end
    end
  end
  object GroupBox3: TGroupBox [4]
    Left = 0
    Top = 192
    Width = 821
    Height = 40
    Align = alTop
    Caption = 'Sequ'#234'ncia'
    TabOrder = 2
    object Label9: TLabel
      Left = 131
      Top = 19
      Width = 287
      Height = 13
      Caption = 'S'#243' altere a sequ'#234'ncia se tiver certeza do que esta fazendo.'
    end
    object SequenciaEvento: TJvSpinEdit
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      MaxValue = 20.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox [5]
    Left = 0
    Top = 0
    Width = 821
    Height = 113
    Align = alTop
    Caption = 'Nota Fiscal'
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 18
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'NF-e:'
    end
    object Label3: TLabel
      Left = 197
      Top = 17
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CFOP:'
    end
    object Label4: TLabel
      Left = 610
      Top = 18
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor'
    end
    object Label5: TLabel
      Left = 16
      Top = 64
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo:'
    end
    object Label6: TLabel
      Left = 131
      Top = 64
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Raz'#227'o:'
    end
    object Label7: TLabel
      Left = 307
      Top = 18
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cidade'
    end
    object Label8: TLabel
      Left = 16
      Top = 88
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chave:'
    end
    object Label2: TLabel
      Left = 623
      Top = 64
      Width = 54
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CNPJ/CPF:'
    end
    object Label10: TLabel
      Left = 3
      Top = 41
      Width = 77
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data emiss'#227'o:'
    end
    object EdNfe: TEdit
      Left = 86
      Top = 14
      Width = 131
      Height = 22
      TabStop = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EDCfop: TEdit
      Left = 268
      Top = 14
      Width = 59
      Height = 22
      TabStop = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdValor: TEdit
      Left = 680
      Top = 14
      Width = 131
      Height = 22
      TabStop = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdCodigoCliente: TEdit
      Left = 86
      Top = 60
      Width = 59
      Height = 22
      TabStop = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdRazaoCliente: TEdit
      Left = 198
      Top = 60
      Width = 411
      Height = 22
      TabStop = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdCidade: TEdit
      Left = 374
      Top = 14
      Width = 235
      Height = 22
      TabStop = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EdChave: TEdit
      Left = 86
      Top = 84
      Width = 523
      Height = 22
      TabStop = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object EdCnpj: TEdit
      Left = 680
      Top = 60
      Width = 131
      Height = 22
      TabStop = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object edEmissao: TEdit
      Left = 86
      Top = 37
      Width = 99
      Height = 22
      TabStop = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
  end
  object GroupBox2: TGroupBox [6]
    Left = 0
    Top = 113
    Width = 821
    Height = 79
    Align = alTop
    Caption = 'Condi'#231#227'o de Uso'
    TabOrder = 4
    object edCondicoes: TcxLabel
      Left = 2
      Top = 15
      Align = alClient
      Caption = 
        'A Carta de Corre'#231#227'o '#233' disciplinada pelo '#167' 1'#186'-A do art. 7'#186' do Con' +
        'v'#234'nio S/N, de 15 de dezembro de 1970 e pode ser utilizada para r' +
        'egulariza'#231#227'o de erro ocorrido na emiss'#227'o de documento fiscal, de' +
        'sde que o erro n'#227'o esteja relacionado com: I - as vari'#225'veis que ' +
        'determinam o valor do imposto tais como: base de c'#225'lculo, al'#237'quo' +
        'ta, diferen'#231'a de pre'#231'o, quantidade, valor da opera'#231#227'o ou da pres' +
        'ta'#231#227'o; II - a corre'#231#227'o de dados cadastrais que implique mudan'#231'a ' +
        'do remetente ou do destinat'#225'rio; III - a data de emiss'#227'o ou de s' +
        'a'#237'da.'
      Style.TextColor = clMaroon
      Style.TextStyle = []
      Properties.PenWidth = 2
      Properties.WordWrap = True
      Width = 817
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 728
    Top = 240
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 616
    Top = 240
  end
  inherited DBConn: TSQLConnection
    Left = 472
    Top = 329
  end
  inherited qAux: TSQLQuery
    Left = 490
    Top = 213
  end
  inherited qAux2: TSQLQuery
    Left = 538
    Top = 212
  end
  inherited qAux3: TSQLQuery
    Left = 578
    Top = 212
  end
end
