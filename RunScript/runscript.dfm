object FrmScripts: TFrmScripts
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Atualiza'#231#227'o do banco Adjuntor vers'#227'o 1.Beta'
  ClientHeight = 444
  ClientWidth = 987
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 360
    Top = 38
    Width = 37
    Height = 13
    Caption = 'Vers'#227'o:'
  end
  object Label2: TLabel
    Left = 496
    Top = 38
    Width = 31
    Height = 13
    Caption = 'patch:'
  end
  object Memo1: TMemo
    Left = 8
    Top = 35
    Width = 334
    Height = 401
    ScrollBars = ssVertical
    TabOrder = 0
    OnChange = Memo1Change
  end
  object btnAutomatico: TButton
    Left = 883
    Top = 5
    Width = 96
    Height = 25
    Caption = 'Rodar autom'#225'tico'
    TabOrder = 1
    OnClick = btnAutomaticoClick
  end
  object Button1: TButton
    Left = 348
    Top = 374
    Width = 75
    Height = 25
    Caption = 'TESTE'
    TabOrder = 2
    Visible = False
  end
  object PanelAguarde: TPanel
    Left = 17
    Top = 357
    Width = 293
    Height = 56
    AutoSize = True
    Caption = 'PanelAguarde'
    Color = clWhite
    TabOrder = 3
    Visible = False
    object JvGIFAnimator1: TJvGIFAnimator
      Left = 1
      Top = 1
      Width = 291
      Height = 54
      AsyncDrawing = True
      Animate = True
      Center = True
      FrameIndex = 12
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
      Left = 5
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
  object cbConfig: TComboBox
    Left = 348
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 4
    Text = 'Adjutor'
    OnChange = cbConfigChange
  end
  object chkBackup: TCheckBox
    Left = 499
    Top = 10
    Width = 97
    Height = 17
    Caption = 'Fazer backup'
    TabOrder = 5
  end
  object chkIBPT: TCheckBox
    Left = 684
    Top = 10
    Width = 185
    Height = 17
    Caption = 'Atualizar IBPT'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object chkCest: TCheckBox
    Left = 586
    Top = 10
    Width = 92
    Height = 17
    Caption = 'Atualizar CEST'
    TabOrder = 6
  end
  object chkListScripts: TCheckListBox
    Left = 348
    Top = 64
    Width = 631
    Height = 372
    Columns = 2
    ItemHeight = 13
    TabOrder = 8
  end
  object btnManual: TButton
    Left = 734
    Top = 33
    Width = 96
    Height = 25
    Hint = 'Rodar os scripts selecionados manualmente'
    Caption = 'Rodar manual'
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = btnManualClick
  end
  object spVersao: TSpinEdit
    Left = 397
    Top = 35
    Width = 93
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 10
    Value = 500
  end
  object spatch: TSpinEdit
    Left = 533
    Top = 34
    Width = 93
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 11
    Value = 0
  end
  object Button3: TButton
    Left = 632
    Top = 33
    Width = 96
    Height = 25
    Caption = 'Listar'
    TabOrder = 12
    OnClick = Button3Click
  end
  object btnExecutarScript: TButton
    Left = 883
    Top = 33
    Width = 96
    Height = 25
    Caption = 'Executar script'
    TabOrder = 13
    OnClick = btnExecutarScriptClick
  end
  object pnlExecutar: TPanel
    Left = 280
    Top = 76
    Width = 665
    Height = 325
    Caption = 'pnlExecutar'
    TabOrder = 14
    object mScript: TMemo
      Left = 0
      Top = 2
      Width = 657
      Height = 279
      Lines.Strings = (
        'mScript')
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object btnExecutar: TButton
      Left = 495
      Top = 288
      Width = 75
      Height = 25
      Caption = 'Executar'
      TabOrder = 1
      OnClick = btnExecutarClick
    end
    object btnCancelar: TButton
      Left = 576
      Top = 287
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
  end
  object btnteste: TButton
    Left = 192
    Top = 32
    Width = 75
    Height = 25
    Caption = 'btnteste'
    TabOrder = 15
    Visible = False
    OnClick = btntesteClick
  end
  object btnConexao: TButton
    Left = 8
    Top = 8
    Width = 105
    Height = 25
    Caption = 'Testar Conex'#227'o'
    TabOrder = 16
    OnClick = btnConexaoClick
  end
  object FDConnec: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'Server=192.01.23'
      'OSAuthent=No'
      'Port=3050'
      'OpenMode=OpenOrCreate'
      'DriverID=FB')
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvUpdateChngFields, uvUpdateMode, uvGeneratorName]
    TxOptions.AutoStop = False
    Transaction = FDTransaction1
    UpdateTransaction = FDTransaction1
    Left = 280
    Top = 64
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 360
    Top = 96
  end
  object FDGUIxScriptDialog1: TFDGUIxScriptDialog
    Provider = 'Forms'
    Left = 360
    Top = 152
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 368
    Top = 200
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Developer\Adjutor\RunScript\fbclient.dll'
    Left = 352
    Top = 256
  end
  object FDQuery1: TFDQuery
    Connection = FDConnec
    Left = 160
    Top = 32
  end
  object FDScript1: TFDScript
    SQLScripts = <>
    Connection = FDConnec
    ScriptOptions.CommitEachNCommands = 1
    ScriptOptions.EchoCommandTrim = 0
    ScriptOptions.ColumnHeadings = False
    ScriptOptions.MaxStringWidth = 100000
    ScriptOptions.ConsoleOutput = False
    ScriptOptions.SpoolOutput = smOnAppend
    ScriptOptions.DropNonexistObj = False
    ScriptOptions.FileEncoding = ecUTF8
    ScriptOptions.FileEndOfLine = elWindows
    ScriptOptions.DriverID = 'FB'
    ScriptOptions.ClientLib = 'fbclient.dll'
    ScriptOptions.CharacterSet = 'ISO8859_1'
    ScriptOptions.SQLDialect = 3
    Params = <>
    Macros = <>
    FormatOptions.AssignedValues = [fvStrsTrim, fvInlineDataSize, fvDataSnapCompatibility, fvStrsTrim2Len]
    FormatOptions.StrsTrim = False
    FormatOptions.InlineDataSize = 100000
    FormatOptions.DataSnapCompatibility = True
    ResourceOptions.AssignedValues = [rvServerOutput, rvPersistent, rvSilentMode, rvKeepConnection]
    ResourceOptions.Persistent = True
    OnSpoolPut = FDScript1SpoolPut
    OnError = FDScript1Error
    BeforeExecute = FDScript1BeforeExecute
    AfterExecute = FDScript1AfterExecute
    Left = 112
    Top = 216
  end
  object FDIBBackup1: TFDIBBackup
    DriverLink = FDPhysFBDriverLink1
    Left = 208
    Top = 104
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnec
    Left = 280
  end
  object FDTransac: TFDTransaction
    Left = 280
    Top = 136
  end
  object ACBrIBPTax1: TACBrIBPTax
    ProxyPort = '8080'
    IsUTF8 = True
    Left = 64
    Top = 88
  end
  object FdIbpt: TFDQuery
    AutoCalcFields = False
    CachedUpdates = True
    Connection = FDConnec
    SQL.Strings = (
      'SELECT * FROM IBPT0000')
    Left = 496
    Top = 176
    object FdIbptIBPT_ID: TIntegerField
      FieldName = 'IBPT_ID'
      Origin = 'IBPT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FdIbptIBPT_NCM: TStringField
      FieldName = 'IBPT_NCM'
      Origin = 'IBPT_NCM'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 10
    end
    object FdIbptIBPT_EX: TStringField
      FieldName = 'IBPT_EX'
      Origin = 'IBPT_EX'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object FdIbptIBPT_TABELA: TIntegerField
      FieldName = 'IBPT_TABELA'
      Origin = 'IBPT_TABELA'
      ProviderFlags = [pfInUpdate]
    end
    object FdIbptIBPT_DESCRICAO: TStringField
      FieldName = 'IBPT_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object FdIbptIBPT_ALIQFEDNACIONAL: TCurrencyField
      FieldName = 'IBPT_ALIQFEDNACIONAL'
      Origin = 'IBPT_ALIQFEDNACIONAL'
      ProviderFlags = [pfInUpdate]
    end
    object FdIbptIBPT_ALIQFEDIMPORTADO: TCurrencyField
      FieldName = 'IBPT_ALIQFEDIMPORTADO'
      Origin = 'IBPT_ALIQFEDIMPORTADO'
      ProviderFlags = [pfInUpdate]
    end
    object FdIbptIBPT_ALIQESTADUAL: TCurrencyField
      FieldName = 'IBPT_ALIQESTADUAL'
      Origin = 'IBPT_ALIQESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object FdIbptIBPT_ALIQMUNICIPAL: TCurrencyField
      FieldName = 'IBPT_ALIQMUNICIPAL'
      Origin = 'IBPT_ALIQMUNICIPAL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object tmrTime: TTimer
    Enabled = False
    Interval = 15000
    OnTimer = tmrTimeTimer
    Left = 144
    Top = 104
  end
end
