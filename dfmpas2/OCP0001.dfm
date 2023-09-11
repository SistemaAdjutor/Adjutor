inherited FormOrdCompra: TFormOrdCompra
  Left = 205
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Pedido de Compra'
  ClientHeight = 751
  ClientWidth = 1140
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  ExplicitWidth = 1148
  ExplicitHeight = 778
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1140
    Height = 185
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1124
    object Label4: TLabel
      Left = 6
      Top = 16
      Width = 36
      Height = 14
      Caption = 'C'#243'digo:'
    end
    object Label19: TLabel
      Left = 121
      Top = 16
      Width = 59
      Height = 14
      Caption = 'Requerente:'
    end
    object lbIE: TLabel
      Left = 363
      Top = 16
      Width = 91
      Height = 14
      Caption = 'Inscri'#231#227'o Estadual:'
    end
    object EdtOCP_CODIGO: TEdit
      Left = 51
      Top = 12
      Width = 61
      Height = 22
      Enabled = False
      MaxLength = 6
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 0
      OnClick = EdtOCP_CODIGOClick
      OnEnter = EdtOCP_CODIGOClick
      OnExit = EdtOCP_CODIGOExit
    end
    object DbeRequerente: TDBEdit
      Left = 185
      Top = 12
      Width = 150
      Height = 22
      CharCase = ecUpperCase
      DataField = 'OCP_REQUERENTE'
      DataSource = DataMovimento.DsOrdCompra
      TabOrder = 1
    end
    object pcabecalho: TPanel
      Left = 0
      Top = 33
      Width = 1122
      Height = 150
      BevelOuter = bvNone
      TabOrder = 2
      object GrbFornecedor: TGroupBox
        Left = 0
        Top = 1
        Width = 481
        Height = 146
        Caption = 'Fornecedor:'
        TabOrder = 0
        object Label2: TLabel
          Left = 11
          Top = 27
          Width = 36
          Height = 13
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 20
          Top = 52
          Width = 27
          Height = 14
          Caption = 'Fone:'
        end
        object Label1: TLabel
          Left = 7
          Top = 77
          Width = 40
          Height = 14
          Caption = 'Contato:'
        end
        object Label7: TLabel
          Left = 347
          Top = 52
          Width = 21
          Height = 14
          Caption = 'Fax:'
        end
        object Label8: TLabel
          Left = 6
          Top = 100
          Width = 40
          Height = 14
          Caption = 'E-Mail 1:'
        end
        object Label23: TLabel
          Left = 6
          Top = 124
          Width = 40
          Height = 14
          Caption = 'E-Mail 2:'
        end
        object DbeFOR_FONCONT: TDBEdit
          Left = 48
          Top = 49
          Width = 110
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'FOR_FONCONT'
          DataSource = DsFor
          ReadOnly = True
          TabOrder = 2
        end
        object DbeFOR_FAXCONT: TDBEdit
          Left = 369
          Top = 48
          Width = 107
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'FOR_FAXCONT'
          DataSource = DsFor
          ReadOnly = True
          TabOrder = 3
        end
        object DbeFOR_CONTATO: TDBEdit
          Left = 48
          Top = 72
          Width = 428
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'FOR_CONTATO'
          DataSource = DsFor
          ReadOnly = True
          TabOrder = 4
        end
        object DBeEmailContato: TDBEdit
          Left = 48
          Top = 96
          Width = 428
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'FOR_EMAILCONT'
          DataSource = DsFor
          ReadOnly = True
          TabOrder = 5
        end
        object DBeFor_Codigo: TDBEdit
          Left = 48
          Top = 23
          Width = 41
          Height = 22
          DataField = 'FOR_CODIGO'
          DataSource = DataMovimento.DsOrdCompra
          TabOrder = 0
          OnClick = DBeFor_CodigoClick
          OnExit = DBeFor_CodigoExit
        end
        object DBeEmail: TDBEdit
          Left = 48
          Top = 120
          Width = 428
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'FOR_EMAIL'
          DataSource = DsFor
          ReadOnly = True
          TabOrder = 6
        end
        object CbFornecedor1: TComboBoxRw
          Left = 90
          Top = 23
          Width = 363
          Height = 22
          TabOrder = 1
          CharCase = ecUpperCase
          LookupSelect = 'FOR_CODIGO,FOR_RAZAO'
          LookupOrderBy = 'FOR_RAZAO'
          LookupTable = 'FOR0000'
          LookupDispl = 'FOR_RAZAO'
          OnButtonClick = CbFornecedor1ButtonClick
          OnSelect = CbFornecedor1Select
          GridAutoSize = False
          LookupSource = CbFornecedor1.InternalSource
          LookupKeyField = 'FOR_CODIGO'
          FiltroTabela = 'FOR_ATIVO = '#39'A'#39
          ShowButton = True
          LookupTableShare = 'FORNECEDORES'
          AutoF8WinTitulo = 'Fornecedores'
          AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          Tabela = 'FOR0000'
          CamposCarregar = 'FOR_CODIGO,FOR_RAZAO'
          CamposRetornar = 'FOR_CODIGO'
          Condicao = 'FOR_ATIVO = '#39'A'#39
          CamposOrdernar = 'FOR_RAZAO'
          ConexaoBanco = DataCadastros.SQLConnection1
          Compartilhar = 'FORNECEDORES'
          Localizado = False
          CodigoEmpresa = 0
          ResetaCampos = False
          MultiEmpresa = False
          Localizar = False
          CarregarCombo = False
          itemindex = 0
          style = csDropDown
        end
      end
      object GrbDados01: TGroupBox
        Left = 486
        Top = 0
        Width = 543
        Height = 81
        TabOrder = 1
        object Label20: TLabel
          Left = 12
          Top = 35
          Width = 40
          Height = 14
          Alignment = taRightJustify
          Caption = 'Entrega:'
        end
        object Label22: TLabel
          Left = 24
          Top = 56
          Width = 28
          Height = 14
          Alignment = taRightJustify
          Caption = 'Frete:'
        end
        object Label27: TLabel
          Left = 157
          Top = 13
          Width = 61
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cond. Pagto:'
        end
        object Label16: TLabel
          Left = 166
          Top = 56
          Width = 52
          Height = 14
          Alignment = taRightJustify
          Caption = 'Despesas:'
        end
        object Label17: TLabel
          Left = 178
          Top = 35
          Width = 40
          Height = 14
          Alignment = taRightJustify
          Caption = 'ICMS %:'
        end
        object Label5: TLabel
          Left = 9
          Top = 13
          Width = 43
          Height = 14
          Alignment = taRightJustify
          Caption = 'Emiss'#227'o:'
        end
        object DBeOCP_FRETE: TDBEdit
          Left = 53
          Top = 53
          Width = 90
          Height = 22
          DataField = 'OCP_FRETE'
          DataSource = DataMovimento.DsOrdCompra
          TabOrder = 4
          OnEnter = AlteraCorpo
        end
        object DBeOCP_DESPESAS: TDBEdit
          Left = 220
          Top = 53
          Width = 90
          Height = 22
          DataField = 'OCP_DESPESAS'
          DataSource = DataMovimento.DsOrdCompra
          TabOrder = 5
          OnEnter = AlteraCorpo
        end
        object DbeOCP_ICMS: TDBEdit
          Left = 220
          Top = 31
          Width = 40
          Height = 22
          DataField = 'OCP_ICMS'
          DataSource = DataMovimento.DsOrdCompra
          TabOrder = 3
          OnEnter = AlteraCorpo
        end
        object DBePcl_codigo: TDBEdit
          Left = 220
          Top = 9
          Width = 245
          Height = 22
          DataField = 'OCP_PRAZO'
          DataSource = DataMovimento.DsOrdCompra
          TabOrder = 1
          OnEnter = AlteraCorpo
        end
        object DbeOCP_DTEntrega: TJvDBDateEdit
          Left = 53
          Top = 31
          Width = 90
          Height = 22
          DataField = 'OCP_DTENTREGA'
          DataSource = DataMovimento.DsOrdCompra
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
          TabOrder = 2
          OnEnter = AlteraCorpo
          OnExit = DbeOCP_DTEntregaExit
        end
        object DbeOCP_DTEMIS: TJvDBDateEdit
          Left = 53
          Top = 9
          Width = 90
          Height = 22
          DataField = 'OCP_DTEMIS'
          DataSource = DataMovimento.DsOrdCompra
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
          TabOrder = 0
          OnEnter = AlteraCorpo
          OnExit = DbeOCP_DTEMISExit
        end
      end
      object GrbDados02: TGroupBox
        Left = 487
        Top = 83
        Width = 542
        Height = 64
        Caption = 'Transportadora'
        TabOrder = 2
        object Label38: TLabel
          Left = 6
          Top = 20
          Width = 36
          Height = 14
          Caption = 'C'#243'digo:'
        end
        object Label6: TLabel
          Left = 15
          Top = 43
          Width = 27
          Height = 14
          Caption = 'Fone:'
        end
        object Label21: TLabel
          Left = 158
          Top = 43
          Width = 40
          Height = 14
          Caption = 'Contato:'
        end
        object DbeTRP_CODIGO: TDBEdit
          Tag = 22
          Left = 45
          Top = 16
          Width = 40
          Height = 22
          DataField = 'TRP_CODIGO'
          DataSource = DataMovimento.DsOrdCompra
          TabOrder = 0
          OnExit = DbeTRP_CODIGOExit
        end
        object CbFreteT: TComboBox
          Left = 368
          Top = 16
          Width = 171
          Height = 22
          Style = csDropDownList
          CharCase = ecUpperCase
          TabOrder = 2
          OnChange = CbFreteTChange
          Items.Strings = (
            '0-REMETENTE (CIF)'
            '1-DESTINAT'#193'RIO (FOB)'
            '2-TERCEIROS'
            '3-PR'#211'PRIO POR CONTA DO REMETENTE'
            '4-PR'#211'PRIO POR CONTA DO DESTINAT'#193'RIO'
            '9-SEM FRETE')
        end
        object Edt_Fone: TEdit
          Left = 45
          Top = 40
          Width = 109
          Height = 22
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          ReadOnly = True
          TabOrder = 3
        end
        object Edt_Contato: TEdit
          Left = 200
          Top = 40
          Width = 339
          Height = 22
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          ReadOnly = True
          TabOrder = 4
        end
        object CbTransp1: TComboBoxRw
          Left = 86
          Top = 16
          Width = 253
          Height = 22
          TabOrder = 1
          CharCase = ecUpperCase
          LookupSelect = 'TRP_CODIGO,TRP_RAZAO'
          LookupOrderBy = 'TRP_RAZAO'
          LookupTable = 'TRP0000'
          LookupDispl = 'TRP_RAZAO'
          OnSelect = CbTransp1Select
          GridAutoSize = False
          LookupSource = CbTransp1.InternalSource
          LookupKeyField = 'TRP_CODIGO'
          ShowButton = True
          LookupTableShare = 'TRANSPORTADORAS'
          LookupWhere = 'TRP_ATIVO = '#39'S'#39
          AutoF8WinTitulo = 'Transportadoras'
          AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          Tabela = 'TRP0000'
          CamposCarregar = 'TRP_CODIGO,TRP_RAZAO'
          CamposRetornar = 'TRP_CODIGO'
          CamposOrdernar = 'TRP_RAZAO'
          ConexaoBanco = DataCadastros.SQLConnection1
          Compartilhar = 'TRANSPORTADORAS'
          Localizado = False
          CodigoEmpresa = 0
          ResetaCampos = False
          MultiEmpresa = False
          Localizar = False
          CarregarCombo = False
          itemindex = 0
          style = csDropDown
        end
      end
    end
    object dblcInscricaoEstadual: TDBLookupComboBox
      Left = 460
      Top = 12
      Width = 310
      Height = 22
      DataField = 'EMI_CODIGO'
      DataSource = DataMovimento.DsOrdCompra
      KeyField = 'EMI_CODIGO'
      ListField = 'EMI_DESCRICAO'
      ListSource = dsInscricaoEstadual
      TabOrder = 3
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 185
    Width = 1140
    Height = 521
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 1124
    ExplicitHeight = 403
    object GbItem: TGroupBox
      Left = 0
      Top = 233
      Width = 1140
      Height = 84
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 1124
      object Label10: TLabel
        Left = 7
        Top = 8
        Width = 53
        Height = 14
        Caption = '&Refer'#234'ncia'
      end
      object Label11: TLabel
        Left = 658
        Top = 8
        Width = 26
        Height = 14
        Caption = 'Qtde '
      end
      object Label35: TLabel
        Left = 829
        Top = 8
        Width = 23
        Height = 14
        Caption = 'IPI %'
      end
      object Label14: TLabel
        Left = 742
        Top = 9
        Width = 28
        Height = 14
        Caption = 'Pre'#231'o'
      end
      object Label15: TLabel
        Left = 192
        Top = 8
        Width = 52
        Height = 14
        Caption = 'Descri'#231#227'o '
      end
      object Label37: TLabel
        Left = 446
        Top = 44
        Width = 69
        Height = 14
        Caption = 'Estoque Atual:'
      end
      object Label24: TLabel
        Left = 532
        Top = 44
        Width = 62
        Height = 14
        Caption = #218'ltimo Custo:'
      end
      object SpPesquisa: TSpeedButton
        Left = 628
        Top = 22
        Width = 24
        Height = 21
        Hint = 'Busca Produto'
        Flat = True
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7CCE39734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E1F7C1042CE398C311F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F104210423E53FF67BF6710422925
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EBF67FF67FF67FF7FFF7F524A
          8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C3E53BF67FF67FF67FF7FFF7FFF67
          29251F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF673F4FBF67FF67FF7FFF67FF67
          4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF67BF673F4FFF67FF67FF67FF67
          4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF7FBF67BF673F4FBF67794E
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF67FF67FF673E531F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpPesquisaClick
      end
      object Label25: TLabel
        Left = 1000
        Top = 8
        Width = 76
        Height = 14
        Caption = 'Unidade medida'
      end
      object Label26: TLabel
        Left = 914
        Top = 7
        Width = 53
        Height = 14
        Caption = 'ICMS ST %'
      end
      object Label29: TLabel
        Left = 8
        Top = 48
        Width = 90
        Height = 14
        Caption = 'C'#243'digo fornecedor'
      end
      object lcodfornecedor: TLabel
        Left = 11
        Top = 64
        Width = 3
        Height = 14
      end
      object ldescricaofornecedor: TLabel
        Left = 124
        Top = 62
        Width = 3
        Height = 14
      end
      object Label31: TLabel
        Left = 121
        Top = 48
        Width = 121
        Height = 14
        Caption = 'Descri'#231#227'o do fornecedor'
      end
      object Label30: TLabel
        Left = 657
        Top = 42
        Width = 37
        Height = 14
        Caption = 'ICMS %'
      end
      object Label32: TLabel
        Left = 746
        Top = 44
        Width = 46
        Height = 14
        Caption = 'Desconto'
      end
      object EdDescricao: TEdit
        Left = 190
        Top = 22
        Width = 435
        Height = 22
        CharCase = ecUpperCase
        Color = clWhite
        TabOrder = 1
      end
      object CurrQtde: TCurrencyEdit
        Left = 653
        Top = 22
        Width = 83
        Height = 22
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = ',0.0000;-,0.0000'
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 2
        ZeroEmpty = False
        OnExit = CurrQtdeExit
      end
      object CurrPrecoBruto: TCurrencyEdit
        Left = 740
        Top = 22
        Width = 83
        Height = 22
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = ',0.0000;-,0.0000'
        TabOrder = 3
        ZeroEmpty = False
        OnExit = CurrPrecoBrutoExit
      end
      object CurrSaldo: TCurrencyEdit
        Left = 443
        Top = 57
        Width = 83
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.0000;-,0.0000'
        ReadOnly = True
        TabOrder = 10
        ZeroEmpty = False
      end
      object CurrIpi: TCurrencyEdit
        Left = 829
        Top = 22
        Width = 83
        Height = 22
        AutoSize = False
        DisplayFormat = ',0.00;-,0.00'
        TabOrder = 4
        ZeroEmpty = False
      end
      object edtCusto: TCurrencyEdit
        Left = 532
        Top = 57
        Width = 83
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.0000;-,0.0000'
        ReadOnly = True
        TabOrder = 11
        ZeroEmpty = False
      end
      object cbunidade: TComboBox
        Left = 999
        Top = 22
        Width = 113
        Height = 22
        TabOrder = 6
        Items.Strings = (
          'UN'
          'PC'
          'BD'
          'BR'
          'CX'
          'EMB'
          'FD'
          'FR'
          'GL'
          'GR'
          'LT'
          'ML'
          'MT'
          'M2'
          'M3'
          'MIL'
          'PCT'
          'KG'
          'RL'
          'RM'
          'CT'
          'LA'
          'T'
          'PAR'
          'PR'
          'CJ'
          'TB'
          'MM'
          'BOB'
          'HR'
          'SC'
          'KIT'
          'KWH'
          'FL'
          'EX'
          'TN'
          'CENTO'
          'UND')
      end
      object CurrICMSstper: TCurrencyEdit
        Left = 914
        Top = 22
        Width = 83
        Height = 22
        AutoSize = False
        DisplayFormat = ',0.00;-,0.00'
        TabOrder = 5
        ZeroEmpty = False
      end
      object btnGravaritem: TBitBtn
        Left = 918
        Top = 54
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
        TabOrder = 12
        OnClick = btnGravaritemClick
      end
      object btnCancelarItem: TBitBtn
        Left = 1018
        Top = 54
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = '|Cancela registro atual...'
        Cancel = True
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
        TabOrder = 13
        OnClick = btnCancelarItemClick
      end
      object cbReferencia: TSgDbSearchCombo
        Left = 3
        Top = 22
        Width = 183
        Height = 22
        OnEnter = cbReferenciaEnter
        TabOrder = 0
        OnExit = cbReferenciaExit
        CharCase = ecUpperCase
        LookupSelect = 
          'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
          'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
        LookupOrderBy = 'PD.PRD_REFER'
        LookupTable = 
          'prd0000 PD left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_COD' +
          'IGO)'
        LookupDispl = 'PD.PRD_REFER'
        OnSelect = cbReferenciaSelect
        GridAutoSize = False
        LookupSource = qProduto
        LookupKeyField = 'PD.PRD_REFER'
        FiltroTabela = 'PRD_STATUS = '#39'A'#39
        ShowButton = False
        LookupTableShare = 'PRODUTOS'
        LookupWhere = 'PD.PRD_REFER'
        AutoF8WinTitulo = 'Produtos'
        AutoF8ColumnsTitulo = 'Refer'#234'ncia, Descri'#231#227'o'
        LookupDbGridColumns = 'PRD_REFER, PRD_DESCRI'
        LookupDbGridColumnsTitle = 'Refer'#234'ncia, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object currICMS: TCurrencyEdit
        Left = 652
        Top = 56
        Width = 83
        Height = 22
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = ',0.0000;-,0.0000'
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 7
        ZeroEmpty = False
        OnExit = CurrQtdeExit
      end
      object currDescontoItem: TCurrencyEdit
        Left = 741
        Top = 56
        Width = 83
        Height = 22
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = ',0.0000;-,0.0000'
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 8
        ZeroEmpty = False
        OnExit = CurrQtdeExit
      end
      object rgTipoDesconto: TRadioGroup
        Left = 830
        Top = 44
        Width = 82
        Height = 34
        Caption = 'Tipo Desconto'
        Columns = 2
        Items.Strings = (
          '%'
          '$')
        TabOrder = 9
      end
    end
    object GrbDados04: TGroupBox
      Left = 0
      Top = 0
      Width = 1140
      Height = 233
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 1124
      DesignSize = (
        1140
        233)
      object DbGridCompra: TDBGrid
        Left = 3
        Top = 10
        Width = 1135
        Height = 185
        Hint = 'duplo clique p/ manuten'#231#227'o de itens'
        Anchors = [akLeft, akTop, akRight]
        Color = 16776176
        DataSource = DsGrid
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDrawColumnCell = DbGridCompraDrawColumnCell
        OnDblClick = DbGridCompraDblClick
        OnKeyPress = DbGridCompraKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Font.Charset = ANSI_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 132
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDC_REFERENCIA'
            Title.Caption = 'Cod Fornecedor'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 341
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCI_QTDES'
            Font.Charset = ANSI_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Qt.Solicitada'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCI_QTDER'
            Font.Charset = ANSI_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Qt.Recebida'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCI_PRECO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o R$'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCI_TOTAL_CC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Total R$'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCI_IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Ipi %'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCI_DESCONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Desconto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCI_TIPO_DESCONTO_CC'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Desconto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCI_ICMS'
            Title.Alignment = taCenter
            Title.Caption = 'ICMS %'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCI_PERC_ICMS_ST'
            Title.Alignment = taCenter
            Title.Caption = 'ICMS ST %'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCI_STATUS_CC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_UND'
            Title.Caption = 'Unidade'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDC_DESSCRICAO'
            Title.Caption = 'Descri'#231#227'o do fornecedor'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 381
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 2
        Top = 205
        Width = 1136
        Height = 26
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 1120
        object Label12: TLabel
          Left = 5
          Top = 4
          Width = 74
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Produtos :'
        end
        object Label9: TLabel
          Left = 179
          Top = 4
          Width = 33
          Height = 14
          Caption = 'VL. IPI:'
        end
        object Label13: TLabel
          Left = 441
          Top = 4
          Width = 25
          Height = 14
          Caption = 'Total:'
        end
        object Label18: TLabel
          Left = 749
          Top = 4
          Width = 45
          Height = 14
          Caption = 'Situa'#231#227'o:'
        end
        object Label28: TLabel
          Left = 308
          Top = 4
          Width = 32
          Height = 14
          Caption = 'VL ST:'
        end
        object CurrTotal: TCurrencyEdit
          Left = 84
          Top = 2
          Width = 90
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = ',0.00;-,0.00'
          ReadOnly = True
          TabOrder = 0
          ZeroEmpty = False
        end
        object CurreIpi: TCurrencyEdit
          Left = 216
          Top = 2
          Width = 90
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = ',0.00;-,0.00'
          ReadOnly = True
          TabOrder = 1
          ZeroEmpty = False
        end
        object CurrTotGeral: TCurrencyEdit
          Left = 471
          Top = 2
          Width = 90
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 4
          DisplayFormat = '###,###,###0.00'
          FormatOnEditing = True
          ReadOnly = True
          TabOrder = 2
          ZeroEmpty = False
        end
        object Edt_Status: TEdit
          Left = 797
          Top = 1
          Width = 290
          Height = 22
          TabStop = False
          Color = 14145495
          MaxLength = 13
          ReadOnly = True
          TabOrder = 3
        end
        object CurrTotalST: TCurrencyEdit
          Left = 345
          Top = 2
          Width = 90
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = ',0.00;-,0.00'
          ReadOnly = True
          TabOrder = 4
          ZeroEmpty = False
        end
      end
    end
    object GrbDados03: TGroupBox
      Left = 0
      Top = 317
      Width = 1140
      Height = 204
      Align = alClient
      Caption = 'Observa'#231#227'o da Compra'
      TabOrder = 2
      ExplicitWidth = 1124
      ExplicitHeight = 86
      DesignSize = (
        1140
        204)
      object DBM_OBS: TDBMemo
        Left = 2
        Top = 16
        Width = 1136
        Height = 186
        TabStop = False
        Align = alClient
        DataField = 'OCP_OBS'
        DataSource = DataMovimento.DsOrdCompra
        ScrollBars = ssVertical
        TabOrder = 0
        ExplicitWidth = 1120
        ExplicitHeight = 68
      end
      object Panel3: TPanel
        Left = 1080
        Top = 23
        Width = 25
        Height = 25
        Anchors = [akTop, akRight]
        TabOrder = 1
        ExplicitLeft = 1064
        object SpeedButton1: TSpeedButton
          Left = 2
          Top = 2
          Width = 23
          Height = 22
          Hint = 'Adicionar Observa'#231#227'o Cadastrada'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
            0E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EFFFFFF0E0E0E8F690A8F
            690A8F690A8F690A8F690AFFFFFFFFFFFF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF0E0E0E0E0E0E0E0E0E97740B97740B97740B97740B97740B000000FFFF
            FF0E0E0EFFFFFFFFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0EA2
            830DA2830DA2830DA2830DFFFFFFFFFFFF0E0E0EFFFFFFFFFFFF0E0E0EBFC7C7
            BFC7C7BFC7C7BFC7C7BFC7C70E0E0EAF940FAF940FAF940FAF940F000000FFFF
            FF0E0E0EFFFFFFFFFFFF0E0E0ED7DBDBD7DBDBD7DBDBD7DBDBD7DBDB0E0E0EBA
            A411BAA411BAA411BAA411FFFFFFFFFFFF0E0E0EFFFFFFFFFFFF0E0E0EEEEFEF
            EEEFEFEEEFEFEEEFEFEEEFEF0E0E0EC2AE12C2AE12C2AE12C2AE12000000FFFF
            FF0E0E0EFFFFFFFFFFFF0000000000008181810000008181810000000E0E0EBA
            A411BAA411BAA411BAA411FFFFFFFFFFFF0E0E0EFFFFFFFFFFFF000000FFFFFF
            000000FFFFFF000000FFFFFF0E0E0EAF940FAF940FAF940FAF940F000000FFFF
            FF0E0E0EFFFFFFFFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0EA2
            830DA2830DA2830DA2830DFFFFFFFFFFFF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF0E0E0E0E0E0E0E0E0E97740B97740B97740B97740B97740B000000FFFF
            FF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EFFFFFF0E0E0E8F690A8F
            690A8F690A8F690A8F690AFFFFFFFFFFFF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
            0E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
      end
    end
  end
  object Panel4: TPanel [2]
    Left = 0
    Top = 706
    Width = 1140
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 588
    ExplicitWidth = 1124
    object btnImpressao: TJvArrowButton
      Left = 267
      Top = 9
      Width = 105
      Height = 25
      DropDown = PopupMenu2
      Caption = 'Imprimir'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
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
    end
    object Bit_Sair: TBitBtn
      Left = 963
      Top = 9
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 877
      Top = 9
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Enabled = False
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Gravar: TBitBtn
      Left = 792
      Top = 9
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Enabled = False
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Bit_GravarClick
    end
    object Bit_Excluir: TBitBtn
      Left = 706
      Top = 9
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_novo: TBitBtn
      Left = 620
      Top = 9
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 4
      OnClick = Bit_novoClick
    end
    object Bit_Lista: TBitBtn
      Left = 1
      Top = 9
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Consulta'
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000027000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888880887777777777777777888888888888888888
        8880800000000000000007888888888888888888888080888888888888880788
        8888888888888888888080FF8FF8FF8FF8FF0788888888888888888888808088
        88888888888807888888888888888888888080FF8FF8FF8FF8FF078888888888
        888888888880808888888888888807888888888888888888888080FF8FF8FF8F
        F8FF078888888888888888888880808888888888888807888888888888888888
        888080FF8FF8FF8FF8FF07888888888888888888888080000000000000000788
        8888888888888888888080FF7FF7FF7FF7FF0788888888888888888888808000
        0000000000000788888888888888888888808080CCCCCCCCCCCC078888888888
        8888888888808000000000000000088888888888888888888880888888888888
        8888888888888888888888888880}
      NumGlyphs = 2
      TabOrder = 7
      OnClick = Bit_ListaClick
    end
    object Bit_Relatorio: TBitBtn
      Left = 90
      Top = 9
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rios'
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
      OnClick = Bit_RelatorioClick
    end
    object btnMail: TBitBtn
      Left = 176
      Top = 9
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'E-Mail'
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        0800000000000002000000000000000000000001000000000000000000000000
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000300000000A4
        00000000A4000303030303A4A4A4A4A4A4A4A4A4A4A4FF0303030300F6F6F6F6
        0008A4A400A40303030303A4FF030303A4FF0303A4A4FF0303030300F6F6F6F6
        00F6072F2F000303030303A4FF030303A4FF030303A4FF0303030300F6A4A4F6
        0007FB1D2F2F0003030303A4FF030303A4FF03030303A4FF03030300F6F6F6F6
        F600FBFB1D2F9000030303A4FF03030303A4FF03030303A4FF030300F6A4A4A4
        A4F600FBFBF79090000303A4FF0303030303A4FF03030303A4FF0300F6F6F6F6
        F6F6F600FBF71E0D0D0003A4FF030303030303A4FF03030303A40300FFA4A4A4
        A4A4A4F600F70DA7A70003A4FF03030303030303A4FF030303A40300FFF6F6F6
        F6F6F6F6F60067AF160003A4FF0303030303030303A4FFFFFFA40300FFA4A4A4
        A4A4A4A4F6A40000000303A4FF0303030303030303A4A4A4A4FF0300FFFFFFF6
        F6F6F6F6F6000303030303A4FF0303030303030303A4FF0303030300FFA4A4A4
        A4F6F6F6F6000303030303A4FF0303030303030303A4FF0303030300FFFFFFFF
        FFF6000000000303030303A4FF0303030303A4A4A4A4FF0303030300FFA4A4A4
        A4FF00F600030303030303A4FF0303030303A4FFA4FF030303030300FFFFFFFF
        FFFF000003030303030303A4FFFFFFFFFFFFA4A4FF0303030303030000000000
        0000030303030303030303A4A4A4A4A4A4A4FF03030303030303}
      NumGlyphs = 2
      TabOrder = 5
      OnClick = btnMailClick
    end
    object btnEmpresa: TBitBtn
      Left = 508
      Top = 9
      Width = 109
      Height = 25
      Caption = 'Mudar Empresa'
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF694117
        6941176941176941176941176941176941176941176941176941176941176941
        17694117694117FF00FF694117694117AA7341A7703FA76F3EA76F3DA76F3DA7
        6F3DA76F3DA76F3DA7703EA7703FA7703FAA72406941176941176941178A5223
        884F21884F21874F21834D21844E22844E22834E22834D2181491C83491B8950
        21884F218B5223694117694117804619804519804519804519D9DAD9D9DAD9D9
        DAD9D9DAD9D9DAD9BBAC9D8B6541783E1281451981461969411769411782471A
        82471A82471A82471AD9DAD9D9DAD9D9DAD9D9DAD9D9DAD9D9DAD9E1E6EA9776
        577D411383471A694117694117894E20894E20894F20884D1F83461883481A86
        4A1C84491C834819915E33D8D4CFCFCCC9834F248A4D1F694117694117905426
        9054269055268B4D1E966B44D9DAD98F5222905425905425894A1ABCA48AE7ED
        F291653F905122694117694117965B2D975A2C9153239F724AD9DAD9D9DAD993
        5524975A2A975A2A8F4F1FBAA088EEF3F89A6D459658286941176941179D6332
        995B2B9D734CDDDCDAF0F4F8D9DAD9925A2C955E32965E31A0764FD5D4D0D1CF
        CA9862359E6030694117694117A06534A4754CD9D8D7DDDEE1E9EBEEE9EBEEE9
        EBEEE9EBEEE9EBEEEBF0F4E5E6E7A983609E6231A46A3A694117694117AF794B
        B1875FE6E3E0E6E9EAE9EBEEE9EBEEE9EBEEE9EBEECFC6BCC6B29EB48A64A972
        43AF794CB27E51694117694117BD8F66B8865BBD9876E9E7E5E9EBEEE9EBEEB5
        8358B6875DB6865CB58358B8875CBB8B62BA8A62BD8E66694117694117C79D78
        C49872C0926BC6A484E7E6E3E9EBEEC2956DC49772C49772C49872C49772C497
        72C49772C99D77694117694117CEAB8BCFA686CCA684CAA17ECBAF93E9EBEECC
        A582CCA683CCA683CCA683CCA683CCA683CEA684D1AD8E694117694117694117
        D9BBA0DCBCA0DCBC9FD9B89CD9BA9DDCBBA0DABB9FDABB9FDABB9FDABB9FDCBC
        A0DABCA1694117694117FF00FF69411769411769411769411769411769411769
        4117694117694117694117694117694117694117694117FF00FF}
      TabOrder = 8
      TabStop = False
      OnClick = btnEmpresaClick
    end
    object BtnDuplicar: TBitBtn
      Left = 417
      Top = 9
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = 'Copiar Pedido'
      Caption = 'Cop&iar'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888844444444488888884FFFFFFF488888884F0000
        0F480000004FFFFFFF480FFFFF4F00000F480F00004FFFFFFF480FFFFF4F00F4
        44480F00004FFFF4F4880FFFFF4FFFF448880F00F044444488880FFFF0F08888
        88880FFFF0088888888800000088888888888888888888888888}
      Margin = 5
      ParentShowHint = False
      ShowHint = True
      Spacing = 6
      TabOrder = 9
      TabStop = False
      OnClick = BtnDuplicarClick
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 48
    Top = 200
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1064
    Top = 72
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\JOBDADOS\EXEMPLO\EXEMPLO.FDB'
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
  end
  object SqlCdsTra: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select TRP_CODIGO, TRP_RAZAO, TRP_FONE,TRP_CONTATO , EMP_CODIGO ' +
      'from TRP0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select TRP_CODIGO, TRP_RAZAO, TRP_FONE,TRP_CONTATO , EMP_CODIGO ' +
      'from TRP0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 912
    Top = 216
    object SqlCdsTraTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsTraTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object SqlCdsTraTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      EditMask = '!\(999\) 9999-9999;0;_'
      Size = 11
    end
    object SqlCdsTraTRP_CONTATO: TStringField
      FieldName = 'TRP_CONTATO'
      Size = 25
    end
    object SqlCdsTraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsRef: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select PRD_PCUSTO, PRD_REFER, PRD_DESCRI, PRD_ESTOQUE, PRD_ENTRA' +
      'DA, PRD_SAIDA,PRD_PENDENTE, EMP_CODIGO from PRD0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select PRD_PCUSTO, PRD_REFER, PRD_DESCRI, PRD_ESTOQUE, PRD_ENTRA' +
      'DA, PRD_SAIDA,PRD_PENDENTE, EMP_CODIGO from PRD0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 936
    Top = 327
    object SqlCdsRefPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsRefPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsRefPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlCdsRefPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlCdsRefPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlCdsRefPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlCdsRefEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRefPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 18
      Size = 5
    end
    object SqlCdsRefPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsRefPRDC_DESSCRICAO: TStringField
      FieldName = 'PRDC_DESSCRICAO'
      Size = 500
    end
    object SqlCdsRefPRDC_REFERENCIA: TStringField
      FieldName = 'PRDC_REFERENCIA'
      Size = 30
    end
  end
  object SqlCdsGri: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'dspGri'
    AfterPost = SqlCdsGriAfterPost
    BeforeDelete = SqlCdsGriBeforeDelete
    AfterDelete = SqlCdsGriAfterDelete
    OnCalcFields = SqlCdsGriCalcFields
    Left = 824
    Top = 248
    object SqlCdsGriOCI_TIPO_DESCONTO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'OCI_TIPO_DESCONTO_CC'
      Calculated = True
    end
    object SqlCdsGriOCI_STATUS_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'OCI_STATUS_CC'
      Calculated = True
    end
    object SqlCdsGriPRD_FISICO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_FISICO_CC'
      Calculated = True
    end
    object SqlCdsGriOCI_TOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'OCI_TOTAL_CC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      currency = False
      Calculated = True
    end
    object SqlCdsGriPRDC_REFERENCIA: TStringField
      FieldName = 'PRDC_REFERENCIA'
      Size = 50
    end
    object SqlCdsGriPRDC_DESSCRICAO: TStringField
      FieldName = 'PRDC_DESSCRICAO'
      Size = 500
    end
    object SqlCdsGriPRD_DESCRI: TMemoField
      FieldName = 'PRD_DESCRI'
      OnGetText = SqlCdsGriPRD_DESCRIGetText
      BlobType = ftMemo
      Size = 1
    end
    object SqlCdsGriPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 6
    end
    object SqlCdsGriPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 18
      Size = 5
    end
    object SqlCdsGriPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 18
      Size = 5
    end
    object SqlCdsGriPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 18
      Size = 5
    end
    object SqlCdsGriPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 18
      Size = 5
    end
    object SqlCdsGriOCI_REGISTRO: TIntegerField
      FieldName = 'OCI_REGISTRO'
      Required = True
    end
    object SqlCdsGriOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Size = 6
    end
    object SqlCdsGriPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlCdsGriOCI_QTDES: TFMTBCDField
      FieldName = 'OCI_QTDES'
      Precision = 18
      Size = 5
    end
    object SqlCdsGriOCI_QTDER: TFMTBCDField
      FieldName = 'OCI_QTDER'
      Precision = 18
      Size = 5
    end
    object SqlCdsGriOCI_PRECO: TFMTBCDField
      FieldName = 'OCI_PRECO'
      Precision = 18
      Size = 5
    end
    object SqlCdsGriOCI_IPI: TFMTBCDField
      FieldName = 'OCI_IPI'
      Precision = 18
      Size = 5
    end
    object SqlCdsGriOCI_SITUACAO: TStringField
      FieldName = 'OCI_SITUACAO'
      Size = 1
    end
    object SqlCdsGriEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsGriOCI_ICMS: TFMTBCDField
      FieldName = 'OCI_ICMS'
      Precision = 18
      Size = 5
    end
    object SqlCdsGriOCI_CFOP: TStringField
      FieldName = 'OCI_CFOP'
      Size = 4
    end
    object SqlCdsGriOCI_DESCRICAO: TMemoField
      FieldName = 'OCI_DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
    object SqlCdsGriPRD_UND_1: TStringField
      FieldName = 'PRD_UND_1'
      Size = 6
    end
    object SqlCdsGriOCI_PERC_ICMS_ST: TFMTBCDField
      FieldName = 'OCI_PERC_ICMS_ST'
      Precision = 18
      Size = 5
    end
    object SqlCdsGriOCI_NOTADIFERE: TStringField
      FieldName = 'OCI_NOTADIFERE'
      Size = 1
    end
    object SqlCdsGriOCI_NOTADIFERE_MOTIVO: TStringField
      FieldName = 'OCI_NOTADIFERE_MOTIVO'
      Size = 200
    end
    object SqlCdsGriOCI_DESCONTO: TFMTBCDField
      FieldName = 'OCI_DESCONTO'
      Precision = 18
      Size = 4
    end
    object SqlCdsGriOCI_TIPO_DESCONTO: TStringField
      FieldName = 'OCI_TIPO_DESCONTO'
      FixedChar = True
      Size = 1
    end
  end
  object DsGrid: TDataSource
    DataSet = SqlCdsGri
    Left = 712
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 272
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      OnClick = Alterar1Click
    end
  end
  object frxPedido: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40812.858008344900000000
    ReportOptions.LastChange = 43622.602971782400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var                        '
      
        '  qtde:Real;                                                    ' +
        '   '
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin                        '
      'end;'
      ''
      'procedure Page1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '           '
      'end;'
      ''
      'procedure ReportTitle1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '                                                                ' +
        '        '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin         '
      'end;'
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'Memo24.visible := <frxDBPedido."FOR_CODIGO"> = '#39#39';              ' +
        '             '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  qtde := qtde + <frxDBPedidoItem."OCI_QTDES">;                 ' +
        '         '
      'end;'
      ''
      'begin'
      '   qtde := 0;                            '
      'end.')
    OnGetValue = frxPedidoGetValue
    Left = 550
    Top = 536
    Datasets = <
      item
        DataSet = frxDBFornecedor
        DataSetName = 'frxDBFornecedor'
      end
      item
        DataSet = frxDBPedido
        DataSetName = 'frxDBPedido'
      end
      item
        DataSet = frxDBPedidoItem
        DataSetName = 'frxDBPedidoItem'
      end
      item
        DataSet = frxDBTransportadora
        DataSetName = 'frxDBTransportadora'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnAfterPrint = 'Page1OnAfterPrint'
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 219.212740000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'ReportTitle1OnAfterPrint'
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Top = 14.118120000000000000
          Width = 196.535433070000000000
          Height = 68.031540000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Top = 90.267780000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object wFrxRazao: TfrxMemoView
          Left = 205.551330000000000000
          Top = 17.559060000000000000
          Width = 362.834596850000000000
          Height = 22.677165350000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object wFrxEndereco: TfrxMemoView
          Left = 205.567100000000000000
          Top = 38.677180000000000000
          Width = 510.236550000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENDERECO] - Bairro: [BAIRRO]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 205.433210000000000000
          Top = 53.692950000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CIDADE] - [UF] - CEP: [CEP]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 461.693260000000000000
          Top = 53.692950000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fone: [FONE]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 205.330860000000000000
          Top = 70.370130000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'E-Mail: [EMAIL]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 473.630180000000000000
          Top = 70.370130000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CNPJ]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 439.086890000000000000
          Top = 70.370130000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 576.913730000000000000
          Top = 70.590600000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 624.488560000000000000
          Top = 70.370130000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[INSCR]')
          ParentFont = False
        end
        object frxDataPedidoPED_CODIGO: TfrxMemoView
          Left = 570.709030000000000000
          Top = 6.559060000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'OR'#199'AMENTO DE COMPRA')
          ParentFont = False
        end
        object frxDataPedidoPED_CODIGO1: TfrxMemoView
          Left = 570.709030000000000000
          Top = 23.677180000000000000
          Width = 147.401670000000000000
          Height = 15.118105350000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPedido."OCP_CODIGO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 576.724800000000000000
          Top = 53.692950000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fax: [FAX]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 116.944960000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDataPedidoPED_DTENTRADA: TfrxMemoView
          Left = 3.779530000000000000
          Top = 94.267780000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data: [frxDBPedido."OCP_DTEMIS"]')
          ParentFont = False
        end
        object frxDataPedidoPED_DTSAIDA: TfrxMemoView
          Left = 377.953000000000000000
          Top = 94.267780000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Limite para Entrega: [frxDBPedido."OCP_DTENTREGA"]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_CONTATO: TfrxMemoView
          Left = 6.779530000000000000
          Top = 161.299320000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Contato: [frxDBFornecedor."FOR_CONTATO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBFornecedorFOR_FONCONT: TfrxMemoView
          Left = 219.212740000000000000
          Top = 162.299320000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fone: [FORFONE]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 340.157700000000000000
          Top = 162.299320000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fax: [FORFAX]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_EMAIL: TfrxMemoView
          Left = 461.102660000000000000
          Top = 162.299320000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'E-Mail: [frxDBFornecedor."FOR_EMAIL"]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_RAZAO: TfrxMemoView
          Left = 79.779530000000000000
          Top = 118.944960000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_RAZAO'
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBFornecedor."FOR_RAZAO"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 181.196970000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 182.196970000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 68.590600000000000000
          Top = 182.196970000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 125.283550000000000000
          Top = 182.196970000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 151.181200000000000000
          Top = 182.196970000000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 373.291590000000000000
          Top = 182.196970000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRE'#199'O UNIT.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 440.425480000000000000
          Top = 182.196970000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 556.472790000000000000
          Top = 182.196970000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 218.315090000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBFornecedorFOR_ENDERE: TfrxMemoView
          Left = 5.779530000000000000
          Top = 137.622140000000000000
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBFornecedor."FOR_ENDERE"] [frxDBFornecedor."FOR_BAIRRO"]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_CIDADE: TfrxMemoView
          Left = 461.102660000000000000
          Top = 139.622140000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBFornecedor."FOR_CIDADE"] [frxDBFornecedor."FOR_UF"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 6.338590000000000000
          Top = 119.787401570000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FORNECEDOR:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 79.370130000000000000
          Top = 118.165430000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COTA'#199#195'O')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 506.457020000000000000
          Top = 181.417440000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS ST')
          ParentFont = False
        end
        object lcodfornecedor: TfrxMemoView
          Left = 3.779530000000000000
          Top = 200.315090000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO DO FORNECEDOR')
          ParentFont = False
        end
        object ldescrfornecedor: TfrxMemoView
          Left = 200.315090000000000000
          Top = 200.315090000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCRI'#199#195'O DO FORNECEDOR')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 608.504330000000000000
          Top = 181.417440000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 652.079160000000000000
          Top = 181.417440000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 566.929500000000000000
          Top = 118.165430000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ: [frxDBFornecedor."FOR_CGC"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 31.370081180000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBPedidoItem
        DataSetName = 'frxDBPedidoItem'
        KeepTogether = True
        RowCount = 0
        Stretched = True
        object frxDBPedidoItemPRD_REFER: TfrxMemoView
          Left = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedidoItem."PRD_REFER"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 68.811070000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'OCI_QTDES'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.FormatStr = '%2.4n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_QTDES"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 127.504020000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedidoItem."PRD_UND"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 152.519790000000000000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_DESCRI'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedidoItem."PRD_DESCRI"]')
          ParentFont = False
        end
        object mpreco: TfrxMemoView
          Left = 371.071120000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'OCI_PRECO'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_PRECO"]')
          ParentFont = False
          WordWrap = False
        end
        object mtotal_cc: TfrxMemoView
          Left = 434.645950000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'OCI_TOTAL_CC'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_TOTAL_CC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 559.370440000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_IPI"]%')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          Left = 513.016080000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_PERC_ICMS_ST"]%')
          ParentFont = False
          WordWrap = False
        end
        object mcodfornecedor: TfrxMemoView
          Left = 3.779530000000000000
          Top = 15.677180000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[<frxDBPedidoItem."PRDC_REFERENCIA">]')
          ParentFont = False
        end
        object mdescfornecedor: TfrxMemoView
          Left = 190.756030000000000000
          Top = 15.677180000000000000
          Width = 491.338900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedidoItem."PRDC_DESSCRICAO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 612.283860000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF(<frxDBPedidoItem."OCI_ICMS"> = 0,<frxDBPedido."OCP_ICMS"> ,' +
              '<frxDBPedidoItem."OCI_ICMS">)]%')
          ParentFont = False
          WordWrap = False
        end
        object Memo45: TfrxMemoView
          Left = 650.079160000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DESCONTO]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Line5: TfrxLineView
          Left = -1.000000000000000000
          Width = 718.110236220472000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Top = 73.795300000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object mtotalgeral: TfrxMemoView
          Left = 419.425480000000000000
          Top = 1.000000000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TOTALPROD]')
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          Left = 57.692950000000000000
          Top = 0.220470000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qtde]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBPedidoOCP_OBS: TfrxMemoView
          Left = 16.779530000000000000
          Top = 57.897650000000000000
          Width = 691.653990000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'OCP_OBS'
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedido."OCP_OBS"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 86.000000000000000000
          Top = 48.897650000000000000
          Width = 631.181510000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo40: TfrxMemoView
          Left = -54.661410000000000000
          Top = 45.338590000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Observa'#231#245'es gerais')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 1.260050000000000000
          Top = 25.456710000000000000
          Width = 718.110236220472000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo20: TfrxMemoView
          Left = 238.141930000000000000
          Top = 26.456710000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'IPI:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 587.913730000000000000
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 261.598640000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[IPI]')
          ParentFont = False
          WordWrap = False
        end
        object Memo32: TfrxMemoView
          Left = 626.709030000000000000
          Top = 26.456710000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[TOTALCIPI]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Frete:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 41.574830000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedido."OCP_FRETE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          Left = 108.149660000000000000
          Top = 26.456710000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Despesas:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 168.944960000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedido."OCP_DESPESAS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          Left = 452.409710000000000000
          Top = 26.456710000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS ST:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 507.543600000000000000
          Top = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[ICMSST]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          Left = 327.685220000000000000
          Top = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 385.157700000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[TOTALDESCONTO]')
          ParentFont = False
          WordWrap = False
        end
        object Memo48: TfrxMemoView
          Left = 3.779530000000000000
          Top = 2.000000000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Qtde.')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 364.834880000000000000
          Top = 2.000000000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Prod.')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 487.559370000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692950000000100000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '                      Requerente: [frxDBPedido."OCP_REQUERENTE"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 385.512060000000000000
          Top = 56.692950000000100000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Assinatura:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 446.559370000000000000
          Top = 56.692950000000100000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '______')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Local de Entrega:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Condi'#231#227'o de Pagamento:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795299999999900000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Transportadora:')
          ParentFont = False
        end
        object frxDBTransportadoraTRP_RAZAO: TfrxMemoView
          Left = 117.165430000000000000
          Top = 37.795299999999900000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'TRP_RAZAO'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBTransportadora'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTransportadora."TRP_RAZAO"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo35: TfrxMemoView
          Left = 117.165430000000000000
          Width = 600.945270000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[LOCALENTREGA]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 381.732530000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo do Frete:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 448.559370000000000000
          Top = 18.897650000000000000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[TIPOFRETE]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBPedidoOCP_PRAZO: TfrxMemoView
          Left = 117.165354330000000000
          Top = 18.897637800000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DataField = 'OCP_PRAZO'
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedido."OCP_PRAZO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 302.362400000000000000
          Top = 37.795299999999900000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'TRP_FONE'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBTransportadora'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTransportadora."TRP_FONE"]')
          ParentFont = False
        end
      end
      object Line9: TfrxLineView
        Top = 1024.252630000000000000
        Width = 721.890230000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo1: TfrxMemoView
        Left = 5.677180000000000000
        Top = 1026.811690000000000000
        Width = 170.078850000000000000
        Height = 11.338590000000000000
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Adjutor ERP - www.novisistemas.com.br')
        ParentFont = False
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 587
    Top = 248
  end
  object frxDBPedido: TfrxDBDataset
    UserName = 'frxDBPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'OCP_CODIGO=OCP_CODIGO'
      'COT_CODIGO=COT_CODIGO'
      'OPV_CODIGO=OPV_CODIGO'
      'FOR_CODIGO=FOR_CODIGO'
      'OCP_DTEMIS=OCP_DTEMIS'
      'OCP_DTENTREGA=OCP_DTENTREGA'
      'OCP_REQUERENTE=OCP_REQUERENTE'
      'OCP_FRETE=OCP_FRETE'
      'OCP_DESPESAS=OCP_DESPESAS'
      'OCP_ICMS=OCP_ICMS'
      'OCP_IPI=OCP_IPI'
      'TRP_CODIGO=TRP_CODIGO'
      'OCP_TPPAGTO=OCP_TPPAGTO'
      'OCP_OBS=OCP_OBS'
      'OCP_TOTAL=OCP_TOTAL'
      'OCP_STATUS=OCP_STATUS'
      'EMP_CODIGO=EMP_CODIGO'
      'OCP_PRAZO=OCP_PRAZO')
    DataSource = DataMovimento.DsOrdCompra
    BCDToCurrency = False
    Left = 304
    Top = 472
  end
  object frxDBPedidoItem: TfrxDBDataset
    UserName = 'frxDBPedidoItem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'OCI_TIPO_DESCONTO_CC=OCI_TIPO_DESCONTO_CC'
      'OCI_STATUS_CC=OCI_STATUS_CC'
      'PRD_FISICO_CC=PRD_FISICO_CC'
      'OCI_TOTAL_CC=OCI_TOTAL_CC'
      'PRDC_REFERENCIA=PRDC_REFERENCIA'
      'PRDC_DESSCRICAO=PRDC_DESSCRICAO'
      'PRD_DESCRI=PRD_DESCRI'
      'PRD_UND=PRD_UND'
      'PRD_ESTOQUE=PRD_ESTOQUE'
      'PRD_ENTRADA=PRD_ENTRADA'
      'PRD_SAIDA=PRD_SAIDA'
      'PRD_PENDENTE=PRD_PENDENTE'
      'OCI_REGISTRO=OCI_REGISTRO'
      'OCP_CODIGO=OCP_CODIGO'
      'PRD_REFER=PRD_REFER'
      'OCI_QTDES=OCI_QTDES'
      'OCI_QTDER=OCI_QTDER'
      'OCI_PRECO=OCI_PRECO'
      'OCI_IPI=OCI_IPI'
      'OCI_SITUACAO=OCI_SITUACAO'
      'EMP_CODIGO=EMP_CODIGO'
      'OCI_ICMS=OCI_ICMS'
      'OCI_CFOP=OCI_CFOP'
      'OCI_DESCRICAO=OCI_DESCRICAO'
      'PRD_UND_1=PRD_UND_1'
      'OCI_PERC_ICMS_ST=OCI_PERC_ICMS_ST'
      'OCI_NOTADIFERE=OCI_NOTADIFERE'
      'OCI_NOTADIFERE_MOTIVO=OCI_NOTADIFERE_MOTIVO'
      'OCI_DESCONTO=OCI_DESCONTO'
      'OCI_TIPO_DESCONTO=OCI_TIPO_DESCONTO')
    DataSource = DsGrid
    BCDToCurrency = False
    Left = 384
    Top = 472
  end
  object frxDBFornecedor: TfrxDBDataset
    UserName = 'frxDBFornecedor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FOR_CODIGO=FOR_CODIGO'
      'FOR_ENDERE=FOR_ENDERE'
      'FOR_CIDADE=FOR_CIDADE'
      'FOR_BAIRRO=FOR_BAIRRO'
      'FOR_UF=FOR_UF'
      'FOR_CGC=FOR_CGC'
      'FOR_RAZAO=FOR_RAZAO'
      'FOR_FONCONT=FOR_FONCONT'
      'FOR_FAXCONT=FOR_FAXCONT'
      'FOR_CONTATO=FOR_CONTATO'
      'FOR_EMAILCONT=FOR_EMAILCONT'
      'FOR_EMAIL=FOR_EMAIL'
      'PCL_CODIGO=PCL_CODIGO'
      'EMP_CODIGO=EMP_CODIGO'
      'TRP_CODIGO=TRP_CODIGO')
    DataSet = cdsFor
    BCDToCurrency = False
    Left = 840
    Top = 320
  end
  object frxDBTransportadora: TfrxDBDataset
    UserName = 'frxDBTransportadora'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TRP_CODIGO=TRP_CODIGO'
      'TRP_RAZAO=TRP_RAZAO'
      'TRP_FONE=TRP_FONE'
      'TRP_CONTATO=TRP_CONTATO'
      'EMP_CODIGO=EMP_CODIGO')
    DataSet = SqlCdsTra
    BCDToCurrency = False
    Left = 752
  end
  object SqlCdsForRES: TSqlClientDataSet
    Aggregates = <>
    Connection = DBInicio.MainDB
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DBInicio.MainDB
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 432
    Top = 320
    object SqlCdsForRESFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object SqlCdsForRESFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsForRESFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      EditMask = '!\(999\) 9999-9999;0;_'
      Size = 11
    end
    object SqlCdsForRESFOR_FAXCONT: TStringField
      FieldName = 'FOR_FAXCONT'
      EditMask = '!\(999\) 9999-9999;0;_'
      Size = 11
    end
    object SqlCdsForRESFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object SqlCdsForRESFOR_EMAILCONT: TStringField
      FieldName = 'FOR_EMAILCONT'
      Size = 35
    end
    object SqlCdsForRESFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Size = 35
    end
    object SqlCdsForRESPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object SqlCdsForRESEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsForRESFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      Size = 40
    end
    object SqlCdsForRESFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object SqlCdsForRESFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      Size = 30
    end
    object SqlCdsForRESFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object SqlCdsForRESTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object SqlCdsForRESFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      Size = 14
    end
  end
  object DsFor: TDataSource
    DataSet = cdsFor
    Left = 760
    Top = 320
  end
  object qGri: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT'
      
        ' (SELECT FIRST 1 pc.PRDC_REFERENCIA FROM PRD0000_CODIGO pc WHERE' +
        '  pc.PRD_CODIGO = e.PRD_CODIGO  AND pc.FOR_CODIGO = '#39'0976'#39') PRDC' +
        '_REFERENCIA,'
      
        ' ( SELECT  FIRST 1 pc.PRDC_DESSCRICAO FROM  PRD0000_CODIGO pc WH' +
        'ERE  pc.PRD_CODIGO = e.PRD_CODIGO  AND pc.FOR_CODIGO = '#39'0976'#39') P' +
        'RDC_DESSCRICAO,'
      ' I.OCI_DESCRICAO AS PRD_DESCRI,'
      ' COALESCE(I.PRD_UND,'
      ' E.PRD_UND) AS PRD_UND ,'
      ' E.PRD_ESTOQUE,'
      ' E.PRD_ENTRADA,'
      ' E.PRD_SAIDA,'
      ' E.PRD_PENDENTE,'
      ' I.*'
      'FROM'
      ' ocp_it01 I'
      'JOIN PRD0000 E ON'
      ' I.PRD_REFER = E.prd_refer')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 744
    Top = 249
    object qGriPRDC_REFERENCIA: TStringField
      FieldName = 'PRDC_REFERENCIA'
      Size = 50
    end
    object qGriPRDC_DESSCRICAO: TStringField
      FieldName = 'PRDC_DESSCRICAO'
      Size = 500
    end
    object qGriPRD_DESCRI: TMemoField
      FieldName = 'PRD_DESCRI'
      OnGetText = qGriPRD_DESCRIGetText
      BlobType = ftMemo
      Size = 1
    end
    object qGriPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 6
    end
    object qGriPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 18
      Size = 5
    end
    object qGriPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 18
      Size = 5
    end
    object qGriPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 18
      Size = 5
    end
    object qGriPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 18
      Size = 5
    end
    object qGriOCI_REGISTRO: TIntegerField
      FieldName = 'OCI_REGISTRO'
      Required = True
    end
    object qGriOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Size = 6
    end
    object qGriPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object qGriOCI_QTDES: TFMTBCDField
      FieldName = 'OCI_QTDES'
      Precision = 18
      Size = 5
    end
    object qGriOCI_QTDER: TFMTBCDField
      FieldName = 'OCI_QTDER'
      Precision = 18
      Size = 5
    end
    object qGriOCI_PRECO: TFMTBCDField
      FieldName = 'OCI_PRECO'
      Precision = 18
      Size = 5
    end
    object qGriOCI_IPI: TFMTBCDField
      FieldName = 'OCI_IPI'
      Precision = 18
      Size = 5
    end
    object qGriOCI_SITUACAO: TStringField
      FieldName = 'OCI_SITUACAO'
      Size = 1
    end
    object qGriEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qGriOCI_ICMS: TFMTBCDField
      FieldName = 'OCI_ICMS'
      Precision = 18
      Size = 5
    end
    object qGriOCI_CFOP: TStringField
      FieldName = 'OCI_CFOP'
      Size = 4
    end
    object qGriOCI_DESCRICAO: TMemoField
      FieldName = 'OCI_DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
    object qGriPRD_UND_1: TStringField
      FieldName = 'PRD_UND_1'
      Size = 6
    end
    object qGriOCI_PERC_ICMS_ST: TFMTBCDField
      FieldName = 'OCI_PERC_ICMS_ST'
      Precision = 18
      Size = 5
    end
    object qGriOCI_NOTADIFERE: TStringField
      FieldName = 'OCI_NOTADIFERE'
      Size = 1
    end
    object qGriOCI_NOTADIFERE_MOTIVO: TStringField
      FieldName = 'OCI_NOTADIFERE_MOTIVO'
      Size = 200
    end
    object qGriOCI_DESCONTO: TFMTBCDField
      FieldName = 'OCI_DESCONTO'
      Precision = 18
      Size = 4
    end
    object qGriOCI_TIPO_DESCONTO: TStringField
      FieldName = 'OCI_TIPO_DESCONTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspGri: TDataSetProvider
    DataSet = qGri
    Left = 776
    Top = 249
  end
  object frxRefEmpresa: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40812.858008344900000000
    ReportOptions.LastChange = 43622.602971782400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var                        '
      
        '  qtde:Real;                                                    ' +
        '   '
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin                        '
      'end;'
      ''
      'procedure Page1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '           '
      'end;'
      ''
      'procedure ReportTitle1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '                                                                ' +
        '        '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin         '
      'end;'
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'Memo24.visible := <frxDBPedido."FOR_CODIGO"> = '#39#39';              ' +
        '             '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  qtde := qtde + <frxDBPedidoItem."OCI_QTDES">;                 ' +
        '         '
      'end;'
      ''
      'begin'
      '   qtde := 0;                            '
      'end.')
    OnGetValue = frxPedidoGetValue
    Left = 382
    Top = 536
    Datasets = <
      item
        DataSet = frxDBFornecedor
        DataSetName = 'frxDBFornecedor'
      end
      item
        DataSet = frxDBPedido
        DataSetName = 'frxDBPedido'
      end
      item
        DataSet = frxDBPedidoItem
        DataSetName = 'frxDBPedidoItem'
      end
      item
        DataSet = frxDBTransportadora
        DataSetName = 'frxDBTransportadora'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnAfterPrint = 'Page1OnAfterPrint'
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 199.417440000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'ReportTitle1OnAfterPrint'
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Top = 14.118120000000000000
          Width = 196.535433070000000000
          Height = 68.031540000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Top = 90.267780000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object wFrxRazao: TfrxMemoView
          Left = 205.551330000000000000
          Top = 17.559060000000000000
          Width = 362.834596850000000000
          Height = 22.677165350000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object wFrxEndereco: TfrxMemoView
          Left = 205.567100000000000000
          Top = 38.677180000000000000
          Width = 510.236550000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENDERECO] - Bairro: [BAIRRO]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 205.433210000000000000
          Top = 53.692950000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CIDADE] - [UF] - CEP: [CEP]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 461.693260000000000000
          Top = 53.692950000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fone: [FONE]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 205.330860000000000000
          Top = 70.370130000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'E-Mail: [EMAIL]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 473.630180000000000000
          Top = 70.370130000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CNPJ]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 439.086890000000000000
          Top = 70.370130000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 576.913730000000000000
          Top = 70.590600000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 624.488560000000000000
          Top = 70.370130000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[INSCR]')
          ParentFont = False
        end
        object frxDataPedidoPED_CODIGO: TfrxMemoView
          Left = 570.709030000000000000
          Top = 6.559060000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE COMPRA')
          ParentFont = False
        end
        object frxDataPedidoPED_CODIGO1: TfrxMemoView
          Left = 570.709030000000000000
          Top = 23.677180000000000000
          Width = 147.401670000000000000
          Height = 15.118105350000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPedido."OCP_CODIGO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 576.724800000000000000
          Top = 53.692950000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fax: [FAX]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 116.944960000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDataPedidoPED_DTENTRADA: TfrxMemoView
          Left = 3.779530000000000000
          Top = 94.267780000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data: [frxDBPedido."OCP_DTEMIS"]')
          ParentFont = False
        end
        object frxDataPedidoPED_DTSAIDA: TfrxMemoView
          Left = 377.953000000000000000
          Top = 94.267780000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Limite para Entrega: [frxDBPedido."OCP_DTENTREGA"]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_CONTATO: TfrxMemoView
          Left = 6.779530000000000000
          Top = 161.299320000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Contato: [frxDBFornecedor."FOR_CONTATO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBFornecedorFOR_FONCONT: TfrxMemoView
          Left = 219.212740000000000000
          Top = 162.299320000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fone: [FORFONE]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 340.157700000000000000
          Top = 162.299320000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fax: [FORFAX]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_EMAIL: TfrxMemoView
          Left = 461.102660000000000000
          Top = 162.299320000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'E-Mail: [frxDBFornecedor."FOR_EMAIL"]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_RAZAO: TfrxMemoView
          Left = 79.779530000000000000
          Top = 118.944960000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_RAZAO'
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBFornecedor."FOR_RAZAO"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 181.196970000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 182.196970000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 61.031540000000000000
          Top = 182.196970000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 117.724490000000000000
          Top = 182.196970000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 146.622140000000000000
          Top = 182.196970000000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 390.645950000000000000
          Top = 182.196970000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRE'#199'O UNIT.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 460.779840000000000000
          Top = 182.196970000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 589.488560000000000000
          Top = 182.551181100000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 199.417440000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBFornecedorFOR_ENDERE: TfrxMemoView
          Left = 5.779530000000000000
          Top = 137.622140000000000000
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBFornecedor."FOR_ENDERE"] [frxDBFornecedor."FOR_BAIRRO"]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_CIDADE: TfrxMemoView
          Left = 461.102660000000000000
          Top = 139.622140000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBFornecedor."FOR_CIDADE"] [frxDBFornecedor."FOR_UF"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 6.338590000000000000
          Top = 119.787401570000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FORNECEDOR:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 79.370130000000000000
          Top = 117.165430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COTA'#199#195'O')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 545.709030000000000000
          Top = 182.417440000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS ST')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 625.063390000000000000
          Top = 182.551181100000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 657.638220000000000000
          Top = 182.551181100000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 563.149970000000000000
          Top = 120.944960000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ: [frxDBFornecedor."FOR_CGC"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 16.251961180000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBPedidoItem
        DataSetName = 'frxDBPedidoItem'
        KeepTogether = True
        RowCount = 0
        Stretched = True
        object frxDBPedidoItemPRD_REFER: TfrxMemoView
          Left = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_REFER'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedidoItem."PRD_REFER"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo11: TfrxMemoView
          Left = 61.252010000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'OCI_QTDES'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.FormatStr = '%2.4n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_QTDES"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 117.543299760000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedidoItem."PRD_UND"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 146.645669290000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_DESCRI'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedidoItem."PRD_DESCRI"]')
          ParentFont = False
        end
        object mpreco: TfrxMemoView
          Left = 395.984540000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'OCI_PRECO'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_PRECO"]')
          ParentFont = False
          WordWrap = False
        end
        object mtotal_cc: TfrxMemoView
          Left = 462.559370000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'OCI_TOTAL_CC'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_TOTAL_CC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 589.606680000000000000
          Width = 35.149611181102400000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_IPI"]%')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          Left = 544.709030000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_PERC_ICMS_ST"]%')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          Left = 624.842920000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF(<frxDBPedidoItem."OCI_ICMS"> = 0,<frxDBPedido."OCP_ICMS"> ,' +
              '<frxDBPedidoItem."OCI_ICMS">)]%')
          ParentFont = False
          WordWrap = False
        end
        object Memo45: TfrxMemoView
          Left = 662.638220000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DESCONTO]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo20: TfrxMemoView
          Left = 239.275820000000000000
          Top = 29.000000000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'IPI:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 585.268090000000000000
          Top = 29.000000000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = -1.000000000000000000
          Width = 718.110236220472000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object mtotalgeral: TfrxMemoView
          Left = 447.882190000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TOTALPROD]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          Left = 262.732530000000000000
          Top = 29.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[IPI]')
          ParentFont = False
          WordWrap = False
        end
        object Memo32: TfrxMemoView
          Left = 631.622450000000000000
          Top = 29.000000000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[TOTALCIPI]')
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          Left = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qtde]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBPedidoOCP_OBS: TfrxMemoView
          Left = 16.779530000000000000
          Top = 61.897650000000000000
          Width = 691.653990000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'OCP_OBS'
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedido."OCP_OBS"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 1.133890000000000000
          Top = 29.000000000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Frete:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 42.708720000000000000
          Top = 29.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedido."OCP_FRETE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          Left = 109.283550000000000000
          Top = 29.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Despesas:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 170.078850000000000000
          Top = 29.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedido."OCP_DESPESAS"]')
          ParentFont = False
          WordWrap = False
        end
        object Line7: TfrxLineView
          Left = 86.000000000000000000
          Top = 55.897650000000000000
          Width = 631.181510000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo40: TfrxMemoView
          Left = -54.661410000000000000
          Top = 48.338590000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Observa'#231#245'es gerais')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 1.260050000000000000
          Top = 25.456710000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo41: TfrxMemoView
          Left = 453.543600000000000000
          Top = 29.000000000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS ST:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 508.677490000000000000
          Top = 29.000000000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[ICMSST]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          Left = 328.819110000000000000
          Top = 29.000000000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 386.291590000000000000
          Top = 29.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[TOTALDESCONTO]')
          ParentFont = False
          WordWrap = False
        end
        object Memo48: TfrxMemoView
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Qtde.')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 391.291590000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Prod.')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 461.102660000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692950000000100000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '                      Requerente: [frxDBPedido."OCP_REQUERENTE"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 385.512060000000000000
          Top = 56.692950000000100000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Assinatura:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 446.559370000000000000
          Top = 56.692950000000100000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '______')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Local de Entrega:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Condi'#231#227'o de Pagamento:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795299999999900000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Transportadora:')
          ParentFont = False
        end
        object frxDBTransportadoraTRP_RAZAO: TfrxMemoView
          Left = 117.165430000000000000
          Top = 37.795299999999900000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'TRP_RAZAO'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBTransportadora'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTransportadora."TRP_RAZAO"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo35: TfrxMemoView
          Left = 117.165430000000000000
          Width = 600.945270000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[LOCALENTREGA]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 381.732530000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo do Frete:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 448.559370000000000000
          Top = 18.897650000000000000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[TIPOFRETE]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBPedidoOCP_PRAZO: TfrxMemoView
          Left = 117.165354330000000000
          Top = 18.897637800000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DataField = 'OCP_PRAZO'
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedido."OCP_PRAZO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 302.362400000000000000
          Top = 37.795299999999900000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'TRP_FONE'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBTransportadora'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTransportadora."TRP_FONE"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Width = 718.110700000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Line9: TfrxLineView
        Top = 1024.252630000000000000
        Width = 718.110236220472000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo1: TfrxMemoView
        Left = 5.677180000000000000
        Top = 1026.811690000000000000
        Width = 170.078850000000000000
        Height = 11.338590000000000000
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Adjutor ERP - www.novisistemas.com.br')
        ParentFont = False
      end
    end
  end
  object frxCodFornecedor: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40812.858008344900000000
    ReportOptions.LastChange = 43622.602971782400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var                        '
      
        '  qtde:Real;                                                    ' +
        '   '
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin                        '
      'end;'
      ''
      'procedure Page1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '           '
      'end;'
      ''
      'procedure ReportTitle1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '                                                                ' +
        '        '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin         '
      'end;'
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'Memo24.visible := <frxDBPedido."FOR_CODIGO"> = '#39#39';              ' +
        '             '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  qtde := qtde + <frxDBPedidoItem."OCI_QTDES">;                 ' +
        '         '
      'end;'
      ''
      'begin'
      '   qtde := 0;                            '
      'end.')
    OnGetValue = frxPedidoGetValue
    Left = 470
    Top = 536
    Datasets = <
      item
        DataSet = frxDBFornecedor
        DataSetName = 'frxDBFornecedor'
      end
      item
        DataSet = frxDBPedido
        DataSetName = 'frxDBPedido'
      end
      item
        DataSet = frxDBPedidoItem
        DataSetName = 'frxDBPedidoItem'
      end
      item
        DataSet = frxDBTransportadora
        DataSetName = 'frxDBTransportadora'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnAfterPrint = 'Page1OnAfterPrint'
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 200.315090000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'ReportTitle1OnAfterPrint'
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Top = 14.118120000000000000
          Width = 196.535433070000000000
          Height = 68.031540000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Top = 90.267780000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object wFrxRazao: TfrxMemoView
          Left = 205.551330000000000000
          Top = 17.559060000000000000
          Width = 362.834596850000000000
          Height = 22.677165350000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object wFrxEndereco: TfrxMemoView
          Left = 205.567100000000000000
          Top = 38.677180000000000000
          Width = 510.236550000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENDERECO] - Bairro: [BAIRRO]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 205.433210000000000000
          Top = 53.692950000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CIDADE] - [UF] - CEP: [CEP]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 461.693260000000000000
          Top = 53.692950000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fone: [FONE]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 205.330860000000000000
          Top = 70.370130000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'E-Mail: [EMAIL]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 473.630180000000000000
          Top = 70.370130000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CNPJ]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 439.086890000000000000
          Top = 70.370130000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 576.913730000000000000
          Top = 70.590600000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 624.488560000000000000
          Top = 70.370130000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[INSCR]')
          ParentFont = False
        end
        object frxDataPedidoPED_CODIGO: TfrxMemoView
          Left = 570.709030000000000000
          Top = 6.559060000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE COMPRA')
          ParentFont = False
        end
        object frxDataPedidoPED_CODIGO1: TfrxMemoView
          Left = 570.709030000000000000
          Top = 23.677180000000000000
          Width = 147.401670000000000000
          Height = 15.118105350000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPedido."OCP_CODIGO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 576.724800000000000000
          Top = 53.692950000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fax: [FAX]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 116.944960000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDataPedidoPED_DTENTRADA: TfrxMemoView
          Left = 3.779530000000000000
          Top = 94.267780000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data: [frxDBPedido."OCP_DTEMIS"]')
          ParentFont = False
        end
        object frxDataPedidoPED_DTSAIDA: TfrxMemoView
          Left = 377.953000000000000000
          Top = 94.267780000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Limite para Entrega: [frxDBPedido."OCP_DTENTREGA"]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_CONTATO: TfrxMemoView
          Left = 6.779530000000000000
          Top = 161.299320000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Contato: [frxDBFornecedor."FOR_CONTATO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBFornecedorFOR_FONCONT: TfrxMemoView
          Left = 219.212740000000000000
          Top = 162.299320000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fone: [FORFONE]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 340.157700000000000000
          Top = 162.299320000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fax: [FORFAX]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_EMAIL: TfrxMemoView
          Left = 461.102660000000000000
          Top = 162.299320000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'E-Mail: [frxDBFornecedor."FOR_EMAIL"]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_RAZAO: TfrxMemoView
          Left = 79.779530000000000000
          Top = 118.944960000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_RAZAO'
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBFornecedor."FOR_RAZAO"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 181.196970000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 76.149660000000000000
          Top = 182.551181102362200000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 121.504020000000000000
          Top = 182.551181102362200000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 151.181200000000000000
          Top = 182.551181102362200000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 388.189240000000000000
          Top = 182.551181102362200000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRE'#199'O UNIT.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 455.543600000000000000
          Top = 182.551181102362200000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 579.149970000000000000
          Top = 182.551181102362200000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 199.315090000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBFornecedorFOR_ENDERE: TfrxMemoView
          Left = 5.779530000000000000
          Top = 137.622140000000000000
          Width = 449.764070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBFornecedor."FOR_ENDERE"] [frxDBFornecedor."FOR_BAIRRO"]')
          ParentFont = False
        end
        object frxDBFornecedorFOR_CIDADE: TfrxMemoView
          Left = 461.102660000000000000
          Top = 139.622140000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBFornecedor."FOR_CIDADE"] [frxDBFornecedor."FOR_UF"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 6.338590000000000000
          Top = 119.787401570000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FORNECEDOR:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 79.370130000000000000
          Top = 117.165430000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COTA'#199#195'O')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 532.913730000000000000
          Top = 182.551181102362200000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS ST')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 182.551181102362200000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 608.504330000000000000
          Top = 182.551181100000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 650.079160000000000000
          Top = 182.551181100000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 563.149970000000000000
          Top = 120.944960000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          DataSet = frxDBFornecedor
          DataSetName = 'frxDBFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ: [frxDBFornecedor."FOR_CGC"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 16.251961180000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBPedidoItem
        DataSetName = 'frxDBPedidoItem'
        KeepTogether = True
        RowCount = 0
        Stretched = True
        object frxDBPedidoItemPRD_REFER: TfrxMemoView
          Left = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[<frxDBPedidoItem."PRDC_REFERENCIA">]')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 76.370130000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'OCI_QTDES'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.FormatStr = '%2.4n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_QTDES"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 119.944960000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedidoItem."PRD_UND"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 144.960730000000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'PRD_DESCRI'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedidoItem."PRD_DESCRI"]')
          ParentFont = False
        end
        object mpreco: TfrxMemoView
          Left = 385.968770000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'OCI_PRECO'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_PRECO"]')
          ParentFont = False
          WordWrap = False
        end
        object mtotal_cc: TfrxMemoView
          Left = 449.764070000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'OCI_TOTAL_CC'
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_TOTAL_CC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 578.268090000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_IPI"]%')
          ParentFont = False
          WordWrap = False
        end
        object Memo44: TfrxMemoView
          Left = 531.913730000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedidoItem."OCI_PERC_ICMS_ST"]%')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          Left = 612.283860000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF(<frxDBPedidoItem."OCI_ICMS"> = 0,<frxDBPedido."OCP_ICMS"> ,' +
              '<frxDBPedidoItem."OCI_ICMS">)]%')
          ParentFont = False
          WordWrap = False
        end
        object Memo45: TfrxMemoView
          Left = 650.079160000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DESCONTO]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Line5: TfrxLineView
          Left = -1.000000000000000000
          Width = 718.110236220472400000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Top = 73.795300000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object mtotalgeral: TfrxMemoView
          Left = 438.323130000000000000
          Top = 4.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TOTALPROD]')
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          Left = 53.913420000000000000
          Top = 4.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[qtde]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBPedidoOCP_OBS: TfrxMemoView
          Left = 16.779530000000000000
          Top = 53.897650000000000000
          Width = 691.653990000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'OCP_OBS'
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedido."OCP_OBS"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 86.000000000000000000
          Top = 48.897650000000000000
          Width = 631.181510000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo40: TfrxMemoView
          Left = -54.661410000000000000
          Top = 41.338590000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Observa'#231#245'es gerais')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 1.260050000000000000
          Top = 25.456710000000000000
          Width = 718.110236220472400000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo20: TfrxMemoView
          Left = 241.921460000000000000
          Top = 29.236240000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'IPI:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 587.913730000000000000
          Top = 29.236240000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 265.378170000000000000
          Top = 29.236240000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[IPI]')
          ParentFont = False
          WordWrap = False
        end
        object Memo32: TfrxMemoView
          Left = 634.268090000000000000
          Top = 29.236240000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[TOTALCIPI]')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          Top = 29.236240000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Frete:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 41.574830000000000000
          Top = 29.236240000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedido."OCP_FRETE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          Left = 108.149660000000000000
          Top = 29.236240000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Despesas:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 168.944960000000000000
          Top = 29.236240000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPedido."OCP_DESPESAS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          Left = 459.968770000000000000
          Top = 29.236240000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS ST:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 515.102660000000000000
          Top = 29.236240000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[ICMSST]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          Left = 335.244280000000000000
          Top = 29.236240000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 392.716760000000000000
          Top = 29.236240000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[TOTALDESCONTO]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Qtde.')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 381.732530000000000000
          Top = 5.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Prod.')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 453.543600000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692950000000100000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '                      Requerente: [frxDBPedido."OCP_REQUERENTE"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 385.512060000000000000
          Top = 56.692950000000100000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Assinatura:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 446.559370000000000000
          Top = 56.692950000000100000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '______')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Local de Entrega:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Condi'#231#227'o de Pagamento:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795299999999900000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Transportadora:')
          ParentFont = False
        end
        object frxDBTransportadoraTRP_RAZAO: TfrxMemoView
          Left = 117.165430000000000000
          Top = 37.795299999999900000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'TRP_RAZAO'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBTransportadora'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTransportadora."TRP_RAZAO"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo35: TfrxMemoView
          Left = 117.165430000000000000
          Width = 600.945270000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[LOCALENTREGA]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 381.732530000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo do Frete:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 448.559370000000000000
          Top = 18.897650000000000000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DataSet = frxDBPedidoItem
          DataSetName = 'frxDBPedidoItem'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[TIPOFRETE]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBPedidoOCP_PRAZO: TfrxMemoView
          Left = 117.165354330000000000
          Top = 18.897637800000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DataField = 'OCP_PRAZO'
          DataSet = frxDBPedido
          DataSetName = 'frxDBPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPedido."OCP_PRAZO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 302.362400000000000000
          Top = 37.795299999999900000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'TRP_FONE'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBTransportadora'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBTransportadora."TRP_FONE"]')
          ParentFont = False
        end
      end
      object Line9: TfrxLineView
        Top = 1024.252630000000000000
        Width = 721.890230000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo1: TfrxMemoView
        Left = 5.677180000000000000
        Top = 1026.811690000000000000
        Width = 170.078850000000000000
        Height = 11.338590000000000000
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Adjutor ERP - www.novisistemas.com.br')
        ParentFont = False
      end
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 304
    Top = 542
    object miReferenciaEmpresa: TMenuItem
      Caption = 'Refer'#234'ncia empresa'
      OnClick = miReferenciaEmpresaClick
    end
    object CdigoFornecedor1: TMenuItem
      Caption = 'C'#243'digo Fornecedor'
      OnClick = CdigoFornecedor1Click
    end
    object EmpresaxFornecedor1: TMenuItem
      Caption = 'Empresa x Fornecedor'
      OnClick = EmpresaxFornecedor1Click
    end
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBAR' +
        'RA, PD.PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.00 as PRD_PVEN' +
        'DA'
      'from PRD0000 PD'
      'left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO)'
      'where PRD_STATUS = '#39'Z'#39' and'
      '      (coalesce(PD.PRD_REFER, '#39#39') <> '#39#39')'
      'order by PD.PRD_REFER  ')
    SQLConnection = DBConn
    Left = 295
    Top = 44
    object qProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object qProdutoPRD_REFER: TStringField
      Tag = 80
      FieldName = 'PRD_REFER'
    end
    object qProdutoPRD_DESCRI: TStringField
      Tag = 500
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qProdutoPRD_CODBARRA: TStringField
      Tag = 100
      FieldName = 'PRD_CODBARRA'
      Size = 13
    end
    object qProdutoPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object qProdutoPRD_UND: TStringField
      Tag = 30
      FieldName = 'PRD_UND'
      Size = 3
    end
    object qProdutoLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object qProdutoPRD_PVENDA: TFMTBCDField
      Tag = 100
      FieldName = 'PRD_PVENDA'
      Required = True
      DisplayFormat = '###,###,##0.0000'
      Precision = 18
      Size = 2
    end
  end
  object qInscricaoEstadual: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from EMP_MULTIPLAS_IE')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 96
    Top = 253
  end
  object dspInscricaoEstadual: TDataSetProvider
    DataSet = qInscricaoEstadual
    Left = 188
    Top = 253
  end
  object cdsInscricaoEstadual: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInscricaoEstadual'
    Left = 279
    Top = 253
  end
  object dsInscricaoEstadual: TDataSource
    DataSet = cdsInscricaoEstadual
    Left = 359
    Top = 253
  end
  object cdsFor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFor'
    Left = 672
    Top = 321
    object cdsForFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object cdsForFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      Size = 60
    end
    object cdsForFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object cdsForFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      Size = 30
    end
    object cdsForFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object cdsForFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      Size = 14
    end
    object cdsForFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 70
    end
    object cdsForFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      Size = 11
    end
    object cdsForFOR_FAXCONT: TStringField
      FieldName = 'FOR_FAXCONT'
      Size = 11
    end
    object cdsForFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object cdsForFOR_EMAILCONT: TStringField
      FieldName = 'FOR_EMAILCONT'
      Size = 35
    end
    object cdsForFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Size = 150
    end
    object cdsForPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object cdsForEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsForTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
  end
  object qFor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT FOR_CODIGO,FOR_ENDERE,FOR_CIDADE,FOR_BAIRRO,FOR_UF,FOR_CG' +
        'C,FOR_RAZAO,FOR_FONCONT,FOR_FAXCONT,FOR_CONTATO,FOR_EMAILCONT,FO' +
        'R_EMAIL,PCL_CODIGO,EMP_CODIGO,TRP_CODIGO from FOR0000')
    SQLConnection = DBInicio.MainDB
    Left = 504
    Top = 321
    object qForFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object qForFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      Size = 60
    end
    object qForFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object qForFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      Size = 30
    end
    object qForFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object qForFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      Size = 14
    end
    object qForFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 70
    end
    object qForFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      Size = 11
    end
    object qForFOR_FAXCONT: TStringField
      FieldName = 'FOR_FAXCONT'
      Size = 11
    end
    object qForFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object qForFOR_EMAILCONT: TStringField
      FieldName = 'FOR_EMAILCONT'
      Size = 35
    end
    object qForFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Size = 150
    end
    object qForPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object qForEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qForTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
  end
  object dspFor: TDataSetProvider
    DataSet = qFor
    Left = 576
    Top = 321
  end
end
