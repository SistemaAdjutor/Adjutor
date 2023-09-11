object frmBase: TfrmBase
  Left = 348
  Top = 427
  Caption = 'frmBase'
  ClientHeight = 215
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object coCalcula: TACBrCalculadora
    Titulo = 'Calculadora'
    Centraliza = True
    BorderStyle = bsDialog
    Left = 32
    Top = 24
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 104
    Top = 24
  end
end
