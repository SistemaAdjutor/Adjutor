inherited frmInfLotePrd: TfrmInfLotePrd
  Caption = 'Informar Lote produ'#231#227'o'
  ClientHeight = 179
  ClientWidth = 475
  ExplicitWidth = 483
  ExplicitHeight = 206
  PixelsPerInch = 96
  TextHeight = 13
  object GLote: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 475
    Height = 179
    Align = alClient
    Caption = 'Informa'#231#245'es sobre o lote'
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 458
    ExplicitHeight = 113
    object Label1: TLabel
      Left = 37
      Top = 32
      Width = 39
      Height = 13
      Caption = 'Lote n'#186':'
    end
    object lfab: TLabel
      Left = 16
      Top = 64
      Width = 56
      Height = 13
      Caption = 'Fabrica'#231#227'o:'
    end
    object Label2: TLabel
      Left = 232
      Top = 61
      Width = 44
      Height = 13
      Caption = 'Validade:'
    end
    object dtValidade: TJvDateEdit
      Left = 295
      Top = 57
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 2
    end
    object dtFabricacao: TJvDateEdit
      Left = 89
      Top = 58
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 1
    end
    object edLote: TEdit
      Left = 89
      Top = 28
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnok: TButton
      Left = 282
      Top = 122
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 3
      OnClick = btnokClick
    end
    object btnCancelar: TButton
      Left = 374
      Top = 122
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 4
    end
  end
end
