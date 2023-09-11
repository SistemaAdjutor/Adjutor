inherited frmPCPObservacaoIOP: TfrmPCPObservacaoIOP
  Caption = 'Observac'#245'es do Item da Ordem de Produ'#231#227'o'
  ClientHeight = 427
  ClientWidth = 615
  OnResize = FormResize
  ExplicitWidth = 623
  ExplicitHeight = 454
  PixelsPerInch = 96
  TextHeight = 13
  object gbPedido: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 615
    Height = 193
    Align = alTop
    Caption = 'Observa'#231#245'es do Pedido para Ordem de Produ'#231#227'o'
    TabOrder = 0
    ExplicitWidth = 638
    object ObsPed: TMemo
      Left = 2
      Top = 15
      Width = 611
      Height = 176
      Align = alClient
      Lines.Strings = (
        'ObsPed')
      TabOrder = 0
      ExplicitLeft = 416
      ExplicitTop = 40
      ExplicitWidth = 185
      ExplicitHeight = 89
    end
  end
  object gbProduto: TGroupBox [1]
    Left = 0
    Top = 193
    Width = 615
    Height = 193
    Align = alClient
    Caption = 'Observa'#231#245'es da Ficha T'#233'cnica do Produto'
    TabOrder = 1
    ExplicitLeft = 312
    ExplicitTop = 272
    ExplicitWidth = 185
    ExplicitHeight = 105
    object ObsPrd: TMemo
      Left = 2
      Top = 15
      Width = 611
      Height = 176
      Align = alClient
      Lines.Strings = (
        'ObsPrd')
      TabOrder = 0
      ExplicitLeft = 104
      ExplicitTop = 80
      ExplicitWidth = 185
      ExplicitHeight = 89
    end
  end
  object pnBotoes: TPanel [2]
    Left = 0
    Top = 386
    Width = 615
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 232
    ExplicitTop = 208
    ExplicitWidth = 185
    DesignSize = (
      615
      41)
    object btSalvar: TButton
      Left = 393
      Top = 9
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btSalvarClick
      ExplicitLeft = 416
    end
    object btSair: TButton
      Left = 497
      Top = 9
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Sair'
      TabOrder = 1
      OnClick = btSairClick
      ExplicitLeft = 520
    end
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 328
    Top = 32
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Top = 32
  end
  inherited FDTransac: TFDTransaction
    Left = 240
    Top = 80
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 328
    Top = 80
  end
  inherited dbConn: TFDConnection
    Top = 224
  end
end
