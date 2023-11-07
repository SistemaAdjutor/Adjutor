inherited frmAtualizaMercos: TfrmAtualizaMercos
  Caption = 'Atualiza'#231#227'o Mercos'
  ClientHeight = 461
  ClientWidth = 819
  ExplicitWidth = 835
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 819
    Height = 74
    Align = alTop
    TabOrder = 0
    object ldata: TLabel
      Left = 112
      Top = 18
      Width = 85
      Height = 13
      Caption = 'Data verifica'#231#227'o: '
      Visible = False
    end
    object btnProcessar: TButton
      Left = 16
      Top = 13
      Width = 75
      Height = 25
      Caption = 'processar'
      TabOrder = 0
      OnClick = btnProcessarClick
    end
    object cxDataVerificacao: TcxDateEdit
      Left = 201
      Top = 15
      TabOrder = 1
      Visible = False
      Width = 92
    end
    object cxHora: TcxTimeEdit
      Left = 295
      Top = 15
      TabOrder = 2
      Visible = False
      Width = 65
    end
    object chkListaPreco: TCheckBox
      Left = 16
      Top = 48
      Width = 153
      Height = 17
      Hint = 'Atualizar Lista de pre'#231'os de todos os produtos'
      Caption = 'Atualizar Lista de pre'#231'os '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object ChkClienteCloud: TCheckBox
      Left = 282
      Top = 48
      Width = 247
      Height = 17
      Hint = 
        'N'#227'o selecionar esta op'#231#227'o se foi incluido cliente por importa'#231#227'o' +
        ' pelo site Mercos'
      Caption = 'Enviar clientes incluidos/alterados no Adjutor'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 4
    end
    object chkProdutosCloud: TCheckBox
      Left = 546
      Top = 48
      Width = 260
      Height = 17
      Hint = 
        'Na inclus'#227'o de produtos e vai atualizar estoque e lista de pre'#231'o' +
        ' somente destes produtos'#13#10'N'#227'o selecionar esta op'#231#227'o se foi inclu' +
        'ido produtos por importa'#231#227'o pelo site Mercos'
      Caption = 'Enviar produtos incluidos/atualizados no Adjutor'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 5
    end
    object chkUpdEstoque: TCheckBox
      Left = 166
      Top = 48
      Width = 102
      Height = 17
      Caption = 
        'Atualizar Estoque somente de altera'#231#245'es do estoque de acordo com' +
        ' o ultimo processamento'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 6
    end
    object ChkPedidos: TCheckBox
      Left = 366
      Top = 17
      Width = 187
      Height = 17
      Hint = 
        'N'#227'o selecionar esta op'#231#227'o se foi incluido cliente por importa'#231#227'o' +
        ' pelo site Mercos'
      Caption = 'Verificar pedidos na Mercos'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 7
    end
    object chkFatura: TCheckBox
      Left = 521
      Top = 17
      Width = 187
      Height = 17
      Hint = 
        'N'#227'o selecionar esta op'#231#227'o se foi incluido cliente por importa'#231#227'o' +
        ' pelo site Mercos'
      Caption = 'Enviar pedidos faturados'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 8
    end
  end
  object pgMercos: TPageControl [1]
    Left = 0
    Top = 74
    Width = 819
    Height = 387
    ActivePage = tsResultado
    Align = alClient
    TabOrder = 1
    object tsResultado: TTabSheet
      Caption = 'Resultado'
      object mResultado: TMemo
        Left = 0
        Top = 0
        Width = 811
        Height = 359
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object PanelAguarde: TPanel
        Left = 120
        Top = 203
        Width = 293
        Height = 56
        AutoSize = True
        Caption = 'PanelAguarde'
        Color = clWhite
        TabOrder = 1
        Visible = False
        object JvGIFAnimator2: TJvGIFAnimator
          Left = 1
          Top = 1
          Width = 291
          Height = 54
          AsyncDrawing = True
          Animate = True
          Center = True
          FrameIndex = 1
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
        object pmensagem: TPanel
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
    end
    object tsClientes: TTabSheet
      Caption = 'Clientes com erros'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 811
        Height = 359
        Align = alClient
        DataSource = dsCliente
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CLI_CODIGO'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_RAZAO'
            Width = 248
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_FANTASIA'
            Width = 242
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_ENDERE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_BAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_UF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MER_CLIENTE_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MER_MENSAGEM'
            Visible = True
          end>
      end
    end
    object tsProdutos: TTabSheet
      Caption = 'Produtos com erros'
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 811
        Height = 359
        Align = alClient
        DataSource = dsProdutos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_UND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPI_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MER_MENSAGEM'
            Visible = True
          end>
      end
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 56
    Top = 208
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 360
    Top = 360
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 296
    Top = 232
  end
  inherited FDTransac: TFDTransaction
    Left = 296
    Top = 344
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 368
    Top = 208
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_2'
      'DriverID=FB')
    Left = 99
    Top = 168
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'https://sandbox.mercos.com/api/v1/clientes'
    ContentType = 'application/json'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 680
    Top = 112
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkHTTPHEADER
        name = 'ApplicationToken'
        Value = '78b0a560-a1a3-11e9-a196-8631791684db'
      end
      item
        Kind = pkHTTPHEADER
        name = 'CompanyToken'
        Value = 'f642e2b4-a1a2-11e9-8316-a6938c95f7c0'
      end
      item
        Kind = pkREQUESTBODY
        name = 'body'
        Options = [poDoNotEncode]
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 416
    Top = 104
  end
  object RESTResponse1: TRESTResponse
    Left = 512
    Top = 104
  end
  object rdsaCliente: TRESTResponseDataSetAdapter
    Dataset = MtCliente
    FieldDefs = <>
    Response = RESTResponse1
    NestedElements = True
    Left = 528
    Top = 168
  end
  object MtCliente: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 624
    Top = 120
    object MtClienteenderecos_adicionais: TWideStringField
      FieldName = 'enderecos_adicionais'
      Size = 255
    end
    object MtClienteid: TWideStringField
      FieldName = 'id'
      Size = 255
    end
    object MtClientecomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 255
    end
    object MtClientetipo: TWideStringField
      FieldName = 'tipo'
      Size = 255
    end
    object MtClienterazao_social: TWideStringField
      FieldName = 'razao_social'
      Size = 255
    end
    object MtClienteobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 255
    end
    object MtClienteexcluido: TWideStringField
      FieldName = 'excluido'
      Size = 255
    end
    object MtClientetelefones: TWideStringField
      FieldName = 'telefones'
      Size = 255
    end
    object MtClientecnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 255
    end
    object MtClienteinscricao_estadual: TWideStringField
      FieldName = 'inscricao_estadual'
      Size = 255
    end
    object MtClientecontatos: TWideStringField
      FieldName = 'contatos'
      Size = 255
    end
    object MtClientesuframa: TWideStringField
      FieldName = 'suframa'
      Size = 255
    end
    object MtClientebairro: TWideStringField
      FieldName = 'bairro'
      Size = 255
    end
    object MtClienterua: TWideStringField
      FieldName = 'rua'
      Size = 255
    end
    object MtClientenumero: TWideStringField
      FieldName = 'numero'
      Size = 255
    end
    object MtClienteultima_alteracao: TWideStringField
      FieldName = 'ultima_alteracao'
      Size = 255
    end
    object MtClientecep: TWideStringField
      FieldName = 'cep'
      Size = 255
    end
    object MtClienteestado: TWideStringField
      FieldName = 'estado'
      Size = 255
    end
    object MtClienteemails: TWideStringField
      FieldName = 'emails'
      Size = 255
    end
    object MtClientenome_fantasia: TWideStringField
      FieldName = 'nome_fantasia'
      Size = 255
    end
    object MtClientecidade: TWideStringField
      FieldName = 'cidade'
      Size = 255
    end
    object MtClientenome_excecao_fiscal: TWideStringField
      FieldName = 'nome_excecao_fiscal'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = MtCliente
    Left = 696
    Top = 192
  end
  object RESTClient2: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'https://sandbox.mercos.com/api/v1/pedidos'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 408
    Top = 176
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient2
    Params = <
      item
        Kind = pkHTTPHEADER
        name = 'ApplicationToken'
        Value = '78b0a560-a1a3-11e9-a196-8631791684db'
      end
      item
        Kind = pkHTTPHEADER
        name = 'CompanyToken'
        Value = 'f642e2b4-a1a2-11e9-8316-a6938c95f7c0'
      end
      item
        Kind = pkURLSEGMENT
        name = 'status'
        Value = '2'
      end
      item
        Kind = pkURLSEGMENT
        name = 'alterado_apos'
        Value = '2019-06-15 12:20:12'
      end>
    Resource = '?alterado_apos={alterado_apos}&status=2'
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 424
    Top = 320
  end
  object RESTResponse2: TRESTResponse
    ContentType = 'application/json'
    Left = 480
    Top = 192
  end
  object rdsaPedido: TRESTResponseDataSetAdapter
    Dataset = mtPedido
    FieldDefs = <>
    Response = RESTResponse1
    NestedElements = True
    Left = 568
    Top = 184
  end
  object mtPedido: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 632
    Top = 184
    object mtPedidocliente_id: TWideStringField
      FieldName = 'cliente_id'
      Size = 255
    end
    object mtPedidostatus: TWideStringField
      FieldName = 'status'
      Size = 255
    end
    object mtPedidocondicao_pagamento: TWideStringField
      FieldName = 'condicao_pagamento'
      Size = 255
    end
    object mtPedidoforma_pagamento_id: TWideStringField
      FieldName = 'forma_pagamento_id'
      Size = 255
    end
    object mtPedidocontato_nome: TWideStringField
      FieldName = 'contato_nome'
      Size = 255
    end
    object mtPedidocliente_nome_fantasia: TWideStringField
      FieldName = 'cliente_nome_fantasia'
      Size = 255
    end
    object mtPedidocliente_estado: TWideStringField
      FieldName = 'cliente_estado'
      Size = 255
    end
    object mtPedidocliente_complemento: TWideStringField
      FieldName = 'cliente_complemento'
      Size = 255
    end
    object mtPedidostatus_custom_id: TWideStringField
      FieldName = 'status_custom_id'
      Size = 255
    end
    object mtPedidoobservacoes: TWideStringField
      FieldName = 'observacoes'
      Size = 255
    end
    object mtPedidonumero: TWideStringField
      FieldName = 'numero'
      Size = 255
    end
    object mtPedidorepresentada_razao_social: TWideStringField
      FieldName = 'representada_razao_social'
      Size = 255
    end
    object mtPedidoendereco_entrega: TWideStringField
      FieldName = 'endereco_entrega'
      Size = 255
    end
    object mtPedidoendereco_entregabairro: TWideStringField
      FieldName = 'endereco_entrega.bairro'
      Size = 255
    end
    object mtPedidoendereco_entregacomplemento: TWideStringField
      FieldName = 'endereco_entrega.complemento'
      Size = 255
    end
    object mtPedidoendereco_entregacep: TWideStringField
      FieldName = 'endereco_entrega.cep'
      Size = 255
    end
    object mtPedidoendereco_entregaendereco: TWideStringField
      FieldName = 'endereco_entrega.endereco'
      Size = 255
    end
    object mtPedidoendereco_entregacidade: TWideStringField
      FieldName = 'endereco_entrega.cidade'
      Size = 255
    end
    object mtPedidoendereco_entregaestado: TWideStringField
      FieldName = 'endereco_entrega.estado'
      Size = 255
    end
    object mtPedidoendereco_entregaid: TWideStringField
      FieldName = 'endereco_entrega.id'
      Size = 255
    end
    object mtPedidoendereco_entreganumero: TWideStringField
      FieldName = 'endereco_entrega.numero'
      Size = 255
    end
    object mtPedidodata_emissao: TWideStringField
      FieldName = 'data_emissao'
      Size = 255
    end
    object mtPedidorepresentada_nome_fantasia: TWideStringField
      FieldName = 'representada_nome_fantasia'
      Size = 255
    end
    object mtPedidocliente_inscricao_estadual: TWideStringField
      FieldName = 'cliente_inscricao_estadual'
      Size = 255
    end
    object mtPedidostatus_faturamento: TWideStringField
      FieldName = 'status_faturamento'
      Size = 255
    end
    object mtPedidocliente_cep: TWideStringField
      FieldName = 'cliente_cep'
      Size = 255
    end
    object mtPedidototal: TWideStringField
      FieldName = 'total'
      Size = 255
    end
    object mtPedidoid: TWideStringField
      FieldName = 'id'
      Size = 255
    end
    object mtPedidocriador_id: TWideStringField
      FieldName = 'criador_id'
      Size = 255
    end
    object mtPedidorepresentada_id: TWideStringField
      FieldName = 'representada_id'
      Size = 255
    end
    object mtPedidotipo_pedido_id: TWideStringField
      FieldName = 'tipo_pedido_id'
      Size = 255
    end
    object mtPedidotransportadora_id: TWideStringField
      FieldName = 'transportadora_id'
      Size = 255
    end
    object mtPedidoultima_alteracao: TWideStringField
      FieldName = 'ultima_alteracao'
      Size = 255
    end
    object mtPedidocliente_rua: TWideStringField
      FieldName = 'cliente_rua'
      Size = 255
    end
    object mtPedidoitems: TWideStringField
      FieldName = 'items'
      Size = 255
    end
    object mtPedidocliente_cidade: TWideStringField
      FieldName = 'cliente_cidade'
      Size = 255
    end
    object mtPedidocliente_cnpj: TWideStringField
      FieldName = 'cliente_cnpj'
      Size = 255
    end
    object mtPedidotransportadora_nome: TWideStringField
      FieldName = 'transportadora_nome'
      Size = 255
    end
    object mtPedidoextras: TWideStringField
      FieldName = 'extras'
      Size = 255
    end
    object mtPedidocondicao_pagamento_id: TWideStringField
      FieldName = 'condicao_pagamento_id'
      Size = 255
    end
    object mtPedidocliente_suframa: TWideStringField
      FieldName = 'cliente_suframa'
      Size = 255
    end
    object mtPedidonome_contato: TWideStringField
      FieldName = 'nome_contato'
      Size = 255
    end
    object mtPedidocliente_razao_social: TWideStringField
      FieldName = 'cliente_razao_social'
      Size = 255
    end
    object mtPedidocliente_numero: TWideStringField
      FieldName = 'cliente_numero'
      Size = 255
    end
    object mtPedidocliente_bairro: TWideStringField
      FieldName = 'cliente_bairro'
      Size = 255
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 752
    Top = 120
  end
  object rdsaProdutos: TRESTResponseDataSetAdapter
    Dataset = mtProdutos
    FieldDefs = <>
    Response = RESTResponse1
    Left = 632
    Top = 368
  end
  object mtProdutos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 632
    Top = 296
    object mtProdutostipo_ipi: TWideStringField
      FieldName = 'tipo_ipi'
      Size = 255
    end
    object mtProdutoscodigo_ncm: TWideStringField
      FieldName = 'codigo_ncm'
      Size = 255
    end
    object mtProdutospreco_tabela: TWideStringField
      FieldName = 'preco_tabela'
      Size = 255
    end
    object mtProdutosipi: TWideStringField
      FieldName = 'ipi'
      Size = 255
    end
    object mtProdutoscomissao: TWideStringField
      FieldName = 'comissao'
      Size = 255
    end
    object mtProdutosexcluido: TWideStringField
      FieldName = 'excluido'
      Size = 255
    end
    object mtProdutosid: TWideStringField
      FieldName = 'id'
      Size = 255
    end
    object mtProdutosnome: TWideStringField
      FieldName = 'nome'
      Size = 255
    end
    object mtProdutosunidade: TWideStringField
      FieldName = 'unidade'
      Size = 255
    end
    object mtProdutospeso_bruto: TWideStringField
      FieldName = 'peso_bruto'
      Size = 255
    end
    object mtProdutospreco_minimo: TWideStringField
      FieldName = 'preco_minimo'
      Size = 255
    end
    object mtProdutosmoeda: TWideStringField
      FieldName = 'moeda'
      Size = 255
    end
    object mtProdutossaldo_estoque: TWideStringField
      FieldName = 'saldo_estoque'
      Size = 255
    end
    object mtProdutosobservacoes: TWideStringField
      FieldName = 'observacoes'
      Size = 255
    end
    object mtProdutosmultiplo: TWideStringField
      FieldName = 'multiplo'
      Size = 255
    end
    object mtProdutosultima_alteracao: TWideStringField
      FieldName = 'ultima_alteracao'
      Size = 255
    end
    object mtProdutosst: TWideStringField
      FieldName = 'st'
      Size = 255
    end
    object mtProdutoscodigo: TWideStringField
      FieldName = 'codigo'
      Size = 255
    end
    object mtProdutosativo: TWideStringField
      FieldName = 'ativo'
      Size = 255
    end
  end
  object qClientes: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT cli_codigo, cli_razao, cli_fantasia, cli_endere, cli_bair' +
        'ro, cli_cidade, cli_uf, mer_cliente_id , mer_mensagem'
      ' FROM cli0000'
      'where cli_inativo = '#39'A'#39
      'and mer_cliente_id is null')
    Left = 171
    Top = 264
    object qClientesCLI_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object qClientesCLI_RAZAO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI_RAZAO'
      Size = 55
    end
    object qClientesCLI_FANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'CLI_FANTASIA'
      Origin = 'CLI_FANTASIA'
      Size = 55
    end
    object qClientesCLI_ENDERE: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLI_ENDERE'
      Origin = 'CLI_ENDERE'
      Size = 50
    end
    object qClientesCLI_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI_BAIRRO'
      Size = 25
    end
    object qClientesCLI_CIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      Size = 30
    end
    object qClientesCLI_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLI_UF'
      Origin = 'CLI_UF'
      Size = 2
    end
    object qClientesMER_CLIENTE_ID: TIntegerField
      DisplayLabel = 'C'#243'digo Mercos'
      FieldName = 'MER_CLIENTE_ID'
      Origin = 'MER_CLIENTE_ID'
    end
    object qClientesMER_MENSAGEM: TStringField
      DisplayLabel = 'Mensagem'
      FieldName = 'MER_MENSAGEM'
      Origin = 'MER_MENSAGEM'
      Size = 4000
    end
  end
  object dsCliente: TDataSource
    DataSet = qClientes
    Left = 220
    Top = 274
  end
  object qProdutos: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        ' SELECT pr.prd_Refer, prd_descri, prd_und,ipi_codigo, mer_mensag' +
        'em'
      '    FROM prd0000 pr'
      
        ' JOIN PRD_TIPO tp ON (tp.PTI_CODIGO = pr.PTI_CODIGO AND tp.PTI_D' +
        'ISPONIVEL_VENDAS = '#39'S'#39')   '
      'where mer_produto_id is null'
      'and prd_status = '#39'A'#39)
    Left = 171
    Top = 336
    object qProdutosPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object qProdutosPRD_DESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object qProdutosPRD_UND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      Size = 3
    end
    object qProdutosIPI_CODIGO: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'IPI_CODIGO'
      Origin = 'IPI_CODIGO'
      Size = 8
    end
    object qProdutosMER_MENSAGEM: TStringField
      DisplayLabel = 'Mensagem Mercos'
      FieldName = 'MER_MENSAGEM'
      Origin = 'MER_MENSAGEM'
      Size = 400
    end
  end
  object dsProdutos: TDataSource
    DataSet = qProdutos
    Left = 228
    Top = 338
  end
end
