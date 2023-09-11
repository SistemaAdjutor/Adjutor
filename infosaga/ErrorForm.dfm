object FrmError: TFrmError
  Left = 445
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'frmError'
  ClientHeight = 338
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnBotton: TPanel
    Left = 0
    Top = 288
    Width = 295
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    DesignSize = (
      291
      46)
    object btContinue: TButton
      Left = 85
      Top = 7
      Width = 90
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Continue'
      TabOrder = 0
      OnClick = btContinueClick
    end
    object btCancele: TButton
      Left = 176
      Top = 7
      Width = 90
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Voltar (esc)'
      TabOrder = 1
      OnClick = btCanceleClick
    end
  end
  object LstBox: TListBox
    Left = 0
    Top = 0
    Width = 295
    Height = 288
    Style = lbOwnerDrawFixed
    Align = alClient
    Columns = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 32
    ParentFont = False
    TabOrder = 1
    OnDrawItem = LstBoxDrawItem
    OnMeasureItem = LstBoxMeasureItem
  end
end
