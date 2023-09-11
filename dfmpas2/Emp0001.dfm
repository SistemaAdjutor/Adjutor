inherited FormEmpresa: TFormEmpresa
  Left = 268
  Top = 2
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dados Cadastrais e Fiscais da Empresa'
  ClientHeight = 602
  ClientWidth = 964
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 970
  ExplicitHeight = 627
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel [0]
    Left = 28
    Top = 9
    Width = 36
    Height = 14
    Caption = 'C'#243'digo:'
  end
  object EdtEmp_Codigo: TEdit [1]
    Left = 70
    Top = 5
    Width = 48
    Height = 22
    MaxLength = 3
    TabOrder = 0
    Text = 'EdtEmp_Codigo'
    OnExit = EdtEmp_CodigoExit
    OnKeyPress = EdtEmp_CodigoKeyPress
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 32
    Width = 961
    Height = 537
    ActivePage = TabSheet6
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Dados da Empresa'
      object Label2: TLabel
        Left = 13
        Top = 8
        Width = 66
        Height = 14
        Alignment = taRightJustify
        Caption = 'Raz'#227'o Social:'
      end
      object Label3: TLabel
        Left = 19
        Top = 31
        Width = 60
        Height = 14
        Alignment = taRightJustify
        Caption = 'Nome Usual:'
      end
      object Label4: TLabel
        Left = 473
        Top = 104
        Width = 28
        Height = 14
        Alignment = taRightJustify
        Caption = 'CNPJ:'
      end
      object Label5: TLabel
        Left = 30
        Top = 55
        Width = 49
        Height = 14
        Alignment = taRightJustify
        Caption = 'Endere'#231'o:'
      end
      object Label6: TLabel
        Left = 43
        Top = 79
        Width = 36
        Height = 14
        Caption = 'Cidade:'
      end
      object Label7: TLabel
        Left = 342
        Top = 79
        Width = 36
        Height = 14
        Caption = 'Estado:'
      end
      object Label8: TLabel
        Left = 52
        Top = 104
        Width = 27
        Height = 14
        Caption = 'Fone:'
      end
      object Label9: TLabel
        Left = 336
        Top = 104
        Width = 21
        Height = 14
        Caption = 'Fax:'
      end
      object TLabel
        Left = 479
        Top = 79
        Width = 22
        Height = 14
        Caption = 'CEP:'
      end
      object Label10: TLabel
        Left = 474
        Top = 129
        Width = 27
        Height = 14
        Alignment = taRightJustify
        Caption = 'Email:'
      end
      object Label12: TLabel
        Left = 624
        Top = 104
        Width = 64
        Height = 14
        Caption = 'Insc.Estadual'
      end
      object Label11: TLabel
        Left = 22
        Top = 154
        Width = 57
        Height = 14
        Alignment = taRightJustify
        Caption = 'Home Page:'
      end
      object Label13: TLabel
        Left = 469
        Top = 55
        Width = 32
        Height = 14
        Alignment = taRightJustify
        Caption = 'Bairro:'
      end
      object Label19: TLabel
        Left = 2
        Top = 180
        Width = 77
        Height = 14
        Alignment = taRightJustify
        Caption = 'e-Mail Compras:'
      end
      object Label20: TLabel
        Left = 8
        Top = 204
        Width = 71
        Height = 14
        Alignment = taRightJustify
        Caption = 'e-Mail Vendas:'
      end
      object Label21: TLabel
        Left = 23
        Top = 129
        Width = 56
        Height = 14
        Alignment = taRightJustify
        Caption = 'Comprador:'
      end
      object SpeedButton5: TSpeedButton
        Left = 427
        Top = 75
        Width = 22
        Height = 21
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
        OnClick = SpeedButton5Click
      end
      object Label36: TLabel
        Left = 614
        Top = 79
        Width = 73
        Height = 14
        Caption = 'Insc. Municipal:'
      end
      object Label46: TLabel
        Left = 457
        Top = 7
        Width = 44
        Height = 14
        Alignment = taRightJustify
        Caption = 'Suframa:'
      end
      object Label52: TLabel
        Left = 455
        Top = 180
        Width = 34
        Height = 14
        Alignment = taRightJustify
        Caption = 'Senha:'
      end
      object DBeEmp_INSC: TDBEdit
        Left = 691
        Top = 101
        Width = 110
        Height = 22
        CharCase = ecUpperCase
        DataField = 'EMP_INSC'
        DataSource = DsEmpresa
        TabOrder = 12
      end
      object DBeEmp_CGC: TDBEdit
        Left = 503
        Top = 101
        Width = 110
        Height = 22
        DataField = 'EMP_CGC'
        DataSource = DsEmpresa
        TabOrder = 11
        OnExit = DBeEmp_CGCExit
      end
      object DBeEmp_email: TDBEdit
        Left = 503
        Top = 126
        Width = 447
        Height = 22
        CharCase = ecLowerCase
        DataField = 'EMP_EMAIL'
        DataSource = DsEmpresa
        TabOrder = 14
      end
      object DbeEmp_fone: TDBEdit
        Left = 81
        Top = 101
        Width = 90
        Height = 22
        DataField = 'EMP_FONE'
        DataSource = DsEmpresa
        TabOrder = 9
      end
      object DBeEmp_Fax: TDBEdit
        Left = 359
        Top = 101
        Width = 90
        Height = 22
        DataField = 'EMP_FAX'
        DataSource = DsEmpresa
        TabOrder = 10
      end
      object DBeEmp_cep: TDBEdit
        Left = 503
        Top = 75
        Width = 90
        Height = 22
        DataField = 'EMP_CEP'
        DataSource = DsEmpresa
        TabOrder = 7
      end
      object DBeEmp_cidade: TDBEdit
        Left = 81
        Top = 75
        Width = 243
        Height = 22
        TabStop = False
        CharCase = ecUpperCase
        Color = 14145495
        DataField = 'EMP_CIDADE'
        DataSource = DsEmpresa
        ReadOnly = True
        TabOrder = 5
      end
      object DBeEmp_endere: TDBEdit
        Left = 81
        Top = 51
        Width = 368
        Height = 22
        CharCase = ecUpperCase
        DataField = 'EMP_ENDERE'
        DataSource = DsEmpresa
        TabOrder = 3
      end
      object DBeEmp_Fantasia: TDBEdit
        Left = 81
        Top = 27
        Width = 368
        Height = 22
        CharCase = ecUpperCase
        DataField = 'EMP_FANTASIA'
        DataSource = DsEmpresa
        TabOrder = 1
      end
      object DBeEmp_razao: TDBEdit
        Left = 81
        Top = 4
        Width = 368
        Height = 22
        CharCase = ecUpperCase
        DataField = 'EMP_RAZAO'
        DataSource = DsEmpresa
        TabOrder = 0
        OnExit = DBeEmp_razaoExit
      end
      object DbeEMP_HOME: TDBEdit
        Left = 81
        Top = 151
        Width = 368
        Height = 22
        CharCase = ecLowerCase
        DataField = 'EMP_HOME'
        DataSource = DsEmpresa
        TabOrder = 15
      end
      object DBEmp_Bairro: TDBEdit
        Left = 503
        Top = 51
        Width = 298
        Height = 22
        CharCase = ecUpperCase
        DataField = 'EMP_BAIRRO'
        DataSource = DsEmpresa
        TabOrder = 4
      end
      object Dbe_EmailCompras: TDBEdit
        Left = 81
        Top = 176
        Width = 368
        Height = 22
        Hint = 'Utilizar'#225' a mesma configura'#231#227'o do host/port da aba envio email'
        CharCase = ecLowerCase
        DataField = 'EMP_EMAILCOMPRAS'
        DataSource = DsEmpresa
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
      end
      object DbeEmailVendas: TDBEdit
        Left = 81
        Top = 201
        Width = 368
        Height = 22
        CharCase = ecLowerCase
        DataField = 'EMP_EMAILVENDAS'
        DataSource = DsEmpresa
        TabOrder = 17
      end
      object DbeNomeComprador: TDBEdit
        Left = 81
        Top = 126
        Width = 368
        Height = 22
        CharCase = ecUpperCase
        DataField = 'EMP_NOMECOMPRADOR'
        DataSource = DsEmpresa
        TabOrder = 13
      end
      object DBEdit5: TDBEdit
        Left = 382
        Top = 75
        Width = 38
        Height = 22
        TabStop = False
        Color = 14145495
        DataField = 'EMP_UF'
        DataSource = DsEmpresa
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit15: TDBEdit
        Left = 691
        Top = 75
        Width = 110
        Height = 22
        CharCase = ecUpperCase
        DataField = 'EMP_INSC_MUNICIPAL'
        DataSource = DsEmpresa
        TabOrder = 8
      end
      object Panel5: TPanel
        Left = 803
        Top = 4
        Width = 149
        Height = 119
        BorderStyle = bsSingle
        Caption = 'Logomarca'
        Color = clWhite
        TabOrder = 18
        object imgLogo: TImage
          Left = 1
          Top = 1
          Width = 143
          Height = 85
          Align = alTop
          Stretch = True
        end
        object btnRemoveImage: TSpeedButton
          Left = 95
          Top = 88
          Width = 23
          Height = 22
          Glyph.Data = {
            FE050000424DFE05000000000000360400002800000017000000130000000100
            080000000000C8010000C40E0000C40E000000010000000100004F4650005044
            5C005C53500061575400625855006B605C0067567B0070656100786C68007B6F
            6B00786B740081747000857873008B7E79008C7F7A008D807B008F817C003D23
            9F00583DAA004424BB004626BC004E30B9004F31B90075648A005E46A5006F57
            A6006D50BC00795EBC007860A1003210C4003714C8003815C9003B18CC002B04
            D4002C05D5002D06D7002E07D8002900DF003009D900340CDC00350DDD00350E
            DE004019DA00421BDD005735CB004823D7004C26DA005C38DD007553DA007654
            DC008670A3008C6CD7008262DB008F6FDA0096888200A2928C00AA9A9400AD9D
            96009E88AC00B09DA400BDABA400B5A2A900C3B0A900C1ACB200B699D800FFFF
            FF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000414141414141
            4141414141414141414141414141414141004141414141414141414141414141
            4141414141414141410041414141414141414141414141414141414141414141
            41004141414141413805364141414141414141370D4141414100414141414133
            2511043E41414141414118233741414141004141414141402526010941414141
            3F13251B414141414100414141414141342520021041413F1F233A4141414141
            410041414141414141312516030F3B1F233A4141414141414100414141414141
            4141312515001D223A4141414141414141004141414141414141413025222106
            414141414141414141004141414141414141413F242514070E41414141414141
            410041414141414141413F1F231A282C0A0B3C41414141414100414141414141
            413F1F253241412B2D1708394141414141004141414141413D1E251941414141
            2F271C0C4141414141004141414141411E251241414141414135254141414141
            410041414141412A251341414141414141414141414141414100414141414129
            2E41414141414141414141414141414141004141414141414141414141414141
            4141414141414141410041414141414141414141414141414141414141414141
            4100}
          OnClick = btnRemoveImageClick
        end
        object btnAddImage: TSpeedButton
          Left = 120
          Top = 88
          Width = 23
          Height = 22
          Glyph.Data = {
            D6020000424DD60200000000000036000000280000000F0000000E0000000100
            180000000000A0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
            8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
            8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFB7DBB7
            2F972F2F972F2F972F2F972F0D860D0080002492242F972F2F972F2F972F51A8
            51FFFFFFFFFFFF000000FFFFFFB1D8B11F8F1F1F8F1F1F8F1F1F8F1F08840800
            8000188C181F8F1F1F8F1F1F8F1F44A244FFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
            8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F
            8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
          OnClick = btnAddImageClick
        end
      end
      object grpLocalEntrega: TGroupBox
        Left = 0
        Top = 460
        Width = 953
        Height = 48
        Align = alBottom
        Caption = 'Local de Entrega (preencher se for diferente) :'
        TabOrder = 19
        object Label16: TLabel
          Left = 10
          Top = 25
          Width = 49
          Height = 14
          Caption = 'Endere'#231'o:'
        end
        object Label17: TLabel
          Left = 454
          Top = 25
          Width = 36
          Height = 14
          Caption = 'Cidade:'
        end
        object Label18: TLabel
          Left = 801
          Top = 25
          Width = 16
          Height = 14
          Caption = 'UF:'
        end
        object TLabel
          Left = 851
          Top = 25
          Width = 22
          Height = 14
          Caption = 'CEP:'
        end
        object DBEdit2: TDBEdit
          Left = 61
          Top = 22
          Width = 388
          Height = 22
          CharCase = ecUpperCase
          DataField = 'EMP_ENDENTR'
          DataSource = DsEmpresa
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 493
          Top = 22
          Width = 300
          Height = 22
          CharCase = ecUpperCase
          DataField = 'EMP_CIDENTR'
          DataSource = DsEmpresa
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 819
          Top = 22
          Width = 26
          Height = 22
          CharCase = ecUpperCase
          DataField = 'EMP_UFENTR'
          DataSource = DsEmpresa
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 878
          Top = 22
          Width = 70
          Height = 22
          CharCase = ecUpperCase
          DataField = 'EMP_CEPENTR'
          DataSource = DsEmpresa
          TabOrder = 3
        end
      end
      object dbedtEMP_SUFRAMA: TDBEdit
        Left = 503
        Top = 3
        Width = 298
        Height = 22
        CharCase = ecUpperCase
        DataField = 'EMP_SUFRAMA'
        DataSource = DsEmpresa
        TabOrder = 2
      end
      object edSenhaCompras: TDBEdit
        Left = 493
        Top = 176
        Width = 130
        Height = 22
        DataField = 'EMP_PASSWORD_COMPRAS'
        DataSource = DsEmpresa
        PasswordChar = '*'
        TabOrder = 20
      end
      object btnTesteCompras: TButton
        Left = 629
        Top = 174
        Width = 75
        Height = 25
        Caption = 'Testar'
        TabOrder = 21
        OnClick = btnTestarClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dados Fiscais'
      ImageIndex = 2
      object Label29: TLabel
        Left = 14
        Top = 38
        Width = 124
        Height = 14
        Caption = 'Al'#237'quota do ICMS Simples:'
      end
      object Label30: TLabel
        Left = 349
        Top = 12
        Width = 178
        Height = 14
        Caption = 'C'#243'digo da Empresa na Contabilidade:'
      end
      object Label34: TLabel
        Left = 8
        Top = 69
        Width = 308
        Height = 14
        Caption = 'C'#243'digo da Situa'#231#227'o da Opera'#231#227'o do Simples Nacional (CSOSN):'
      end
      object Label64: TLabel
        Left = 8
        Top = 109
        Width = 418
        Height = 14
        Caption = 
          'C'#243'digo da Situa'#231#227'o da Opera'#231#227'o do Simples Nacional (CSOSN) Subst' +
          'itui'#231#227'o Tribut'#225'ria:'
      end
      object Label65: TLabel
        Left = 3
        Top = 372
        Width = 187
        Height = 14
        Caption = 'CFOP Padr'#227'o Venda Dentro do Estado:'
      end
      object Label66: TLabel
        Left = 13
        Top = 396
        Width = 177
        Height = 14
        Caption = 'CFOP Padr'#227'o Venda Fora do Estado:'
      end
      object SpeedButton2: TSpeedButton
        Left = 596
        Top = 368
        Width = 25
        Height = 22
        Hint = 'Atualizar Clientes de Dentro do Estado'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
          3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
          700077337F3333373777887007333337007733F773F333337733700070333333
          077037773733333F7F37703707333300080737F373333377737F003333333307
          78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
          078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
          70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
          3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
          33337F73FF737773333307800077033333337337773373333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 596
        Top = 392
        Width = 25
        Height = 22
        Hint = 'Atualizar Clientes de Fora do Estado'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
          3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
          700077337F3333373777887007333337007733F773F333337733700070333333
          077037773733333F7F37703707333300080737F373333377737F003333333307
          78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
          078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
          70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
          3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
          33337F73FF737773333307800077033333337337773373333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton3Click
      end
      object Label74: TLabel
        Left = 238
        Top = 38
        Width = 152
        Height = 14
        Caption = 'Al'#237'quota direito cr'#233'dito simples :'
      end
      object DBCkSimples: TDBCheckBox
        Left = 13
        Top = 8
        Width = 227
        Height = 17
        Caption = 'Empresa Optante pelo SIMPLES'
        DataField = 'EMP_OPTANTE_SIMPLES'
        DataSource = DsEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCkSimplesClick
      end
      object DbeAliqSimplesICMS: TDBEdit
        Left = 142
        Top = 34
        Width = 70
        Height = 22
        DataField = 'EMP_PERCENT_SIMPLES'
        DataSource = DsEmpresa
        TabOrder = 1
      end
      object DBEdit12: TDBEdit
        Left = 529
        Top = 8
        Width = 90
        Height = 22
        DataField = 'EMP_CODIGO_CONTABILIDADE'
        DataSource = DsEmpresa
        TabOrder = 6
      end
      object CombCSOSN: TComboBox
        Left = 7
        Top = 87
        Width = 615
        Height = 22
        DropDownCount = 9
        TabOrder = 3
        OnChange = CombCSOSNChange
        Items.Strings = (
          '000 - N'#227'o '#233' do SIMPLES'
          '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
          '102 - Tributada pelo Simples Naciona sem permiss'#227'o de cr'#233'dito'
          
            '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
            'bruta'
          
            '201 - Tributa'#231#227'o do ICMS pelo Simples Nacional com permiss'#227'o de ' +
            'cr'#233'dito e com cobran'#231'a de Subs.Tribut'#225'ria'
          
            '202 - Tributa'#231#227'o do ICMS pelo Simples Nacional sem permiss'#227'o de ' +
            'cr'#233'dito e com cobran'#231'a de Subs Tribut'#225'ria'
          
            '203 - Isen'#231#227'o do ICMS  no Simples Nacional para faixa de receita' +
            ' bruta e com cobran'#231'a do ICMS de Subs.Trib.'
          '300 - Imunidade do ICMS'
          '400 - N'#227'o tributada pelo Simples Nacional '
          
            '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria ou ' +
            'por antecipa'#231#227'o'
          '900 - Outros que n'#227'o se enquadram nos anteriores')
      end
      object DBRadCRT: TDBRadioGroup
        Left = 7
        Top = 151
        Width = 616
        Height = 100
        Caption = 'C'#243'digo do Regime Tribut'#225'rio (CRT)'
        DataField = 'EMP_CRT'
        DataSource = DsEmpresa
        Items.Strings = (
          '1 - SIMPLES NACIONAL'
          '2 - Simples Nacional  - Excesso de sublimite de receita bruta'
          '3 - REGIME NORMAL')
        TabOrder = 4
        Values.Strings = (
          '1'
          '2'
          '3')
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 256
        Width = 614
        Height = 108
        Caption = 'Modalidade Cont'#225'bil da Empresa e Tributos'
        TabOrder = 5
        object DBRadModalidade: TDBRadioGroup
          Left = 11
          Top = 17
          Width = 268
          Height = 78
          Caption = 'Modalidade'
          DataField = 'EMP_MODALIDADE'
          DataSource = DsEmpresa
          Items.Strings = (
            'SIMPLES'
            'LUCRO PRESUMIDO'
            'LUCRO REAL')
          TabOrder = 0
          Values.Strings = (
            'S'
            'P'
            'R')
        end
        object GroupBox6: TGroupBox
          Left = 284
          Top = 17
          Width = 312
          Height = 78
          Caption = 'Tributos - Al'#237'quotas'
          TabOrder = 1
          object Label25: TLabel
            Left = 22
            Top = 24
            Width = 18
            Height = 14
            Caption = 'PIS:'
          end
          object Label41: TLabel
            Left = 147
            Top = 22
            Width = 40
            Height = 14
            Caption = 'COFINS:'
          end
          object Label42: TLabel
            Left = 15
            Top = 50
            Width = 23
            Height = 14
            Caption = 'IRPJ:'
          end
          object DBEPis_Aliq: TDBEdit
            Left = 44
            Top = 20
            Width = 70
            Height = 22
            DataField = 'EMP_PIS_ALIQ'
            DataSource = DsEmpresa
            TabOrder = 0
          end
          object DBECofins_aliq: TDBEdit
            Left = 190
            Top = 18
            Width = 70
            Height = 22
            DataField = 'EMP_COFINS_ALIQ'
            DataSource = DsEmpresa
            TabOrder = 1
          end
          object DBEIr_aliq: TDBEdit
            Left = 44
            Top = 46
            Width = 70
            Height = 22
            DataField = 'EMP_IRPJ_ALIQ'
            DataSource = DsEmpresa
            TabOrder = 2
          end
        end
      end
      object CombCSOSNST: TComboBox
        Left = 7
        Top = 127
        Width = 615
        Height = 22
        DropDownCount = 9
        TabOrder = 7
        OnChange = CombCSOSNChange
        Items.Strings = (
          '000 - N'#227'o '#233' do SIMPLES'
          '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
          '102 - Tributada pelo Simples Naciona sem permiss'#227'o de cr'#233'dito'
          
            '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
            'bruta'
          
            '201 - Tributa'#231#227'o do ICMS pelo Simples Nacional com permiss'#227'o de ' +
            'cr'#233'dito e com cobran'#231'a de Subs.Tribut'#225'ria'
          
            '202 - Tributa'#231#227'o do ICMS pelo Simples Nacional sem permiss'#227'o de ' +
            'cr'#233'dito e com cobran'#231'a de Subs Tribut'#225'ria'
          
            '203 - Isen'#231#227'o do ICMS  no Simples Nacional para faixa de receita' +
            ' bruta e com cobran'#231'a do ICMS de Subs.Trib.'
          '300 - Imunidade do ICMS'
          '400 - N'#227'o tributada pelo Simples Nacional'
          
            '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria ou ' +
            'por antecipa'#231#227'o'
          '900 - Outros que n'#227'o se enquadram nos anteriores')
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 194
        Top = 368
        Properties.KeyFieldNames = 'OPE_CODIGO'
        Properties.ListColumns = <
          item
            Caption = 'Operacao'
            FieldName = 'OPE_DESCRI'
          end>
        Properties.ListSource = dsDsCfopDentro
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 8
        OnClick = cxLookupComboBox1Click
        OnExit = cxLookupComboBox1Exit
        Width = 399
      end
      object cxLookupComboBox2: TcxLookupComboBox
        Left = 194
        Top = 392
        Properties.KeyFieldNames = 'OPE_CODIGO'
        Properties.ListColumns = <
          item
            Caption = 'Operacao'
            FieldName = 'OPE_DESCRI'
          end>
        Properties.ListSource = dsDsCfopFora
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 9
        OnClick = cxLookupComboBox2Click
        OnExit = cxLookupComboBox2Exit
        Width = 399
      end
      object DBEdit24: TDBEdit
        Left = 396
        Top = 34
        Width = 70
        Height = 22
        DataField = 'EMP_DIREITO_CREDITO'
        DataSource = DsEmpresa
        TabOrder = 2
      end
    end
    object TsNFE: TTabSheet
      Caption = 'NFe/NFCe 4.0'
      ImageIndex = 1
      OnShow = TsNFEShow
      object Label23: TLabel
        Left = 158
        Top = 73
        Width = 28
        Height = 14
        Alignment = taRightJustify
        Caption = 'S'#233'rie:'
      end
      object Label24: TLabel
        Left = 14
        Top = 72
        Width = 37
        Height = 14
        Alignment = taRightJustify
        Caption = 'Modelo:'
      end
      object Label76: TLabel
        Left = 648
        Top = 216
        Width = 258
        Height = 14
        Caption = 'Tamanho m'#225'ximo: 8,20 cm de largura x 3,20 cm altura'
      end
      object Panel1: TPanel
        Left = 642
        Top = 3
        Width = 291
        Height = 206
        BorderStyle = bsSingle
        Caption = 'Logomarca'
        Color = clWhite
        TabOrder = 9
        DesignSize = (
          287
          202)
        object ImgLogoNFE: TImage
          Left = 1
          Top = 1
          Width = 285
          Height = 169
          Align = alTop
          Stretch = True
        end
        object DelLogoNfe: TSpeedButton
          Left = 211
          Top = 89
          Width = -102
          Height = 22
          Anchors = [akLeft, akRight]
          Glyph.Data = {
            FE050000424DFE05000000000000360400002800000017000000130000000100
            080000000000C8010000C40E0000C40E000000010000000100004F4650005044
            5C005C53500061575400625855006B605C0067567B0070656100786C68007B6F
            6B00786B740081747000857873008B7E79008C7F7A008D807B008F817C003D23
            9F00583DAA004424BB004626BC004E30B9004F31B90075648A005E46A5006F57
            A6006D50BC00795EBC007860A1003210C4003714C8003815C9003B18CC002B04
            D4002C05D5002D06D7002E07D8002900DF003009D900340CDC00350DDD00350E
            DE004019DA00421BDD005735CB004823D7004C26DA005C38DD007553DA007654
            DC008670A3008C6CD7008262DB008F6FDA0096888200A2928C00AA9A9400AD9D
            96009E88AC00B09DA400BDABA400B5A2A900C3B0A900C1ACB200B699D800FFFF
            FF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000414141414141
            4141414141414141414141414141414141004141414141414141414141414141
            4141414141414141410041414141414141414141414141414141414141414141
            41004141414141413805364141414141414141370D4141414100414141414133
            2511043E41414141414118233741414141004141414141402526010941414141
            3F13251B414141414100414141414141342520021041413F1F233A4141414141
            410041414141414141312516030F3B1F233A4141414141414100414141414141
            4141312515001D223A4141414141414141004141414141414141413025222106
            414141414141414141004141414141414141413F242514070E41414141414141
            410041414141414141413F1F231A282C0A0B3C41414141414100414141414141
            413F1F253241412B2D1708394141414141004141414141413D1E251941414141
            2F271C0C4141414141004141414141411E251241414141414135254141414141
            410041414141412A251341414141414141414141414141414100414141414129
            2E41414141414141414141414141414141004141414141414141414141414141
            4141414141414141410041414141414141414141414141414141414141414141
            4100}
          OnClick = DelLogoNfeClick
          ExplicitTop = 176
          ExplicitWidth = 30
        end
        object AddLogoNFE: TSpeedButton
          Left = 247
          Top = 89
          Width = -100
          Height = 22
          Anchors = [akLeft, akRight]
          Glyph.Data = {
            D6020000424DD60200000000000036000000280000000F0000000E0000000100
            180000000000A0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
            8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
            8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFB7DBB7
            2F972F2F972F2F972F2F972F0D860D0080002492242F972F2F972F2F972F51A8
            51FFFFFFFFFFFF000000FFFFFFB1D8B11F8F1F1F8F1F1F8F1F1F8F1F08840800
            8000188C181F8F1F1F8F1F1F8F1F44A244FFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
            8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F
            8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
          OnClick = AddLogoNFEClick
          ExplicitTop = 176
          ExplicitWidth = 32
        end
      end
      object rgAmbiente: TDBRadioGroup
        Left = 7
        Top = 0
        Width = 355
        Height = 60
        Align = alCustom
        Caption = 'Ambiente'
        Columns = 2
        DataField = 'EMP_AMBIENTE_NFE'
        DataSource = DsEmpresa
        Items.Strings = (
          'Produ'#231#227'o'
          'Homologa'#231#227'o')
        TabOrder = 0
        Values.Strings = (
          '1'
          '2')
      end
      object DBEdit6: TDBEdit
        Left = 189
        Top = 69
        Width = 89
        Height = 22
        DataField = 'EMP_SERIE_NFE'
        DataSource = DsEmpresa
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 54
        Top = 68
        Width = 89
        Height = 22
        DataField = 'EMP_MODELO_NFE'
        DataSource = DsEmpresa
        TabOrder = 1
      end
      object DBCheckBox2: TDBCheckBox
        Left = 371
        Top = 17
        Width = 232
        Height = 17
        Caption = 'Operar em Modo de Conting'#234'ncia'
        DataField = 'EMP_SISTEMA_CONTINGENCIA_NFE'
        DataSource = DsEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 7
        Top = 235
        Width = 621
        Height = 60
        Caption = 'Modelo de Impress'#227'o da DANFE'
        Columns = 2
        DataField = 'EMP_TIPO_DANFE'
        DataSource = DsEmpresa
        Items.Strings = (
          'Retrato'
          'Paisagem')
        TabOrder = 4
        Values.Strings = (
          'R'
          'P')
      end
      object GroupBox7: TGroupBox
        Left = 6
        Top = 108
        Width = 619
        Height = 119
        Caption = 'Controle de N'#250'mero de Notas'
        TabOrder = 5
        object Label33: TLabel
          Left = 27
          Top = 27
          Width = 150
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero da '#250'ltima NFe gravada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 44
          Top = 53
          Width = 133
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pr'#243'xima sequ'#234'ncia da NFe :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 276
          Top = 101
          Width = 226
          Height = 13
          Caption = '(se desmarcado libera mudan'#231'a do No. da NFe)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 348
          Top = 53
          Width = 165
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pr'#243'xima sequ'#234'ncia da NFe SCAN :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 331
          Top = 27
          Width = 182
          Height = 13
          Alignment = taRightJustify
          Caption = 'N'#250'mero da '#250'ltima NFe gravada SCAN:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Editprox: TEdit
          Left = 181
          Top = 49
          Width = 72
          Height = 22
          BiDiMode = bdLeftToRight
          Color = 14145495
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 2
          Text = 'Editprox'
        end
        object DBEditSeqNfe: TDBEdit
          Left = 180
          Top = 23
          Width = 72
          Height = 21
          DataField = 'EMP_SEQUENCIA_NFE'
          DataSource = DsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = DBEditSeqNfeChange
        end
        object DBCheckBox4: TDBCheckBox
          Left = 256
          Top = 84
          Width = 354
          Height = 17
          Caption = 'Sincronizar o n'#250'mero da NFe com a sequ'#234'ncia das Faturas.'
          DataField = 'EMP_GENERATION_NFE'
          DataSource = DsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox4Click
        end
        object EditproxScan: TEdit
          Left = 517
          Top = 49
          Width = 72
          Height = 22
          BiDiMode = bdLeftToRight
          Color = 14145495
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 3
          Text = 'EditproxScan'
        end
        object DBEditSeqNfeScan: TDBEdit
          Left = 516
          Top = 23
          Width = 72
          Height = 21
          DataField = 'EMP_SEQUENCIA_NFE_SCAN'
          DataSource = DsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = DBEditSeqNfeScanChange
        end
      end
      object GroupBox8: TGroupBox
        Left = 8
        Top = 304
        Width = 620
        Height = 113
        Caption = 'NFCe 4.0'
        TabOrder = 6
        object Label70: TLabel
          Left = 31
          Top = 26
          Width = 24
          Height = 14
          Caption = 'CSC:'
        end
        object Label71: TLabel
          Left = 16
          Top = 49
          Width = 39
          Height = 14
          Caption = 'idToken:'
        end
        object Label75: TLabel
          Left = 8
          Top = 78
          Width = 92
          Height = 14
          Caption = #218'ltimo nota gerada:'
        end
        object DBEdit22: TDBEdit
          Left = 63
          Top = 23
          Width = 321
          Height = 22
          DataField = 'EMP_CSC'
          DataSource = DsEmpresa
          TabOrder = 0
        end
        object DBEdit23: TDBEdit
          Left = 63
          Top = 48
          Width = 121
          Height = 22
          DataField = 'EMP_idToken'
          DataSource = DsEmpresa
          TabOrder = 1
        end
        object edNFCe: TEdit
          Left = 109
          Top = 74
          Width = 121
          Height = 22
          TabOrder = 2
          Text = 'edNFSE'
        end
        object btnGerarNFCE: TBitBtn
          Left = 231
          Top = 73
          Width = 75
          Height = 25
          Caption = 'Atualizar'
          TabOrder = 3
          OnClick = btnGerarNFCEClick
        end
      end
      object DBCheckBox6: TDBCheckBox
        Left = 371
        Top = 40
        Width = 265
        Height = 17
        Caption = 'Marca no faturamento para enviar NFe 4.0'
        DataField = 'EMP_NFE_FAT'
        DataSource = DsEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox7: TDBCheckBox
        Left = 328
        Top = 72
        Width = 97
        Height = 17
        Hint = 'sincrono ou assincrono'
        Caption = 'Envio sincrono'
        DataField = 'emp_sincrono'
        DataSource = DsEmpresa
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox8: TDBCheckBox
        Left = 645
        Top = 235
        Width = 161
        Height = 17
        Caption = 'Usar o logo somente na NFe'
        DataField = 'EMP_LOGONFE_PROPRIO'
        DataSource = DsEmpresa
        TabOrder = 10
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object tpCertificado: TDBRadioGroup
        Left = 8
        Top = 423
        Width = 135
        Height = 82
        Caption = 'Tipo de certificado'
        DataField = 'EMP_TIPOCERTIFICADO'
        DataSource = DsEmpresa
        Items.Strings = (
          'A1'
          'A3'
          'Cloud')
        TabOrder = 11
        Values.Strings = (
          '1'
          '3'
          '9')
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Envio Email'
      ImageIndex = 3
      object GroupBox1: TGroupBox
        Left = 0
        Top = 197
        Width = 953
        Height = 73
        Align = alTop
        Caption = 'Enviar c'#243'pia para :'
        TabOrder = 0
        object Label32: TLabel
          Left = 30
          Top = 44
          Width = 63
          Height = 14
          Alignment = taRightJustify
          Caption = 'Email interno:'
        end
        object DBEdit14: TDBEdit
          Left = 103
          Top = 40
          Width = 497
          Height = 22
          DataField = 'EMP_EMAIL_INTERNO'
          DataSource = DsEmpresa
          TabOrder = 1
        end
        object DBCheckBox9: TDBCheckBox
          Left = 30
          Top = 16
          Width = 195
          Height = 17
          Caption = 'Envia c'#243'pia para vendedores'
          Ctl3D = True
          DataField = 'EMP_NFE_REP'
          DataSource = DsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 953
        Height = 197
        Align = alTop
        Caption = 'Configura'#231#227'o de envio autom'#225'tico de email'
        TabOrder = 1
        object Label26: TLabel
          Left = 19
          Top = 22
          Width = 107
          Height = 14
          Alignment = taRightJustify
          Caption = 'Host (Servidor SMTP):'
        end
        object Label44: TLabel
          Left = 530
          Top = 22
          Width = 28
          Height = 14
          Alignment = taRightJustify
          Caption = 'Porta:'
        end
        object Label39: TLabel
          Left = 674
          Top = 155
          Width = 40
          Height = 14
          Alignment = taRightJustify
          Caption = 'Usu'#225'rio:'
        end
        object Label40: TLabel
          Left = 683
          Top = 177
          Width = 31
          Height = 14
          Alignment = taRightJustify
          Caption = 'Token:'
        end
        object DBEdit8: TDBEdit
          Left = 128
          Top = 18
          Width = 353
          Height = 22
          DataField = 'EMP_HOST'
          DataSource = DsEmpresa
          TabOrder = 0
        end
        object DBCheckBox3: TDBCheckBox
          Left = 127
          Top = 123
          Width = 147
          Height = 17
          Caption = 'Requer Autentica'#231#227'o'
          DataField = 'EMP_REQUER_AUTENTICACAO'
          DataSource = DsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 127
          Top = 142
          Width = 147
          Height = 17
          Caption = 'Utiliza Conexao SSL'
          DataField = 'EMP_REQUER_CONEXAO_SSL'
          DataSource = DsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit11: TDBEdit
          Left = 560
          Top = 18
          Width = 65
          Height = 22
          DataField = 'EMP_PORTA'
          DataSource = DsEmpresa
          TabOrder = 3
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 288
          Top = 112
          Width = 169
          Height = 81
          Caption = 'Modo SSL'
          DataField = 'EMP_MODO_SSL'
          DataSource = DsEmpresa
          Items.Strings = (
            'Both'
            'Client - Gmail'
            'Server'
            'Unassigned')
          TabOrder = 4
          Values.Strings = (
            'B'
            'C'
            'S'
            'U')
        end
        object DBRadioGroup5: TDBRadioGroup
          Left = 463
          Top = 112
          Width = 162
          Height = 81
          Caption = 'Vers'#227'o SSL'
          DataField = 'EMP_VERSAO_SSL'
          DataSource = DsEmpresa
          Items.Strings = (
            'Vers'#227'o 1'
            'Vers'#227'o 2'
            'Vers'#227'o 3 - Gmail')
          TabOrder = 5
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object DBCheckBox5: TDBCheckBox
          Left = 127
          Top = 163
          Width = 147
          Height = 17
          Caption = 'Utiliza Conexao TLS'
          DataField = 'EMP_REQUER_CONEXAO_TLS'
          DataSource = DsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object GroupBox9: TGroupBox
          Left = 3
          Top = 72
          Width = 947
          Height = 42
          Caption = 'Financeiro'
          TabOrder = 7
          object Label72: TLabel
            Left = 40
            Top = 17
            Width = 79
            Height = 14
            Alignment = taRightJustify
            Caption = 'Usu'#225'rio (e-mail):'
          end
          object Label73: TLabel
            Left = 627
            Top = 17
            Width = 34
            Height = 14
            Alignment = taRightJustify
            Caption = 'Senha:'
          end
          object edUserFinan: TDBEdit
            Left = 126
            Top = 13
            Width = 497
            Height = 22
            DataField = 'EMP_USERNAME_FIN'
            DataSource = DsEmpresa
            TabOrder = 0
          end
          object edSenhaFin: TDBEdit
            Left = 665
            Top = 13
            Width = 130
            Height = 22
            DataField = 'EMP_PASSWORD_FIN'
            DataSource = DsEmpresa
            PasswordChar = '*'
            TabOrder = 1
          end
          object btnTesteFinanceiro: TButton
            Left = 801
            Top = 12
            Width = 75
            Height = 25
            Caption = 'Testar'
            TabOrder = 2
            OnClick = btnTesteFinanceiroClick
          end
        end
        object GroupBox10: TGroupBox
          Left = 0
          Top = 36
          Width = 950
          Height = 39
          Caption = 'NFE'
          TabOrder = 8
          object Label27: TLabel
            Left = 47
            Top = 16
            Width = 79
            Height = 14
            Alignment = taRightJustify
            Caption = 'Usu'#225'rio (e-mail):'
          end
          object Label28: TLabel
            Left = 629
            Top = 17
            Width = 34
            Height = 14
            Alignment = taRightJustify
            Caption = 'Senha:'
          end
          object DBEdit9: TDBEdit
            Left = 128
            Top = 12
            Width = 497
            Height = 22
            DataField = 'EMP_USERNAME'
            DataSource = DsEmpresa
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 667
            Top = 13
            Width = 130
            Height = 22
            DataField = 'EMP_PASSWORD'
            DataSource = DsEmpresa
            PasswordChar = '*'
            TabOrder = 1
          end
          object btnTestar: TButton
            Left = 803
            Top = 11
            Width = 75
            Height = 25
            Caption = 'Testar'
            TabOrder = 2
            OnClick = btnTestarClick
          end
        end
        object DBCheckBox10: TDBCheckBox
          Left = 651
          Top = 118
          Width = 158
          Height = 17
          Caption = 'Utilizar Componente ACBR'
          DataField = 'EMP_USAR_MAIL_ACBR'
          DataSource = DsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCkSimplesClick
        end
        object DBCheckBox11: TDBCheckBox
          Left = 651
          Top = 134
          Width = 181
          Height = 17
          Caption = 'Utilizar API para envio de e-mail'
          DataField = 'EMP_UTILIZAR_API_ACBR'
          DataSource = DsEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCkSimplesClick
        end
        object DBEdit13: TDBEdit
          Left = 716
          Top = 151
          Width = 220
          Height = 22
          DataField = 'EMP_USUARIO_API_ACBR'
          DataSource = DsEmpresa
          TabOrder = 11
        end
        object DBEdit16: TDBEdit
          Left = 716
          Top = 173
          Width = 220
          Height = 22
          DataField = 'EMP_TOKEN_API_ACBR'
          DataSource = DsEmpresa
          PasswordChar = '*'
          TabOrder = 12
        end
        object btConfigurarMailAlias: TButton
          Left = 633
          Top = 16
          Width = 104
          Height = 23
          Caption = 'Configurar Ali'#225's'
          TabOrder = 13
          OnClick = btConfigurarMailAliasClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 270
        Width = 953
        Height = 238
        Align = alClient
        Caption = 'Mensagem Padr'#227'o E-mail'
        TabOrder = 2
        object DBMemo1: TDBMemo
          Left = 2
          Top = 16
          Width = 949
          Height = 220
          Align = alClient
          DataField = 'EMP_MENSAGEM_NFE'
          DataSource = DsEmpresa
          TabOrder = 0
        end
      end
    end
    object tabNFSE: TTabSheet
      Caption = 'Nota Fiscal de Servi'#231'o'
      ImageIndex = 4
      object Label69: TLabel
        Left = 16
        Top = 197
        Width = 91
        Height = 14
        Caption = #218'ltimo RPS gerado:'
      end
      object lserieNFSE: TLabel
        Left = 17
        Top = 220
        Width = 94
        Height = 14
        Caption = 'S'#233'rie padr'#227'o NFSE:'
      end
      object Label67: TLabel
        Left = 54
        Top = 337
        Width = 60
        Height = 14
        Caption = 'Senha WEB:'
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 0
        Top = 105
        Width = 953
        Height = 60
        Align = alTop
        Caption = 'Regime Tributa'#231#227'o Servi'#231'o'
        Columns = 2
        DataField = 'EMP_REGIME_SERVICO'
        DataSource = DsEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Microempresa Municipal'
          'Estimativa')
        ParentFont = False
        TabOrder = 1
        Values.Strings = (
          'M'
          'E')
      end
      object rgAmbienteNFSe: TDBRadioGroup
        Left = 0
        Top = 0
        Width = 953
        Height = 60
        Align = alTop
        Caption = 'Ambiente'
        Columns = 2
        DataField = 'EMP_AMBIENTE_NFSE'
        DataSource = DsEmpresa
        Items.Strings = (
          'Produ'#231#227'o'
          'Homologa'#231#227'o')
        TabOrder = 0
        Values.Strings = (
          '1'
          '0')
      end
      object edSerieNFSE: TDBEdit
        Left = 117
        Top = 218
        Width = 121
        Height = 22
        DataField = 'EMP_SERIE_NFSE'
        DataSource = DsEmpresa
        TabOrder = 2
      end
      object edNFSE: TDBEdit
        Left = 117
        Top = 194
        Width = 121
        Height = 22
        DataField = 'SEQUENCIA_VALOR'
        DataSource = DsEmpresa
        TabOrder = 4
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 60
        Width = 953
        Height = 45
        Align = alTop
        Caption = 'Natureza da opera'#231#227'o'
        TabOrder = 3
        object cbNatOper: TcxDBLookupComboBox
          Left = 16
          Top = 15
          DataBinding.DataField = 'EMP_naturezaoperacao'
          DataBinding.DataSource = DsEmpresa
          Properties.KeyFieldNames = 'NaturezaOperacao'
          Properties.ListColumns = <
            item
              Caption = 'Descri'#231#227'o'
              FieldName = 'descri'
            end>
          Properties.ListSource = dsNatOper
          TabOrder = 0
          Width = 740
        end
      end
      object DBRadioGroup6: TDBRadioGroup
        Left = 17
        Top = 246
        Width = 135
        Height = 82
        Caption = 'Tipo de certificado'
        DataField = 'EMP_TIPO_CERTIFICADO_NFSE'
        DataSource = DsEmpresa
        Items.Strings = (
          'A1'
          'A3'
          'Cloud')
        TabOrder = 5
        Values.Strings = (
          '1'
          '3'
          '9')
      end
      object edNfsSenha: TDBEdit
        Left = 117
        Top = 334
        Width = 121
        Height = 22
        DataField = 'EMP_NFS_SENHA'
        DataSource = DsEmpresa
        PasswordChar = '*'
        TabOrder = 6
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'SPED'
      ImageIndex = 5
      object grpContador: TGroupBox
        Left = 0
        Top = 0
        Width = 953
        Height = 125
        Align = alTop
        Caption = 'Informa'#231#245'es do Contator'
        TabOrder = 0
        object Label47: TLabel
          Left = 49
          Top = 24
          Width = 30
          Height = 14
          Alignment = taRightJustify
          Caption = 'Nome:'
        end
        object Label48: TLabel
          Left = 631
          Top = 24
          Width = 24
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cnpj:'
        end
        object Label49: TLabel
          Left = 791
          Top = 24
          Width = 24
          Height = 14
          Alignment = taRightJustify
          Caption = 'CRC:'
        end
        object Label50: TLabel
          Left = 30
          Top = 49
          Width = 49
          Height = 14
          Alignment = taRightJustify
          Caption = 'Endere'#231'o:'
        end
        object Label51: TLabel
          Left = 463
          Top = 49
          Width = 40
          Height = 14
          Alignment = taRightJustify
          Caption = 'N'#250'mero:'
        end
        object Label53: TLabel
          Left = 628
          Top = 48
          Width = 27
          Height = 14
          Caption = 'Fone:'
        end
        object Label54: TLabel
          Left = 788
          Top = 48
          Width = 21
          Height = 14
          Caption = 'Fax:'
        end
        object TLabel
          Left = 57
          Top = 72
          Width = 22
          Height = 14
          Caption = 'CEP:'
        end
        object Label55: TLabel
          Left = 180
          Top = 73
          Width = 67
          Height = 14
          Alignment = taRightJustify
          Caption = 'Complemento:'
        end
        object Label56: TLabel
          Left = 472
          Top = 73
          Width = 32
          Height = 14
          Alignment = taRightJustify
          Caption = 'Bairro:'
        end
        object Label57: TLabel
          Left = 43
          Top = 98
          Width = 36
          Height = 14
          Caption = 'Cidade:'
        end
        object Label58: TLabel
          Left = 342
          Top = 96
          Width = 36
          Height = 14
          Caption = 'Estado:'
        end
        object SpeedButton1: TSpeedButton
          Left = 427
          Top = 94
          Width = 22
          Height = 21
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
          OnClick = SpeedButton1Click
        end
        object Label59: TLabel
          Left = 476
          Top = 98
          Width = 27
          Height = 14
          Alignment = taRightJustify
          Caption = 'Email:'
        end
        object Label61: TLabel
          Left = 481
          Top = 24
          Width = 22
          Height = 14
          Alignment = taRightJustify
          Caption = 'CPF:'
        end
        object dbedtEMP_CONT_NOME: TDBEdit
          Left = 81
          Top = 20
          Width = 368
          Height = 22
          CharCase = ecUpperCase
          DataField = 'EMP_CONT_NOME'
          DataSource = DsEmpresa
          TabOrder = 0
          OnExit = DBeEmp_razaoExit
        end
        object dbedtEMP_CONT_CPF_CNPJ: TDBEdit
          Left = 657
          Top = 20
          Width = 128
          Height = 22
          CharCase = ecUpperCase
          DataField = 'EMP_CONT_CNPJ'
          DataSource = DsEmpresa
          TabOrder = 2
          OnExit = DBeEmp_razaoExit
        end
        object dbedtEMP_CONT_CRC: TDBEdit
          Left = 816
          Top = 20
          Width = 129
          Height = 22
          CharCase = ecUpperCase
          DataField = 'EMP_CONT_CRC'
          DataSource = DsEmpresa
          TabOrder = 3
          OnExit = DBeEmp_razaoExit
        end
        object dbedtEMP_CONT_ENDERECO: TDBEdit
          Left = 81
          Top = 45
          Width = 368
          Height = 22
          CharCase = ecUpperCase
          DataField = 'EMP_CONT_ENDERECO'
          DataSource = DsEmpresa
          TabOrder = 4
        end
        object dbedtEMP_CONT_NUMERO: TDBEdit
          Left = 505
          Top = 45
          Width = 120
          Height = 22
          CharCase = ecUpperCase
          DataField = 'EMP_CONT_NUMERO'
          DataSource = DsEmpresa
          TabOrder = 5
        end
        object dbedtEMP_CONT_FONE: TDBEdit
          Left = 657
          Top = 45
          Width = 128
          Height = 22
          DataField = 'EMP_CONT_FONE'
          DataSource = DsEmpresa
          TabOrder = 6
        end
        object dbedtEMP_CONT_FAX: TDBEdit
          Left = 817
          Top = 45
          Width = 128
          Height = 22
          DataField = 'EMP_CONT_FAX'
          DataSource = DsEmpresa
          TabOrder = 7
        end
        object dbedtEMP_CONT_CEP: TDBEdit
          Left = 81
          Top = 69
          Width = 90
          Height = 22
          DataField = 'EMP_CONT_CEP'
          DataSource = DsEmpresa
          TabOrder = 8
        end
        object dbedtEMP_CONT_COMPLEMENTO: TDBEdit
          Left = 248
          Top = 69
          Width = 201
          Height = 22
          CharCase = ecUpperCase
          DataField = 'EMP_CONT_COMPLEMENTO'
          DataSource = DsEmpresa
          TabOrder = 9
        end
        object dbedtEMP_CONT_BAIRRO: TDBEdit
          Left = 505
          Top = 69
          Width = 248
          Height = 22
          CharCase = ecUpperCase
          DataField = 'EMP_CONT_BAIRRO'
          DataSource = DsEmpresa
          TabOrder = 10
        end
        object dbedtEMP_CONT_CIDADE: TDBEdit
          Left = 81
          Top = 94
          Width = 243
          Height = 22
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          DataField = 'EMP_CONT_CIDADE'
          DataSource = DsEmpresa
          ReadOnly = True
          TabOrder = 11
        end
        object dbedtEMP_CONT_UF: TDBEdit
          Left = 382
          Top = 94
          Width = 38
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'EMP_CONT_UF'
          DataSource = DsEmpresa
          ReadOnly = True
          TabOrder = 12
        end
        object dbedtEMP_CONT_EMAIL: TDBEdit
          Left = 505
          Top = 94
          Width = 440
          Height = 22
          CharCase = ecLowerCase
          DataField = 'EMP_CONT_EMAIL'
          DataSource = DsEmpresa
          TabOrder = 13
        end
        object dbedtEMP_CONT_CPF: TDBEdit
          Left = 505
          Top = 20
          Width = 120
          Height = 22
          CharCase = ecUpperCase
          DataField = 'EMP_CONT_CPF'
          DataSource = DsEmpresa
          TabOrder = 1
          OnExit = DBeEmp_razaoExit
        end
      end
      object grpiNDICADORES: TGroupBox
        Left = 0
        Top = 125
        Width = 953
        Height = 383
        Align = alClient
        Caption = 'Indicadores'
        TabOrder = 1
        object Label22: TLabel
          Left = 122
          Top = 39
          Width = 99
          Height = 14
          Alignment = taRightJustify
          Caption = 'Incid'#234'ncia Tribut'#225'ria:'
        end
        object Label60: TLabel
          Left = 6
          Top = 63
          Width = 215
          Height = 14
          Alignment = taRightJustify
          Caption = 'M'#233'todo de Apropria'#231#227'o de Cr'#233'ditos Comuns:'
        end
        object Label62: TLabel
          Left = 76
          Top = 87
          Width = 145
          Height = 14
          Alignment = taRightJustify
          Caption = 'Tipo de Contribui'#231#227'o Apurada:'
        end
        object Label63: TLabel
          Left = 46
          Top = 111
          Width = 175
          Height = 14
          Alignment = taRightJustify
          Caption = 'Crit'#233'rio de Apura'#231#227'o e Escritura'#231#227'o:'
        end
        object Label15: TLabel
          Left = 62
          Top = 15
          Width = 159
          Height = 14
          Alignment = taRightJustify
          Caption = 'Tipo de Atividade Preponderante:'
        end
        object Label68: TLabel
          Left = 60
          Top = 135
          Width = 161
          Height = 14
          Alignment = taRightJustify
          Caption = 'Classifica'#231#227'o do Estabelecimento'
        end
        object cbbAtividadeEMP_COD_INC_TRIBUTARIA: TRxDBComboBox
          Left = 222
          Top = 35
          Width = 723
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'EMP_COD_INC_TRIBUTARIA'
          DataSource = DsEmpresa
          Items.Strings = (
            '1 - Escritura'#231#227'o de opera'#231#245'es com incid'#234'ncias - n'#227'o acumulativo'
            '2 - Escritura'#231#227'o de opera'#231#245'es com incid'#234'ncias - acumulativo'
            
              '3 - Escritura'#231#227'o de opera'#231#245'es com incid'#234'ncias - n'#227'o acumulativo ' +
              'e cumulativos')
          TabOrder = 1
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object cbbAtividadeEMP_COD_IND_APROP_CREDITO: TRxDBComboBox
          Left = 222
          Top = 59
          Width = 723
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'EMP_COD_IND_APROP_CREDITO'
          DataSource = DsEmpresa
          Items.Strings = (
            '1 - Apropria'#231#227'o Direta'
            '2 - Rateio Proporcional (Receita Bruta)')
          TabOrder = 2
          Values.Strings = (
            '1'
            '2')
        end
        object cbbAtividadeEMP_COD_IND_TIPO_APURADA: TRxDBComboBox
          Left = 222
          Top = 83
          Width = 723
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'EMP_COD_IND_TIPO_APURADA'
          DataSource = DsEmpresa
          Items.Strings = (
            '1 - Apura'#231#227'o da Contribui'#231#227'o  Exclusivamente a Al'#237'quota B'#225'sica'
            '2 - Apura'#231#227'o da Contribui'#231#227'o a Al'#237'quota Espec'#237'fica')
          TabOrder = 3
          Values.Strings = (
            '1'
            '2')
        end
        object cbbAtividadeEMP_COD_IND_REGIME: TRxDBComboBox
          Left = 222
          Top = 107
          Width = 723
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'EMP_COD_IND_REGIME'
          DataSource = DsEmpresa
          Items.Strings = (
            '1 - Regime de Caixa'
            '2 - Regime de Compet'#234'ncia Escritura'#231#227'o consolidada'
            '9 - Regime de Compet'#234'ncia Escritura'#231#227'o Detalhada')
          TabOrder = 4
          Values.Strings = (
            '1'
            '2'
            '9')
        end
        object dbrgrpEMP_COD_IND_ESCRITURACAO: TDBRadioGroup
          Left = 222
          Top = 162
          Width = 343
          Height = 38
          Caption = 'Encritura'#231#227'o'
          Columns = 2
          DataField = 'EMP_COD_IND_ESCRITURACAO'
          DataSource = DsEmpresa
          Items.Strings = (
            'Consolidada'
            'Detalhada')
          TabOrder = 5
          Values.Strings = (
            '1'
            '2')
        end
        object cbbAtividadeEMP_INDICADOR_ATIVIDADE: TRxDBComboBox
          Left = 222
          Top = 11
          Width = 723
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'EMP_INDICADOR_ATIVIDADE'
          DataSource = DsEmpresa
          Items.Strings = (
            'Industrial ou Equiparado'
            'Prestador de Servi'#231'o'
            'Atividade e Com'#233'rcio'
            'Atividade Financeira'
            'Atividade Imobili'#225'ria'
            'Outros')
          TabOrder = 0
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '9')
        end
        object dbchkProdutoAtivo: TDBCheckBox
          Left = 17
          Top = 210
          Width = 336
          Height = 17
          Hint = 
            'Marcando est'#225' op'#231#227'o no cadastro de produto vai ser obrigado a pr' +
            'eencher os campos de tipo e genero do SPED'
          Caption = 'Ativar valida'#231#227'o SPED no cadastro de produtos'
          DataField = 'PRD_SPEDVALIDA'
          DataSource = DsEmpresa
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 222
          Top = 131
          Width = 723
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'EMP_CLAS_ESTAB_IND'
          DataSource = DsEmpresa
          Items.Strings = (
            '00 - Industrial - Transforma'#231#227'o'
            '01 - Industrial - Beneficiamento'
            '02 - Industrial - Montagem'
            '03 - Industrial - Acondicionamento ou Reacondicionamento'
            '04 - Industrial - Renova'#231#227'o ou Recondicionamento'
            '05 - Equiparado a industrial - Por op'#231#227'o'
            '06 - Equiparado a industrial - Importa'#231#227'o Direta'
            '07 - Equiparado a industrial - Por lei espec'#237'fica'
            
              '08 - Equiparado a industrial - N'#227'o enquadrado nos c'#243'digos 05, 06' +
              ' ou 07'
            '09 - Outros')
          TabOrder = 7
          Values.Strings = (
            '00'
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '')
        end
      end
    end
    object Mercos: TTabSheet
      Caption = 'Mercos'
      ImageIndex = 6
      object Label77: TLabel
        Left = 39
        Top = 95
        Width = 79
        Height = 14
        Caption = 'Company Token:'
      end
      object Label78: TLabel
        Left = 39
        Top = 123
        Width = 85
        Height = 14
        Caption = 'Application token:'
      end
      object DBEdit25: TDBEdit
        Left = 135
        Top = 92
        Width = 321
        Height = 22
        DataField = 'EMP_COMPANYTOKEN'
        DataSource = DsEmpresa
        TabOrder = 0
      end
      object DBEdit26: TDBEdit
        Left = 135
        Top = 120
        Width = 321
        Height = 22
        DataField = 'EMP_APPLICATIONTOKEN'
        DataSource = DsEmpresa
        TabOrder = 1
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 0
        Top = 0
        Width = 953
        Height = 60
        Align = alTop
        Caption = 'Ambiente'
        Columns = 2
        DataField = 'EMP_AMBIENTE_MERCOS'
        DataSource = DsEmpresa
        Items.Strings = (
          'Produ'#231#227'o'
          'Homologa'#231#227'o')
        TabOrder = 2
        Values.Strings = (
          '1'
          '0')
      end
    end
    object IEManaus: TTabSheet
      Caption = 'I.E. Manaus'
      ImageIndex = 7
      object Label31: TLabel
        Left = 40
        Top = 24
        Width = 81
        Height = 14
        Caption = 'Descri'#231#227'o da I.E.'
      end
      object Label37: TLabel
        Left = 3
        Top = 52
        Width = 118
        Height = 14
        Caption = 'N'#186' da Inscri'#231#227'o Estadual'
      end
      object Label38: TLabel
        Left = 25
        Top = 80
        Width = 96
        Height = 14
        Caption = 'S'#233'rie da Nota Fiscal'
      end
      object edSequenciaNF: TLabel
        Left = 262
        Top = 80
        Width = 129
        Height = 14
        Caption = 'N'#250'mero Sequencial da N.F.'
      end
      object bbAdicionarIE: TBitBtn
        Tag = 1
        Left = 3
        Top = 330
        Width = 136
        Height = 24
        Cursor = crHandPoint
        Caption = 'Adicionar '
        Glyph.Data = {
          E6000000424DE60000000000000076000000280000000E0000000E0000000100
          04000000000070000000CE0E0000D80E00001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3300333333333333330033333333333333003333300033333300333330003333
          3300333330003333330033000000000333003300000000033300330000000003
          3300333330003333330033333000333333003333300033333300333333333333
          33003333333333333300}
        TabOrder = 0
        TabStop = False
        OnClick = bbAdicionarIEClick
      end
      object bbEditarIE: TBitBtn
        Tag = 2
        Left = 141
        Top = 330
        Width = 119
        Height = 24
        Cursor = crHandPoint
        Caption = 'Editar '
        Glyph.Data = {
          E6010000424DE60100000000000036000000280000000C0000000C0000000100
          180000000000B0010000C40E0000C40E00000000000000000000C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D400000000000000000000000000
          0000000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000000000
          000000000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4000000000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4}
        TabOrder = 1
        TabStop = False
        OnClick = bbEditarIEClick
      end
      object bbExcluirIE: TBitBtn
        Tag = 3
        Left = 262
        Top = 330
        Width = 123
        Height = 24
        Cursor = crHandPoint
        Hint = '|Exclui registro atual..'
        Caption = 'Excluir '
        Glyph.Data = {
          26050000424D26050000000000003604000028000000100000000F0000000100
          080000000000F0000000C40E0000C40E00000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00A4
          FFFFFFA4A4FFFFFFFFFFFFFFFF0101A4A4FFF900A4A4FFFFFFFFFFFFFF010100
          A4A4010100A4FFFFFFFFFFFFFFF901010001010101FFFFFFFFFFFFFFFFFFF901
          01010101FFFFFFFFFFFFFFFFFFFFFFF9010101A4A4FFFFFFFFFFFFFFFFFFFFF9
          01010100A4A4FFFFFFFFFFFFFFFFFF0101F9010100A4A4FFFFFFFFFFFFA4F901
          00A4F9010100A4FFFFFFFFFFFFFF0101A4FFFFF9010100FFFFFFFFFFFFFFF9FF
          FFFFFFFFF90107FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        OnClick = bbExcluirIEClick
      end
      object bbGravarIE: TBitBtn
        Tag = 3
        Left = 387
        Top = 330
        Width = 123
        Height = 24
        Cursor = crHandPoint
        Hint = '|Exclui registro atual..'
        Caption = 'Gravar'
        Glyph.Data = {
          26050000424D26050000000000003604000028000000100000000F0000000100
          080000000000F0000000C40E0000C40E00000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF0404FFFFFFFFFFFFFFFFFFFFFFFFFFFA020204
          FFFFFFFFFFFFFFFFFFFFFFFF0202020204FFFFFFFFFFFFFFFFFFFFFF02020202
          0204FFFFFFFFFFFFFFFFFFFF020202FA020204FFFFFFFFFFFFFFFFFF020204FF
          FA020204FFFFFFFFFFFFFFFFFA0204FFFFFA0202A4FFFFFFFFFFFFFFFFFFFFFF
          FFFFFA020204A4FFFFFFFFFFFFFFFFFFFFFFFFFA020204A4FFFFFFFFFFFFFFFF
          FFFFFFFFFA0202A4FFFFFFFFFFFFFFFFFFFFFFFFFFFA02A4FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        OnClick = bbGravarIEClick
      end
      object bbCancelarIE: TBitBtn
        Tag = 1
        Left = 513
        Top = 330
        Width = 136
        Height = 24
        Cursor = crHandPoint
        Caption = 'Cancelar'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFDDDDFB9893F37870EF7A72EF9E99F4E8E8FCFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D0F91B0CE50000DF0000E023
          15E72012E70000E00000DF2C1EE6E5E5FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          8F8AF20000DF2B1CE6CBC9FBFFFFFFFFFFFFFFFFFFFFFFFFBFBCFC2515E60000
          E0B1AEF6FFFFFFFFFFFFFFFFFFACA8F50000DF7068EEFFFFFFFFFFFF40404000
          00000000001D1D1CFFFFEBC4C2FC0100E20000E0CECCF9FFFFFFFFFFFF0000E0
          4E43EAFFFFFFFFFFFF2F2F2F0000000000000000000000004A47940000EA665D
          ED4235E90800E2FFFFFF958EF20000E0FFFFFFFFFFFFEAEAEA00000000000000
          00000000005B57AA0500FB6057F5FFFFFFE8E9FC0000DFB4AFF64235E9473CE9
          FFFFFFFFFFFF7272720000000000000000005B57B00A00FF3B33CAB9BB9DFFFF
          FFFFFFFF2113E56258EC1708E4847CF0FFFFFFFFFFFF0000002D2D2D0000005B
          57B70700FF4F47DA0000009D9D9DFFFFFFFFFFFF6157ED382BE81303E48B83F1
          FFFFFFD0D0D0000000B8BA9F4944AB0600FE645CE80A0C000B0B0B9E9E9EFFFF
          FFFFFFFF675DED3325E73325E75D52ECFFFFFFFFFFFFC4C5AA9B96FF0000F73F
          38BC8284660505054D4D4D989898FFFFFFFFFFFF382AE85348EB7C73F00000E2
          FFFFFFFFFFFF8B85FA0000E95852CF56583A6969680707073D3D3D919191FFFF
          FFFFFFFF0000E09B95F3EFF0FD0000DF958FF38984F10000E27973EA00000059
          5959676767000000A3A3A3D0D0D0FFFFFF6158ED0000E0FFFFFFFFFFFF6F67EE
          0000E10100E29793F3FFFFFFA5A5A53939397373733E3E3EFFFFFFFFFFFF9E99
          F40000DF948FF2FFFFFFFFFFFFFFFFFF4339E90000E1867FF1FFFFFFFFFFFFE6
          E7D7FFFFF2FFFFFFFFFFFF6056EC0000DF6159EDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF817AF00000E00000E04236E9766DF47168F1392CE80000E00000E09A95
          F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9892F35146EB32
          24E73426E7584CEBA29DF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 4
        TabStop = False
        OnClick = bbCancelarIEClick
      end
      object grMultiIE: TDBGrid
        Left = 0
        Top = 360
        Width = 953
        Height = 148
        Align = alBottom
        DataSource = dsMultiIE
        TabOrder = 5
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnCellClick = grMultiIECellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'EMI_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_CODIGO'
            Title.Caption = 'Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o da I.E.'
            Width = 413
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_IE'
            Title.Caption = 'Inscri'#231#227'o Estadual'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_SERIE_NF'
            Title.Caption = 'S'#233'rie da NF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_SEQUENCIA_NF'
            Title.Caption = 'N'#250'mero Seq. da NF'
            Visible = True
          end>
      end
      object edIEDescricao: TEdit
        Left = 127
        Top = 21
        Width = 522
        Height = 22
        TabOrder = 6
        Text = 'edIEDescricao'
      end
      object edIE: TEdit
        Left = 127
        Top = 49
        Width = 149
        Height = 22
        TabOrder = 7
        Text = 'edIE'
      end
      object edNFIESerie: TEdit
        Left = 127
        Top = 77
        Width = 121
        Height = 22
        TabOrder = 8
        Text = 'edNFIESerie'
      end
      object edNFIESequencia: TEdit
        Left = 397
        Top = 77
        Width = 121
        Height = 22
        TabOrder = 9
        Text = 'edNFIESequencia'
      end
    end
  end
  object Bit_Sair: TBitBtn [3]
    Left = 857
    Top = 572
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      CA010000424DCA01000000000000760000002800000026000000110000000100
      04000000000054010000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
      FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
      FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
      B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
      FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
      FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF00}
    NumGlyphs = 2
    ParentFont = False
    Spacing = 5
    TabOrder = 2
    TabStop = False
    OnClick = Bit_SairClick
  end
  object Bit_Cancelar: TBitBtn [4]
    Left = 756
    Top = 572
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro atual...'
    Caption = '&Cancelar'
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
    Spacing = 5
    TabOrder = 3
    TabStop = False
    OnClick = Bit_CancelarClick
  end
  object Bit_Gravar: TBitBtn [5]
    Left = 655
    Top = 572
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Caption = '&Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
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
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 5
    TabOrder = 4
    TabStop = False
    OnClick = Bit_GravarClick
  end
  object Bit_novo: TBitBtn [6]
    Left = 553
    Top = 572
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = '&Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      E6000000424DE60000000000000076000000280000000E0000000E0000000100
      04000000000070000000CE0E0000D80E00001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3300333333333333330033333333333333003333300033333300333330003333
      3300333330003333330033000000000333003300000000033300330000000003
      3300333330003333330033333000333333003333300033333300333333333333
      33003333333333333300}
    ParentFont = False
    Spacing = 5
    TabOrder = 5
    TabStop = False
    OnClick = Bit_novoClick
  end
  object Bit_Relatorio: TBitBtn [7]
    Left = 5
    Top = 572
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = 'Relat'#243'rio'
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
  end
  object pnMove: TPanel [8]
    Left = 777
    Top = 2
    Width = 160
    Height = 24
    BevelOuter = bvNone
    TabOrder = 7
    object btFirst: TSpeedButton
      Tag = 1
      Left = 33
      Top = 0
      Width = 26
      Height = 24
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        1800000000000006000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000
        00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000008000
        00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF8000
        00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
        C0C0C0C0C0C0C0C08000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C080000000F2FF00F2FF8000
        00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
        C0C0C0C0C08000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0800000800000C0C0C0C0C0C080000000F2FF00F2FF00F2FF8000
        00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
        C0C08000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0800000800000C0C0C080000000F2FF00F2FF00F2FF00F2FF8000
        00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C080
        00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0800000800000C0C0C0C0C0C080000000F2FF00F2FF00F2FF8000
        00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
        C0C08000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C080000000F2FF00F2FF8000
        00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
        C0C0C0C0C08000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF8000
        00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
        C0C0C0C0C0C0C0C08000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000008000
        00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000
        00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      NumGlyphs = 2
      OnClick = btFirstClick
    end
    object btPrior: TSpeedButton
      Tag = 2
      Left = 59
      Top = 0
      Width = 26
      Height = 24
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        1800000000000006000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C08000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF00F2FF800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
        00007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF00F2FF00F2FF800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000007F
        7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C080000000F2FF00F2FF00F2FF00F2FF800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000007F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF00F2FF00F2FF800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000007F
        7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF00F2FF800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
        00007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C08000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      NumGlyphs = 2
      OnClick = btFirstClick
    end
    object btNext: TSpeedButton
      Tag = 3
      Left = 85
      Top = 0
      Width = 26
      Height = 24
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        1800000000000006000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C080000000F2FF800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F80
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C080000000F2FF00F2FF800000C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F
        7F7F800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C080000000F2FF00F2FF00F2FF800000C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F
        7F7F7F7F7F800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C080000000F2FF00F2FF00F2FF00F2FF800000C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C080000000F2FF00F2FF00F2FF800000C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F
        7F7F7F7F7F800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C080000000F2FF00F2FF800000C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F
        7F7F800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C080000000F2FF800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F80
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      NumGlyphs = 2
      OnClick = btFirstClick
    end
    object btLast: TSpeedButton
      Tag = 4
      Left = 111
      Top = 0
      Width = 26
      Height = 24
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        1800000000000006000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C080000000F2FF800000C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F800000C0C0C0C0
        C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C080000000F2FF00F2FF800000C0C0C0C0C0C0C0C0C0800000800000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F800000C0
        C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C080000000F2FF00F2FF00F2FF800000C0C0C0C0C0C0800000800000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F80
        0000C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C080000000F2FF00F2FF00F2FF00F2FF800000C0C0C0800000800000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F800000C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C080000000F2FF00F2FF00F2FF800000C0C0C0C0C0C0800000800000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F80
        0000C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C080000000F2FF00F2FF800000C0C0C0C0C0C0C0C0C0800000800000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F800000C0
        C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C080000000F2FF800000C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F800000C0C0C0C0
        C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      NumGlyphs = 2
      OnClick = btFirstClick
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 512
    Top = 480
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 560
    Top = 488
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverName=Firebird'
      'Database=c:\jobdados\exemplo\exemplo.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=True')
    Left = 456
    Top = 481
  end
  inherited qAux: TSQLQuery
    Left = 722
    Top = 461
  end
  inherited qAux2: TSQLQuery
    Left = 762
    Top = 460
  end
  inherited qAux3: TSQLQuery
    Left = 802
    Top = 460
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.jpg'
    Left = 896
    Top = 312
  end
  object CdsCFOPDentro: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
    DataSet.CommandText = 'Select OPE_CODIGO, OPE_NATUREZA||'#39'-'#39'||OPE_DESCRI  FROM OPE0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select OPE_CODIGO, OPE_NATUREZA||'#39'-'#39'||OPE_DESCRI  FROM OPE0000'
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 683
    Top = 288
    object CdsCFOPDentroOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Required = True
      Size = 3
    end
    object CdsCFOPDentroOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
  end
  object dsDsCfopDentro: TDataSource
    DataSet = CdsCFOPDentro
    Left = 726
    Top = 320
  end
  object dsDsCfopFora: TDataSource
    DataSet = CdsCFOPFora
    Left = 806
    Top = 320
  end
  object CdsCFOPFora: TSqlClientDataSet
    Aggregates = <>
    Connection = DBConn
    DataSet.CommandText = 'Select OPE_CODIGO, OPE_NATUREZA||'#39'-'#39'||OPE_DESCRI  FROM OPE0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select OPE_CODIGO, OPE_NATUREZA||'#39'-'#39'||OPE_DESCRI  FROM OPE0000'
    DBConnection = DBConn
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 643
    Top = 336
    object CdsCFOPForaOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Required = True
      Size = 3
    end
    object CdsCFOPForaOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
  end
  object DsEmpresa: TDataSource
    DataSet = CdsEmpresa
    Left = 595
    Top = 288
  end
  object CdsEmpresa: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'DspEmpresa'
    AfterOpen = CdsEmpresaAfterOpen
    BeforeEdit = CdsEmpresaBeforeEdit
    AfterScroll = CdsEmpresaAfterScroll
    AfterApplyUpdates = CdsEmpresaAfterApplyUpdates
    Left = 527
    Top = 288
    object CdsEmpresaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsEmpresaEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object CdsEmpresaEMP_ENDERE: TStringField
      FieldName = 'EMP_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsEmpresaEMP_BAIRRO: TStringField
      FieldName = 'EMP_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object CdsEmpresaEMP_CXPOSTAL: TStringField
      FieldName = 'EMP_CXPOSTAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEmpresaEMP_CIDADE: TStringField
      FieldName = 'EMP_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaEMP_UF: TStringField
      FieldName = 'EMP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_CEP: TStringField
      FieldName = 'EMP_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object CdsEmpresaEMP_ENDENTR: TStringField
      FieldName = 'EMP_ENDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object CdsEmpresaEMP_CIDENTR: TStringField
      FieldName = 'EMP_CIDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaEMP_UFENTR: TStringField
      FieldName = 'EMP_UFENTR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_CEPENTR: TStringField
      FieldName = 'EMP_CEPENTR'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object CdsEmpresaEMP_FONE: TStringField
      FieldName = 'EMP_FONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)99999\-9999;0;_'
      Size = 12
    end
    object CdsEmpresaEMP_FAX: TStringField
      FieldName = 'EMP_FAX'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)99999\-9999;0;_'
      Size = 12
    end
    object CdsEmpresaEMP_EMAIL: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_EMAILCOMPRAS: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAILCOMPRAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_NOMECOMPRADOR: TStringField
      FieldName = 'EMP_NOMECOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_EMAILVENDAS: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAILVENDAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_CGC: TStringField
      FieldName = 'EMP_CGC'
      ProviderFlags = [pfInUpdate]
      EditMask = '99\.999\.999\/9999\-99;0;_'
      Size = 14
    end
    object CdsEmpresaEMP_INSC: TStringField
      FieldName = 'EMP_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsEmpresaEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsEmpresaEMP_HOME: TStringField
      FieldName = 'EMP_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsEmpresaCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_AMBIENTE_NFE: TIntegerField
      FieldName = 'EMP_AMBIENTE_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_MODELO_NFE: TIntegerField
      FieldName = 'EMP_MODELO_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_SERIE_NFE: TIntegerField
      FieldName = 'EMP_SERIE_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_HOST: TStringField
      FieldName = 'EMP_HOST'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsEmpresaEMP_USERNAME: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_USERNAME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_PASSWORD: TStringField
      FieldName = 'EMP_PASSWORD'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaEMP_REQUER_AUTENTICACAO: TStringField
      FieldName = 'EMP_REQUER_AUTENTICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_MENSAGEM_NFE: TStringField
      FieldName = 'EMP_MENSAGEM_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object CdsEmpresaEMP_SISTEMA_CONTINGENCIA_NFE: TStringField
      FieldName = 'EMP_SISTEMA_CONTINGENCIA_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_CAMINHO_LOGO: TStringField
      FieldName = 'EMP_CAMINHO_LOGO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsEmpresaEMP_OPTANTE_SIMPLES: TStringField
      FieldName = 'EMP_OPTANTE_SIMPLES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_PERCENT_SIMPLES: TFMTBCDField
      FieldName = 'EMP_PERCENT_SIMPLES'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
    end
    object CdsEmpresaEMP_CODIGO_CONTABILIDADE: TStringField
      FieldName = 'EMP_CODIGO_CONTABILIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_EMAIL_CONTADOR: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAIL_CONTADOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_EMAIL_INTERNO: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAIL_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_GENERATION_NFE: TStringField
      FieldName = 'EMP_GENERATION_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_SEQUENCIA_NFE: TIntegerField
      FieldName = 'EMP_SEQUENCIA_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_TIPO_DANFE: TStringField
      FieldName = 'EMP_TIPO_DANFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsEmpresaEMP_CHAVE: TStringField
      FieldName = 'EMP_CHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object CdsEmpresaEMP_DATA_ACESSO: TStringField
      FieldName = 'EMP_DATA_ACESSO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsEmpresaEMP_CRT: TIntegerField
      FieldName = 'EMP_CRT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_CSOSN: TIntegerField
      FieldName = 'EMP_CSOSN'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_PERIODOIPI: TStringField
      FieldName = 'EMP_PERIODOIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_INSC_MUNICIPAL: TStringField
      FieldName = 'EMP_INSC_MUNICIPAL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsEmpresaEMP_REGIME_SERVICO: TStringField
      FieldName = 'EMP_REGIME_SERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_MODALIDADE: TStringField
      FieldName = 'EMP_MODALIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsEmpresaEMP_PIS_ALIQ: TFMTBCDField
      FieldName = 'EMP_PIS_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 4
    end
    object CdsEmpresaEMP_COFINS_ALIQ: TFMTBCDField
      FieldName = 'EMP_COFINS_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 4
    end
    object CdsEmpresaEMP_IRPJ_ALIQ: TFMTBCDField
      FieldName = 'EMP_IRPJ_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 4
    end
    object CdsEmpresaEMP_REQUER_CONEXAO_SSL: TStringField
      FieldName = 'EMP_REQUER_CONEXAO_SSL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_PORTA: TIntegerField
      FieldName = 'EMP_PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_VERSAO_SSL: TIntegerField
      FieldName = 'EMP_VERSAO_SSL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_MODO_SSL: TStringField
      FieldName = 'EMP_MODO_SSL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_SEQUENCIA_NFE_SCAN: TIntegerField
      FieldName = 'EMP_SEQUENCIA_NFE_SCAN'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_CONT_PESSOA: TStringField
      FieldName = 'EMP_CONT_PESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_CONT_NOME: TStringField
      FieldName = 'EMP_CONT_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_CONT_CRC: TStringField
      FieldName = 'EMP_CONT_CRC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_CONT_ENDERECO: TStringField
      FieldName = 'EMP_CONT_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsEmpresaEMP_CONT_NUMERO: TStringField
      FieldName = 'EMP_CONT_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsEmpresaEMP_CONT_CEP: TStringField
      FieldName = 'EMP_CONT_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsEmpresaEMP_CONT_COMPLEMENTO: TStringField
      FieldName = 'EMP_CONT_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaEMP_CONT_BAIRRO: TStringField
      FieldName = 'EMP_CONT_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_CONT_FONE: TStringField
      FieldName = 'EMP_CONT_FONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsEmpresaEMP_CONT_FAX: TStringField
      FieldName = 'EMP_CONT_FAX'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object CdsEmpresaEMP_CONT_EMAIL: TStringField
      FieldName = 'EMP_CONT_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaEMP_CONT_CID: TIntegerField
      FieldName = 'EMP_CONT_CID'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_SUFRAMA: TStringField
      FieldName = 'EMP_SUFRAMA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaEMP_INDICADOR_ATIVIDADE: TIntegerField
      FieldName = 'EMP_INDICADOR_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaEMP_CONT_CIDADE: TStringField
      FieldName = 'EMP_CONT_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaEMP_CONT_UF: TStringField
      FieldName = 'EMP_CONT_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_COD_INC_TRIBUTARIA: TStringField
      FieldName = 'EMP_COD_INC_TRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_COD_IND_APROP_CREDITO: TStringField
      FieldName = 'EMP_COD_IND_APROP_CREDITO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_COD_IND_TIPO_APURADA: TStringField
      FieldName = 'EMP_COD_IND_TIPO_APURADA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_COD_IND_REGIME: TStringField
      FieldName = 'EMP_COD_IND_REGIME'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_COD_IND_ESCRITURACAO: TStringField
      FieldName = 'EMP_COD_IND_ESCRITURACAO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaEMP_CONT_CNPJ: TStringField
      FieldName = 'EMP_CONT_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsEmpresaEMP_CONT_CPF: TStringField
      FieldName = 'EMP_CONT_CPF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsEmpresaEMP_CSOSN_ST: TIntegerField
      FieldName = 'EMP_CSOSN_ST'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEmpresaOPE_CODIGO_DENTRO: TStringField
      FieldName = 'OPE_CODIGO_DENTRO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEmpresaOPE_CODIGO_FORA: TStringField
      FieldName = 'OPE_CODIGO_FORA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEmpresaEMP_LOGO: TBlobField
      FieldName = 'EMP_LOGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_LOGO_NFE: TBlobField
      FieldName = 'EMP_LOGO_NFE'
      Size = 1
    end
    object CdsEmpresaEMP_REQUER_CONEXAO_TLS: TStringField
      FieldName = 'EMP_REQUER_CONEXAO_TLS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEmpresaEMP_AMBIENTE_NFSE: TIntegerField
      FieldName = 'EMP_AMBIENTE_NFSE'
    end
    object CdsEmpresaEMP_naturezaoperacao: TIntegerField
      FieldName = 'EMP_naturezaoperacao'
    end
    object CdsEmpresaEMP_SERIE_NFSE: TStringField
      FieldName = 'EMP_SERIE_NFSE'
      Size = 5
    end
    object CdsEmpresaEMP_idToken: TStringField
      FieldName = 'EMP_idToken'
      Size = 6
    end
    object CdsEmpresaEMP_CSC: TStringField
      FieldName = 'EMP_CSC'
      Size = 36
    end
    object CdsEmpresaEMP_NFE_FAT: TStringField
      FieldName = 'EMP_NFE_FAT'
      Size = 1
    end
    object CdsEmpresaEMP_USERNAME_FIN: TStringField
      FieldName = 'EMP_USERNAME_FIN'
      OnGetText = CdsEmpresaEMP_USERNAME_FINGetText
      OnSetText = CdsEmpresaEMP_USERNAME_FINSetText
      Size = 50
    end
    object CdsEmpresaEMP_PASSWORD_FIN: TStringField
      FieldName = 'EMP_PASSWORD_FIN'
      OnGetText = CdsEmpresaEMP_USERNAME_FINGetText
      OnSetText = CdsEmpresaEMP_USERNAME_FINSetText
      Size = 50
    end
    object CdsEmpresaEMP_PASSWORD_COMPRAS: TStringField
      FieldName = 'EMP_PASSWORD_COMPRAS'
      OnGetText = CdsEmpresaEMP_USERNAME_FINGetText
      OnSetText = CdsEmpresaEMP_USERNAME_FINSetText
      Size = 50
    end
    object CdsEmpresaemp_sincrono: TStringField
      FieldName = 'emp_sincrono'
      Size = 1
    end
    object CdsEmpresaEMP_DIREITO_CREDITO: TFMTBCDField
      FieldName = 'EMP_DIREITO_CREDITO'
      ProviderFlags = [pfInUpdate]
      EditFormat = '##0.00'
      Precision = 15
    end
    object CdsEmpresaEMP_LOGONFE_PROPRIO: TStringField
      FieldName = 'EMP_LOGONFE_PROPRIO'
      Size = 1
    end
    object CdsEmpresaEMP_NFE_REP: TStringField
      FieldName = 'EMP_NFE_REP'
      Size = 1
    end
    object CdsEmpresaSEQUENCIA_VALOR: TIntegerField
      FieldName = 'SEQUENCIA_VALOR'
      ProviderFlags = []
    end
    object CdsEmpresaEMP_COMPANYTOKEN: TStringField
      FieldName = 'EMP_COMPANYTOKEN'
      Size = 36
    end
    object CdsEmpresaEMP_APPLICATIONTOKEN: TStringField
      FieldName = 'EMP_APPLICATIONTOKEN'
      Size = 36
    end
    object CdsEmpresaEMP_AMBIENTE_MERCOS: TStringField
      FieldName = 'EMP_AMBIENTE_MERCOS'
      Size = 1
    end
    object CdsEmpresaEMP_TIPOCERTIFICADO: TIntegerField
      FieldName = 'EMP_TIPOCERTIFICADO'
    end
    object CdsEmpresaPRD_SPEDVALIDA: TStringField
      FieldName = 'PRD_SPEDVALIDA'
      Size = 1
    end
    object CdsEmpresaEMP_USAR_MAIL_ACBR: TStringField
      FieldName = 'EMP_USAR_MAIL_ACBR'
      FixedChar = True
      Size = 1
    end
    object CdsEmpresaEMP_UTILIZAR_API_ACBR: TStringField
      FieldName = 'EMP_UTILIZAR_API_ACBR'
      FixedChar = True
      Size = 1
    end
    object CdsEmpresaEMP_USUARIO_API_ACBR: TStringField
      FieldName = 'EMP_USUARIO_API_ACBR'
      Size = 50
    end
    object CdsEmpresaEMP_TOKEN_API_ACBR: TStringField
      FieldName = 'EMP_TOKEN_API_ACBR'
      Size = 60
    end
    object CdsEmpresaEMP_TIPO_CERTIFICADO_NFSE: TIntegerField
      FieldName = 'EMP_TIPO_CERTIFICADO_NFSE'
    end
    object CdsEmpresaEMP_NFS_SENHA: TStringField
      FieldName = 'EMP_NFS_SENHA'
      Size = 255
    end
    object CdsEmpresaEMP_CLAS_ESTAB_IND: TStringField
      FieldName = 'EMP_CLAS_ESTAB_IND'
      Size = 2
    end
  end
  object DspEmpresa: TDataSetProvider
    DataSet = QEmpresa
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 452
    Top = 288
  end
  object QEmpresa: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from EMP0000 T1'
      
        ' LEFT JOIN SYS_SEQUENCIADOR S1 ON (T1.EMP_CODIGO = S1.SEQUENCIA_' +
        'EMPRESA)')
    SQLConnection = DBConn
    Left = 377
    Top = 288
    object QEmpresaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QEmpresaEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object QEmpresaEMP_ENDERE: TStringField
      FieldName = 'EMP_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object QEmpresaEMP_BAIRRO: TStringField
      FieldName = 'EMP_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object QEmpresaEMP_CXPOSTAL: TStringField
      FieldName = 'EMP_CXPOSTAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object QEmpresaEMP_CIDADE: TStringField
      FieldName = 'EMP_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QEmpresaEMP_UF: TStringField
      FieldName = 'EMP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QEmpresaEMP_CEP: TStringField
      FieldName = 'EMP_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QEmpresaEMP_ENDENTR: TStringField
      FieldName = 'EMP_ENDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 45
    end
    object QEmpresaEMP_CIDENTR: TStringField
      FieldName = 'EMP_CIDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QEmpresaEMP_UFENTR: TStringField
      FieldName = 'EMP_UFENTR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QEmpresaEMP_CEPENTR: TStringField
      FieldName = 'EMP_CEPENTR'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QEmpresaEMP_FONE: TStringField
      FieldName = 'EMP_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object QEmpresaEMP_FAX: TStringField
      FieldName = 'EMP_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object QEmpresaEMP_EMAIL: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QEmpresaEMP_EMAILCOMPRAS: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAILCOMPRAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QEmpresaEMP_NOMECOMPRADOR: TStringField
      FieldName = 'EMP_NOMECOMPRADOR'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_EMAILVENDAS: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAILVENDAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QEmpresaEMP_CGC: TStringField
      FieldName = 'EMP_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object QEmpresaEMP_INSC: TStringField
      FieldName = 'EMP_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object QEmpresaEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object QEmpresaEMP_HOME: TStringField
      FieldName = 'EMP_HOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object QEmpresaCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_AMBIENTE_NFE: TIntegerField
      FieldName = 'EMP_AMBIENTE_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_MODELO_NFE: TIntegerField
      FieldName = 'EMP_MODELO_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_SERIE_NFE: TIntegerField
      FieldName = 'EMP_SERIE_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_HOST: TStringField
      FieldName = 'EMP_HOST'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QEmpresaEMP_USERNAME: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_USERNAME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QEmpresaEMP_PASSWORD: TStringField
      FieldName = 'EMP_PASSWORD'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QEmpresaEMP_REQUER_AUTENTICACAO: TStringField
      FieldName = 'EMP_REQUER_AUTENTICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QEmpresaEMP_MENSAGEM_NFE: TStringField
      FieldName = 'EMP_MENSAGEM_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object QEmpresaEMP_SISTEMA_CONTINGENCIA_NFE: TStringField
      FieldName = 'EMP_SISTEMA_CONTINGENCIA_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QEmpresaEMP_CAMINHO_LOGO: TStringField
      FieldName = 'EMP_CAMINHO_LOGO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QEmpresaEMP_OPTANTE_SIMPLES: TStringField
      FieldName = 'EMP_OPTANTE_SIMPLES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QEmpresaEMP_PERCENT_SIMPLES: TFMTBCDField
      FieldName = 'EMP_PERCENT_SIMPLES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object QEmpresaEMP_CODIGO_CONTABILIDADE: TStringField
      FieldName = 'EMP_CODIGO_CONTABILIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_EMAIL_CONTADOR: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAIL_CONTADOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QEmpresaEMP_EMAIL_INTERNO: TStringField
      DisplayWidth = 50
      FieldName = 'EMP_EMAIL_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QEmpresaEMP_GENERATION_NFE: TStringField
      FieldName = 'EMP_GENERATION_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QEmpresaEMP_SEQUENCIA_NFE: TIntegerField
      FieldName = 'EMP_SEQUENCIA_NFE'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_TIPO_DANFE: TStringField
      FieldName = 'EMP_TIPO_DANFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QEmpresaEMP_CHAVE: TStringField
      FieldName = 'EMP_CHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object QEmpresaEMP_DATA_ACESSO: TStringField
      FieldName = 'EMP_DATA_ACESSO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object QEmpresaEMP_CRT: TIntegerField
      FieldName = 'EMP_CRT'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_CSOSN: TIntegerField
      FieldName = 'EMP_CSOSN'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_PERIODOIPI: TStringField
      FieldName = 'EMP_PERIODOIPI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QEmpresaEMP_INSC_MUNICIPAL: TStringField
      FieldName = 'EMP_INSC_MUNICIPAL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object QEmpresaEMP_REGIME_SERVICO: TStringField
      FieldName = 'EMP_REGIME_SERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QEmpresaEMP_MODALIDADE: TStringField
      FieldName = 'EMP_MODALIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QEmpresaEMP_PIS_ALIQ: TFMTBCDField
      FieldName = 'EMP_PIS_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 4
    end
    object QEmpresaEMP_COFINS_ALIQ: TFMTBCDField
      FieldName = 'EMP_COFINS_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 4
    end
    object QEmpresaEMP_IRPJ_ALIQ: TFMTBCDField
      FieldName = 'EMP_IRPJ_ALIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 15
      Size = 4
    end
    object QEmpresaEMP_REQUER_CONEXAO_SSL: TStringField
      FieldName = 'EMP_REQUER_CONEXAO_SSL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QEmpresaEMP_PORTA: TIntegerField
      FieldName = 'EMP_PORTA'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_VERSAO_SSL: TIntegerField
      FieldName = 'EMP_VERSAO_SSL'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_MODO_SSL: TStringField
      FieldName = 'EMP_MODO_SSL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QEmpresaEMP_SEQUENCIA_NFE_SCAN: TIntegerField
      FieldName = 'EMP_SEQUENCIA_NFE_SCAN'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_CONT_PESSOA: TStringField
      FieldName = 'EMP_CONT_PESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QEmpresaEMP_CONT_NOME: TStringField
      FieldName = 'EMP_CONT_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QEmpresaEMP_CONT_CRC: TStringField
      FieldName = 'EMP_CONT_CRC'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_CONT_ENDERECO: TStringField
      FieldName = 'EMP_CONT_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QEmpresaEMP_CONT_NUMERO: TStringField
      FieldName = 'EMP_CONT_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object QEmpresaEMP_CONT_CEP: TStringField
      FieldName = 'EMP_CONT_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QEmpresaEMP_CONT_COMPLEMENTO: TStringField
      FieldName = 'EMP_CONT_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QEmpresaEMP_CONT_BAIRRO: TStringField
      FieldName = 'EMP_CONT_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QEmpresaEMP_CONT_FONE: TStringField
      FieldName = 'EMP_CONT_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object QEmpresaEMP_CONT_FAX: TStringField
      FieldName = 'EMP_CONT_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object QEmpresaEMP_CONT_EMAIL: TStringField
      FieldName = 'EMP_CONT_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object QEmpresaEMP_CONT_CID: TIntegerField
      FieldName = 'EMP_CONT_CID'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_SUFRAMA: TStringField
      FieldName = 'EMP_SUFRAMA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QEmpresaEMP_INDICADOR_ATIVIDADE: TIntegerField
      FieldName = 'EMP_INDICADOR_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaEMP_CONT_CIDADE: TStringField
      FieldName = 'EMP_CONT_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object QEmpresaEMP_CONT_UF: TStringField
      FieldName = 'EMP_CONT_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QEmpresaEMP_COD_INC_TRIBUTARIA: TStringField
      FieldName = 'EMP_COD_INC_TRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QEmpresaEMP_COD_IND_APROP_CREDITO: TStringField
      FieldName = 'EMP_COD_IND_APROP_CREDITO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QEmpresaEMP_COD_IND_TIPO_APURADA: TStringField
      FieldName = 'EMP_COD_IND_TIPO_APURADA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QEmpresaEMP_COD_IND_REGIME: TStringField
      FieldName = 'EMP_COD_IND_REGIME'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QEmpresaEMP_COD_IND_ESCRITURACAO: TStringField
      FieldName = 'EMP_COD_IND_ESCRITURACAO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object QEmpresaEMP_CONT_CNPJ: TStringField
      FieldName = 'EMP_CONT_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object QEmpresaEMP_CONT_CPF: TStringField
      FieldName = 'EMP_CONT_CPF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object QEmpresaEMP_CSOSN_ST: TIntegerField
      FieldName = 'EMP_CSOSN_ST'
      ProviderFlags = [pfInUpdate]
    end
    object QEmpresaOPE_CODIGO_DENTRO: TStringField
      FieldName = 'OPE_CODIGO_DENTRO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object QEmpresaOPE_CODIGO_FORA: TStringField
      FieldName = 'OPE_CODIGO_FORA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object QEmpresaEMP_LOGO: TBlobField
      FieldName = 'EMP_LOGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QEmpresaEMP_LOGO_NFE: TBlobField
      FieldName = 'EMP_LOGO_NFE'
      Size = 1
    end
    object QEmpresaEMP_REQUER_CONEXAO_TLS: TStringField
      FieldName = 'EMP_REQUER_CONEXAO_TLS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object QEmpresaEMP_AMBIENTE_NFSE: TIntegerField
      FieldName = 'EMP_AMBIENTE_NFSE'
    end
    object QEmpresaEMP_SERIE_NFSE: TStringField
      FieldName = 'EMP_SERIE_NFSE'
      Size = 3
    end
    object QEmpresaEMP_naturezaoperacao: TIntegerField
      FieldName = 'EMP_naturezaoperacao'
    end
    object QEmpresaEMP_idToken: TStringField
      FieldName = 'EMP_idToken'
      Size = 6
    end
    object QEmpresaEMP_CSC: TStringField
      FieldName = 'EMP_CSC'
      Size = 36
    end
    object QEmpresaEMP_NFE_FAT: TStringField
      FieldName = 'EMP_NFE_FAT'
      Size = 1
    end
    object QEmpresaEMP_USERNAME_FIN: TStringField
      FieldName = 'EMP_USERNAME_FIN'
      Size = 50
    end
    object QEmpresaEMP_PASSWORD_FIN: TStringField
      FieldName = 'EMP_PASSWORD_FIN'
      Size = 50
    end
    object QEmpresaEMP_PASSWORD_COMPRAS: TStringField
      FieldName = 'EMP_PASSWORD_COMPRAS'
      Size = 50
    end
    object QEmpresaemp_sincrono: TStringField
      FieldName = 'emp_sincrono'
      Size = 1
    end
    object QEmpresaEMP_DIREITO_CREDITO: TFMTBCDField
      FieldName = 'EMP_DIREITO_CREDITO'
      ProviderFlags = [pfInUpdate]
      EditFormat = '##0.00'
      Precision = 15
    end
    object QEmpresaEMP_LOGONFE_PROPRIO: TStringField
      FieldName = 'EMP_LOGONFE_PROPRIO'
      Size = 1
    end
    object QEmpresaEMP_NFE_REP: TStringField
      FieldName = 'EMP_NFE_REP'
      Size = 1
    end
    object QEmpresaSEQUENCIA_VALOR: TIntegerField
      FieldName = 'SEQUENCIA_VALOR'
    end
    object QEmpresaEMP_COMPANYTOKEN: TStringField
      FieldName = 'EMP_COMPANYTOKEN'
      Size = 36
    end
    object QEmpresaEMP_APPLICATIONTOKEN: TStringField
      FieldName = 'EMP_APPLICATIONTOKEN'
      Size = 36
    end
    object QEmpresaEMP_AMBIENTE_MERCOS: TStringField
      FieldName = 'EMP_AMBIENTE_MERCOS'
      Size = 1
    end
    object QEmpresaEMP_TIPOCERTIFICADO: TIntegerField
      FieldName = 'EMP_TIPOCERTIFICADO'
    end
    object QEmpresaPRD_SPEDVALIDA: TStringField
      FieldName = 'PRD_SPEDVALIDA'
      Size = 1
    end
    object QEmpresaEMP_USAR_MAIL_ACBR: TStringField
      FieldName = 'EMP_USAR_MAIL_ACBR'
      FixedChar = True
      Size = 1
    end
    object QEmpresaEMP_UTILIZAR_API_ACBR: TStringField
      FieldName = 'EMP_UTILIZAR_API_ACBR'
      FixedChar = True
      Size = 1
    end
    object QEmpresaEMP_USUARIO_API_ACBR: TStringField
      FieldName = 'EMP_USUARIO_API_ACBR'
      Size = 50
    end
    object QEmpresaEMP_TOKEN_API_ACBR: TStringField
      FieldName = 'EMP_TOKEN_API_ACBR'
      Size = 60
    end
    object QEmpresaEMP_TIPO_CERTIFICADO_NFSE: TIntegerField
      FieldName = 'EMP_TIPO_CERTIFICADO_NFSE'
    end
    object QEmpresaEMP_NFS_SENHA: TStringField
      FieldName = 'EMP_NFS_SENHA'
      Size = 255
    end
    object QEmpresaEMP_CLAS_ESTAB_IND: TStringField
      FieldName = 'EMP_CLAS_ESTAB_IND'
      Size = 2
    end
  end
  object smtp: TIdSMTP
    SASLMechanisms = <>
    Left = 348
    Top = 355
  end
  object sslsocket: TIdSSLIOHandlerSocketOpenSSL
    Intercept = IdConnectionIntercept1
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 300
    Top = 419
  end
  object IdConnectionIntercept1: TIdConnectionIntercept
    OnConnect = IdConnectionIntercept1Connect
    OnDisconnect = IdConnectionIntercept1Disconnect
    OnReceive = IdConnectionIntercept1Receive
    OnSend = IdConnectionIntercept1Send
    Left = 244
    Top = 403
  end
  object dsNatOper: TDataSource
    AutoEdit = False
    DataSet = cdsNatOper
    Left = 624
    Top = 8
  end
  object cdsNatOper: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 688
    Top = 8
    object cdsNatOperNaturezaOperacao: TIntegerField
      FieldName = 'NaturezaOperacao'
    end
    object cdsNatOperdescri: TStringField
      FieldName = 'descri'
      Size = 100
    end
  end
  object ACBrNFSe1: TACBrNFSe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.ConsultaLoteAposEnvio = True
    Configuracoes.Geral.Emitente.DadosSenhaParams = <>
    Configuracoes.Geral.Resposta = 0
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.TabServicosExt = True
    Configuracoes.WebServices.UF = 'PR'
    Configuracoes.WebServices.AguardarConsultaRet = 3000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.TimeOut = 10000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.Certificados.Senha = '123456'
    Configuracoes.Certificados.VerificarValidade = False
    Left = 904
    Top = 104
  end
  object sqlMultiIE: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from emp_multiplas_ie')
    SQLConnection = DBConn
    Left = 116
    Top = 145
    object sqlMultiIEEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
      Required = True
    end
    object sqlMultiIEEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object sqlMultiIEEMI_DESCRICAO: TStringField
      FieldName = 'EMI_DESCRICAO'
      Size = 255
    end
    object sqlMultiIEEMI_IE: TStringField
      FieldName = 'EMI_IE'
    end
    object sqlMultiIEEMI_SERIE_NF: TStringField
      FieldName = 'EMI_SERIE_NF'
    end
    object sqlMultiIEEMI_SEQUENCIA_NF: TIntegerField
      FieldName = 'EMI_SEQUENCIA_NF'
    end
  end
  object dsMultiIE: TDataSource
    DataSet = cdsMultiIE
    Left = 284
    Top = 145
  end
  object cdsMultiIE: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'EMI_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'EMI_DESCRICAO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'EMI_IE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMI_SERIE_NF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMI_SEQUENCIA_NF'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspMultiIE'
    StoreDefs = True
    AfterScroll = cdsMultiIEAfterScroll
    Left = 230
    Top = 146
    object cdsMultiIEEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
      Required = True
    end
    object cdsMultiIEEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsMultiIEEMI_DESCRICAO: TStringField
      FieldName = 'EMI_DESCRICAO'
      Size = 255
    end
    object cdsMultiIEEMI_IE: TStringField
      FieldName = 'EMI_IE'
    end
    object cdsMultiIEEMI_SERIE_NF: TStringField
      FieldName = 'EMI_SERIE_NF'
    end
    object cdsMultiIEEMI_SEQUENCIA_NF: TIntegerField
      FieldName = 'EMI_SEQUENCIA_NF'
    end
  end
  object dspMultiIE: TDataSetProvider
    DataSet = sqlMultiIE
    Left = 166
    Top = 146
  end
end
