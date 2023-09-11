inherited FormFornecGrid: TFormFornecGrid
  Left = 300
  Top = 153
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lista de Fornecedores/Favorecidos'
  ClientHeight = 602
  ClientWidth = 964
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  KeyPreview = True
  Position = poDesktopCenter
  ExplicitWidth = 970
  ExplicitHeight = 627
  PixelsPerInch = 96
  TextHeight = 14
  inherited PageControl1: TPageControl
    Width = 964
    Height = 566
    TabOrder = 2
    ExplicitWidth = 964
    ExplicitHeight = 566
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 25
      ExplicitWidth = 956
      ExplicitHeight = 537
      inherited pnControle: TPanel
        Width = 956
        Height = 89
        ExplicitWidth = 956
        ExplicitHeight = 89
        inherited pnFiltro: TPanel
          Width = 956
          Height = 89
          Align = alClient
          ExplicitWidth = 956
          ExplicitHeight = 79
          inherited pn1: TPanel
            Top = 0
            Width = 956
            Height = 89
            Align = alClient
            ExplicitTop = -6
            ExplicitWidth = 956
            ExplicitHeight = 79
            inherited btnPesquisa: TSpeedButton
              Left = 562
              ExplicitLeft = 562
            end
            inherited btnLimpar: TSpeedButton
              Left = 562
              ExplicitLeft = 562
            end
            inherited btnImprime: TSpeedButton
              Left = 724
              ExplicitLeft = 724
            end
            inherited btnExcel: TSpeedButton
              Left = 801
              ExplicitLeft = 801
            end
            inherited btnFechar: TSpeedButton
              Left = 880
              ExplicitLeft = 880
            end
            object BitProdu: TBitBtn
              Left = 647
              Top = 15
              Width = 76
              Height = 39
              Anchors = [akTop, akRight]
              Caption = 'Pro&dutos'
              TabOrder = 0
              OnClick = BitProduClick
            end
            object GbPesquisaData: TGroupBox
              Left = 8
              Top = 43
              Width = 342
              Height = 43
              Caption = 'Informe o Per'#237'odo do '#250'ltimo fornecimento'
              TabOrder = 1
              object Label3: TLabel
                Left = 9
                Top = 19
                Width = 57
                Height = 14
                Caption = 'Data Inicial :'
              end
              object Label4: TLabel
                Left = 174
                Top = 20
                Width = 53
                Height = 14
                Caption = 'Data Final :'
              end
              object RxDataInicial: TJvDateEdit
                Left = 72
                Top = 16
                Width = 88
                Height = 22
                Glyph.Data = {
                  76050000424D760500000000000036000000280000001C0000000C0000000100
                  2000000000004005000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF008080800080808000808080008080800080808000808080008080
                  800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
                  0000800000008000000000000000800000000000000000000000800000008080
                  8000FF00FF008080800080808000808080008080800080808000808080008080
                  80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
                  0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
                  80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
                  C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                  0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
                  FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
                  8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                  000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                  C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF008080800080808000808080008080800080808000808080008080
                  80008080800080808000808080008080800080808000FF00FF00}
                ImageKind = ikCustom
                NumGlyphs = 2
                ButtonWidth = 20
                PopupColor = clBtnFace
                ShowNullDate = False
                YearDigits = dyFour
                TabOrder = 0
              end
              object RxDataFinal: TJvDateEdit
                Left = 235
                Top = 16
                Width = 89
                Height = 22
                Glyph.Data = {
                  76050000424D760500000000000036000000280000001C0000000C0000000100
                  2000000000004005000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF008080800080808000808080008080800080808000808080008080
                  800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
                  0000800000008000000000000000800000000000000000000000800000008080
                  8000FF00FF008080800080808000808080008080800080808000808080008080
                  80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
                  0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
                  80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
                  C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                  0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
                  FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
                  8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                  000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                  C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF008080800080808000808080008080800080808000808080008080
                  80008080800080808000808080008080800080808000FF00FF00}
                ImageKind = ikCustom
                NumGlyphs = 2
                ButtonWidth = 20
                PopupColor = clBtnFace
                ShowNullDate = False
                YearDigits = dyFour
                TabOrder = 1
              end
            end
          end
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 0
          Width = 201
          Height = 37
          Caption = 'Pesquisa'
          TabOrder = 1
          object RadNome: TRadioButton
            Left = 71
            Top = 16
            Width = 57
            Height = 17
            Caption = '&Nome'
            TabOrder = 0
            OnClick = RadNomeClick
          end
          object RadCodigo: TRadioButton
            Left = 8
            Top = 16
            Width = 57
            Height = 17
            Caption = '&C'#243'digo'
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = RadCodigoClick
          end
          object RadCNPJ: TRadioButton
            Left = 122
            Top = 16
            Width = 73
            Height = 17
            Caption = 'CN&PJ/CPF'
            TabOrder = 2
            OnClick = RadNomeClick
          end
        end
      end
      inherited DBGrid: TDBGrid
        Top = 89
        Width = 956
        Height = 448
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Name = 'Arial'
        OnDrawColumnCell = DBGridDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'FOR_CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_RAZAO'
            Title.Caption = 'Nome do Fornecedor/Favorecido'
            Width = 267
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_FONE'
            Title.Caption = 'Fone'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_CONTATO'
            Title.Caption = 'Contato'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_CIDADE'
            Title.Caption = 'Cidade'
            Width = 185
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_UF'
            Title.Caption = 'UF'
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_CGC'
            Title.Caption = 'CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_DTCADASTRO'
            Title.Caption = 'Cadastro'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_ENDERE'
            Title.Caption = 'Endere'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_BAIRRO'
            Title.Caption = 'Bairro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_CEP'
            Title.Caption = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_EMAIL'
            Title.Caption = 'E-mail'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_INSC'
            Title.Caption = 'Insc/RG'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Top = 566
    Width = 964
    TabOrder = 1
    ExplicitTop = 566
    ExplicitWidth = 964
    inherited btnSelect: TSpeedButton
      Left = 783
      ExplicitLeft = 783
    end
    inherited lbCntRegistros: TLabel
      Height = 14
      ExplicitHeight = 14
    end
  end
  object GbPesquisa: TGroupBox [2]
    Left = 219
    Top = 25
    Width = 296
    Height = 41
    Caption = 'Informe o c'#243'digo do fornecedor :'
    TabOrder = 0
    object Edt_Lista: TEdit
      Left = 3
      Top = 16
      Width = 270
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 4
      TabOrder = 0
      OnEnter = Edt_ListaEnter
      OnExit = Edt_ListaExit
      OnKeyPress = Edt_ListaKeyPress
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 208
    Top = 248
  end
  inherited qAux: TSQLQuery
    Top = 293
  end
  inherited qAux2: TSQLQuery
    Left = 330
    Top = 260
  end
  inherited qAux3: TSQLQuery
    Top = 276
  end
  inherited qBusco: TSQLQuery
    Tag = 1
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object cdsBuscoFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 70
    end
    object cdsBuscoFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object cdsBuscoFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      OnGetText = cdsBuscoFOR_FONEGetText
      EditMask = '!\(999\)9999-9999;0;_'
      Size = 11
    end
    object cdsBuscoFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      Size = 40
    end
    object cdsBuscoFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      Size = 30
    end
    object cdsBuscoFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object cdsBuscoFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object cdsBuscoFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      Size = 8
    end
    object cdsBuscoFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Size = 35
    end
    object cdsBuscoFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      OnGetText = cdsBuscoFOR_CGCGetText
      Size = 14
    end
    object cdsBuscoFOR_INSC: TStringField
      FieldName = 'FOR_INSC'
      Size = 14
    end
    object sqltmstmpfldBuscoFOR_DTCADASTRO: TSQLTimeStampField
      FieldName = 'FOR_DTCADASTRO'
    end
  end
end
