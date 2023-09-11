inherited FrmSpedFiscal: TFrmSpedFiscal
  Left = 413
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = ' Sped Fiscal - ICMS/IPI'
  ClientHeight = 602
  ClientWidth = 964
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnResize = FormResize
  ExplicitWidth = 972
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 185
    Width = 964
    Height = 417
    ActivePage = tsErros
    Align = alClient
    TabOrder = 3
    object tsarquivo: TTabSheet
      Caption = 'Arquivo gerado'
      object mmoSpedFiscal: TMemo
        Left = 0
        Top = 0
        Width = 956
        Height = 388
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object tsErros: TTabSheet
      Caption = 'Erros'
      ImageIndex = 2
      object Merros: TMemo
        Left = 0
        Top = 0
        Width = 956
        Height = 388
        Align = alClient
        Lines.Strings = (
          'Merros')
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object tsBloco1: TTabSheet
      Caption = 'Bloco 1'
      ImageIndex = 1
      object RGINDEXP: TDBRadioGroup
        Left = 3
        Top = 6
        Width = 461
        Height = 37
        Caption = ' Ocorreu averba'#231#227'o (conclus'#227'o) de exporta'#231#227'o no per'#237'odo ?'
        Columns = 2
        DataField = 'IND_EXP'
        DataSource = dsPerguntas1010
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 0
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 3
        Top = 44
        Width = 458
        Height = 37
        Caption = 
          'Existem informa'#231#245'es acerca de cr'#233'ditos de ICMS a serem controlad' +
          'os, definidos pela Sefaz'
        Columns = 2
        DataField = 'IND_CCRF'
        DataSource = dsPerguntas1010
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 1
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 3
        Top = 87
        Width = 458
        Height = 37
        Caption = 
          #201' comercio varejista de combust'#237'veis com movimenta'#231#227'o e/ou estoq' +
          'ue no per'#237'odo'
        Columns = 2
        DataField = 'IND_COMB'
        DataSource = dsPerguntas1010
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 2
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 0
        Top = 130
        Width = 458
        Height = 37
        Caption = 
          'O estabelecimento '#233' produtor de a'#231#250'car e/ou '#225'lcool carburante co' +
          'm movimenta'#231#227'o '
        Columns = 2
        DataField = 'IND_USINA'
        DataSource = dsPerguntas1010
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 3
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 3
        Top = 173
        Width = 458
        Height = 37
        Caption = 
          'Sendo o Registro obrigat'#243'rio em sua UF, existem informa'#231#245'es a se' +
          'rem prestadas'
        Columns = 2
        DataField = 'IND_VA'
        DataSource = dsPerguntas1010
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 4
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 3
        Top = 216
        Width = 458
        Height = 37
        Hint = 
          'A empresa '#233' distribuidora de energia e ocorreu fornecimento de e' +
          'nergia el'#233'trica para consumidores de outra UF'
        Caption = 'A empresa '#233' distribuidora de energia '
        Columns = 2
        DataField = 'IND_EE'
        DataSource = dsPerguntas1010
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup6: TDBRadioGroup
        Left = 3
        Top = 259
        Width = 458
        Height = 37
        Hint = 'Realizou vendas com Cart'#227'o de Cr'#233'dito ou de d'#233'bito'
        Caption = 'Realizou vendas com Cart'#227'o de Cr'#233'dito ou de d'#233'bito'
        Columns = 2
        DataField = 'IND_CART'
        DataSource = dsPerguntas1010
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup7: TDBRadioGroup
        Left = 3
        Top = 302
        Width = 458
        Height = 37
        Hint = 
          'Foram emitidos documentos fiscais em papel no per'#237'odo em UF que ' +
          'exija o controle de utiliza'#231#227'o de documentos fiscais'
        Caption = 'Foram emitidos documentos fiscais em papel no per'#237'odo em UF'
        Columns = 2
        DataField = 'IND_FORM'
        DataSource = dsPerguntas1010
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup8: TDBRadioGroup
        Left = 470
        Top = 7
        Width = 458
        Height = 37
        Hint = 
          ' A empresa prestou servi'#231'os de transporte a'#233'reo de cargas e de p' +
          'assageiros'
        Caption = 
          ' A empresa prestou servi'#231'os de transporte a'#233'reo de cargas e de p' +
          'assageiros'
        Columns = 2
        DataField = 'IND_AER'
        DataSource = dsPerguntas1010
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup9: TDBRadioGroup
        Left = 470
        Top = 44
        Width = 458
        Height = 37
        Hint = 'Possui informa'#231#245'es GIAF1'
        Caption = 'Possui informa'#231#245'es GIAF1'
        Columns = 2
        DataField = 'IND_GIAF1'
        DataSource = dsPerguntas1010
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        Values.Strings = (
          'S'
          'N')
        Visible = False
      end
      object DBRadioGroup10: TDBRadioGroup
        Left = 467
        Top = 87
        Width = 458
        Height = 37
        Hint = 'Possui informa'#231#245'es GIAF3'
        Caption = 'Possui informa'#231#245'es GIAF3'
        Columns = 2
        DataField = 'IND_GIAF3'
        DataSource = dsPerguntas1010
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        Values.Strings = (
          'S'
          'N')
        Visible = False
      end
      object DBRadioGroup11: TDBRadioGroup
        Left = 467
        Top = 130
        Width = 458
        Height = 37
        Hint = 'Possui informa'#231#245'es GIAF4'
        Caption = 'Possui informa'#231#245'es GIAF4'
        Columns = 2
        DataField = 'IND_GIAF4'
        DataSource = dsPerguntas1010
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        Values.Strings = (
          'S'
          'N')
        Visible = False
      end
    end
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 41
    Width = 964
    Height = 144
    Align = alTop
    Caption = 'Op'#231#245'es'
    TabOrder = 1
    object lblPeriodo: TLabel
      Left = 13
      Top = 24
      Width = 65
      Height = 14
      Caption = 'Compet'#234'ncia:'
    end
    object Label1: TLabel
      Left = 184
      Top = 24
      Width = 27
      Height = 14
      Caption = 'Perfil:'
    end
    object Label2: TLabel
      Left = 256
      Top = 24
      Width = 51
      Height = 14
      Caption = 'Finalidade:'
    end
    object lblLocal: TLabel
      Left = 469
      Top = 24
      Width = 84
      Height = 14
      Caption = 'Local do Arquivo:'
    end
    object btnFolder: TSpeedButton
      Left = 819
      Top = 21
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = btnFolderClick
    end
    object Label3: TLabel
      Left = 464
      Top = 49
      Width = 89
      Height = 14
      Caption = 'Motivo do Bloco H:'
    end
    object SpeedButton1: TSpeedButton
      Left = 412
      Top = 45
      Width = 23
      Height = 22
      Hint = 'Filtrar itens do bloco H'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFADADAD
        ADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADAD
        AD9D968E9D968EFF00FFFF00FFADADADF3F3F3B2BDD5F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3F3F3F3F3F2F2F2F2F2F29D968EB1B2B29D968EFF00FFFF00FFADADAD
        515151B2BDD5E2C2A7E2C2A7E2C2A7E2C2A7E2C2A7E2C2A7E3C6AC9D968EBABA
        BA9D968EFF00FFFF00FFFF00FFADADADF6F6F6B2BDD5F6F6F6CBC7C49D968E9D
        968E9D968E9D968EA09992C4C2C29D968EADADADFF00FFFF00FFFF00FFADADAD
        E2C2A7B2BDD5C4B2A39D968ED7CEC6E3DAD4E1D9D3CCC7C59D968E9D968EE2C2
        A7ADADADFF00FFFF00FFFF00FFADADADF8F8F8B2BDD59D968EE2DCD3FBF4EEFB
        F6F0FBF6F2FBF3EEC4C0BF9D968EF6F6F6ADADADFF00FFFF00FFFF00FFADADAD
        E2C2A7BFC6D99D968EF4E3D3F6E7DAF6E9DDF6EBE0F6EBE2D8CBC69D968EE2C2
        A7ADADADFF00FFFF00FFFF00FFADADAD515151C2CADD9E978FF8EDE0FAEFE3FA
        F2E9FBF3EDFBF4EFE2D8D39D968EF8F8F8ADADADFF00FFFF00FFFF00FFADADAD
        E2C2A7B7C1D47B7670F0DECCF4E5D3F4E1CFF3E1D0F4E3D3BFB0A99D968EE2C2
        A7ADADADFF00FFFF00FFFF00FFADADADFBFBFBB2BDD5AFAFAF928A81F2E6D9FA
        EFE3FAEEE5D3C6BD9D968ECCC9C5FAFAFAADADADFF00FFFF00FFFF00FFADADAD
        E2C2A7B2BDD5E3C6ACA59E98706B667D736C8379748E8A88BFAD9EE2C2A7E2C2
        A7ADADADFF00FFFF00FFFF00FFADADADFCFCFCB2BDD5FEFEFEFAFAFAFEFEFEFA
        FAFAFCFCFCADADADADADADADADADADADADADADADFF00FFFF00FFFF00FFADADAD
        E2C2A7B2BDD5E2C2A7E2C2A7E2C2A7E2C2A7E2C2A7ADADADC7C7C7E2E2E2ADAD
        ADFF00FFFF00FFFF00FFFF00FFADADAD515151B2BDD5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEADADADE2E2E2ADADADFF00FFFF00FFFF00FFFF00FFFF00FFADADAD
        FCFCFCB2BDD5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEADADADADADADFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFADADADADADADADADADADADADADADADADADADAD
        ADADADADADADADADFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object sbBlocoK: TSpeedButton
      Left = 146
      Top = 68
      Width = 23
      Height = 22
      Hint = 'Filtrar itens do bloco H'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFADADAD
        ADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADAD
        AD9D968E9D968EFF00FFFF00FFADADADF3F3F3B2BDD5F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3F3F3F3F3F2F2F2F2F2F29D968EB1B2B29D968EFF00FFFF00FFADADAD
        515151B2BDD5E2C2A7E2C2A7E2C2A7E2C2A7E2C2A7E2C2A7E3C6AC9D968EBABA
        BA9D968EFF00FFFF00FFFF00FFADADADF6F6F6B2BDD5F6F6F6CBC7C49D968E9D
        968E9D968E9D968EA09992C4C2C29D968EADADADFF00FFFF00FFFF00FFADADAD
        E2C2A7B2BDD5C4B2A39D968ED7CEC6E3DAD4E1D9D3CCC7C59D968E9D968EE2C2
        A7ADADADFF00FFFF00FFFF00FFADADADF8F8F8B2BDD59D968EE2DCD3FBF4EEFB
        F6F0FBF6F2FBF3EEC4C0BF9D968EF6F6F6ADADADFF00FFFF00FFFF00FFADADAD
        E2C2A7BFC6D99D968EF4E3D3F6E7DAF6E9DDF6EBE0F6EBE2D8CBC69D968EE2C2
        A7ADADADFF00FFFF00FFFF00FFADADAD515151C2CADD9E978FF8EDE0FAEFE3FA
        F2E9FBF3EDFBF4EFE2D8D39D968EF8F8F8ADADADFF00FFFF00FFFF00FFADADAD
        E2C2A7B7C1D47B7670F0DECCF4E5D3F4E1CFF3E1D0F4E3D3BFB0A99D968EE2C2
        A7ADADADFF00FFFF00FFFF00FFADADADFBFBFBB2BDD5AFAFAF928A81F2E6D9FA
        EFE3FAEEE5D3C6BD9D968ECCC9C5FAFAFAADADADFF00FFFF00FFFF00FFADADAD
        E2C2A7B2BDD5E3C6ACA59E98706B667D736C8379748E8A88BFAD9EE2C2A7E2C2
        A7ADADADFF00FFFF00FFFF00FFADADADFCFCFCB2BDD5FEFEFEFAFAFAFEFEFEFA
        FAFAFCFCFCADADADADADADADADADADADADADADADFF00FFFF00FFFF00FFADADAD
        E2C2A7B2BDD5E2C2A7E2C2A7E2C2A7E2C2A7E2C2A7ADADADC7C7C7E2E2E2ADAD
        ADFF00FFFF00FFFF00FFFF00FFADADAD515151B2BDD5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEADADADE2E2E2ADADADFF00FFFF00FFFF00FFFF00FFFF00FFADADAD
        FCFCFCB2BDD5FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEADADADADADADFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFADADADADADADADADADADADADADADADADADADAD
        ADADADADADADADADFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbBlocoKClick
    end
    object edtAnoInicial: TJvSpinEdit
      Left = 120
      Top = 21
      Width = 49
      Height = 22
      Decimal = 0
      MaxValue = 3000.000000000000000000
      MinValue = 1900.000000000000000000
      Value = 1900.000000000000000000
      MaxLength = 4
      TabOrder = 1
    end
    object edtMesInicial: TJvSpinEdit
      Left = 80
      Top = 21
      Width = 37
      Height = 22
      Decimal = 0
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      MaxLength = 2
      TabOrder = 0
    end
    object cbbPerfil: TComboBox
      Left = 216
      Top = 21
      Width = 33
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 2
      Text = 'A'
      Items.Strings = (
        'A'
        'B'
        'C')
    end
    object cbbFinalidade: TComboBox
      Left = 313
      Top = 20
      Width = 105
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 3
      Text = 'Original'
      Items.Strings = (
        'Original'
        'Substitutiva')
    end
    object edtLocal: TEdit
      Left = 556
      Top = 21
      Width = 261
      Height = 22
      TabOrder = 4
      Text = 'edtLocal'
    end
    object btnGerar: TBitBtn
      Left = 848
      Top = 14
      Width = 100
      Height = 25
      Caption = 'Gerar Sped'
      TabOrder = 5
      OnClick = btnGerarClick
    end
    object cbbMotivoBlocoH: TComboBox
      Left = 556
      Top = 46
      Width = 285
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 11
      Text = '01 - NO FINAL DO PER'#205'ODO'
      Items.Strings = (
        '01 - NO FINAL DO PER'#205'ODO'
        '02 - MUDANCA DA FORMA DE TRIBUTA'#199#195'O DA MERCADORIA - ICMS'
        '03 - SOLICITA'#199#195'O DA BAIXA CADASTRAL, PARALIZA'#199#195'O OU OUTRAS'
        '04 - ALTERA'#199#195'O NO REGIME DE PAGAMENTO')
    end
    object chkBlocoC: TCheckBox
      Left = 80
      Top = 48
      Width = 97
      Height = 17
      Caption = 'Bloco C'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object chkBlocoD: TCheckBox
      Left = 146
      Top = 48
      Width = 64
      Height = 17
      Caption = 'Bloco D'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object chkBlocoE: TCheckBox
      Left = 210
      Top = 48
      Width = 97
      Height = 17
      Caption = 'Bloco E'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object chkBlocoG: TCheckBox
      Left = 277
      Top = 48
      Width = 68
      Height = 17
      Caption = 'Bloco G'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object chkBlocoH: TCheckBox
      Left = 351
      Top = 48
      Width = 60
      Height = 17
      Caption = 'Bloco H'
      TabOrder = 10
    end
    object cbbVersao: TComboBox
      Left = 848
      Top = 46
      Width = 100
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 12
      Text = 'V116'
      Items.Strings = (
        'V116'
        'V115'
        'V114'
        'V113'
        'V112'
        'V111'
        'V110')
    end
    object chkBlocoK: TCheckBox
      Left = 80
      Top = 71
      Width = 60
      Height = 17
      Caption = 'Bloco K'
      TabOrder = 13
      OnClick = chkBlocoKClick
    end
    object ChkBloco1: TCheckBox
      Left = 210
      Top = 71
      Width = 81
      Height = 17
      Caption = 'Bloco 1'
      TabOrder = 14
      OnClick = ChkBloco1Click
    end
    object Button1: TButton
      Left = 873
      Top = 74
      Width = 75
      Height = 25
      Caption = 'btnGravar'
      TabOrder = 15
      Visible = False
      OnClick = Button1Click
    end
    object btnK280: TButton
      Left = 144
      Top = 92
      Width = 75
      Height = 25
      Hint = 'Corre'#231#227'o de apontamento de estoque escriturado'
      Caption = 'K280'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnClick = btnK280Click
    end
    object chk280: TCheckBox
      Left = 80
      Top = 96
      Width = 58
      Height = 17
      Caption = 'K280'
      TabOrder = 17
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 964
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvNone
    Caption = ' Sped Fiscal - ICMS/IPI'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Image1: TImage
      Left = 914
      Top = 1
      Width = 49
      Height = 39
      Align = alRight
      Picture.Data = {
        0A544A504547496D616765C7050000FFD8FFE000104A4649460001010100C800
        C80000FFDB004300020202020202020202020202020203040302020304050404
        0404040506050505050505060607070807070609090A0A09090C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0CFFDB004301030303050405090606090D0B090B0D0F0E0E0E
        0E0F0F0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080026003203011100021101031101
        FFC4001B00000203000300000000000000000000000708040609000305FFC400
        3610000104000502020609050100000000000102030405000607111213212231
        0814233241511517333542526171811643445391B1FFC4001901000301010100
        00000000000000000000000102030506FFC40027110002020102040603000000
        000000000000010211031221040531511341526191C11471A1FFDA000C030100
        02110311003F00DFCC002F1A89AD55F536F2728D15CD757CE8600BCCC2F27D60
        4452BFB11D81F6AFEDDFB9E28FC5BF96292158249D983496F021FCD70AE73B3D
        1C7DE17F3D678EDE652DB3D3691F3D9231528B8AB15C7B9D30332E8ED52972B2
        B56D964D97287DE54735E60AB6F2F039D4697FC8DB09293F21DC7B856D3FD70A
        A99711F2A660BF8964ECD574A8B319684553EE0FF1E6340F06DDFCAA4F857FA1
        EC69E2639547CC64B1901CC000FB54333CBCA7932D2C2B12872EE5F0AFA06D47
        8A4CD967A6C927E0124F23FB61A0667C4ECAABCBB59672C36CE68CE7C772B98A
        2D45725B8A0951707BDD34A8F251F320634EA41398D36661A2F533A7CCCEB9AE
        A151DDFEAB9AD8154E2D4DF27EAE9ABA3AC749F41502D29C42D2B4FE2DF7C78F
        E67CCB5677591C743E94DDFB2F73B7C2618471D4A37A97F7BBF609B232E6557A
        6D68650F8CACC4F8712D6CD9778446987E38ECFC958D90FA64ABC4191C78F624
        1C25C471335AD4B6FAFA14787C718569DD2FBEC0C61E40A8BE55D54CE8168334
        42BF6E13D63066B70BE8AA79493EAF6A98B256448659713ED775F2E0771F2C4F
        2DE639DC9EA9799B67C18DD54569AF97DAC77B4473A399DB204199324B132CE9
        1F7E96DA7B2496643D015D2F586D47CD2EA40583FAE3D460CDE2C75551C392A6
        167AAD7FB1BFFA31B0803FA4265E899B329C3A399326C38DEBA8952CC76F72B6
        D0149E1D4DC74D44ABC2AC38898A52EA732BB695997A86EA3555144AE53B3734
        E626CDC4E9AF15F06A1F2DD1C7A69F12DC3DCF603164971ACD24D4F2E22752EA
        5E50A59484F16A6C58B3997037F94775003137FAF82BC4CBD35EC42BEC83E905
        1A3B8C39AF597950B657B076B4B883CBDEDDAE002B7FD70A31828B55D47E24FB
        8BE665C8BA90E477D36FAC915E658DCA588344CA4F7ECAF7FE7895C360F417F9
        39FD6337E88FA7309593B30D966BB7B9CC81776B4409739F54567643490B4A23
        475A1BE3B9F88FFCC68F65A510DEAEA3C89AAAC4A5294C18BC52364F84796200
        0167ACED616F127428F4ED22A82D4D30ECC05A716F213B84A967EC81576240DC
        0DF148933F6266CD61121D819CEDF22C7B0EAACBF5EF51B8CC560F23B37164B4
        B4975B40DB8B8AEEAF3C5925DE1BFAB840FA1F39E52A98CA0549318CE50DC7C7
        65A94306C32159FD793FCD3275969A2255BEFD3AE5BDDBE3E25E0D8017CFCA3A
        91986DA3510D5BCDB982DAD5623C4ADAE87163051577DF911D824773BF90EE70
        C46A3E8F694E4FD3ECA74F4119E6AFEEE14642AF6DA43FEB4F3F25CF138E2C6E
        523B9D86C076C64D96906EF2EC3CB086576E729D05FA839675EDBEF04F04BE09
        42F6FDD2460005F98742E8AD6BA733596B3EB6C16826B25484A2632C3DF856A6
        5C03981F22AC3B1519FF00AB5A69ADDA712A332F6A064190D58FB48D260D1A98
        71290ADBBB6A78A41FE4E344D114CAD699E8FEABEB1DBCFACFAEFB1A462B4072
        5A98AE8E83C49DBD9EDCBBFEE4606E828D04D36F45BD3AC8300A6D1CB8D41BE7
        95CA5665CC2F755FEFE68690DF043683F946FBFC49C4391743095F555954D062
        B2BE1D7B2004F4E3B696C6C3B0F740C48CF43001FFD9}
      ExplicitLeft = 922
    end
  end
  object PanelAguarde: TPanel [3]
    Left = 120
    Top = 203
    Width = 293
    Height = 56
    AutoSize = True
    Caption = 'PanelAguarde'
    Color = clWhite
    TabOrder = 2
    Visible = False
    object JvGIFAnimator2: TJvGIFAnimator
      Left = 1
      Top = 1
      Width = 291
      Height = 54
      AsyncDrawing = True
      Center = True
      Image.Data = {
        DD0E000047494638396123013600E60000EAEAEAFFFFFFB0B0B00000005576D5
        FFC60013275F3854A34866BD304A945475D34D6CC61A316F2037785374D15171
        CD415EB15070CC5575D4273F85415EB24D6DC72037792F49932740851327601A
        306F273F845373D10001020000016060600C183A5373D01B31704866BE09122D
        0409161022526C77980E1D473854A21F3678060D2012255A01020403060E0203
        085374D2415FB23954A302040903050D4766BD01020512255B6C77994C6CC50E
        1D48060D1F2740860409155171CE4867BED1D1D1112253070D21304A951A306E
        09132D5576D412255910215209122C4E6DC81F36773955A44C6BC50E1E480C18
        3B0101044765BC5474D25677D63853A2263F84FFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000021FF0B4E45545343415045322E3003
        0100000021F904050A0056002C00000000230136000007FF8001828384858687
        88898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7
        A8A9AAABACADAEAFA84002B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7
        C8B740870200CECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3D202CCE4
        E8E9EAEBECEDEEEFEDE686CDF0F5F6F7F8F9FAECF285F4FB00030A1C48105D3F
        42FF0A2A5CC8B0A1BE8383123A9C48B1A2C56C100549BCC8B1A3478519036CFC
        48B2A4C978E7AE0D58B9F2594B682C59C27CE952A6B398346BDE1CB07326CF9A
        2D71DA3C499462C891D15E2AFDA973DA5000347FE694B6B427D0A44CAD16DD3A
        F128B6AA50B38675CA33AAD8B1D5C09A45ABB52DD7B705FFBDAA944A176B4C9D
        66870A253B3667D0AC53A7C21D0C50AE359C4D13CF641BD6A660BB88F10216FB
        98B0657B86D39E0DBC792F56B7549732153A9AF2D9CBA8DF65A6269873E8A6A5
        41BF66BCD6ADDFBA8C53EBE6B69A2FE4BF77D9E62D1D7CF66DD84F8FA3ADBCBB
        39B5DECEA34B87077DBAF5EBE3AA63DFCE1D63CAEEE0C35BD32EBE3C77F2E6D3
        4F47FF8134CE0FD1DABB67091F9AFCF903EA3FBB3F5FBF33FEEEF9070080A409
        48A05006E2B752820A32889F83FDC5A7607E123658E183E37DC75A011C76E821
        871E2445C08824963862883099A8220128BAB4A2892DDEF46289314235238935
        7A30C58D2C8AC8638E3CF698E28F3EDE082491431A59E4FF8C3546835E071F46
        5940074B2A60A504574A406592586679E5962E7A292698328AD9259664DA78E6
        9A685669669A1D98B9269C729E49679D6D7229E79D6C66C9679F56FE69C49B19
        CEA392941FB6E0A6031C48D1A8038AEA19020C8C561A69989566FAE8A5654EAA
        A9A58B6ACAA99A8F525A2A0C36845AEAA82D7CEA29A8927E9A6AACA2AAEAE9AC
        989EBAAAAD8C8EEAA486D3CC80A8873324E5C303C8261BC1B2C8160BCD0CCA32
        1BED0BC64A6BEDB2D43E7BEDB5D9BA746CB4D63AFB0CB4E04E5B6DB9CC76EB0C
        B9DBA67B6EBB11A80B00BBF0CA4B6FBBF6A2AB6CBEFA625BA83FD7B8306C872E
        4443C3020857A070C20B17AC2DC30BE7D0B0C1114B5C71FF050E8F0BF1C61853
        CC71C43478FC31C219AF7BF1C5213F7C72C225CF3B32CB22AFBC40CA1ACB4C72
        CC2BB7EC82CD3757835E0F0373584234252060F4D148FF80C0D0D0F43082D24F
        276D34D3CF142D75D23D101DF5D6586B7D35D2543B63F5D74F67DD34D947870D
        C0D8649B5D35DA657B8DB6DA6C7F4D37DC4BCB5D83DDFF2274CD0A4117204434
        2B506038048723AEF80A8427AEF8E314300ECD0E90571E79E396272EF93385C7
        90B9E19B3BD3F9E710EC8039E9A1034039E931A43EBAE39E837E3AEC870F3E79
        EC9FBB8E7BE6BAD3FE78EABF1A6A0D098193100D09321CA07C0AC92F9FBCF1D0
        14E1FCF4CC1F00FD33C8533FFDF5CE64AFFDF2DC03E0FDFFF7D61F4F3EF8E69F
        5F7EF4EAAF8F7DFBE18FFF7DFCCD934FBFFA49A4CF84FD7D47740D0881034134
        4070810418B0800744A000A141C0042230810B7C46031FE8C00B44D01913A420
        040758C10A5E100019D4A0013F18421192B0830E7C020745F8C013A2F0802E7C
        610262F8421AA2F083C10398355010381444430713C0C0068418C4220ED187D0
        00E2108D48442122F1192858621379D0C4273AC3094CCCE20474F0432D4A7103
        56044014BD48451E84718C64046317BF98452E26718A6CC4C019E3F8C539A651
        8D6FA42311ED9846373E0758D23041E04C108D20A8C0020D4064221779484242
        C3048C8CA4221DF90C484A3292947486250F79C9066412FF009BECA4270BC949
        459A12919F0CE5292749CA52AE72948F14252B63294B15A4D29597BCE52B4BA9
        4B5C32F29339F49B355830C84232E098C8D44032357003632AF399CB64A633A3
        99CC663E129AD494E635B389CC234C939B2CF8A608A869CD4A8E939BDA34E739
        D709CD723AE306E854A637B7894E7782329E0C08273DD959CDFE69E41A38C880
        01062A508216F404D13841410DCA50844243A10C5DE8401DFA0C884AB4A1098D
        684429EA0C8B6A74A219FD2841711052911A80A30008A8494F5A5291A2D4A31F
        7DE94A59FAD099CA74A524F51920D5C3D3F5ECB4A740DD0D7A824A54B80CB5A8
        4825CA5193CAD48F2CB5A950B5C853A34AD5864CB5AA583125C855B3CAD57D84
        4416C908AB58C74AD6B29AF5AC682DEB3260C1D6B6BAF5AD708DAB5CE74AD7BA
        DAF5AE78CD6B5B03010021F904050A0056002C11001C001F000C000007748004
        8283848256878856058B8C8D8B12900A92919389888E98050E1C30219B9C9E9B
        9687998E0FA711A8A9A8A38AA58C154DB10BB4B3B4ADAF8C350823BCBEBFB8B9
        051410C4C5C6C7C1B907CCCDCECCCAAF09D317D4D609D1A513DBDC1B18DDD999
        0DE3E4E51616E1981AEBEC0C22EFEEE98E810021F904050A0056002C24001C00
        1F000C0000077380048283848256878856058B8C8D8B0A129190929289888E98
        050E9B9C9D9B9687998E0FA411A5A6A8A08AA28C0BAE15B0AFB1AAAC8C08B7B8
        B93F08B4B50514C010C1C2C4BDB53207C929C8CAC8C6AC1709D2D1D3D4CFA213
        181BDAD9DDDBD7992A160DE3E4E6E2E0980CEBEC1AED1AE98E810021F904050A
        0056002C37001C001F000C0000077780048283848256878856058B8C8D8B0A90
        1291929189888E9805210E9C309B9D9B9687998E0F3EA611A8A9A6A28AA48C15
        0BB2B1B3B4ADAF8C233F08BABCBEBCB7B80514C4C510C7C8C1B807CCCDCE2907
        CAAF1709D5D6D709D2A4181BDC133CDDDFDCDA990D4BE6E8E90DE498221AEEEF
        0CF2F0EC8E810021F904050A0056002C4A001C001F000C000007748004828384
        8256878856058B8C8D8B0A901292919389888E98050E1C9B9C219D9B9687998E
        11A60FA8A7A7A28AA48C15B00B39B1B2B0ACAE8C08BA51BBBD08B7B805103114
        C3C6C5C3C0B807CCCDCECCCAAE09D3D4D5D3D1A41B13DADB183CDEDED899160D
        E5E6E70DE2980CEC1AEDEF0CEA8E810021F904050A0056002C5D001C001F000C
        0000077480048283848256878856058B8C8D8B120A9190929389888E98051C0E
        219C9B9D9E9687998E11A6A7A80F0FA28AA48C0BB0B115B3B1ACAE8C2308BABB
        BC08B6B705141031C2C3C6C4BFB707CBCC54CD07C9AE09D317D4D5D4D1A413DB
        DC18DD13D9990DE3E4E5E3E1981A0C2244EBECEE1AE88E810021F904050A0056
        002C70001C001F000C0000077480048283848256878856058B8C8D8B46120A92
        91939189888E99050E1C30219C9D9F9C97879A8E3E0FA911AAABA9A48AA68C15
        0BB3B4B6B5AFB18C08BCBDBEBCB9BA051031C4C6C714C1BA07CCCDCECCCAB109
        D3D4D5D3D1A613DADB181BDDDDD89A160DE4E3E5E5E1991A0C22ECEEEBECE98E
        810021F904050A0056002C83001C001F000C0000077780530483848504568889
        56058C8D8E8C0A12929193948A898F99050E9C30219E1C9D3097889A8F110FA9
        A8AAABA48BA68D150BB3B2B4B5AEB08D233508BDBBBEBBB8B905311410C7C6C8
        C5C2B907CECFD0CECCB009D5D643D717D3A61B13DEDFE03CDB9A2A160DE6E5E7
        EAE3991AEE0CF0EF22EEEC8F810021F904050A0056002C96001C001F000C0000
        077380048283848256878856058B8C8D8B0A901291929189888E9805210E9C9D
        9E0E9687998E0FA511A7A8A8A18AA38C15AF39B00BB1AFABAD8C083FB9BBBC08
        B6B7053110C3C4C2C4BFB707CACBCCCAC8AD0917D1D2D4D4CFA318D91B13DADB
        D9D7992A0DE316E5E4E5E0980C1AEB22EDEFE98E810021F904050A0056002CA9
        001C001F000C0000077480048283848256878856058B8C8D8B0A901292919389
        888E98050E219B1C9D309D9687998E11A60FA8A7A7A28AA48C15B00B39B1B2B0
        ACAE8C08BABBBCBAB7B80510C2C314C431BFB807CACB2932CCC8AE09D2D317D4
        09D0A41BDA13DCDD18DCD8990D2AE3E5E4E5E19822EB1A0CECEDEEE98E810021
        F904050A0056002CBC001C001F000C0000077580048283848256878856058B8C
        8D8B120A9190929389888E98051C0E219C9E9F9687998E0F11A5A7A63EA6A18A
        A38C0BB0B115B3B1ACAE8C0835B9BBBC23B6B7051410C2C3C5C4BFB707CA32CB
        CD29C8AE0917D2D4D3D6D0A318131BDBDCDEDBD8990DE32A16E4E6E3E1980C22
        EDEEEC44ECEA8E810021F904050A0056002CCF001C001F000C00000770800482
        83848256878856058B8C8D8B12900A92919389888E98050E1C9B9D9E0E968799
        8E0FA511A6A7A9A18AA38C0BAF15B0B1B0ABAD8C0823B8B9BABAB5B6051014C1
        C2C3C4BEB607C9CACBC9C7AD09D0D1D2D0CEA31B1318D8D7DBD9D599160DE0E1
        E3E2DE980CE8E91A22EAE68E810021F904050A0056002CE2001C001F000C0000
        077380048283848256878856058B8C8D8B0A461290939489888E98050E9B9C9D
        300E9687998E110FA6A5A7A7A18AA38C0B15AFB0B1B2ABAD8C3F08B9BABB35B5
        B6053110C214C3C5BEB63207CACBCC07C7AD1709D2D1D3D3CFA313D9DA181BDD
        DCD7992A160DE4E5E6E0980CEAEB1AED22EAE88E810021F904050A0056002CF5
        001C001F000C0000077580048283848256878856058B8C8D8B0A901291929189
        888E9805210E301C9C9F9F9687998E0FA63E11A7AAA28AA48C150BB1B0B2B3AC
        AE8C0823B935BBBDB6B705311410C4C3C6C3BFB707CBCC32CECCC9AE1709D4D5
        D609D1A4181B13DDDBDFDBD99916E40DE5E716E2980C1AEC22EDEEEDEA8E8100
        3B}
    end
    object Panel2: TPanel
      Left = 7
      Top = 8
      Width = 281
      Height = 19
      Caption = 'AGUARDE ...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object pFiltroProduto: TPanel [4]
    Left = 414
    Top = 110
    Width = 385
    Height = 187
    TabOrder = 0
    Visible = False
    object Label4: TLabel
      Left = 63
      Top = 66
      Width = 28
      Height = 14
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 54
      Top = 93
      Width = 37
      Height = 14
      Caption = 'Grupo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 59
      Top = 120
      Width = 32
      Height = 14
      Caption = 'Linha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 8
      Width = 108
      Height = 14
      Caption = 'Filtrar itens do Bloco H'
    end
    object Label8: TLabel
      Left = 20
      Top = 39
      Width = 73
      Height = 14
      Caption = 'Almoxarifado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EdtTipo: TEdit
      Left = 96
      Top = 62
      Width = 43
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      OnExit = EdtTipoExit
    end
    object cbTipo: TSgDbSearchCombo
      Left = 144
      Top = 62
      Width = 204
      Height = 22
      EmptyText = 'TODOS OS TIPOS'
      TabOrder = 1
      CharCase = ecUpperCase
      font.Charset = DEFAULT_CHARSET
      font.Color = clWindowText
      font.Height = -12
      font.Name = 'Tahoma'
      font.Style = []
      LookupSelect = 'PTI_CODIGO, PTI_DESCRI, PTI_SIGLA, SPED_GENCODIGO'
      LookupOrderBy = 'PTI_DESCRI'
      LookupTable = 'pRD_TIPO'
      LookupDispl = 'PTI_DESCRI'
      OnSelect = cbTipoSelect
      GridAutoSize = False
      LookupSource = qTipoProduto
      LookupKeyField = 'PTI_CODIGO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Tipos de Produtos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o, Sigla'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object EdtGrupo: TEdit
      Left = 96
      Top = 89
      Width = 43
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 2
      OnExit = EdtGrupoExit
    end
    object CbGrupo: TSgDbSearchCombo
      Left = 144
      Top = 89
      Width = 205
      Height = 22
      EmptyText = 'TODOS OS GRUPOS'
      TabOrder = 3
      CharCase = ecUpperCase
      font.Charset = DEFAULT_CHARSET
      font.Color = clWindowText
      font.Height = -12
      font.Name = 'Tahoma'
      font.Style = []
      LookupSelect = 'PGR_CODIGO, PGR_DESCRI'
      LookupOrderBy = 'PGR_DESCRI'
      LookupTable = 'PRD_GRUPO'
      LookupDispl = 'PGR_DESCRI'
      OnSelect = CbGrupoSelect
      GridAutoSize = False
      LookupSource = qGrupo
      DataField = 'PGR_CODIGO'
      LookupKeyField = 'PGR_CODIGO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Grupos de Produtos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object EdtLinha: TEdit
      Left = 96
      Top = 116
      Width = 43
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 4
      OnExit = EdtLinhaExit
    end
    object CBLinha: TSgDbSearchCombo
      Left = 144
      Top = 116
      Width = 204
      Height = 22
      EmptyText = 'TODAS AS LINHAS'
      TabOrder = 5
      CharCase = ecUpperCase
      font.Charset = DEFAULT_CHARSET
      font.Color = clWindowText
      font.Height = -12
      font.Name = 'Tahoma'
      font.Style = []
      LookupSelect = 'lin_codigo,lin_descri'
      LookupOrderBy = 'lin_descri'
      LookupTable = 'PRD_LINHA'
      LookupDispl = 'LIN_DESCRI'
      OnSelect = CBLinhaSelect
      GridAutoSize = False
      LookupSource = qLinha
      DataField = 'LIN_CODIGO'
      LookupKeyField = 'lin_codigo'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Marcas/Linhas de Produtos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object cbAlmoxarifado: TSgDbSearchCombo
      Left = 144
      Top = 36
      Width = 204
      Height = 22
      TabOrder = 6
      font.Charset = DEFAULT_CHARSET
      font.Color = clWindowText
      font.Height = -12
      font.Name = 'Tahoma'
      font.Style = []
      LookupSelect = 'AMX_CODIGO, AMX_DESCRI'
      LookupOrderBy = 'AMX_DESCRI'
      LookupTable = 'ALMOX0000'
      LookupDispl = 'AMX_DESCRI'
      OnSelect = cbAlmoxarifadoSelect
      GridAutoSize = False
      LookupSource = qAlmoxa
      LookupKeyField = 'AMX_CODIGO'
      ShowButton = True
      LookupTableShare = 'ESTOQUES'
      AutoF8ColumnsTitulo = 'C'#243'digo, nome'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edAlmoxarifado: TEdit
      Left = 96
      Top = 36
      Width = 43
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 7
      OnExit = edAlmoxarifadoExit
    end
    object btnConfirmarMargem: TButton
      Left = 296
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Ok'
      Default = True
      TabOrder = 8
      OnClick = btnConfirmarMargemClick
    end
  end
  object pnBlocoK: TPanel [5]
    Left = 146
    Top = 137
    Width = 385
    Height = 109
    TabOrder = 5
    Visible = False
    object Label12: TLabel
      Left = 8
      Top = 8
      Width = 106
      Height = 14
      Caption = 'Filtrar itens do Bloco k'
    end
    object Label13: TLabel
      Left = 20
      Top = 39
      Width = 73
      Height = 14
      Caption = 'Almoxarifado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbAlmoxarifadoK: TSgDbSearchCombo
      Left = 144
      Top = 36
      Width = 204
      Height = 22
      TabOrder = 0
      font.Charset = DEFAULT_CHARSET
      font.Color = clWindowText
      font.Height = -12
      font.Name = 'Tahoma'
      font.Style = []
      LookupSelect = 'AMX_CODIGO, AMX_DESCRI'
      LookupOrderBy = 'AMX_DESCRI'
      LookupTable = 'ALMOX0000'
      LookupDispl = 'AMX_DESCRI'
      OnSelect = cbAlmoxarifadoKSelect
      GridAutoSize = False
      LookupSource = qAlmoxa
      LookupKeyField = 'AMX_CODIGO'
      ShowButton = True
      LookupTableShare = 'ESTOQUES'
      AutoF8ColumnsTitulo = 'C'#243'digo, nome'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edAlmoxarifadoK: TEdit
      Left = 96
      Top = 36
      Width = 43
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
      OnExit = edAlmoxarifadoKExit
    end
    object Button2: TButton
      Left = 296
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Ok'
      Default = True
      TabOrder = 2
      OnClick = btnConfirmarMargemClick
    end
    object Button3: TButton
      Left = 296
      Top = 76
      Width = 75
      Height = 25
      Caption = 'Ok'
      Default = True
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 88
    Top = 0
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Top = 8
  end
  object JvBrowseForFolderDialog1: TJvBrowseForFolderDialog
    Left = 640
    Top = 240
  end
  object CdsEmpresa: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 814
    Top = 122
  end
  object CdsContator: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 814
    Top = 154
  end
  object CdsParticipantes: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 814
    Top = 186
  end
  object CdsUnidadeMedida: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 814
    Top = 218
  end
  object CdsProdutosServicos: TSqlClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 814
    Top = 218
  end
  object CdsNotasFiscais: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 814
    Top = 250
  end
  object CdsNotasFiscaisItens: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 814
    Top = 282
  end
  object CdsNaturezaOperacao: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 814
    Top = 314
  end
  object CdsC180: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 814
    Top = 314
  end
  object CdsC181: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 814
    Top = 346
  end
  object CdsC185: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 814
    Top = 378
  end
  object CdsF550: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 814
    Top = 410
  end
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = 'C:\Delphi7\Bin\'
    Delimitador = '|'
    ReplaceDelimitador = False
    TrimString = True
    CurMascara = '#0.00'
    Left = 480
    Top = 249
  end
  object Cds0015: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 846
    Top = 122
  end
  object CdsEstoque: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 846
    Top = 154
  end
  object Cdsc190: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 846
    Top = 186
  end
  object CdsEstoqueTerceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 361
    object CdsEstoqueTerceiroPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 6
    end
    object CdsEstoqueTerceiroamx_terceiros: TStringField
      FieldName = 'amx_terceiros'
      Size = 1
    end
    object CdsEstoqueTerceiroamx_foraterceiros: TStringField
      FieldName = 'amx_foraterceiros'
      Size = 1
    end
    object CdsEstoqueTerceiroAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object CdsEstoqueTerceiroAMX_CNPJ_PART: TStringField
      FieldName = 'AMX_CNPJ_PART'
      Size = 14
    end
    object CdsEstoqueTerceiroKAR_SALDO: TFMTBCDField
      FieldName = 'KAR_SALDO'
      Precision = 15
    end
    object CdsEstoqueTerceiroprd_und: TStringField
      FieldName = 'prd_und'
      Size = 3
    end
    object CdsEstoqueTerceiroPRD_PMEDIO: TFMTBCDField
      FieldName = 'PRD_PMEDIO'
      Precision = 15
    end
    object CdsEstoqueTerceiroPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object CdsEstoqueTerceiroSPED_TIPCODIGO: TStringField
      FieldName = 'SPED_TIPCODIGO'
      Size = 2
    end
    object CdsEstoqueTerceiroCOD_PART: TStringField
      FieldName = 'COD_PART'
      Size = 10
    end
    object CdsEstoqueTerceiroPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 5
    end
  end
  object cdsAlterParticipante: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = []
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 592
    Top = 377
    object cdsAlterParticipanteregistro: TIntegerField
      FieldName = 'registro'
    end
    object cdsAlterParticipanteTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsAlterParticipanteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object cdsAlterParticipanteDT_ALT: TDateField
      FieldName = 'DT_ALT'
    end
    object cdsAlterParticipanteCAMPO: TStringField
      FieldName = 'CAMPO'
      Size = 30
    end
    object cdsAlterParticipanteCONT_ANT: TStringField
      FieldName = 'CONT_ANT'
      Size = 50
    end
    object cdsAlterParticipanteSPED_DTENVIADO: TDateField
      FieldName = 'SPED_DTENVIADO'
    end
  end
  object cdsAlterItem: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = []
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 632
    Top = 313
  end
  object cdsAtivoImobilizado: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = []
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 520
    Top = 313
  end
  object cdsPlanoContabil: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = []
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 504
    Top = 409
  end
  object cdsCentroCusto: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = []
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 568
    Top = 465
  end
  object cdsCTE: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 542
    Top = 242
  end
  object cdsperguntas1010: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = []
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 656
    Top = 497
    object cdsperguntas1010IND_EXP: TStringField
      FieldName = 'IND_EXP'
      Size = 1
    end
    object cdsperguntas1010IND_CCRF: TStringField
      FieldName = 'IND_CCRF'
      Size = 1
    end
    object cdsperguntas1010IND_COMB: TStringField
      FieldName = 'IND_COMB'
      Size = 1
    end
    object cdsperguntas1010IND_USINA: TStringField
      FieldName = 'IND_USINA'
      Size = 1
    end
    object cdsperguntas1010IND_VA: TStringField
      FieldName = 'IND_VA'
      Size = 1
    end
    object cdsperguntas1010IND_EE: TStringField
      FieldName = 'IND_EE'
      Size = 1
    end
    object cdsperguntas1010IND_CART: TStringField
      FieldName = 'IND_CART'
      Size = 1
    end
    object cdsperguntas1010IND_FORM: TStringField
      FieldName = 'IND_FORM'
      Size = 1
    end
    object cdsperguntas1010IND_GIAF1: TStringField
      FieldName = 'IND_GIAF1'
      Size = 1
    end
    object cdsperguntas1010IND_GIAF3: TStringField
      FieldName = 'IND_GIAF3'
      Size = 1
    end
    object cdsperguntas1010IND_GIAF4: TStringField
      FieldName = 'IND_GIAF4'
      Size = 1
    end
    object cdsperguntas1010IND_AER: TStringField
      FieldName = 'IND_AER'
      Size = 1
    end
  end
  object dsPerguntas1010: TDataSource
    DataSet = cdsperguntas1010
    Left = 748
    Top = 498
  end
  object cdsUltEntrada: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 902
    Top = 154
  end
  object cdsAlterPartEnviados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 321
    object cdsAlterPartEnviadosregistro: TIntegerField
      FieldName = 'registro'
    end
    object cdsAlterPartEnviadostipo: TStringField
      FieldName = 'tipo'
      Size = 1
    end
  end
  object cdsAlterPrdEnviados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 369
    object IntegerField1: TIntegerField
      FieldName = 'registro'
    end
  end
  object cdsApuracao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 321
    object cdsApuracaoano: TIntegerField
      FieldName = 'ano'
    end
    object cdsApuracaomes: TIntegerField
      FieldName = 'mes'
    end
    object cdsApuracaosaldo_apurado: TFMTBCDField
      FieldName = 'saldo_apurado'
      Precision = 15
    end
    object cdsApuracaoDEDUCOES: TFMTBCDField
      FieldName = 'DEDUCOES'
      Precision = 15
    end
    object cdsApuracaoICMS_RECOLHER: TFMTBCDField
      FieldName = 'ICMS_RECOLHER'
      Precision = 15
    end
    object cdsApuracaoSALDO_TRANSPORTAR: TFMTBCDField
      FieldName = 'SALDO_TRANSPORTAR'
      Precision = 15
    end
  end
  object cdsApuracaoSt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 377
    object cdsApuracaoStano: TIntegerField
      FieldName = 'ano'
    end
    object cdsApuracaoStmes: TIntegerField
      FieldName = 'mes'
    end
    object cdsApuracaoStuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object cdsApuracaoStsaldo_devedor_ant_deducoes: TFMTBCDField
      FieldName = 'saldo_devedor_ant_deducoes'
      Precision = 15
    end
    object cdsApuracaoStDEDUCOES_st: TFMTBCDField
      FieldName = 'DEDUCOES_st'
      Precision = 15
    end
    object cdsApuracaoSticms_recolher_st: TFMTBCDField
      FieldName = 'icms_recolher_st'
      Precision = 15
    end
    object cdsApuracaoStsaldo_transportar_st: TFMTBCDField
      FieldName = 'saldo_transportar_st'
      Precision = 15
    end
  end
  object cdsApuracaoIPI: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 305
    object cdsApuracaoIPIano: TIntegerField
      FieldName = 'ano'
    end
    object cdsApuracaoIPImes: TIntegerField
      FieldName = 'mes'
    end
    object cdsApuracaoIPIsaldo_transportar: TFMTBCDField
      FieldName = 'saldo_transportar'
      Precision = 15
    end
    object cdsApuracaoIPIsaldo_recolher: TFMTBCDField
      FieldName = 'saldo_recolher'
      Precision = 15
    end
  end
  object cdsArquivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspArquivo'
    Left = 308
    Top = 282
    object cdsArquivoano: TIntegerField
      FieldName = 'ano'
    end
    object cdsArquivomes: TIntegerField
      FieldName = 'mes'
    end
    object cdsArquivoarq: TBlobField
      FieldName = 'arq'
      ProviderFlags = [pfInUpdate]
      Size = 4000
    end
    object cdsArquivoemp_codigo: TStringField
      FieldName = 'emp_codigo'
      Size = 3
    end
  end
  object dspArquivo: TDataSetProvider
    DataSet = qArquivo
    Left = 364
    Top = 282
  end
  object qArquivo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select emp_codigo, mes,ano,arq FROM sped_arquivos')
    SQLConnection = DBConn
    Left = 420
    Top = 282
  end
  object cdsICMS_ST_Recolher: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 244
    Top = 378
    object cdsICMS_ST_RecolherUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsICMS_ST_RecolherDataVencimento: TDateField
      FieldName = 'DataVencimento'
    end
    object cdsICMS_ST_RecolherValor_recolher: TFMTBCDField
      FieldName = 'Valor_recolher'
    end
  end
  object cdsICMS_recolher: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 300
    Top = 426
    object cdsICMS_recolherDataVencimento: TDateField
      FieldName = 'DataVencimento'
    end
    object cdsICMS_recolherValor_recolher: TFMTBCDField
      FieldName = 'Valor_recolher'
    end
    object cdsICMS_recolhertipo: TStringField
      FieldName = 'tipo'
      Size = 1
    end
    object cdsICMS_recolherUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object cdsK280: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 726
    Top = 370
  end
  object qTipoProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 705
    Top = 207
  end
  object qLinha: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 441
    Top = 183
  end
  object qGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 425
    Top = 239
  end
  object qAlmoxa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 425
    Top = 135
  end
end
