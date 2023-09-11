inherited FrmTelaCopiaProduto: TFrmTelaCopiaProduto
  Caption = 'Copiar Produto Como Novo'
  ClientHeight = 244
  ExplicitWidth = 320
  ExplicitHeight = 282
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 8
    Top = 8
    Width = 102
    Height = 13
    Caption = 'Produto Selecionado:'
  end
  object Edit1: TEdit [1]
    Left = 8
    Top = 24
    Width = 113
    Height = 21
    TabStop = False
    Color = 15329769
    ReadOnly = True
    TabOrder = 0
    Text = 'Edit1'
  end
  object GroupBox1: TGroupBox [2]
    Left = 8
    Top = 56
    Width = 537
    Height = 121
    Caption = 'Novo Produto:'
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 38
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia: '
    end
    object Label2: TLabel
      Left = 20
      Top = 66
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o:'
    end
    object Edit2: TEdit
      Left = 72
      Top = 32
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'EDIT2'
    end
    object Edit3: TEdit
      Left = 72
      Top = 60
      Width = 449
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      Text = 'EDIT2'
    end
  end
  object Button1: TButton [3]
    Left = 382
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Copiar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton [4]
    Left = 467
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit4: TEdit [5]
    Left = 128
    Top = 24
    Width = 417
    Height = 21
    TabStop = False
    Color = 15329769
    ReadOnly = True
    TabOrder = 3
    Text = 'Edit1'
  end
  inherited coCalcula: TACBrCalculadora
    Left = 224
    Top = 184
  end
  inherited DBConn: TSQLConnection
    Left = 168
    Top = 185
  end
end
