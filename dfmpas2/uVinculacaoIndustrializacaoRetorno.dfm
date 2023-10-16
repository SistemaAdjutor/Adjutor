inherited FrmVinculacaoIndustrializacaoRetorno: TFrmVinculacaoIndustrializacaoRetorno
  Left = 242
  Top = 72
  Caption = 'Vincula'#231#227'o de Retornos de Industrializa'#231#227'o'
  ClientHeight = 593
  ClientWidth = 1049
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  Position = poMainFormCenter
  ExplicitWidth = 1065
  ExplicitHeight = 632
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 57
    Width = 1049
    Height = 427
    Align = alTop
    Caption = 'Industrializa'#231#245'es Solicitadas e Dispon'#237'veis'
    TabOrder = 0
    object dbgrdNotasDisponveis: TDBGrid
      Left = 2
      Top = 16
      Width = 1045
      Height = 409
      Align = alClient
      Color = clWhite
      DataSource = dsNotaDisponivel
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = pmNotasDisponiveis
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrdNotasDisponveisDrawColumnCell
      OnDblClick = dbgrdNotasDisponveisDblClick
      OnKeyPress = dbgrdNotasDisponveisKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Selecao'
          Title.Alignment = taCenter
          Title.Caption = '*'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_NOTANUMBER'
          Title.Alignment = taCenter
          Title.Caption = 'Nota Fiscal'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_MODELO_NF'
          Title.Alignment = taCenter
          Title.Caption = 'Modelo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_SERIE'
          Title.Alignment = taCenter
          Title.Caption = 'S'#233'rie'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_CFOP'
          Title.Alignment = taCenter
          Title.Caption = 'CFOP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 209
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TipoIndustrializacaoDescricao'
          Title.Alignment = taCenter
          Title.Caption = 'Situa'#231#227'o'
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_QUANTIDADE_IND_RETORNO'
          Title.Alignment = taCenter
          Title.Caption = 'Retornado'
          Width = 82
          Visible = True
        end
        item
          Color = 8454143
          Expanded = False
          FieldName = 'QuantidadeTmp'
          Title.Alignment = taCenter
          Title.Caption = 'Retornar'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FOR_RAZAO'
          Title.Alignment = taCenter
          Title.Caption = 'Fornecedor'
          Width = 213
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Almoxarifado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_PESO_ENTRADA'
          Title.Caption = 'Peso do Item'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESOTOTAL'
          Title.Caption = 'Peso Total'
          Visible = True
        end>
    end
  end
  object BitConfirmar: TBitBtn [1]
    Left = 765
    Top = 565
    Width = 100
    Height = 25
    Caption = '&Confirmar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
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
    ParentFont = False
    TabOrder = 1
    OnClick = BitConfirmarClick
  end
  object BitCancelar: TBitBtn [2]
    Left = 870
    Top = 565
    Width = 100
    Height = 25
    Caption = 'Cancela&r'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnClick = BitCancelarClick
  end
  object grpFiltro: TGroupBox [3]
    Left = 0
    Top = 0
    Width = 1049
    Height = 57
    Align = alTop
    Caption = 'Filtro'
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 53
      Height = 14
      Caption = 'Nota Fiscal'
    end
    object Label2: TLabel
      Left = 152
      Top = 16
      Width = 56
      Height = 14
      Caption = 'Fornecedor'
    end
    object Label3: TLabel
      Left = 648
      Top = 16
      Width = 40
      Height = 14
      Caption = 'Emiss'#227'o'
    end
    object Label4: TLabel
      Left = 744
      Top = 32
      Width = 17
      Height = 14
      Caption = 'At'#233
    end
    object Label5: TLabel
      Left = 376
      Top = 16
      Width = 120
      Height = 14
      Caption = 'Refer'#234'ncia ou Descri'#231#227'o'
    end
    object edtNotaFiscal: TEdit
      Left = 15
      Top = 30
      Width = 114
      Height = 22
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 0
      OnExit = edtNotaFiscalExit
    end
    object edtFornecedor: TEdit
      Left = 152
      Top = 30
      Width = 217
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object BitLocalizarNota: TBitBtn
      Left = 864
      Top = 26
      Width = 107
      Height = 25
      Cursor = crHandPoint
      Hint = 'Busca Notas j'#225' Cadastradas'
      Caption = '&Localizar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
        00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
        9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
        E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
        FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
        B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
        FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
        DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
        B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
        BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
        D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
        6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TabStop = False
      OnClick = BitLocalizarNotaClick
    end
    object edtReferenciaDescricao: TEdit
      Left = 376
      Top = 30
      Width = 265
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object DataDe: TJvDateEdit
      Left = 648
      Top = 30
      Width = 92
      Height = 22
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 3
    end
    object DataAte: TJvDateEdit
      Left = 768
      Top = 30
      Width = 92
      Height = 22
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox [4]
    Left = 0
    Top = 484
    Width = 1049
    Height = 76
    Align = alTop
    Caption = 'Observa'#231#227'o'
    TabOrder = 4
    object dbmmo1: TDBMemo
      Left = 2
      Top = 16
      Width = 463
      Height = 58
      Color = 14145495
      DataField = 'ENF_DADOS_ADICIONAIS'
      DataSource = dsNotaDisponivel
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 471
      Top = 15
      Width = 499
      Height = 58
      Color = 14145495
      DataField = 'ENF_DADOS_ADICIONAIS_FISCO'
      DataSource = dsNotaDisponivel
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object SqlCdsNotasDisponiveis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSqlCdsNotasDisponiveis'
    Left = 624
    Top = 209
    object SqlCdsNotasDisponiveisENF_NOTANUMBER: TStringField
      FieldName = 'ENF_NOTANUMBER'
      Size = 10
    end
    object SqlCdsNotasDisponiveisENF_MODELO_NF: TStringField
      FieldName = 'ENF_MODELO_NF'
      Size = 2
    end
    object SqlCdsNotasDisponiveisENF_SERIE: TStringField
      FieldName = 'ENF_SERIE'
      Size = 3
    end
    object SqlCdsNotasDisponiveisENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
    end
    object SqlCdsNotasDisponiveisFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsNotasDisponiveisENF_CFOP: TStringField
      FieldName = 'ENF_CFOP'
      Size = 4
    end
    object SqlCdsNotasDisponiveisPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlCdsNotasDisponiveisPRD_DESCRI: TStringField
      DisplayWidth = 255
      FieldName = 'PRD_DESCRI'
      Size = 255
    end
    object SqlCdsNotasDisponiveisENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      DisplayFormat = '###,###,##0.0000'
      Precision = 20
      Size = 5
    end
    object SqlCdsNotasDisponiveisENF_QUANTIDADE_IND_RETORNO: TFMTBCDField
      FieldName = 'ENF_QUANTIDADE_IND_RETORNO'
      DisplayFormat = '###,###,##0.0000'
      Precision = 20
      Size = 5
    end
    object SqlCdsNotasDisponiveisENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      DisplayFormat = '###,###,##0.00'
      Precision = 20
      Size = 5
    end
    object SqlCdsNotasDisponiveisAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object SqlCdsNotasDisponiveisAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 60
    end
    object SqlCdsNotasDisponiveisENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
    end
    object SqlCdsNotasDisponiveisSelecao: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Selecao'
    end
    object SqlCdsNotasDisponiveisPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 6
    end
    object SqlCdsNotasDisponiveisENF_IPIALIQ: TFMTBCDField
      FieldName = 'ENF_IPIALIQ'
      Precision = 20
      Size = 5
    end
    object SqlCdsNotasDisponiveisENF_VLSUBST: TFMTBCDField
      FieldName = 'ENF_VLSUBST'
      Precision = 20
      Size = 5
    end
    object SqlCdsNotasDisponiveisQuantidadeTmp: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'QuantidadeTmp'
    end
    object SqlCdsNotasDisponiveisENF_DADOS_ADICIONAIS: TBlobField
      FieldName = 'ENF_DADOS_ADICIONAIS'
    end
    object SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'TipoIndustrializacaoCodigo'
    end
    object SqlCdsNotasDisponiveisTipoIndustrializacaoDescricao: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'TipoIndustrializacaoDescricao'
      Size = 255
    end
    object SqlCdsNotasDisponiveisENF_DADOS_ADICIONAIS_FISCO: TBlobField
      FieldName = 'ENF_DADOS_ADICIONAIS_FISCO'
      Size = 1
    end
    object SqlCdsNotasDisponiveisENF_PESO_ENTRADA: TFMTBCDField
      FieldName = 'ENF_PESO_ENTRADA'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 5
    end
    object SqlCdsNotasDisponiveisPESOTOTAL: TFMTBCDField
      FieldName = 'PESOTOTAL'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 10
    end
    object SqlCdsNotasDisponiveisENF_UCOM: TStringField
      FieldName = 'ENF_UCOM'
      Size = 5
    end
    object SqlCdsNotasDisponiveisENF_OBS_INDUST: TMemoField
      FieldName = 'ENF_OBS_INDUST'
      BlobType = ftMemo
      Size = 1
    end
    object SqlCdsNotasDisponiveisENF_IT_DET_NITEM: TIntegerField
      FieldName = 'ENF_IT_DET_NITEM'
    end
  end
  object dsNotaDisponivel: TDataSource
    DataSet = SqlCdsNotasDisponiveis
    Left = 624
    Top = 152
  end
  object SqlCdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSqlCdsProduto'
    Left = 200
    Top = 216
    object SqlCdsProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsProdutoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
      Size = 5
    end
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlCdsProdutoPRD_CODBARRA: TStringField
      FieldName = 'PRD_CODBARRA'
      Size = 13
    end
    object SqlCdsProdutoPRD_CODORIGINAL: TStringField
      FieldName = 'PRD_CODORIGINAL'
      Size = 50
    end
    object SqlCdsProdutoPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 15
      Size = 5
    end
    object SqlCdsProdutoPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object SqlCdsProdutoPRD_CUSTOCOMIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOCOMIPI'
      Precision = 15
      Size = 5
    end
    object SqlCdsProdutoPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
      Precision = 15
      Size = 5
    end
    object SqlCdsProdutoLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object SqlCdsProdutoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsProdutoPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
    end
    object SqlCdsProdutoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsProdutoPRDC_REFERENCIA: TStringField
      FieldName = 'PRDC_REFERENCIA'
      Size = 50
    end
  end
  object qSqlCdsProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT pc.PRDC_REFERENCIA, t3.PTI_SIGLA, t2.lin_descri, t1.prd_m' +
        'argemvenda, T1.prd_codigo, T1.prd_und, t1.PRD_ORIGEM, T1.PRD_PCU' +
        'STO, t1.PRD_CUSTOCOMIPI, T1.prd_refer, T1.prd_descri, T1.prd_cod' +
        'barra, T1.prd_codoriginal, t1.PRD_PVENDA,COALESCE(T1.PRD_PRODSER' +
        'V,'#39'P'#39') as  PRD_PRODSERV'
      'FROM prd0000 T1'
      'left join prd_linha t2 on (t2.lin_codigo = t1.lin_codigo)'
      'left join PRD_TIPO t3 on (t3.PTI_CODIGO = t3.PTI_CODIGO)'
      'LEFT JOIN PRD0000_CODIGO pc ON (pc.PRD_CODIGO = t1.prd_codigo)'
      'ORDER BY T1.prd_refer')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 192
    Top = 289
  end
  object qSqlCdsNotasDisponiveis: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '    t1.ENF_PESO_ENTRADA,'
      
        '    t1.ENF_PESO_ENTRADA * t1.enf_quantidade_ind_retorno as PesoT' +
        'otal ,'
      '    t1.enf_ipialiq,'
      '    t1.enf_vlsubst,'
      '    t1.prd_codigo,'
      '    t1.ENF_REGISTRO,'
      '    t2.enf_notanumber,'
      '    t2.enf_modelo_nf,'
      '    t2.enf_serie,'
      '    t2.enf_emissao,'
      '    T3.for_razao,'
      '    T1.enf_cfop,'
      '    t1.prd_refer,'
      '    t1.prd_descri,'
      '    t1.enf_qtde,'
      '    t1.enf_quantidade_ind_retorno,'
      '    t1.enf_preco,'
      '    t1.amx_codigo,'
      '    t4.amx_descri,'
      '    t2.ENF_OBS_INDUST,'
      't2.enf_dados_adicionais, t2.enf_dados_adicionais_FISCO'
      'FROM'
      'enf_it01 T1'
      
        'join enf0001 t2 on (t2.enf_notanumber = t1.enf_it_notanumber and' +
        ' t2.for_codigo = t1.for_codigo and T2.enf_industrializacao = '#39'S'#39 +
        ')'
      'JOIN for0000 T3 ON (T3.for_codigo = T2.for_codigo)'
      'left join almox0000 t4 on (t4.amx_codigo = t1.amx_codigo)'
      
        'WHERE t1.enf_qtde > t1.enf_quantidade_ind_retorno and T1.prd_cod' +
        'igo = '#39#39
      'order by t2.enf_emissao')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 624
    Top = 273
  end
  object DspSqlCdsProduto: TDataSetProvider
    DataSet = qSqlCdsProduto
    Left = 192
    Top = 353
  end
  object dspSqlCdsNotasDisponiveis: TDataSetProvider
    DataSet = qSqlCdsNotasDisponiveis
    Left = 632
    Top = 337
  end
  object pmNotasDisponiveis: TPopupMenu
    Left = 344
    Top = 217
    object SelecinarTodos1: TMenuItem
      Caption = 'Selecionar Todos'
      OnClick = SelecionarTodos1Click
    end
    object DesmarcarTodos1: TMenuItem
      Caption = 'Desmarcar Todos'
      OnClick = DesmarcarTodos1Click
    end
  end
end
