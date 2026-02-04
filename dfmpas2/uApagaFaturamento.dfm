inherited frmApagaFaturamento: TfrmApagaFaturamento
  Caption = 'Apagar Faturamento'
  ClientHeight = 291
  ClientWidth = 811
  ExplicitWidth = 827
  ExplicitHeight = 330
  PixelsPerInch = 96
  TextHeight = 13
  object lbFatura: TLabel [0]
    Left = 24
    Top = 25
    Width = 87
    Height = 13
    Caption = 'N'#250'mero da Fatura'
  end
  object lbPedido: TLabel [1]
    Left = 416
    Top = 26
    Width = 87
    Height = 13
    Caption = 'N'#250'mero do Pedido'
  end
  object btConfirma: TButton [2]
    Left = 256
    Top = 240
    Width = 137
    Height = 25
    Caption = 'Confirma'
    ModalResult = 1
    TabOrder = 0
    OnClick = btConfirmaClick
  end
  object btCancela: TButton [3]
    Left = 440
    Top = 240
    Width = 137
    Height = 25
    Caption = 'Cancela'
    ModalResult = 2
    TabOrder = 1
  end
  object mFatura: TMemo [4]
    Left = 24
    Top = 48
    Width = 380
    Height = 185
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object mPedido: TMemo [5]
    Left = 416
    Top = 49
    Width = 380
    Height = 185
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object edNumeroFatura: TEdit [6]
    Left = 117
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 4
    OnExit = edNumeroFaturaExit
  end
  object edNumeroPedido: TEdit [7]
    Left = 509
    Top = 22
    Width = 121
    Height = 21
    TabOrder = 5
    OnExit = edNumeroPedidoExit
  end
  inherited coCalcula: TACBrCalculadora
    Left = 104
    Top = 320
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 176
    Top = 320
  end
  inherited DBConn: TSQLConnection
    Left = 32
    Top = 313
  end
  inherited qAux: TSQLQuery
    Left = 290
    Top = 317
  end
  inherited qAux2: TSQLQuery
    Left = 346
    Top = 316
  end
  inherited qAux3: TSQLQuery
    Left = 394
    Top = 316
  end
end
