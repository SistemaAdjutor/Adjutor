inherited 
  Left = 255
  Top = 147
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Gera'#231#227'o de Contra Senha'
  ClientHeight = 430
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GbInfo: TGroupBox
    Left = 8
    Top = 152
    Width = 577
    Height = 105
    Caption = 'Informa'#231#245'es para ativa'#231#227'o'
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 56
      Width = 111
      Height = 13
      Caption = 'N'#250'mero de s'#233'rie do HD'
    end
    object LblHd: TLabel
      Left = 16
      Top = 72
      Width = 121
      Height = 13
      AutoSize = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 131
      Height = 13
      Caption = 'N'#250'mero da senha fornecida'
    end
    object Label4: TLabel
      Left = 328
      Top = 8
      Width = 131
      Height = 13
      Caption = 'Data de validade da vers'#227'o'
    end
    object Label5: TLabel
      Left = 160
      Top = 56
      Width = 63
      Height = 13
      Caption = 'Contra senha'
    end
    object BtnGerar: TBitBtn
      Left = 400
      Top = 72
      Width = 153
      Height = 25
      Caption = 'Gerar'
      TabOrder = 5
      OnClick = BtnGerarClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555777555
        5555555555000757755555575500005007555570058880000075570870088078
        007555787887087777755550880FF0800007708080888F7088077088F0708F78
        88077000F0778080005555508F0008800755557878FF88777075570870080088
        0755557075888070755555575500075555555555557775555555}
    end
    object Ed1: TEdit
      Left = 160
      Top = 24
      Width = 33
      Height = 21
      MaxLength = 4
      TabOrder = 0
    end
    object Ed2: TEdit
      Left = 200
      Top = 24
      Width = 33
      Height = 21
      MaxLength = 4
      TabOrder = 1
    end
    object Ed3: TEdit
      Left = 240
      Top = 24
      Width = 33
      Height = 21
      MaxLength = 4
      TabOrder = 2
    end
    object Ed4: TEdit
      Left = 280
      Top = 24
      Width = 33
      Height = 21
      MaxLength = 4
      TabOrder = 3
    end
    object DataValidade: TDateEdit
      Left = 328
      Top = 23
      Width = 84
      Height = 21
      GlyphKind = gkDropDown
      NumGlyphs = 1
      YearDigits = dyFour
      TabOrder = 4
      OnExit = DataValidadeExit
    end
    object EdC1: TEdit
      Left = 160
      Top = 72
      Width = 49
      Height = 21
      MaxLength = 6
      TabOrder = 6
    end
    object EdC2: TEdit
      Left = 216
      Top = 72
      Width = 49
      Height = 21
      MaxLength = 6
      TabOrder = 7
    end
    object EdC3: TEdit
      Left = 272
      Top = 72
      Width = 49
      Height = 21
      MaxLength = 6
      TabOrder = 8
    end
    object EdC4: TEdit
      Left = 328
      Top = 72
      Width = 49
      Height = 21
      MaxLength = 6
      TabOrder = 9
    end
  end
  object BtnFechar: TBitBtn
    Left = 304
    Top = 400
    Width = 121
    Height = 25
    Caption = 'Concluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 5
    OnClick = BtnFecharClick
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
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 585
    Height = 41
    Caption = 'Cliente'
    TabOrder = 0
    object Nr_Id_Cliente: TCurrencyEdit
      Left = 8
      Top = 16
      Width = 57
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DisplayFormat = '00000'
      TabOrder = 0
      OnExit = Nr_Id_ClienteExit
    end
    object Cb_Cliente: TComboBoxRw
      Left = 72
      Top = 16
      Width = 505
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 1
      OnChange = Cb_ClienteChange
      OnExit = Cb_ClienteExit
        
      Tabela = 'CLI0000'
      CamposCarregar = 'CLI_RAZAO'
      CamposRetornar = 'CLI_CODIGO'
      CamposOrdernar = 'CLI_RAZAO'
      ConexaoBanco = Dados_Gerador.CONEXAO
      Localizado = False
       
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 56
    Width = 273
    Height = 41
    Caption = 'Pessoa Solicitante'
    TabOrder = 1
    object Ed_Solicitante: TEdit
      Left = 8
      Top = 16
      Width = 257
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 288
    Top = 56
    Width = 137
    Height = 41
    Caption = 'Data do atendimento'
    TabOrder = 6
    object LblData: TLabel
      Left = 10
      Top = 18
      Width = 103
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 104
    Width = 417
    Height = 41
     
    TabOrder = 2
    object Nr_Id_Funcionario: TCurrencyEdit
      Left = 8
      Top = 16
      Width = 57
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DisplayFormat = '0000'
      TabOrder = 0
      OnExit = Nr_Id_FuncionarioExit
    end
    object Cb_Usuario: TComboBoxRw
      Left = 72
      Top = 16
      Width = 337
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = Cb_UsuarioChange
      OnExit = Cb_UsuarioExit
        
      Tabela = 'USUARIO'
      CamposCarregar = 'usu_NOME'
      CamposRetornar = 'usu_CODIGO'
      CamposOrdernar = 'usu_NOME'
      ConexaoBanco = Dados_Gerador.CONEXAO
      Localizado = False
       
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 264
    Width = 577
    Height = 121
    Caption = 'Observa'#231#245'es'
    TabOrder = 4
    object Obs: TMemo
      Left = 8
      Top = 16
      Width = 561
      Height = 97
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 400
    Width = 137
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Kind = bkCancel
  end
end
