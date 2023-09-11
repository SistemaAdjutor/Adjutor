inherited frmBaseDBEditDetailFDAC: TfrmBaseDBEditDetailFDAC
  Caption = 'frmBaseDBEditDetailFDAC'
  ClientHeight = 468
  ClientWidth = 679
  OnShow = FormShow
  ExplicitWidth = 695
  ExplicitHeight = 506
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 437
    Width = 679
    Height = 31
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      679
      31)
    object btnConfirmar: TButton
      Left = 452
      Top = 3
      Width = 105
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TButton
      Left = 561
      Top = 3
      Width = 105
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object pprincipal: TPanel [1]
    Left = 0
    Top = 0
    Width = 679
    Height = 437
    Align = alClient
    TabOrder = 1
  end
  inherited dbConn: TFDConnection
    Left = 91
    Top = 144
  end
  object JvValidators1: TJvValidators
    ErrorIndicator = JvErrorIndicator1
    Left = 217
    Top = 354
  end
  object JvErrorIndicator1: TJvErrorIndicator
    BlinkStyle = ebsAlwaysBlink
    ImageIndex = 0
    Left = 313
    Top = 354
  end
  object JvValidationSummary1: TJvValidationSummary
    Left = 272
    Top = 320
  end
end
