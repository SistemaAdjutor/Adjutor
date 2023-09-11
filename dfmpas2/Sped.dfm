inherited FrmSped: TFrmSped
  Left = 413
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = ' Sped Contribui'#231#245'es PIS/COFINS'
  ClientHeight = 602
  ClientWidth = 972
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnResize = FormResize
  ExplicitWidth = 988
  ExplicitHeight = 640
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 41
    Width = 972
    Height = 48
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
      Caption = 'Ficalidade:'
    end
    object lblLocal: TLabel
      Left = 424
      Top = 24
      Width = 84
      Height = 14
      Caption = 'Local do Arquivo:'
    end
    object btnFolder: TSpeedButton
      Left = 803
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
        'B')
    end
    object cbbFinalidade: TComboBox
      Left = 312
      Top = 21
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
      Left = 512
      Top = 21
      Width = 289
      Height = 22
      TabOrder = 4
      Text = 'edtLocal'
    end
    object btnGerar: TBitBtn
      Left = 848
      Top = 18
      Width = 100
      Height = 25
      Caption = 'Gerar Sped'
      TabOrder = 5
      OnClick = btnGerarClick
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 972
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvNone
    Caption = ' Sped Contribui'#231#245'es PIS/COFINS'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Image1: TImage
      Left = 922
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
    end
  end
  object pg: TPageControl [2]
    Left = 0
    Top = 89
    Width = 972
    Height = 513
    ActivePage = tsArquivoGerado
    Align = alClient
    TabOrder = 2
    object tsArquivoGerado: TTabSheet
      Caption = 'Arquivo gerado'
      object mmoSpedContribuicoes: TMemo
        Left = 0
        Top = 0
        Width = 964
        Height = 484
        Align = alClient
        Lines.Strings = (
          'Memo1')
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object tserros: TTabSheet
      Caption = 'Erros'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 964
        Height = 484
        Align = alClient
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
      end
    end
  end
  object JvBrowseForFolderDialog1: TJvBrowseForFolderDialog
    Left = 264
    Top = 240
  end
  object CdsEmpresa: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 558
    Top = 122
  end
  object CdsContator: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 686
    Top = 138
  end
  object CdsParticipantes: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 566
    Top = 194
  end
  object CdsUnidadeMedida: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 566
    Top = 258
  end
  object CdsProdutosServicos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 702
    Top = 202
  end
  object CdsNotasFiscais: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 694
    Top = 282
  end
  object CdsNotasFiscaisItens: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 558
    Top = 330
  end
  object CdsNaturezaOperacao: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 558
    Top = 410
  end
  object CdsC180: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 710
    Top = 346
  end
  object CdsC181: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 702
    Top = 402
  end
  object CdsC185: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 566
    Top = 490
  end
  object CdsF550: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 702
    Top = 466
  end
  object Cds1900: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 814
    Top = 442
  end
  object ACBrSPEDPisCofins1: TACBrSPEDPisCofins
    Path = '.\'
    Arquivo = 'ACBrSPEDPisCofins.txt'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 264
    Top = 160
  end
  object cdsPlanoContabil: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = []
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 456
    Top = 401
  end
  object qArquivo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select emp_codigo, mes,ano,arq FROM sped_arquivos')
    SQLConnection = DBConn
    Left = 164
    Top = 338
  end
  object dspArquivo: TDataSetProvider
    DataSet = qArquivo
    Left = 108
    Top = 338
  end
  object cdsArquivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspArquivo'
    Left = 52
    Top = 338
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
end
