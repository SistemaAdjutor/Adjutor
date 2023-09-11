object Form1: TForm1
  Left = 77
  Top = 128
  Width = 647
  Height = 249
  Caption = 'FrmImporta'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 12
    Width = 101
    Height = 13
    Caption = 'Arquivo do Interbase:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object FileAdjutor: TFilenameEdit
    Left = 114
    Top = 9
    Width = 330
    Height = 21
    Filter = 'Arquivos do Interbase|*.GDB|Todos arquivos|*.*'
    NumGlyphs = 1
    TabOrder = 0
  end
  object Button17: TButton
    Left = 453
    Top = 7
    Width = 75
    Height = 25
    Caption = 'conex'#227'o'
    TabOrder = 1
    OnClick = Button17Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 33
    Width = 639
    Height = 144
    Caption = 'Selecione a tabela abaixo:'
    TabOrder = 2
    object BtnClie: TButton
      Left = 5
      Top = 16
      Width = 75
      Height = 21
      Caption = 'Cli0000'
      TabOrder = 0
      OnClick = BtnClieClick
    end
    object BtnFor0000: TButton
      Left = 81
      Top = 16
      Width = 75
      Height = 21
      Caption = 'For0000'
      TabOrder = 1
      OnClick = BtnFor0000Click
    end
    object BtnFor_Prod: TButton
      Left = 157
      Top = 16
      Width = 75
      Height = 21
      Caption = 'For_Prod'
      TabOrder = 2
      OnClick = BtnFor_ProdClick
    end
    object BtnBan0000: TButton
      Left = 233
      Top = 16
      Width = 75
      Height = 21
      Caption = 'Ban0000'
      TabOrder = 3
      OnClick = BtnBan0000Click
    end
    object BtnCli_Ativ: TButton
      Left = 309
      Top = 16
      Width = 75
      Height = 21
      Caption = 'Cli_Atv1'
      TabOrder = 4
      OnClick = BtnCli_AtivClick
    end
    object BtnRep0000: TButton
      Left = 385
      Top = 16
      Width = 75
      Height = 21
      Caption = 'Rep0000'
      TabOrder = 5
      OnClick = BtnRep0000Click
    end
    object BtnReg0000: TButton
      Left = 461
      Top = 16
      Width = 75
      Height = 21
      Caption = 'Reg0000'
      TabOrder = 6
      OnClick = BtnReg0000Click
    end
    object BtnPrdLinha: TButton
      Left = 5
      Top = 40
      Width = 75
      Height = 21
      Caption = 'Prd_Linha'
      TabOrder = 7
      OnClick = BtnPrdLinhaClick
    end
    object BtnPrd_tipo: TButton
      Left = 81
      Top = 40
      Width = 75
      Height = 21
      Caption = 'Prd_Tipo'
      TabOrder = 8
      OnClick = BtnPrd_tipoClick
    end
    object BtnPrdEnsa: TButton
      Left = 157
      Top = 40
      Width = 75
      Height = 21
      Caption = 'Prd_Ensa'
      TabOrder = 9
      OnClick = BtnPrdEnsaClick
    end
    object BtnPrdPend: TButton
      Left = 233
      Top = 40
      Width = 75
      Height = 21
      Caption = 'Prd_Pend'
      TabOrder = 10
      OnClick = BtnPrdPendClick
    end
    object BtnPrdGrupo: TButton
      Left = 309
      Top = 40
      Width = 75
      Height = 21
      Caption = 'Prd_Grupo'
      TabOrder = 11
      OnClick = BtnPrdGrupoClick
    end
    object btnPcl: TButton
      Left = 385
      Top = 40
      Width = 75
      Height = 21
      Caption = 'Pcl0000'
      TabOrder = 12
      OnClick = btnPclClick
    end
    object BtnCeC: TButton
      Left = 461
      Top = 40
      Width = 75
      Height = 21
      Caption = 'CEC_0000'
      TabOrder = 13
      OnClick = BtnCeCClick
    end
    object BtnCaixa01: TButton
      Left = 5
      Top = 64
      Width = 75
      Height = 21
      Caption = 'CAIXA001'
      TabOrder = 14
      OnClick = BtnCaixa01Click
    end
    object BtnCaixa2: TButton
      Left = 81
      Top = 64
      Width = 75
      Height = 21
      Caption = 'CAIXA002'
      TabOrder = 15
      OnClick = BtnCaixa2Click
    end
    object BtnSaldoBco: TButton
      Left = 157
      Top = 64
      Width = 75
      Height = 21
      Caption = 'Saldo Bco'
      TabOrder = 16
      OnClick = BtnSaldoBcoClick
    end
    object BtnTrp: TButton
      Left = 233
      Top = 64
      Width = 75
      Height = 21
      Caption = 'Trp0000'
      TabOrder = 17
      OnClick = BtnTrpClick
    end
    object BtnPag: TButton
      Left = 309
      Top = 64
      Width = 75
      Height = 21
      Caption = 'Pag0000'
      TabOrder = 18
      OnClick = BtnPagClick
    end
    object BtnPag_Pc: TButton
      Left = 385
      Top = 64
      Width = 75
      Height = 21
      Caption = 'Pag_Pc01'
      TabOrder = 19
      OnClick = BtnPag_PcClick
    end
    object BtnFatPc: TButton
      Left = 461
      Top = 64
      Width = 75
      Height = 21
      Caption = 'Fat_Pc01'
      TabOrder = 20
      OnClick = BtnFatPcClick
    end
    object BtnFat: TButton
      Left = 537
      Top = 16
      Width = 75
      Height = 21
      Caption = 'Fat0000'
      TabOrder = 21
      OnClick = BtnFatClick
    end
    object BtnPed0000: TButton
      Left = 536
      Top = 40
      Width = 75
      Height = 21
      Caption = 'Ped0000'
      TabOrder = 22
      OnClick = BtnPed0000Click
    end
    object BtnPedIt01: TButton
      Left = 536
      Top = 64
      Width = 75
      Height = 21
      Caption = 'Ped_It01'
      TabOrder = 23
      OnClick = BtnPedIt01Click
    end
    object BtnPrd0000: TButton
      Left = 5
      Top = 88
      Width = 75
      Height = 21
      Caption = 'Prd0000'
      TabOrder = 24
      OnClick = BtnPrd0000Click
    end
    object BtnFatIt02: TButton
      Left = 81
      Top = 88
      Width = 75
      Height = 21
      Caption = 'Fat_It02'
      TabOrder = 25
      OnClick = BtnFatIt02Click
    end
    object BtnNf0001: TButton
      Left = 157
      Top = 88
      Width = 75
      Height = 21
      Caption = 'NF0001'
      TabOrder = 26
      OnClick = BtnNf0001Click
    end
    object BtnNFit01: TButton
      Left = 233
      Top = 88
      Width = 75
      Height = 21
      Caption = 'NF_IT01'
      TabOrder = 27
      OnClick = BtnNFit01Click
    end
    object BtnCCT: TButton
      Left = 461
      Top = 88
      Width = 150
      Height = 21
      Caption = 'CCT_0000 (depois)'
      TabOrder = 28
      OnClick = BtnCCTClick
    end
  end
  object BtnSair: TButton
    Left = 530
    Top = 7
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 3
    OnClick = BtnSairClick
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 180
    Width = 639
    Height = 38
    Caption = 'Progress'#227'o de Transfer'#234'ncia:'
    TabOrder = 4
    object PRBAR: TProgressBar
      Left = 6
      Top = 16
      Width = 628
      Height = 16
      Min = 0
      Max = 1000
      TabOrder = 0
    end
  end
end
