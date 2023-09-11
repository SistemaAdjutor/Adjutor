object FormContasReceberB: TFormContasReceberB
  Left = -2
  Top = -3
  Width = 802
  Height = 576
  Caption = 'Contas '#224' Receber'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 794
    Height = 549
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 1
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Pe&squisa'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 2
        Top = 0
        Width = 363
        Height = 41
        Caption = 'Pesquisa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Rad_Vencimento: TRadioButton
          Left = 282
          Top = 15
          Width = 74
          Height = 17
          Caption = '&Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Rad_Cliente: TRadioButton
          Left = 5
          Top = 15
          Width = 53
          Height = 17
          Caption = '&Cliente'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object Rad_Emissao: TRadioButton
          Left = 214
          Top = 15
          Width = 61
          Height = 17
          Caption = '&Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Rad_Fatura: TRadioButton
          Left = 70
          Top = 15
          Width = 52
          Height = 17
          Caption = '&Fatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Rad_Num: TRadioButton
          Left = 131
          Top = 15
          Width = 68
          Height = 17
          Caption = 'Nosso N'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 363
        Top = 0
        Width = 68
        Height = 41
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object ChkPrevisao: TCheckBox
          Left = 4
          Top = 16
          Width = 59
          Height = 17
          Caption = '&Previs'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object GbCliente: TGroupBox
        Left = 1
        Top = 43
        Width = 361
        Height = 42
        Caption = 'Informe o cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object CbClientes: TComboBox
          Left = 43
          Top = 15
          Width = 315
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ItemIndex = 0
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            '')
        end
        object Edt_Lista: TEdit
          Left = 5
          Top = 15
          Width = 37
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 0
        end
      end
      object PanClie: TPanel
        Left = 363
        Top = 47
        Width = 321
        Height = 37
        BevelOuter = bvNone
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        object Label3: TLabel
          Left = 3
          Top = 4
          Width = 35
          Height = 13
          Caption = 'Cliente:'
        end
        object Label4: TLabel
          Left = 2
          Top = 20
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object lbl_codigo: TLabel
          Left = 40
          Top = 4
          Width = 3
          Height = 13
        end
        object lbl_cidade: TLabel
          Left = 41
          Top = 20
          Width = 3
          Height = 13
        end
      end
      object BitCancelar: TBitBtn
        Left = 686
        Top = 8
        Width = 100
        Height = 22
        Caption = '&Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object BitPesquisar: TBitBtn
        Left = 686
        Top = 8
        Width = 100
        Height = 22
        Caption = '&Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object BitBaixar: TBitBtn
        Left = 686
        Top = 30
        Width = 100
        Height = 22
        Caption = '&Baixar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object BitBtn4: TBitBtn
        Left = 686
        Top = 52
        Width = 100
        Height = 22
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = BitBtn4Click
      end
      object DBGridRecParce: TDBGrid
        Left = 1
        Top = 87
        Width = 791
        Height = 431
        Color = 16776176
        FixedColor = 10841658
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'FAT_CODIGO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Fatura'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FPC_NUMER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'PC'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_COBNUM'
            Title.Alignment = taCenter
            Title.Caption = 'Nosso N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_DTEMIS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 59
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'CLI_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_RAZAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 164
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VENCTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vencimento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VLPARC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_PAGTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Recebido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VLPAGO'
            Title.Caption = 'Vl Recebido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_STATUS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Situa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = '&Lan'#231'amentos'
      ImageIndex = 1
    end
  end
end
