inherited frmCotacaoAutorizacao: TfrmCotacaoAutorizacao
  Caption = 'Autoriza'#231#227'o de Cota'#231#227'o'
  ClientHeight = 123
  ClientWidth = 584
  ExplicitWidth = 592
  ExplicitHeight = 150
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 26
    Top = 22
    Width = 98
    Height = 13
    Hint = 'Data em que ser'#227'o entregues os itens aprovados da cota'#231#227'o'
    Caption = 'Data da Autoriza'#231#227'o'
    ParentShowHint = False
    ShowHint = True
  end
  object Label2: TLabel [1]
    Left = 288
    Top = 22
    Width = 61
    Height = 13
    Caption = 'Respons'#225'vel'
  end
  object Label3: TLabel [2]
    Left = 26
    Top = 51
    Width = 99
    Height = 13
    Hint = 'Data em que ser'#227'o entregues os itens aprovados da cota'#231#227'o'
    Caption = 'Status da Solicita'#231#227'o'
    ParentShowHint = False
    ShowHint = True
  end
  object Label4: TLabel [3]
    Left = 291
    Top = 51
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
  end
  object dtCitDataAutorizacao: TJvDateEdit [4]
    Left = 130
    Top = 19
    Width = 82
    Height = 21
    DateFormat = 'YYYY'
    ReadOnly = True
    ShowNullDate = False
    YearDigits = dyFour
    TabOrder = 0
  end
  object edResponsavel: TEdit [5]
    Left = 355
    Top = 19
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object cbStatus: TComboBox [6]
    Left = 130
    Top = 48
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 2
    Text = 'N'#227'o Definido'
    Items.Strings = (
      'N'#227'o Definido'
      'Aberta'
      'Rejeitada'
      'Autoriza'#231#227'o de Cota'#231#227'o'
      'Cota'#231#227'o Finalizada'
      'Autoriza'#231#227'o de Compra'
      'Conclu'#237'da'
      'Cancelada')
  end
  object edObservacao: TEdit [7]
    Left = 355
    Top = 48
    Width = 214
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    MaxLength = 255
    TabOrder = 3
  end
  object btGravar: TButton [8]
    Left = 171
    Top = 90
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 4
    OnClick = btGravarClick
  end
  object btCancelar: TButton [9]
    Left = 291
    Top = 90
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = btCancelarClick
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 640
    Top = 216
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 488
    Top = 264
  end
  inherited qAux: TFDQuery
    Left = 611
    Top = 320
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 768
    Top = 264
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 704
    Top = 240
  end
  inherited FDTransac: TFDTransaction
    Left = 552
    Top = 264
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 632
    Top = 264
  end
  inherited qAux2: TFDQuery
    Left = 659
    Top = 319
  end
  inherited qAux3: TFDQuery
    Left = 699
    Top = 319
  end
  inherited qAux4: TFDQuery
    Left = 739
    Top = 319
  end
  inherited dbConn: TFDConnection
    Left = 483
    Top = 320
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 552
    Top = 320
  end
end
