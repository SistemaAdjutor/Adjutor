inherited frmCep: TfrmCep
  Caption = 'Busca Cep/C'#243'digos IBGE (viacep.com.br)'
  ClientHeight = 389
  ClientWidth = 693
  ExplicitWidth = 701
  ExplicitHeight = 417
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHint: TPanel
    Top = 374
    Width = 693
    ExplicitTop = 374
    ExplicitWidth = 693
  end
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 0
    Width = 693
    Height = 338
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Consulta por CEP'
      object Label1: TLabel
        Left = 16
        Top = 0
        Width = 97
        Height = 14
        Caption = 'Buscar pelo CEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object ECEP: TEdit
        Left = 16
        Top = 17
        Width = 129
        Height = 24
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvSpace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Button1: TButton
        Left = 150
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 47
        Width = 396
        Height = 248
        Caption = 'Endere'#231'o:'
        TabOrder = 2
        object eLog: TLabeledEdit
          Left = 20
          Top = 40
          Width = 360
          Height = 21
          EditLabel.Width = 59
          EditLabel.Height = 13
          EditLabel.Caption = 'Logradouro:'
          ReadOnly = True
          TabOrder = 0
        end
        object eCompl: TLabeledEdit
          Left = 20
          Top = 83
          Width = 121
          Height = 21
          EditLabel.Width = 69
          EditLabel.Height = 13
          EditLabel.Caption = 'Complemento:'
          ReadOnly = True
          TabOrder = 1
        end
        object eBairro: TLabeledEdit
          Left = 20
          Top = 127
          Width = 360
          Height = 21
          EditLabel.Width = 28
          EditLabel.Height = 13
          EditLabel.Caption = 'Bairro'
          ReadOnly = True
          TabOrder = 2
        end
        object edLocalidade: TLabeledEdit
          Left = 20
          Top = 171
          Width = 360
          Height = 21
          EditLabel.Width = 50
          EditLabel.Height = 13
          EditLabel.Caption = 'Localidade'
          ReadOnly = True
          TabOrder = 3
        end
        object edUF: TLabeledEdit
          Left = 20
          Top = 215
          Width = 49
          Height = 21
          EditLabel.Width = 17
          EditLabel.Height = 13
          EditLabel.Caption = 'UF:'
          ReadOnly = True
          TabOrder = 4
        end
        object edIbge: TLabeledEdit
          Left = 84
          Top = 215
          Width = 121
          Height = 21
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'IBGE:'
          ReadOnly = True
          TabOrder = 5
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta por Endere'#231'o'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 685
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Button2: TButton
          Left = 535
          Top = 19
          Width = 75
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 3
          OnClick = Button2Click
        end
        object ed1: TLabeledEdit
          Left = 9
          Top = 21
          Width = 33
          Height = 21
          EditLabel.Width = 17
          EditLabel.Height = 13
          EditLabel.Caption = 'UF:'
          TabOrder = 0
        end
        object ed2: TLabeledEdit
          Left = 44
          Top = 21
          Width = 169
          Height = 21
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade:'
          TabOrder = 1
        end
        object ed3: TLabeledEdit
          Left = 217
          Top = 21
          Width = 309
          Height = 21
          EditLabel.Width = 59
          EditLabel.Height = 13
          EditLabel.Caption = 'Logradouro:'
          TabOrder = 2
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 60
        Width = 685
        Height = 250
        Align = alClient
        DataSource = dsConsultaCep
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'localidade'
            Width = 143
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bairro'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'uf'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'logradouro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'complemento'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ibge'
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 338
    Width = 693
    Height = 36
    Align = alBottom
    Alignment = taLeftJustify
    Anchors = [akLeft, akRight]
    TabOrder = 2
    DesignSize = (
      693
      36)
    object btnSelect: TSpeedButton
      Left = 412
      Top = 5
      Width = 135
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK (Ctrl+Enter)'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = btnSelectClick
      ExplicitLeft = 398
    end
    object btSair: TSpeedButton
      Left = 553
      Top = 6
      Width = 127
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Abandona (ESC)'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      OnClick = btSairClick
      ExplicitLeft = 539
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 600
    Top = 56
  end
  inherited DBConn: TSQLConnection
    Left = 600
    Top = 113
  end
  object XMLBuscaCep: TXMLDocument
    Left = 452
    Top = 128
  end
  object IdHTTP: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 424
    Top = 192
  end
  object cdsConsultaCep: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'uf;localidade;bairro;logradouro;complemento'
    Params = <>
    Left = 492
    Top = 64
    object cdsConsultaCepcep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object cdsConsultaCeplogradouro: TStringField
      DisplayWidth = 50
      FieldName = 'logradouro'
      Size = 50
    end
    object cdsConsultaCepcomplemento: TStringField
      FieldName = 'complemento'
      Size = 32
    end
    object cdsConsultaCepbairro: TStringField
      DisplayWidth = 25
      FieldName = 'bairro'
      Size = 25
    end
    object cdsConsultaCeplocalidade: TStringField
      DisplayWidth = 25
      FieldName = 'localidade'
      Size = 25
    end
    object cdsConsultaCepuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object cdsConsultaCepibge: TStringField
      FieldName = 'ibge'
      Size = 7
    end
  end
  object dsConsultaCep: TDataSource
    DataSet = cdsConsultaCep
    Left = 556
    Top = 56
  end
end
