inherited frmPesqManifNFe: TfrmPesqManifNFe
  Caption = 'Manifesta'#231#227'o de NFe'
  ClientHeight = 483
  ClientWidth = 1314
  ExplicitWidth = 1322
  ExplicitHeight = 510
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 1314
    ExplicitWidth = 1314
    inherited btnExclui: TSpeedButton
      Hint = 'Download XML'
      Caption = 'Download XML'
      Glyph.Data = {00000000}
      OnClick = btnExcluiClick
    end
    inherited btnNovo: TSpeedButton
      Hint = 'Verificar no sefaz notas emitidas para o CNPJ da empresa'
      Caption = 'Verificar CNPJ'
    end
    inherited btnConsulta: TSpeedButton
      Hint = 'DANFE'
      Caption = 'DANFE (F9)'
      Visible = True
      OnClick = btnConsultaClick
    end
    inherited btnEdita: TSpeedButton
      Caption = 'Manifestar'
      OnClick = btnEditaClick
    end
    inherited btnFechar: TSpeedButton
      Left = 1250
      ExplicitLeft = 947
    end
    inherited btnImprime: TSpeedButton
      Left = 1093
      ExplicitLeft = 790
    end
    inherited btnExtra: TSpeedButton
      Caption = 'Exportar XML'
      Enabled = True
      Visible = True
      OnClick = btnExtraClick
    end
    inherited btnExcel: TSpeedButton
      Left = 1172
      ExplicitLeft = 869
    end
  end
  inherited PageControl1: TPageControl
    Width = 1314
    Height = 406
    ExplicitWidth = 1314
    ExplicitHeight = 406
    inherited tsNotas: TTabSheet
      ExplicitWidth = 1306
      ExplicitHeight = 378
      inherited pnControle: TPanel
        Width = 1306
        ExplicitWidth = 1306
        inherited pnFiltro: TPanel
          Width = 1306
          Height = 79
          Align = alClient
          ExplicitWidth = 1306
          ExplicitHeight = 79
          inherited pn1: TPanel
            Top = 0
            Width = 1306
            Height = 79
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 1306
            ExplicitHeight = 79
            DesignSize = (
              1306
              79)
            inherited btnPesquisa: TSpeedButton
              Left = 1208
              Anchors = [akTop, akRight]
              ExplicitLeft = 891
            end
            inherited btnLimpar: TSpeedButton
              Left = 1208
              Anchors = [akTop, akRight]
              ExplicitLeft = 891
            end
            object labelpesquisa: TLabeledEdit
              Left = 16
              Top = 24
              Width = 801
              Height = 21
              EditLabel.Width = 206
              EditLabel.Height = 13
              EditLabel.Caption = 'busca chave ou CNPJ ou nome da empresa'
              TabOrder = 0
            end
            object chkconfirmada: TCheckBox
              Left = 16
              Top = 51
              Width = 265
              Height = 17
              Caption = 'mostrar somente NFe confirmadas ou com ci'#234'ncia'
              TabOrder = 1
              OnClick = chkconfirmadaClick
            end
            object ChkDownloadXML: TCheckBox
              Left = 304
              Top = 51
              Width = 177
              Height = 17
              Caption = 'manifesto com download XML'
              TabOrder = 2
              OnClick = ChkDownloadXMLClick
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Width = 1306
        Height = 299
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu1
        OnCellClick = DBGridCellClick
        OnDrawColumnCell = DBGridDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'selecionado'
            Title.Alignment = taCenter
            Title.Caption = '*'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MFE_DataEmissao'
            Title.Caption = 'Data emiss'#227'o'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MFE_CHAVE'
            Title.Caption = 'Chave'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MFE_cnpjCPF'
            Title.Caption = 'CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MFE_VLNF'
            Title.Caption = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MFE_NOMEEMPRESA'
            Title.Caption = 'Empresa'
            Width = 194
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MFE_IE'
            Title.Caption = 'IE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MFE_PROTOCOLO'
            Title.Caption = 'Protocolo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MFE_STATUS'
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MFE_DataRecebimento'
            Title.Caption = 'Data recebimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MFE_SitNFE'
            Title.Caption = 'Situa'#231#227'o NF-e'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MFE_TIPONF'
            Title.Caption = 'Tipo Nota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MFE_NSU'
            Title.Caption = 'NSU'
            Visible = True
          end>
      end
      object PanelAguarde: TPanel
        Left = 120
        Top = 100
        Width = 293
        Height = 56
        AutoSize = True
        Caption = 'PanelAguarde'
        Color = clWhite
        TabOrder = 2
        Visible = False
        object JvGIFAnimator1: TJvGIFAnimator
          Left = 1
          Top = 1
          Width = 291
          Height = 54
          AsyncDrawing = True
          Animate = True
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
        object pinfo: TPanel
          Left = 6
          Top = 7
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
  end
  inherited Panel2: TPanel
    Top = 447
    Width = 1314
    ExplicitTop = 447
    ExplicitWidth = 1314
    inherited btnSelect: TSpeedButton
      Left = 1166
      ExplicitLeft = 863
    end
  end
  inherited qBusco: TSQLQuery
    Left = 236
    Top = 257
  end
  inherited dspBusco: TDataSetProvider
    Left = 276
    Top = 257
  end
  inherited cdsBusco: TClientDataSet
    Left = 316
    Top = 249
    object cdsBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsBuscoMFE_REGISTRO: TIntegerField
      FieldName = 'MFE_REGISTRO'
    end
    object cdsBuscoMFE_NSU: TStringField
      FieldName = 'MFE_NSU'
      Size = 15
    end
    object cdsBuscoMFE_DataEmissao: TSQLTimeStampField
      FieldName = 'MFE_DataEmissao'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsBuscoMFE_CHAVE: TStringField
      FieldName = 'MFE_CHAVE'
      Size = 44
    end
    object cdsBuscoMFE_cnpjCPF: TStringField
      FieldName = 'MFE_cnpjCPF'
      OnGetText = cdsBuscoMFE_cnpjCPFGetText
      Size = 18
    end
    object cdsBuscoMFE_VLNF: TFMTBCDField
      FieldName = 'MFE_VLNF'
      Precision = 18
      Size = 5
    end
    object cdsBuscoMFE_NOMEEMPRESA: TStringField
      FieldName = 'MFE_NOMEEMPRESA'
      Size = 100
    end
    object cdsBuscoMFE_IE: TStringField
      FieldName = 'MFE_IE'
      Size = 18
    end
    object cdsBuscoMFE_PROTOCOLO: TStringField
      FieldName = 'MFE_PROTOCOLO'
      Size = 15
    end
    object cdsBuscoMFE_STATUS: TIntegerField
      FieldName = 'MFE_STATUS'
      OnGetText = cdsBuscoMFE_STATUSGetText
    end
    object cdsBuscoMFE_DataRecebimento: TSQLTimeStampField
      FieldName = 'MFE_DataRecebimento'
    end
    object cdsBuscoMFE_SitNFE: TStringField
      FieldName = 'MFE_SitNFE'
      Size = 15
    end
    object cdsBuscoMFE_TIPONF: TStringField
      FieldName = 'MFE_TIPONF'
      Size = 7
    end
    object cdsBuscoselecionado: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'selecionado'
      OnGetText = cdsBuscoselecionadoGetText
    end
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFEFR1
    Left = 508
    Top = 177
  end
  object ACBrNFeDANFEFR1: TACBrNFeDANFEFR
    MostraSetup = True
    Sistema = 'Novi Sistemas'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = ACBrNFe1
    TipoDANFE = tiSemGeracao
    EspessuraBorda = 1
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    ThreadSafe = False
    Left = 412
    Top = 241
  end
  object XMLDocument1: TXMLDocument
    Left = 132
    Top = 249
  end
  object cdsTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMFE'
    Left = 188
    Top = 329
    object cdsTempEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsTempMFE_REGISTRO: TIntegerField
      FieldName = 'MFE_REGISTRO'
    end
    object cdsTempMFE_DATA_REGISTRO: TSQLTimeStampField
      FieldName = 'MFE_DATA_REGISTRO'
    end
    object cdsTempMFE_CHAVE: TStringField
      FieldName = 'MFE_CHAVE'
      Size = 44
    end
    object cdsTempMFE_NSU: TStringField
      FieldName = 'MFE_NSU'
      Size = 15
    end
    object cdsTempMFE_DataEmissao: TSQLTimeStampField
      FieldName = 'MFE_DataEmissao'
    end
    object cdsTempMFE_NOMEEMPRESA: TStringField
      FieldName = 'MFE_NOMEEMPRESA'
      Size = 100
    end
    object cdsTempMFE_IE: TStringField
      FieldName = 'MFE_IE'
      Size = 18
    end
    object cdsTempMFE_cnpjcpf: TStringField
      FieldName = 'MFE_cnpjCPF'
      Size = 18
    end
    object cdsTempMFE_PROTOCOLO: TStringField
      FieldName = 'MFE_PROTOCOLO'
      Size = 15
    end
    object cdsTempMFE_VLNF: TFMTBCDField
      FieldName = 'MFE_VLNF'
      Precision = 18
      Size = 5
    end
    object cdsTempMFE_DataRecebimento: TSQLTimeStampField
      FieldName = 'MFE_DataRecebimento'
    end
    object cdsTempMFE_SitNFE: TStringField
      FieldName = 'MFE_SitNFE'
      Size = 15
    end
    object cdsTempMFE_STATUS: TIntegerField
      FieldName = 'MFE_STATUS'
    end
    object cdsTempMFE_TIPONF: TStringField
      FieldName = 'MFE_TIPONF'
      Size = 7
    end
  end
  object qMFE: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'REG'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT EMP_CODIGO, MFE_REGISTRO, MFE_DATA_REGISTRO, MFE_NSU, MFE' +
        '_CHAVE, MFE_DATAEMISSAO, MFE_NOMEEMPRESA, MFE_IE, MFE_CNPJCPF, M' +
        'FE_PROTOCOLO, MFE_VLNF, MFE_DATARECEBIMENTO, MFE_SITNFE, MFE_STA' +
        'TUS, MFE_TIPONF'
      'FROM MANIFESTACAONFE'
      'WHERE MFE_REGISTRO = :REG'
      '')
    SQLConnection = DBConn
    Left = 300
    Top = 321
  end
  object dspMFE: TDataSetProvider
    DataSet = qMFE
    Left = 252
    Top = 321
  end
  object JvSelectDirectory1: TJvSelectDirectory
    Left = 752
    Top = 230
  end
  object PopupMenu1: TPopupMenu
    Left = 404
    Top = 321
    object Marcartodos1: TMenuItem
      Caption = 'Marcar todos'
      OnClick = Marcartodos1Click
    end
    object desmarcartodos1: TMenuItem
      Caption = 'desmarcar todos'
      OnClick = desmarcartodos1Click
    end
  end
end
