object FrmFinanceiroAnaliseCreditoCliente: TFrmFinanceiroAnaliseCreditoCliente
  Left = 225
  Top = 323
  Caption = 'An'#225'lise de Cr'#233'dito'
  ClientHeight = 370
  ClientWidth = 972
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 81
    Width = 972
    Height = 287
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Informa'#231#245'es'
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 337
        Height = 166
        Caption = 'Contas '#224' Receber'
        Enabled = False
        TabOrder = 0
        object Label1: TLabel
          Left = 28
          Top = 24
          Width = 100
          Height = 14
          Alignment = taRightJustify
          Caption = 'Duplicatas '#224' Vencer:'
        end
        object Label2: TLabel
          Left = 27
          Top = 48
          Width = 101
          Height = 14
          Alignment = taRightJustify
          Caption = 'Duplicatas Vencidas:'
        end
        object Label3: TLabel
          Left = 47
          Top = 72
          Width = 81
          Height = 14
          Alignment = taRightJustify
          Caption = 'M'#233'dia de Atraso:'
        end
        object Label4: TLabel
          Left = 51
          Top = 96
          Width = 77
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total em Aberto:'
        end
        object DBEdit2: TDBEdit
          Left = 130
          Top = 21
          Width = 121
          Height = 22
          DataField = 'FATURAS_PENDENTES'
          DataSource = DsPedidoAnalise
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 130
          Top = 45
          Width = 121
          Height = 22
          DataField = 'FATURAS_VENCIDAS'
          DataSource = DsPedidoAnalise
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 130
          Top = 69
          Width = 121
          Height = 22
          DataField = 'MEDIA_ATRASO'
          DataSource = DsPedidoAnalise
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 130
          Top = 93
          Width = 121
          Height = 22
          DataField = 'TotalAberto'
          DataSource = DsPedidoAnalise
          TabOrder = 3
        end
      end
      object GroupBox3: TGroupBox
        Left = 341
        Top = 0
        Width = 332
        Height = 121
        Caption = 'Compras'
        Enabled = False
        TabOrder = 1
        object Label6: TLabel
          Left = 91
          Top = 24
          Width = 69
          Height = 14
          Alignment = taRightJustify
          Caption = 'Maior Compra:'
        end
        object Label7: TLabel
          Left = 61
          Top = 48
          Width = 99
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor '#218'ltima Compra:'
        end
        object Label8: TLabel
          Left = 49
          Top = 72
          Width = 111
          Height = 14
          Alignment = taRightJustify
          Caption = 'Data da '#218'ltima Compra:'
        end
        object Label16: TLabel
          Left = 74
          Top = 96
          Width = 86
          Height = 14
          Alignment = taRightJustify
          Caption = 'Desconto Padr'#227'o:'
        end
        object DBEdit6: TDBEdit
          Left = 162
          Top = 21
          Width = 121
          Height = 22
          DataField = 'MAIOR_COMPRA'
          DataSource = DsPedidoAnalise
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 162
          Top = 45
          Width = 121
          Height = 22
          DataField = 'CLIENTE_ULTIMA_COMPRA'
          DataSource = DsPedidoAnalise
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 162
          Top = 69
          Width = 121
          Height = 22
          DataField = 'CLIENTE_DATA_ULTIMA_COMPRA'
          DataSource = DsPedidoAnalise
          TabOrder = 2
        end
        object DBEdit9: TDBEdit
          Left = 162
          Top = 93
          Width = 121
          Height = 22
          DataField = 'CLIENTE_DESCONTO'
          DataSource = DsPedidoAnalise
          TabOrder = 3
        end
      end
      object GroupBox4: TGroupBox
        Left = 680
        Top = 0
        Width = 283
        Height = 121
        Caption = 'Pedidos'
        Enabled = False
        TabOrder = 2
        object Label9: TLabel
          Left = 62
          Top = 24
          Width = 82
          Height = 14
          Alignment = taRightJustify
          Caption = 'Pedidos Abertos:'
        end
        object Label10: TLabel
          Left = 30
          Top = 48
          Width = 114
          Height = 14
          Alignment = taRightJustify
          Caption = 'Or'#231'amentos em Aberto:'
        end
        object DBEdit10: TDBEdit
          Left = 146
          Top = 21
          Width = 121
          Height = 22
          DataField = 'PEDIDOS_ABERTOS'
          DataSource = DsPedidoAnalise
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 146
          Top = 45
          Width = 121
          Height = 22
          DataField = 'PEDIDOS_ORCAMENTOS'
          DataSource = DsPedidoAnalise
          TabOrder = 1
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 166
        Width = 964
        Height = 92
        Align = alBottom
        Caption = 'Cliente'
        Enabled = False
        TabOrder = 3
        object Label12: TLabel
          Left = 40
          Top = 16
          Width = 88
          Height = 14
          Alignment = taRightJustify
          Caption = 'Porte da Empresa:'
        end
        object Label13: TLabel
          Left = 93
          Top = 40
          Width = 35
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cliente:'
        end
        object Label14: TLabel
          Left = 105
          Top = 64
          Width = 23
          Height = 14
          Alignment = taRightJustify
          Caption = 'Tipo:'
        end
        object Label19: TLabel
          Left = 544
          Top = 16
          Width = 48
          Height = 14
          Alignment = taRightJustify
          Caption = 'Atividade:'
        end
        object Label15: TLabel
          Left = 475
          Top = 40
          Width = 117
          Height = 14
          Alignment = taRightJustify
          Caption = 'Prazo de Venda Padr'#227'o:'
        end
        object Label18: TLabel
          Left = 542
          Top = 65
          Width = 50
          Height = 14
          Alignment = taRightJustify
          Caption = 'Vendedor:'
        end
        object DBEdit14: TDBEdit
          Left = 130
          Top = 13
          Width = 327
          Height = 22
          DataField = 'CLIENTE_PORTE'
          DataSource = DsPedidoAnalise
          TabOrder = 0
        end
        object DBEdit15: TDBEdit
          Left = 130
          Top = 37
          Width = 327
          Height = 22
          DataField = 'CLIENTE_NAC_INTER'
          DataSource = DsPedidoAnalise
          TabOrder = 1
        end
        object DBEdit16: TDBEdit
          Left = 130
          Top = 61
          Width = 327
          Height = 22
          DataField = 'CLIENTE_PESSOA'
          DataSource = DsPedidoAnalise
          TabOrder = 2
        end
        object DBEdit17: TDBEdit
          Left = 594
          Top = 13
          Width = 327
          Height = 22
          DataField = 'CLIENTE_ATIVIDADE'
          DataSource = DsPedidoAnalise
          TabOrder = 3
        end
        object DBEdit18: TDBEdit
          Left = 594
          Top = 37
          Width = 327
          Height = 22
          DataField = 'CLIENTE_PRAZO'
          DataSource = DsPedidoAnalise
          TabOrder = 4
        end
        object DBEdit19: TDBEdit
          Left = 594
          Top = 61
          Width = 327
          Height = 22
          DataField = 'CLIENTE_VENDEDOR'
          DataSource = DsPedidoAnalise
          TabOrder = 5
        end
      end
      object GroupBox6: TGroupBox
        Left = 342
        Top = 120
        Width = 621
        Height = 46
        Caption = 'Outras'
        Enabled = False
        TabOrder = 4
        object Label21: TLabel
          Left = 91
          Top = 21
          Width = 69
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cliente Desde:'
        end
        object Label22: TLabel
          Left = 435
          Top = 21
          Width = 45
          Height = 14
          Alignment = taRightJustify
          Caption = 'Situa'#231#227'o:'
        end
        object DBEdit12: TDBEdit
          Left = 162
          Top = 17
          Width = 121
          Height = 22
          DataField = 'CLIENTE_DESDE'
          DataSource = DsPedidoAnalise
          TabOrder = 0
        end
        object DBEdit13: TDBEdit
          Left = 482
          Top = 17
          Width = 121
          Height = 22
          DataField = 'CLIENTE_ATIVO'
          DataSource = DsPedidoAnalise
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Duplicatas em Aberto'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DbGridRecParc: TDBGrid
        Left = 0
        Top = 0
        Width = 964
        Height = 258
        Hint = 'dois cliques para entrar na parcela.'
        Align = alClient
        Color = 16776176
        DataSource = DsParcelasGrid
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FAT_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'Fatura'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_NUMER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'N'#186
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VENCTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vencimento'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VLPARC'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VLPAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Vl.Pago'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAN_APELIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Conta'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 308
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_PAGTO'
            Title.Alignment = taCenter
            Title.Caption = 'Pagto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_STATUS'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 97
            Visible = True
          end>
      end
    end
  end
  object grpEmpresa: TGroupBox
    Left = 0
    Top = 0
    Width = 972
    Height = 38
    Align = alTop
    Caption = 'Multi Empresa'
    TabOrder = 1
    object lbl1: TLabel
      Left = 742
      Top = 13
      Width = 94
      Height = 14
      Alignment = taRightJustify
      Caption = 'Saldo do Cr'#233'dito:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 318
      Top = 13
      Width = 99
      Height = 14
      Alignment = taRightJustify
      Caption = 'Limite de Cr'#233'dito:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 552
      Top = 13
      Width = 49
      Height = 14
      Alignment = taRightJustify
      Caption = 'Utilizado:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object chkMultiEmpresa: TCheckBox
      Left = 16
      Top = 16
      Width = 249
      Height = 17
      Caption = 'Visualizar informa'#231#245'es de todas as empresas'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chkMultiEmpresaClick
    end
    object dbedt1: TDBEdit
      Left = 842
      Top = 10
      Width = 121
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'SaldoCredito'
      DataSource = DsPedidoAnalise
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object dbedt2: TDBEdit
      Left = 418
      Top = 10
      Width = 121
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'CLIENTE_LIMITE_CREDITO'
      DataSource = DsPedidoAnalise
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object dbedt3: TDBEdit
      Left = 602
      Top = 10
      Width = 121
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'LimiteUtilizado'
      DataSource = DsPedidoAnalise
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object grpCliente: TGroupBox
    Left = 0
    Top = 38
    Width = 972
    Height = 43
    Align = alTop
    Caption = 'Cliente'
    TabOrder = 2
    object btnCliente: TSpeedButton
      Left = 400
      Top = 14
      Width = 25
      Height = 21
      Hint = 'Busca Cliente'
      Flat = True
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
      OnClick = btnClienteClick
    end
    object CbCliente: TComboBoxRw
      Left = 56
      Top = 14
      Width = 319
      Height = 22
      TabOrder = 0
      OnExit = CbClienteExit
      OnChange = CbClienteChange
      CharCase = ecUpperCase
      LookupSelect = 'CLI_RAZAO'
      LookupOrderBy = 'CLI_RAZAO'
      LookupTable = 'cli0000'
      GridAutoSize = False
      LookupSource = CbCliente.InternalSource
      LookupKeyField = 'CLI_CODIGO'
      ShowButton = True
      LookupTableShare = 'CLIENTES'
      AutoF8WinTitulo = 'Clientes'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'cli0000'
      CamposCarregar = 'CLI_RAZAO'
      CamposRetornar = 'CLI_CODIGO'
      CamposOrdernar = 'CLI_RAZAO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'CLIENTES'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object EdClienteCodigo: TEdit
      Left = 12
      Top = 14
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 1
      OnExit = EdClienteCodigoExit
    end
  end
  object CdsPedidoAnalise: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.ped_registro,'#13#10'T1.ped_codigo,'#13#10'T1.ped_status_analise_' +
      'credito,'#13#10'T1.ped_dtentrada,'#13#10'T2.cli_codigo,'#13#10'T2.cli_razao,'#13#10'T3.o' +
      'pv_descricao,'#13#10'T1.ped_vltotal_liq,'#13#10'T7.pcl_nome AS PRAZO_PEDIDO,' +
      #13#10'T2.cli_fone,'#13#10'T1.ped_dtsaida,'#13#10'T2.cli_cgc,'#13#10'T1.ped_obs_analise' +
      '_credito,'#13#10'CASE'#13#10'    WHEN (T2.cli_inativo = '#39'A'#39') THEN'#13#10'        '#39 +
      'ATIVO'#39#13#10'    ELSE'#13#10'        '#39'INATIVO'#39#13#10'END AS CLIENTE_ATIVO,'#13#10'(SEL' +
      'ECT coalesce(SUM(T6.fpc_vlparc),0) FROM fat_pc01 T6 WHERE T6.cli' +
      '_codigo = T1.cli_codigo AND T6.fpc_vencto < current_date AND T6.' +
      'fpc_sitpag = '#39'P'#39') AS FATURAS_VENCIDAS,'#13#10'(SELECT coalesce(SUM(T6.' +
      'fpc_vlparc),0) FROM fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_cod' +
      'igo AND T6.fpc_vencto >= current_date AND T6.fpc_sitpag = '#39'P'#39') A' +
      'S FATURAS_PENDENTES,'#13#10'coalesce(CAST((SELECT SUM(T6.fpc_vencto - ' +
      'T6.fpc_pagto) FROM fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_codi' +
      'go AND T6.fpc_sitpag = '#39'L'#39') / (SELECT COUNT(T6.fat_registro) FRO' +
      'M fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_codigo AND T6.fpc_sit' +
      'pag = '#39'L'#39') AS INTEGER),0)  AS MEDIA_ATRASO,'#13#10#13#10'T2.CLI_DTINICIO A' +
      'S CLIENTE_DESDE,'#13#10'T2.cli_limitecred AS CLIENTE_LIMITE_CREDITO,'#13#10 +
      'T4.rep_nome AS CLIENTE_VENDEDOR,'#13#10'T5.pcl_nome AS CLIENTE_PRAZO,'#13 +
      #10'CASE'#13#10'    when (t2.cli_porte = '#39'P'#39') THEN'#13#10'        '#39'PEQUENO'#39#13#10'  ' +
      '  when (t2.cli_porte = '#39'M'#39') THEN'#13#10'        '#39'MEDIO'#39#13#10'    ELSE'#13#10'   ' +
      '     '#39'GRANDE'#39#13#10'END as CLIENTE_PORTE,'#13#10'CASE'#13#10'    WHEN (T2.cli_pai' +
      's = '#39'N'#39') THEN'#13#10'        '#39'NACIONAL'#39#13#10'    ELSE'#13#10'        '#39'INTERNACIO' +
      'NAL'#39#13#10'END AS CLIENTE_NAC_INTER,'#13#10'CASE'#13#10'    WHEN (T2.cli_pessoa =' +
      ' '#39'J'#39') THEN'#13#10'        '#39'JUR'#205'DICA'#39#13#10'    ELSE'#13#10'        '#39'F'#205'SICA'#39#13#10'END ' +
      'AS CLIENTE_PESSOA,'#13#10'T8.rcl_atividade AS CLIENTE_ATIVIDADE,'#13#10'T2.C' +
      'LI_VL_ULTCOMP AS CLIENTE_ULTIMA_COMPRA,'#13#10'T2.CLI_DTULTCOM AS CLIE' +
      'NTE_DATA_ULTIMA_COMPRA,'#13#10'coalesce(T2.CLI_DESC2,0) AS CLIENTE_DES' +
      'CONTO,'#13#10'coalesce((SELECT SUM(T9.ped_vltotal_liq) FROM ped0000 T9' +
      ' WHERE T9.cli_codigo = T1.cli_codigo AND T9.ped_situacao = '#39'F'#39' A' +
      'ND T9.opv_codigo IN (SELECT T10.opv_codigo FROM opv0000 T10 WHER' +
      'E T10.opv_venda = '#39'S'#39')),0) AS PEDIDOS_ABERTOS,'#13#10'coalesce((SELECT' +
      ' SUM(T9.ped_vltotal_liq) FROM ped0000 T9 WHERE T9.cli_codigo = T' +
      '1.cli_codigo AND T9.ped_situacao = '#39'F'#39' AND T9.opv_codigo IN (SEL' +
      'ECT T10.opv_codigo FROM opv0000 T10 WHERE T10.opv_servico = '#39'S'#39')' +
      '),0) AS PEDIDOS_ORCAMENTOS,'#13#10'coalesce((SELECT MAX(T9.ped_vltotal' +
      '_liq) FROM ped0000 T9 WHERE T9.cli_codigo = T1.cli_codigo AND T9' +
      '.opv_codigo IN (SELECT T10.opv_codigo FROM opv0000 T10 WHERE T10' +
      '.opv_venda = '#39'S'#39')),0) AS MAIOR_COMPRA'#13#10#13#10'FROM'#13#10'ped0000 T1'#13#10#13#10'LEF' +
      'T JOIN cli0000 T2 ON (T2.cli_codigo = T1.cli_codigo)'#13#10'LEFT JOIN ' +
      'opv0000 T3 ON (T3.opv_codigo = T1.opv_codigo)'#13#10'LEFT JOIN rep0000' +
      ' T4 ON (T4.rep_codigo = T2.rep_codigo)'#13#10'LEFT JOIN pcl0000 T5 ON ' +
      '(T5.pcl_codigo = T2.pcl_codigo)'#13#10'LEFT JOIN pcl0000 T7 ON (T7.pcl' +
      '_codigo = T1.pcl_codigo)'#13#10'LEFT JOIN cli_atv1 T8 ON (T8.rcl_codig' +
      'o = T2.CLI_ATIVIDADE)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 20
    Params = <>
    OnCalcFields = CdsPedidoAnaliseCalcFields
    CommandText = 
      'SELECT'#13#10'T1.ped_registro,'#13#10'T1.ped_codigo,'#13#10'T1.ped_status_analise_' +
      'credito,'#13#10'T1.ped_dtentrada,'#13#10'T2.cli_codigo,'#13#10'T2.cli_razao,'#13#10'T3.o' +
      'pv_descricao,'#13#10'T1.ped_vltotal_liq,'#13#10'T7.pcl_nome AS PRAZO_PEDIDO,' +
      #13#10'T2.cli_fone,'#13#10'T1.ped_dtsaida,'#13#10'T2.cli_cgc,'#13#10'T1.ped_obs_analise' +
      '_credito,'#13#10'CASE'#13#10'    WHEN (T2.cli_inativo = '#39'A'#39') THEN'#13#10'        '#39 +
      'ATIVO'#39#13#10'    ELSE'#13#10'        '#39'INATIVO'#39#13#10'END AS CLIENTE_ATIVO,'#13#10'(SEL' +
      'ECT coalesce(SUM(T6.fpc_vlparc),0) FROM fat_pc01 T6 WHERE T6.cli' +
      '_codigo = T1.cli_codigo AND T6.fpc_vencto < current_date AND T6.' +
      'fpc_sitpag = '#39'P'#39') AS FATURAS_VENCIDAS,'#13#10'(SELECT coalesce(SUM(T6.' +
      'fpc_vlparc),0) FROM fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_cod' +
      'igo AND T6.fpc_vencto >= current_date AND T6.fpc_sitpag = '#39'P'#39') A' +
      'S FATURAS_PENDENTES,'#13#10'coalesce(CAST((SELECT SUM(T6.fpc_vencto - ' +
      'T6.fpc_pagto) FROM fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_codi' +
      'go AND T6.fpc_sitpag = '#39'L'#39') / (SELECT COUNT(T6.fat_registro) FRO' +
      'M fat_pc01 T6 WHERE T6.cli_codigo = T1.cli_codigo AND T6.fpc_sit' +
      'pag = '#39'L'#39') AS INTEGER),0)  AS MEDIA_ATRASO,'#13#10#13#10'T2.CLI_DTINICIO A' +
      'S CLIENTE_DESDE,'#13#10'T2.cli_limitecred AS CLIENTE_LIMITE_CREDITO,'#13#10 +
      'T4.rep_nome AS CLIENTE_VENDEDOR,'#13#10'T5.pcl_nome AS CLIENTE_PRAZO,'#13 +
      #10'CASE'#13#10'    when (t2.cli_porte = '#39'P'#39') THEN'#13#10'        '#39'PEQUENO'#39#13#10'  ' +
      '  when (t2.cli_porte = '#39'M'#39') THEN'#13#10'        '#39'MEDIO'#39#13#10'    ELSE'#13#10'   ' +
      '     '#39'GRANDE'#39#13#10'END as CLIENTE_PORTE,'#13#10'CASE'#13#10'    WHEN (T2.cli_pai' +
      's = '#39'N'#39') THEN'#13#10'        '#39'NACIONAL'#39#13#10'    ELSE'#13#10'        '#39'INTERNACIO' +
      'NAL'#39#13#10'END AS CLIENTE_NAC_INTER,'#13#10'CASE'#13#10'    WHEN (T2.cli_pessoa =' +
      ' '#39'J'#39') THEN'#13#10'        '#39'JUR'#205'DICA'#39#13#10'    ELSE'#13#10'        '#39'F'#205'SICA'#39#13#10'END ' +
      'AS CLIENTE_PESSOA,'#13#10'T8.rcl_atividade AS CLIENTE_ATIVIDADE,'#13#10'T2.C' +
      'LI_VL_ULTCOMP AS CLIENTE_ULTIMA_COMPRA,'#13#10'T2.CLI_DTULTCOM AS CLIE' +
      'NTE_DATA_ULTIMA_COMPRA,'#13#10'coalesce(T2.CLI_DESC2,0) AS CLIENTE_DES' +
      'CONTO,'#13#10'coalesce((SELECT SUM(T9.ped_vltotal_liq) FROM ped0000 T9' +
      ' WHERE T9.cli_codigo = T1.cli_codigo AND T9.ped_situacao = '#39'F'#39' A' +
      'ND T9.opv_codigo IN (SELECT T10.opv_codigo FROM opv0000 T10 WHER' +
      'E T10.opv_venda = '#39'S'#39')),0) AS PEDIDOS_ABERTOS,'#13#10'coalesce((SELECT' +
      ' SUM(T9.ped_vltotal_liq) FROM ped0000 T9 WHERE T9.cli_codigo = T' +
      '1.cli_codigo AND T9.ped_situacao = '#39'F'#39' AND T9.opv_codigo IN (SEL' +
      'ECT T10.opv_codigo FROM opv0000 T10 WHERE T10.opv_servico = '#39'S'#39')' +
      '),0) AS PEDIDOS_ORCAMENTOS,'#13#10'coalesce((SELECT MAX(T9.ped_vltotal' +
      '_liq) FROM ped0000 T9 WHERE T9.cli_codigo = T1.cli_codigo AND T9' +
      '.opv_codigo IN (SELECT T10.opv_codigo FROM opv0000 T10 WHERE T10' +
      '.opv_venda = '#39'S'#39')),0) AS MAIOR_COMPRA'#13#10#13#10'FROM'#13#10'ped0000 T1'#13#10#13#10'LEF' +
      'T JOIN cli0000 T2 ON (T2.cli_codigo = T1.cli_codigo)'#13#10'LEFT JOIN ' +
      'opv0000 T3 ON (T3.opv_codigo = T1.opv_codigo)'#13#10'LEFT JOIN rep0000' +
      ' T4 ON (T4.rep_codigo = T2.rep_codigo)'#13#10'LEFT JOIN pcl0000 T5 ON ' +
      '(T5.pcl_codigo = T2.pcl_codigo)'#13#10'LEFT JOIN pcl0000 T7 ON (T7.pcl' +
      '_codigo = T1.pcl_codigo)'#13#10'LEFT JOIN cli_atv1 T8 ON (T8.rcl_codig' +
      'o = T2.CLI_ATIVIDADE)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 192
    Top = 8
    object CdsPedidoAnalisePED_REGISTRO: TIntegerField
      FieldName = 'PED_REGISTRO'
      Required = True
    end
    object CdsPedidoAnalisePED_CODIGO: TStringField
      Alignment = taCenter
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object CdsPedidoAnalisePED_STATUS_ANALISE_CREDITO: TStringField
      FieldName = 'PED_STATUS_ANALISE_CREDITO'
      Size = 1
    end
    object CdsPedidoAnalisePED_DTENTRADA: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'PED_DTENTRADA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CdsPedidoAnaliseCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object CdsPedidoAnaliseOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object CdsPedidoAnalisePED_VLTOTAL_LIQ: TFMTBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnalisePRAZO_PEDIDO: TStringField
      FieldName = 'PRAZO_PEDIDO'
      Size = 35
    end
    object CdsPedidoAnaliseCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object CdsPedidoAnalisePED_DTSAIDA: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'PED_DTSAIDA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CdsPedidoAnaliseCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object CdsPedidoAnalisePED_OBS_ANALISE_CREDITO: TBlobField
      FieldName = 'PED_OBS_ANALISE_CREDITO'
      Size = 1
    end
    object CdsPedidoAnaliseCLIENTE_ATIVO: TStringField
      FieldName = 'CLIENTE_ATIVO'
      FixedChar = True
      Size = 7
    end
    object CdsPedidoAnaliseFATURAS_VENCIDAS: TFMTBCDField
      FieldName = 'FATURAS_VENCIDAS'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnaliseFATURAS_PENDENTES: TFMTBCDField
      FieldName = 'FATURAS_PENDENTES'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnaliseMEDIA_ATRASO: TIntegerField
      FieldName = 'MEDIA_ATRASO'
    end
    object CdsPedidoAnaliseCLIENTE_DESDE: TSQLTimeStampField
      FieldName = 'CLIENTE_DESDE'
    end
    object CdsPedidoAnaliseCLIENTE_LIMITE_CREDITO: TFMTBCDField
      FieldName = 'CLIENTE_LIMITE_CREDITO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnaliseCLIENTE_VENDEDOR: TStringField
      FieldName = 'CLIENTE_VENDEDOR'
      Size = 35
    end
    object CdsPedidoAnaliseCLIENTE_PRAZO: TStringField
      FieldName = 'CLIENTE_PRAZO'
      Size = 35
    end
    object CdsPedidoAnaliseCLIENTE_PORTE: TStringField
      FieldName = 'CLIENTE_PORTE'
      FixedChar = True
      Size = 7
    end
    object CdsPedidoAnaliseCLIENTE_NAC_INTER: TStringField
      FieldName = 'CLIENTE_NAC_INTER'
      FixedChar = True
      Size = 13
    end
    object CdsPedidoAnaliseCLIENTE_PESSOA: TStringField
      FieldName = 'CLIENTE_PESSOA'
      FixedChar = True
      Size = 8
    end
    object CdsPedidoAnaliseCLIENTE_ATIVIDADE: TStringField
      FieldName = 'CLIENTE_ATIVIDADE'
    end
    object CdsPedidoAnaliseCLIENTE_ULTIMA_COMPRA: TFMTBCDField
      FieldName = 'CLIENTE_ULTIMA_COMPRA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnaliseCLIENTE_DATA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'CLIENTE_DATA_ULTIMA_COMPRA'
    end
    object CdsPedidoAnaliseCLIENTE_DESCONTO: TFMTBCDField
      FieldName = 'CLIENTE_DESCONTO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 5
    end
    object CdsPedidoAnalisePEDIDOS_ABERTOS: TFMTBCDField
      FieldName = 'PEDIDOS_ABERTOS'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnalisePEDIDOS_ORCAMENTOS: TFMTBCDField
      FieldName = 'PEDIDOS_ORCAMENTOS'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnaliseccSituacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'ccSituacao'
      Size = 15
      Calculated = True
    end
    object CdsPedidoAnaliseTotalAberto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalAberto'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
    object CdsPedidoAnaliseSaldoCredito: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SaldoCredito'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
    object CdsPedidoAnaliseMAIOR_COMPRA: TFMTBCDField
      FieldName = 'MAIOR_COMPRA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoAnaliseLimiteUtilizado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LimiteUtilizado'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
    end
    object CdsPedidoAnaliseCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
  end
  object DsPedidoAnalise: TDataSource
    DataSet = CdsPedidoAnalise
    OnDataChange = DsPedidoAnaliseDataChange
    Left = 224
    Top = 8
  end
  object SqlCdsItens: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select  '#13#10'PED_CODIGO,'#13#10'PRD_REFER, '#13#10'PRF_PRDDESCRI, '#13#10'PRF_QTDE, '#13 +
      #10'PRF_PRECO, '#13#10'PRF_SITUACAO,'#13#10'PRF_QTDEFAT '#13#10'from PED_IT01'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsItensCalcFields
    CommandText = 
      'select  '#13#10'PED_CODIGO,'#13#10'PRD_REFER, '#13#10'PRF_PRDDESCRI, '#13#10'PRF_QTDE, '#13 +
      #10'PRF_PRECO, '#13#10'PRF_SITUACAO,'#13#10'PRF_QTDEFAT '#13#10'from PED_IT01'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 128
    Top = 8
    object SqlCdsItensPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 50
    end
    object SqlCdsItensPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 15
    end
    object SqlCdsItensPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsItensPRF_SITUACAO: TStringField
      FieldName = 'PRF_SITUACAO'
      Size = 1
    end
    object SqlCdsItensCC_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_SITUACAO'
      Size = 12
      Calculated = True
    end
    object SqlCdsItensPRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Precision = 15
    end
    object SqlCdsItensCC_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CC_TOTAL'
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Calculated = True
    end
  end
  object DsPedItens: TDataSource
    DataSet = SqlCdsItens
    Left = 160
    Top = 8
  end
  object CdsParcelasGrid: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT '#13#10'P1.FAT_REGISTRO,'#13#10'P1.FAT_CODIGO,'#13#10'P1.FPC_NUMER, '#13#10'P1.FP' +
      'C_VLPARC, '#13#10'P1.FPC_VENCTO, '#13#10'P1.FPC_VLPAGO,'#13#10'P1.FPC_PAGTO,'#13#10'P1.F' +
      'PC_STATUS,'#13#10'P1.FPC_PREVISAO,'#13#10'P1.FPC_SITPAG,'#13#10'P1.FPC_EXCLUSAO,'#13#10 +
      'B1.BAN_APELIDO '#13#10'FROM FAT_PC01 P1 '#13#10'LEFT JOIN BAN0000 B1 on B1.B' +
      'AN_CODIGO = P1.BAN_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT '#13#10'P1.FAT_REGISTRO,'#13#10'P1.FAT_CODIGO,'#13#10'P1.FPC_NUMER, '#13#10'P1.FP' +
      'C_VLPARC, '#13#10'P1.FPC_VENCTO, '#13#10'P1.FPC_VLPAGO,'#13#10'P1.FPC_PAGTO,'#13#10'P1.F' +
      'PC_STATUS,'#13#10'P1.FPC_PREVISAO,'#13#10'P1.FPC_SITPAG,'#13#10'P1.FPC_EXCLUSAO,'#13#10 +
      'B1.BAN_APELIDO '#13#10'FROM FAT_PC01 P1 '#13#10'LEFT JOIN BAN0000 B1 on B1.B' +
      'AN_CODIGO = P1.BAN_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 256
    Top = 8
    object CdsParcelasGridFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      Required = True
    end
    object CdsParcelasGridFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object CdsParcelasGridFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object CdsParcelasGridFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object CdsParcelasGridFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object CdsParcelasGridFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      currency = True
      Precision = 15
    end
    object CdsParcelasGridFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object CdsParcelasGridFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object CdsParcelasGridBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 16
    end
    object CdsParcelasGridFPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      Size = 1
    end
    object CdsParcelasGridFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object CdsParcelasGridFPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      Size = 1
    end
  end
  object DsParcelasGrid: TDataSource
    DataSet = CdsParcelasGrid
    Left = 288
    Top = 8
  end
end
