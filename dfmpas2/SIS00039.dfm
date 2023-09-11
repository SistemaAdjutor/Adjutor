object FrmCadastroUsuario: TFrmCadastroUsuario
  Left = 29
  Top = 28
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de usu'#225'rios do Sistema'
  ClientHeight = 478
  ClientWidth = 736
  Color = 12615680
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 736
    Height = 475
    ActivePage = TabUsuario
    Align = alTop
    TabIndex = 1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consu&lta'
      OnShow = TabSheet1Show
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 728
        Height = 89
        Align = alTop
        Caption = 'Selecione a Pesquisa'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object RadCodigo: TRadioButton
          Left = 8
          Top = 17
          Width = 113
          Height = 17
          Caption = '&Codigo'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = RadCodigoClick
        end
        object Radnome: TRadioButton
          Left = 137
          Top = 18
          Width = 104
          Height = 17
          Caption = '&Nome do Usu'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = RadnomeClick
        end
        object GbConsulta: TGroupBox
          Left = 2
          Top = 37
          Width = 724
          Height = 50
          Align = alBottom
          Caption = 'Informe o C'#243'digo do usu'#225'rio'
          TabOrder = 2
          object BitPesquisar: TBitBtn
            Left = 513
            Top = 16
            Width = 100
            Height = 25
            Cursor = crHandPoint
            Caption = '&Pesquisa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitPesquisarClick
          end
          object BitSair1: TBitBtn
            Left = 614
            Top = 16
            Width = 100
            Height = 25
            Cursor = crHandPoint
            Caption = '&Sair'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitSairClick
          end
          object EdPesquisa: TEdit
            Left = 9
            Top = 19
            Width = 35
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 4
            ParentFont = False
            TabOrder = 2
            Text = '0000'
            OnExit = EdPesquisaExit
            OnKeyPress = EdPesquisaKeyPress
          end
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 92
        Width = 724
        Height = 354
        Caption = 'Usu'#225'rios'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object DBGridUsuario: TDBGrid
          Left = 2
          Top = 15
          Width = 720
          Height = 337
          Align = alClient
          Color = 12910591
          FixedColor = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGridUsuarioDblClick
          OnKeyPress = DBGridUsuarioKeyPress
          OnTitleClick = DBGridUsuarioTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'USU_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Usu'#225'rio'
              Width = 426
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_DATA_CADASTRO'
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'wTIPO_USUARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Usu'#225'rio'
              Width = 116
              Visible = True
            end>
        end
      end
    end
    object TabUsuario: TTabSheet
      Caption = 'Us&u'#225'rios'
      ImageIndex = 1
      OnShow = TabUsuarioShow
      object Bevel1: TBevel
        Left = 10
        Top = 414
        Width = 710
        Height = 6
        Shape = bsTopLine
      end
      object RxLabel1: TRxLabel
        Left = 5
        Top = 409
        Width = 118
        Height = 13
          
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShadowColor = clSilver
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 728
        Height = 407
        Align = alTop
        Color = clSilver
        ParentColor = False
        TabOrder = 0
        object Label2: TLabel
          Left = 42
          Top = 19
          Width = 36
          Height = 13
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 563
          Top = 19
          Width = 71
          Height = 13
          Caption = 'Data Cadastro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object labe4: TLabel
          Left = 9
          Top = 43
          Width = 70
          Height = 13
          Caption = 'Nome Usu'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 45
          Top = 90
          Width = 34
          Height = 13
          Caption = 'Senha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabConfirma: TLabel
          Left = 194
          Top = 90
          Width = 90
          Height = 13
          Caption = 'Confirmar a Senha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label5: TLabel
          Left = 552
          Top = 43
          Width = 84
          Height = 13
          Caption = 'Data Atualiza'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 546
          Top = 67
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = 'Perfil do Usu'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LblEstatisitica: TLabel
          Left = 669
          Top = 0
          Width = 48
          Height = 13
          Caption = 'Estatistica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label6: TLabel
          Left = 51
          Top = 116
          Width = 28
          Height = 13
          Caption = 'Email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 50
          Top = 67
          Width = 29
          Height = 13
          Caption = 'Login:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBECodigo: TDBEdit
          Left = 80
          Top = 15
          Width = 50
          Height = 21
          TabStop = False
          Color = 14145495
          Ctl3D = True
          DataField = 'USU_CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DbeUsuario: TDBEdit
          Left = 80
          Top = 39
          Width = 295
          Height = 21
          CharCase = ecUpperCase
          DataField = 'USU_NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 45
          ParentFont = False
          TabOrder = 2
        end
        object DBESenha: TDBEdit
          Left = 80
          Top = 87
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'USU_SENHA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 45
          ParentFont = False
          PasswordChar = '#'
          TabOrder = 6
          OnKeyPress = DBESenhaKeyPress
        end
        object EdConfirmaSenha: TMaskEdit
          Left = 286
          Top = 87
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          PasswordChar = '#'
          TabOrder = 7
          Visible = False
          OnExit = EdConfirmaSenhaExit
        end
        object CbTipoUsuario: TComboBox
          Left = 628
          Top = 63
          Width = 93
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 5
          OnClick = CbTipoUsuarioClick
          OnExit = CbTipoUsuarioExit
          Items.Strings = (
            'Administrador'
            'Gerencial'
            'Usu'#225'rio')
        end
        object BoxOperacao: TGroupBox
          Left = 589
          Top = 218
          Width = 132
          Height = 80
          Caption = 'Opera'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          object ChkInclusao: TCheckBox
            Left = 12
            Top = 38
            Width = 73
            Height = 17
            Caption = 'Incl&us'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = ChkInclusaoClick
            OnEnter = ChkInclusaoEnter
            OnExit = ChkInclusaoExit
          end
          object ChkExclusao: TCheckBox
            Left = 12
            Top = 59
            Width = 73
            Height = 17
            Caption = 'E&xclus'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = ChkExclusaoClick
            OnEnter = ChkExclusaoEnter
            OnExit = ChkExclusaoExit
          end
          object ChkAlteracao: TCheckBox
            Left = 12
            Top = 17
            Width = 73
            Height = 17
            Caption = '&Altera'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = ChkAlteracaoClick
            OnEnter = ChkAlteracaoEnter
            OnExit = ChkAlteracaoExit
          end
        end
        object GroupBox5: TGroupBox
          Left = 6
          Top = 137
          Width = 228
          Height = 263
          Caption = 'N'#237'vel de acesso do Usu'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          object SpBSemAcess: TSpeedButton
            Left = 3
            Top = 209
            Width = 110
            Height = 25
            Caption = '&Sem Acesso'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              32040000424D3204000000000000360000002800000014000000110000000100
              180000000000FC030000C40E0000C40E00000000000000000000008080008080
              0080800080808080808080800080800080800080800080800080800080800080
              8000808000808000808000808000808000808000808000808000808000808000
              00FF0000800000808080800080800080800080800080800080800000FF808080
              0080800080800080800080800080800080800080800080800080800000FF0000
              800000800000808080800080800080800080800000FF00008000008080808000
              80800080800080800080800080800080800080800080800000FF000080000080
              0000800000808080800080800000FF0000800000800000800000808080800080
              800080800080800080800080800080800080800080800000FF00008000008000
              0080000080808080000080000080000080000080000080808080008080008080
              0080800080800080800080800080800080800080800000FF0000800000800000
              8000008000008000008000008000008080808000808000808000808000808000
              80800080800080800080800080800080800080800000FF000080000080000080
              0000800000800000808080800080800080800080800080800080800080800080
              8000808000808000808000808000808000808000008000008000008000008000
              0080808080008080008080008080008080008080008080008080008080008080
              0080800080800080800080800080800000FF0000800000800000800000808080
              8000808000808000808000808000808000808000808000808000808000808000
              80800080800080800000FF000080000080000080000080000080808080008080
              0080800080800080800080800080800080800080800080800080800080800080
              800000FF00008000008000008080808000008000008000008080808000808000
              80800080800080800080800080800080800080800080800080800000FF000080
              0000800000808080800080800000FF0000800000800000808080800080800080
              800080800080800080800080800080800080800080800000FF00008000008080
              80800080800080800080800000FF000080000080000080808080008080008080
              0080800080800080800080800080800080800080800000FF0000800080800080
              800080800080800080800000FF00008000008000008000808000808000808000
              8080008080008080008080008080008080008080008080008080008080008080
              0080800080800080800000FF0000800000FF0080800080800080800080800080
              8000808000808000808000808000808000808000808000808000808000808000
              8080008080008080008080008080008080008080008080008080008080008080
              0080800080800080800080800080800080800080800080800080800080800080
              80008080008080008080008080008080008080008080}
            ParentFont = False
            OnClick = SpBSemAcessClick
          end
          object SpBAcessTot: TSpeedButton
            Left = 115
            Top = 209
            Width = 110
            Height = 25
            Caption = 'Acesso &Total'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              5E040000424D5E04000000000000360000002800000012000000130000000100
              18000000000028040000C40E0000C40E00000000000000000000008080008080
              0080800080800080808000008000000080800080800080800080800080800080
              8000808000808000808000808000808000000080800080800080800080808000
              0000800000800080000000808000808000808000808000808000808000808000
              8080008080008080000000808000808000808080000000800000800000800000
              8000800000008080008080008080008080008080008080008080008080008080
              0000008080008080800000008000008000008000008000008000008000800000
              0080800080800080800080800080800080800080800080800000008080800000
              00800000800000800000FF000080000080000080000080008000000080800080
              80008080008080008080008080008080000000808000800000800000800000FF
              0000800000FF0000800000800000800080000000808000808000808000808000
              8080008080008080000000808000FF0000800000FF0000800000800000800000
              FF00008000008000008000800000008080008080008080008080008080008080
              000000808080000000FF0000800000800000800000800000800000FF00008000
              0080000080008000000080800080800080800080800080800000800000008000
              00800000800000FF0000800000800000800000800000FF000080000080000080
              00800000008080008080008080008080000000800000800000800000FF000080
              8000FF0000800000800000800080000000FF0000800000800000800080000000
              8080008080008080000000FF0000800000FF0000808000808000808000FF0000
              800000800000800080000000FF00008000008000008000800000008080008080
              000000808000FF0000808000808000808000808000808000FF00008000008000
              00800080000000FF000080000080000080008000000080800000008080008080
              00808000808000808000808000808000808000FF000080000080000080008000
              0000FF0000800000800080000000808000000080800080800080800080800080
              8000808000808000808000808000FF0000800000800000800080000000FF0000
              8000008000008080000000808000808000808000808000808000808000808000
              808000808000808000FF0000800000800000800080000000FF00008080008080
              0000008080008080008080008080008080008080008080008080008080008080
              00808000FF000080000080000080008000000080800080800000008080008080
              00808000808000808000808000808000808000808000808000808000808000FF
              0000800000800080000000808000808000000080800080800080800080800080
              8000808000808000808000808000808000808000808000808000FF0000800000
              8000008080008080000000808000808000808000808000808000808000808000
              808000808000808000808000808000808000808000FF00008080008080008080
              0000}
            ParentFont = False
            OnClick = SpBAcessTotClick
          end
          object SpBAcessPar: TSpeedButton
            Left = 3
            Top = 235
            Width = 110
            Height = 25
            Caption = 'Acesso &Parcial'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              F6030000424DF603000000000000360000002800000013000000100000000100
              180000000000C0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF800000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
              FFFF800000FFFF00FFFF00800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF800000FFFF
              00FFFF00FFFF00FFFF00800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF800000FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFF800000FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF000000FFFFFFFFFF00FFFF00FFFF00FFFF00FFFFFFFFFF00FFFF00FFFF
              00FFFF00800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              0000FFFFFFFFFF00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00
              FFFF00800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
              FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FF
              FF00800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF
              00800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00
              800000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF0080
              0000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF008000
              00FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00800000FFFFFF
              FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFFFFFFFFFF00
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
            ParentFont = False
            OnClick = SpBAcessParClick
          end
          object SpBSomentLe: TSpeedButton
            Left = 115
            Top = 235
            Width = 110
            Height = 25
            Caption = 'Somente Leitura'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = SpBSomentLeClick
          end
          object TrVMenus: TTreeView
            Left = 2
            Top = 15
            Width = 224
            Height = 190
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Images = ImageList1
            Indent = 19
            ParentFont = False
            ReadOnly = True
            RightClickSelect = True
            TabOrder = 0
            OnChange = TrVMenusChange
            OnClick = TrVMenusClick
            OnGetImageIndex = TrVMenusGetImageIndex
            Items.Data = {
              0C000000220000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
              09436164617374726F73230000000000000000000000FFFFFFFFFFFFFFFF0000
              0000000000000A46696E616E636569726F200000000000000000000000FFFFFF
              FFFFFFFFFF000000000000000007436F6D707261731F00000000000000000000
              00FFFFFFFFFFFFFFFF00000000000000000656656E6461732400000000000000
              00000000FFFFFFFFFFFFFFFF00000000000000000B4661747572616D656E746F
              210000000000000000000000FFFFFFFFFFFFFFFF000000000000000008536572
              7669E76F732F0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
              0016496E666F726D61E7F5657320476572656E63696169732600000000000000
              00000000FFFFFFFFFFFFFFFF00000000000000000D41646D696E697374726164
              6F72230000000000000000000000FFFFFFFFFFFFFFFF00000000000000000A52
              656C6174F372696F73240000000000000000000000FFFFFFFFFFFFFFFF000000
              00000000000B5574696C6974E172696F731E0000000000000000000000FFFFFF
              FFFFFFFFFF0000000000000000055361ED64611E0000000000000000000000FF
              FFFFFFFFFFFFFF000000000000000005416A756461}
          end
        end
        object BoxAcesso: TGroupBox
          Left = 241
          Top = 137
          Width = 343
          Height = 263
          Caption = 'Acessos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          object LVCadastros: TListView
            Left = 3
            Top = 15
            Width = 335
            Height = 245
            Columns = <
              item
                Caption = 'Items do Menu'
                Width = 212
              end
              item
                Caption = 'Tipo do Acesso'
                Width = 119
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            ParentFont = False
            PopupMenu = PopupMenu2
            SmallImages = ImageList1
            TabOrder = 0
            ViewStyle = vsReport
            OnClick = LVCadastrosClick
          end
          object LVCompras: TListView
            Left = 3
            Top = 15
            Width = 335
            Height = 245
            Columns = <
              item
                Caption = 'Items do Menu'
                Width = 212
              end
              item
                Caption = 'Tipo do Acesso'
                Width = 119
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            ParentFont = False
            PopupMenu = PopupMenu2
            SmallImages = ImageList1
            TabOrder = 1
            ViewStyle = vsReport
            Visible = False
            OnClick = LVComprasClick
          end
          object LVFinanceiro: TListView
            Left = 3
            Top = 15
            Width = 335
            Height = 245
            Columns = <
              item
                Caption = 'Items do Menu'
                Width = 212
              end
              item
                Caption = 'Tipo do Acesso'
                Width = 119
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            ParentFont = False
            PopupMenu = PopupMenu2
            SmallImages = ImageList1
            TabOrder = 2
            ViewStyle = vsReport
            Visible = False
            OnClick = LVFinanceiroClick
          end
          object LVInformacaoGer: TListView
            Left = 3
            Top = 15
            Width = 335
            Height = 245
            Columns = <
              item
                Caption = 'Items do Menu'
                Width = 212
              end
              item
                Caption = 'Tipo do Acesso'
                Width = 119
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            ParentFont = False
            PopupMenu = PopupMenu2
            SmallImages = ImageList1
            TabOrder = 3
            ViewStyle = vsReport
            Visible = False
            OnClick = LVInformacaoGerClick
          end
          object LVTelemark: TListView
            Left = 3
            Top = 15
            Width = 335
            Height = 245
            Columns = <
              item
                Caption = 'Items do Menu'
                Width = 212
              end
              item
                Caption = 'Tipo do Acesso'
                Width = 119
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            ParentFont = False
            PopupMenu = PopupMenu2
            SmallImages = ImageList1
            TabOrder = 4
            ViewStyle = vsReport
            Visible = False
            OnClick = LVTelemarkClick
          end
          object LVUtil: TListView
            Left = 3
            Top = 15
            Width = 335
            Height = 245
            Columns = <
              item
                Caption = 'Items do Menu'
                Width = 212
              end
              item
                Caption = 'Tipo do Acesso'
                Width = 119
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            ParentFont = False
            PopupMenu = PopupMenu2
            SmallImages = ImageList1
            TabOrder = 5
            ViewStyle = vsReport
            Visible = False
            OnClick = LVUtilClick
          end
          object LVAjuda: TListView
            Left = 3
            Top = 15
            Width = 335
            Height = 245
            Columns = <
              item
                Caption = 'Items do Menu'
                Width = 212
              end
              item
                Caption = 'Tipo do Acesso'
                Width = 119
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            ParentFont = False
            PopupMenu = PopupMenu2
            SmallImages = ImageList1
            TabOrder = 6
            ViewStyle = vsReport
            Visible = False
            OnClick = LVAjudaClick
          end
          object LVSaida: TListView
            Left = 3
            Top = 15
            Width = 335
            Height = 245
            Columns = <
              item
                Caption = 'Items do Menu'
                Width = 212
              end
              item
                Caption = 'Tipo do Acesso'
                Width = 119
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            ParentFont = False
            PopupMenu = PopupMenu2
            SmallImages = ImageList1
            TabOrder = 7
            ViewStyle = vsReport
            Visible = False
          end
          object LvServico: TListView
            Left = 3
            Top = 15
            Width = 335
            Height = 245
            Columns = <
              item
                Caption = 'Itens do Menu'
                Width = 212
              end
              item
                Caption = 'Tipo de Acesso'
                Width = 119
              end>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu2
            ShowHint = False
            SmallImages = ImageList1
            TabOrder = 8
            ViewStyle = vsReport
            Visible = False
            OnClick = LvServicoClick
          end
          object LVAdministrador: TListView
            Left = 3
            Top = 15
            Width = 336
            Height = 245
            Columns = <
              item
                Caption = 'Items do Menu'
                Width = 212
              end
              item
                Caption = 'Tipo do Acesso'
                Width = 119
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            ParentFont = False
            PopupMenu = PopupMenu2
            SmallImages = ImageList1
            TabOrder = 9
            ViewStyle = vsReport
            Visible = False
            OnClick = LVAdministradorClick
          end
          object LVExpedicao: TListView
            Left = 3
            Top = 15
            Width = 335
            Height = 245
            Columns = <
              item
                Caption = 'Items do Menu'
                Width = 212
              end
              item
                Caption = 'Tipo do Acesso'
                Width = 119
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            ParentFont = False
            PopupMenu = PopupMenu2
            SmallImages = ImageList1
            TabOrder = 10
            ViewStyle = vsReport
            Visible = False
            OnClick = LVExpedicaoClick
          end
          object LVRelatorios: TListView
            Left = 3
            Top = 15
            Width = 335
            Height = 245
            Columns = <
              item
                Caption = 'Items do Menu'
                Width = 212
              end
              item
                Caption = 'Tipo do Acesso'
                Width = 119
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            ParentFont = False
            PopupMenu = PopupMenu2
            SmallImages = ImageList1
            TabOrder = 11
            ViewStyle = vsReport
            Visible = False
            OnClick = LVRelatoriosClick
          end
          object LVFaturamento: TListView
            Left = 3
            Top = 15
            Width = 335
            Height = 245
            Columns = <
              item
                Caption = 'Items do Menu'
                Width = 212
              end
              item
                Caption = 'Tipo do Acesso'
                Width = 119
              end>
            ColumnClick = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            ParentFont = False
            PopupMenu = PopupMenu2
            SmallImages = ImageList1
            TabOrder = 12
            ViewStyle = vsReport
            Visible = False
            OnClick = LVFaturamentoClick
          end
        end
        object DBEdit2: TDBEdit
          Left = 80
          Top = 112
          Width = 295
          Height = 21
          CharCase = ecLowerCase
          DataField = 'USU_EMAIL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 45
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit3: TDBEdit
          Left = 80
          Top = 63
          Width = 295
          Height = 21
          CharCase = ecUpperCase
          DataField = 'USU_LOGIN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 45
          ParentFont = False
          TabOrder = 4
        end
        object DBDateEdit1: TDBDateEdit
          Left = 636
          Top = 15
          Width = 85
          Height = 21
          TabStop = False
          DataField = 'USU_DATA_CADASTRO'
          ReadOnly = True
          Color = 14145495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkDropDown
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 1
        end
        object DBDateEdit2: TDBDateEdit
          Left = 636
          Top = 39
          Width = 85
          Height = 21
          DataField = 'USU_DATA_ATUALIZACAO'
          GlyphKind = gkDropDown
          NumGlyphs = 1
          TabOrder = 3
        end
        object GroupBox7: TGroupBox
          Left = 589
          Top = 137
          Width = 132
          Height = 79
          Caption = 'Cr'#233'ditos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          object ChkCredito: TCheckBox
            Left = 12
            Top = 16
            Width = 114
            Height = 17
            Caption = 'Libera C&r'#233'dito'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = ChkCreditoEnter
          end
          object ChkPrecos: TCheckBox
            Left = 12
            Top = 36
            Width = 114
            Height = 17
            Caption = 'Libera Pre'#231'o&s'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = ChkPrecosEnter
          end
          object ChkDescontos: TCheckBox
            Left = 12
            Top = 58
            Width = 114
            Height = 17
            Caption = 'Libera Descon&tos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = ChkDescontosEnter
          end
        end
      end
      object DBNavega: TDBNavigator
        Left = 9
        Top = 422
        Width = 112
        Height = 25
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Hints.Strings = (
          'Primeiro Registro|Passa p/primeiro registro...'
          'Registro Anterior|Passa p/registro anterior...'
          'Proximo Registro|Passa p/proximo registro...'
          #218'ltimo Registro|Passa p/ '#250'ltimo registro...')
        TabOrder = 1
        OnClick = DBNavegaClick
      end
      object BitInclusao: TBitBtn
        Left = 122
        Top = 422
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Novo|Cadastra Nova Representada...'
        Caption = '&Inclus'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        OnClick = BitInclusaoClick
      end
      object BitExclusao: TBitBtn
        Left = 222
        Top = 422
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Exclui|Exclui Registro Atual (Representada)...'
        Caption = '&Exclus'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        OnClick = BitExclusaoClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object BitConfirmar: TBitBtn
        Left = 322
        Top = 422
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Salva|Grava Registro Atual...'
        Caption = '&Confirmar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        TabStop = False
        OnClick = BitConfirmarClick
        Glyph.Data = {
          E2060000424DE206000000000000360400002800000024000000130000000100
          080000000000AC02000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030304
          0403030303030303030303030303030303F8F8FF030303030303030303030303
          0303040202040303030303030303030303030303F80303F8FF03030303030303
          0303030303040202020204030303030303030303030303F803030303F8FF0303
          0303030303030303040202020202020403030303030303030303F80303030303
          03F8FF030303030303030304020202FA02020202040303030303030303F8FF03
          03FF03030303F8FF03030303030303020202FA02FA0202020403030303030303
          03F8FF03F803FF030303F8FF03030303030303FA02FA020202FA020202040303
          0303030303F8FFF8030303FF030303F8FF03030303030304FA0202020202FA02
          020204030303030303F8F80303030303FF030303F8FF0303030304020202FA02
          020202FA0202020403030303F8FF0303F8FF030303FF030303F8FF0303030202
          02FA03FA02020204FA02020204030303F8FF03F803F8FF0303F8FF030303F8FF
          0303FA02FA030303FA02020204FA020202040303F8FFF8030303F8FF0303F8FF
          030303F8FF0303FA0303030303FA02020204FA020202040303F80303030303F8
          FF0303F8FF030303F8FF0303030303030303FA02020204FA0202040303030303
          03030303F8FF0303F8FF0303F8FF030303030303030303FA02020204FA020203
          030303030303030303F8FF0303F8FFF8030303030303030303030303FA020202
          04FA030303030303030303030303F8FF0303F8FF030303030303030303030303
          03FA0202020403030303030303030303030303F8FF0303F8FF03030303030303
          030303030303FA0202040303030303030303030303030303F8FF03F8FF030303
          0303030303030303030303FA0202030303030303030303030303030303F8FFF8
          FF030303030303030303030303030303FA030303030303030303030303030303
          0303F8030303}
        NumGlyphs = 2
      end
      object BitCancelar: TBitBtn
        Left = 422
        Top = 422
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Cancela|N'#227'o Grava Registro...'
        Cancel = True
        Caption = 'Cancela&r'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        TabStop = False
        OnClick = BitCancelarClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object BitPesquisa: TBitBtn
        Left = 522
        Top = 422
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Caption = 'Cons&ulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        TabStop = False
        OnClick = BitPesquisaClick
      end
      object BitSair: TBitBtn
        Left = 622
        Top = 422
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Retorna|Retorna para o menu principal...'
        Cancel = True
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        TabStop = False
        OnClick = BitSairClick
      end
    end
    object TabParametro: TTabSheet
      Caption = 'Para&metros'
      ImageIndex = 2
      OnShow = TabParametroShow
      object Bevel2: TBevel
        Left = 10
        Top = 414
        Width = 713
        Height = 6
        Shape = bsTopLine
      end
      object RxLabel2: TRxLabel
        Left = 5
        Top = 409
        Width = 118
        Height = 13
          
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShadowColor = clSilver
      end
      object GroupBox11: TGroupBox
        Left = 0
        Top = 0
        Width = 728
        Height = 407
        Align = alTop
        Caption = 'Parametros'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object GroupBox8: TGroupBox
          Left = 2
          Top = 15
          Width = 724
          Height = 42
          Align = alTop
          Caption = 'Usu'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object DBEdit1: TDBEdit
            Left = 16
            Top = 16
            Width = 50
            Height = 21
            TabStop = False
            Color = 14145495
            Ctl3D = True
            DataField = 'USU_CODIGO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 67
            Top = 16
            Width = 348
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = 14145495
            DataField = 'USU_NOME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 45
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
        end
        object ScrollBox1: TScrollBox
          Left = 2
          Top = 57
          Width = 724
          Height = 343
          Align = alTop
          BorderStyle = bsNone
          TabOrder = 1
          object GroupBox12: TGroupBox
            Left = 0
            Top = 0
            Width = 724
            Height = 78
            Align = alTop
            Caption = 'Pedido Faturamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label396: TLabel
              Left = 9
              Top = 36
              Width = 88
              Height = 13
              Caption = 'Desconto Ma&ximo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object CurrDescMaxP: TCurrencyEdit
              Left = 100
              Top = 33
              Width = 82
              Height = 21
              AutoSize = False
              DisplayFormat = '###,##0.00  %;-###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              ZeroEmpty = False
              OnKeyPress = CurrDescMaxPKeyPress
            end
            object ChkPrecoBrutoP: TCheckBox
              Left = 9
              Top = 16
              Width = 121
              Height = 17
              Caption = 'Al&tera Pre'#231'o Bruto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = ChkPrecoBrutoPEnter
            end
            object ChkPrecoLiqP: TCheckBox
              Left = 284
              Top = 16
              Width = 121
              Height = 17
              Caption = 'Al&tera Pre'#231'o Liquido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = ChkPrecoLiqPEnter
            end
            object ChkDescAutomaticoP: TCheckBox
              Left = 522
              Top = 16
              Width = 175
              Height = 17
              Caption = 'Atribuir Desconto Autom'#225'tico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnEnter = ChkDescAutomaticoPEnter
            end
            object ChkReeMissaoP: TCheckBox
              Left = 284
              Top = 36
              Width = 114
              Height = 17
              Caption = 'Reemiss'#227'o Pedidos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnEnter = ChkDescontosEnter
            end
            object ChkExclusaoPedP: TCheckBox
              Left = 522
              Top = 36
              Width = 175
              Height = 17
              Caption = 'Exclus'#227'o de Pedidos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnEnter = ChkExclusaoPedPEnter
            end
            object ChkAlteraDescP: TCheckBox
              Left = 9
              Top = 56
              Width = 136
              Height = 17
              Caption = 'Alte&ra Desconto Pedido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnEnter = ChkAlteraDescPEnter
            end
            object ChkDescOfertaP: TCheckBox
              Left = 284
              Top = 56
              Width = 173
              Height = 17
              Caption = 'Alte&ra Desconto Produto Oferta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnEnter = ChkDescOfertaPEnter
            end
          end
          object GroupBox15: TGroupBox
            Left = 0
            Top = 78
            Width = 724
            Height = 78
            Align = alTop
            Caption = 'Pedido Telemarketing'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label412: TLabel
              Left = 9
              Top = 36
              Width = 88
              Height = 13
              Caption = 'Descon&to Maximo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object CurrDescMaxT: TCurrencyEdit
              Left = 100
              Top = 33
              Width = 82
              Height = 21
              AutoSize = False
              DisplayFormat = '###,##0.00  %;-###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              ZeroEmpty = False
              OnKeyPress = CurrDescMaxTKeyPress
            end
            object ChkPrecoBrutoT: TCheckBox
              Left = 9
              Top = 16
              Width = 121
              Height = 17
              Caption = 'Al&tera Pre'#231'o Bruto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = ChkPrecoBrutoTEnter
            end
            object ChkPrecoLiqT: TCheckBox
              Left = 284
              Top = 16
              Width = 121
              Height = 17
              Caption = 'Al&tera Pre'#231'o Liquido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = ChkPrecoLiqTEnter
            end
            object ChkDescAutomaticoT: TCheckBox
              Left = 522
              Top = 16
              Width = 175
              Height = 17
              Caption = 'Atribuir Desconto Autom'#225'tico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnEnter = ChkDescAutomaticoTEnter
            end
            object ChkReeMissaoT: TCheckBox
              Left = 284
              Top = 36
              Width = 114
              Height = 17
              Caption = 'Reemiss'#227'o Pedidos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnEnter = ChkReeMissaoTEnter
            end
            object ChkExclusaoPedT: TCheckBox
              Left = 522
              Top = 36
              Width = 175
              Height = 17
              Caption = 'Exclus'#227'o de Pedidos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnEnter = ChkExclusaoPedTEnter
            end
            object ChkAlteraDescT: TCheckBox
              Left = 9
              Top = 56
              Width = 136
              Height = 17
              Caption = 'Alte&ra Desconto Pedido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnEnter = ChkAlteraDescTEnter
            end
            object ChkDescOfertaT: TCheckBox
              Left = 284
              Top = 56
              Width = 173
              Height = 17
              Caption = 'Alte&ra Desconto Produto Oferta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnEnter = ChkDescOfertaTEnter
            end
          end
          object GroupBox14: TGroupBox
            Left = 0
            Top = 156
            Width = 724
            Height = 63
            Align = alTop
            Caption = 'Cadastro Produtos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object ChkComissao: TCheckBox
              Left = 9
              Top = 16
              Width = 144
              Height = 17
              Caption = 'Altera Comiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = ChkComissaoEnter
            end
            object ChkCusto: TCheckBox
              Left = 284
              Top = 16
              Width = 121
              Height = 17
              Caption = 'Altera Custo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = ChkCustoEnter
            end
            object ChkMargem: TCheckBox
              Left = 522
              Top = 16
              Width = 175
              Height = 17
              Caption = 'Altera Margem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnEnter = ChkMargemEnter
            end
            object ChkMagemMinima: TCheckBox
              Left = 284
              Top = 36
              Width = 157
              Height = 17
              Caption = 'Altera Margem M'#237'nima'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnEnter = ChkMagemMinimaEnter
            end
            object ChkPrecoVenda: TCheckBox
              Left = 9
              Top = 36
              Width = 128
              Height = 17
              Caption = 'Altera Pre'#231'o Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnEnter = ChkPrecoVendaEnter
            end
            object ChkPrecoOferta: TCheckBox
              Left = 522
              Top = 36
              Width = 175
              Height = 17
              Caption = 'Altera Pre'#231'o Oferta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnEnter = ChkPrecoOfertaEnter
            end
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 219
            Width = 724
            Height = 42
            Align = alTop
            Caption = 'Entrada Nota Fiscal'
            TabOrder = 3
            object ChkAlteraNFEntrada: TCheckBox
              Left = 9
              Top = 17
              Width = 144
              Height = 17
              Caption = 'Altera Entrada Nota Fiscal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = ChkComissaoEnter
            end
          end
        end
      end
      object DBNavega1: TDBNavigator
        Left = 9
        Top = 422
        Width = 112
        Height = 25
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Hints.Strings = (
          'Primeiro Registro|Passa p/primeiro registro...'
          'Registro Anterior|Passa p/registro anterior...'
          'Proximo Registro|Passa p/proximo registro...'
          #218'ltimo Registro|Passa p/ '#250'ltimo registro...')
        TabOrder = 1
        OnClick = DBNavegaClick
      end
      object BitInclusao1: TBitBtn
        Left = 122
        Top = 422
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Novo|Cadastra Nova Representada...'
        Caption = '&Inclus'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        OnClick = BitInclusaoClick
      end
      object BitExclusao1: TBitBtn
        Left = 222
        Top = 422
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Exclui|Exclui Registro Atual (Representada)...'
        Caption = '&Exclus'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        OnClick = BitExclusaoClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object BitConfirmar1: TBitBtn
        Left = 322
        Top = 422
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Salva|Grava Registro Atual...'
        Caption = '&Confirmar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        TabStop = False
        OnClick = BitConfirmarClick
        Glyph.Data = {
          E2060000424DE206000000000000360400002800000024000000130000000100
          080000000000AC02000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030304
          0403030303030303030303030303030303F8F8FF030303030303030303030303
          0303040202040303030303030303030303030303F80303F8FF03030303030303
          0303030303040202020204030303030303030303030303F803030303F8FF0303
          0303030303030303040202020202020403030303030303030303F80303030303
          03F8FF030303030303030304020202FA02020202040303030303030303F8FF03
          03FF03030303F8FF03030303030303020202FA02FA0202020403030303030303
          03F8FF03F803FF030303F8FF03030303030303FA02FA020202FA020202040303
          0303030303F8FFF8030303FF030303F8FF03030303030304FA0202020202FA02
          020204030303030303F8F80303030303FF030303F8FF0303030304020202FA02
          020202FA0202020403030303F8FF0303F8FF030303FF030303F8FF0303030202
          02FA03FA02020204FA02020204030303F8FF03F803F8FF0303F8FF030303F8FF
          0303FA02FA030303FA02020204FA020202040303F8FFF8030303F8FF0303F8FF
          030303F8FF0303FA0303030303FA02020204FA020202040303F80303030303F8
          FF0303F8FF030303F8FF0303030303030303FA02020204FA0202040303030303
          03030303F8FF0303F8FF0303F8FF030303030303030303FA02020204FA020203
          030303030303030303F8FF0303F8FFF8030303030303030303030303FA020202
          04FA030303030303030303030303F8FF0303F8FF030303030303030303030303
          03FA0202020403030303030303030303030303F8FF0303F8FF03030303030303
          030303030303FA0202040303030303030303030303030303F8FF03F8FF030303
          0303030303030303030303FA0202030303030303030303030303030303F8FFF8
          FF030303030303030303030303030303FA030303030303030303030303030303
          0303F8030303}
        NumGlyphs = 2
      end
      object BitCancelar1: TBitBtn
        Left = 422
        Top = 422
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Cancela|N'#227'o Grava Registro...'
        Cancel = True
        Caption = 'Cancela&r'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        TabStop = False
        OnClick = BitCancelarClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object BitPesquisa1: TBitBtn
        Left = 522
        Top = 422
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Caption = 'Cons&ulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        TabStop = False
        OnClick = BitPesquisaClick
      end
      object BitSair2: TBitBtn
        Left = 622
        Top = 422
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Retorna|Retorna para o menu principal...'
        Cancel = True
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        TabStop = False
        OnClick = BitSairClick
      end
    end
  end
  object ImageList1: TImageList
    Left = 272
    Top = 32
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      8400000084008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FFFF0000FFFF000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      840000008400000084000000000000000000000000000000FF00000084008484
      8400000000000000000000000000000000000000000000000000000000008400
      0000008400000084000000840000840000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000840084848400000000000000FF0000008400000084000000
      8400848484000000000000000000000000000000000084000000008400000084
      000000FF00000084000000840000008400000084000084000000000000000000
      000000000000000000000000000000000000000000000000000084000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000084000000840000008400848484000000840000008400000084000000
      8400848484000000000000000000000000000000000000840000008400000084
      00000084000000FF000000840000008400000084000084000000000000000000
      0000000000000000000000000000000000000000000084000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000840000008400000084000000840000008400000084008484
      8400000000000000000000000000000000000000000000FF00000084000000FF
      0000008400000084000000FF0000008400000084000000840000840000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000FFFF0000FFFF0000FFFF00008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000008400000084000000840000008400848484000000
      000000000000000000000000000000000000000000008400000000FF00000084
      000000840000008400000084000000FF00000084000000840000008400008400
      00000000000000000000000000000000000000000000FFFF0000FFFF00000000
      00000000000000000000FFFF0000FFFF0000FFFF000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000008400000000000000
      0000000000000000000000000000000000008400000000840000008400000084
      00000084000000840000008400000084000000FF000000840000008400000084
      0000000000000000000000000000000000000000000000000000FFFF00000000
      0000000000000000000000000000FFFF0000FFFF0000FFFF0000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000008400000084000000840000008400000000000000
      00000000000000000000000000000000000000FF00000084000000FF00000000
      00000000000000FF00000084000000840000008400008400000000FF00000084
      0000008400008400000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF00008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000840000008400848484000000840000008400848484000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000FF00000084000000840000008400008400000000FF
      0000008400000084000084000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000084000000840084848400000000000000FF0000008400000084008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000084000000840000008400008400
      0000008400000084000084000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000008400000084000000000000000000000000000000FF00000084000000
      8400848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000840000008400000084
      000000FF00000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000840000000000000000000000000000000000000084000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008400000084
      00008400000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF00008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      84000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000008400008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E7FFF3FFF3FF0000C3DFF1FFE1FF0000
      C38FE0FFE0FF0000C107803FC0FF0000E007803F807F0000F00F801F887F0000
      F81F800F9C3F0000FC3F000FDE1F0000F83F1803FF0F0000F01FBC01FF070000
      E10FFE01FF870000E387FF01FFC30000F3C7FF83FFE30000FFC7FFE3FFF30000
      FFFFFFF3FFFF0000FFFFFFF7FFFF000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu2: TPopupMenu
    Images = ImageList1
    Left = 304
    Top = 32
    object SemAcesso1: TMenuItem
      Caption = 'Sem Acesso'
      ImageIndex = 0
      OnClick = SemAcesso1Click
    end
    object AcessoTotal1: TMenuItem
      Caption = 'Acesso Total'
      ImageIndex = 1
      OnClick = AcessoTotal1Click
    end
    object AcessoParcial2: TMenuItem
      Caption = 'Acesso Parcial'
      ImageIndex = 2
      OnClick = AcessoParcial2Click
    end
    object SomenteLeitura1: TMenuItem
      Caption = 'Somente Leitura'
      OnClick = SomenteLeitura1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object odosSemAcesso1: TMenuItem
      Caption = 'Todos Sem Acesso'
      ImageIndex = 0
      OnClick = odosSemAcesso1Click
    end
    object odosAcessoTotal1: TMenuItem
      Caption = 'Todos Acesso Total'
      ImageIndex = 1
      OnClick = odosAcessoTotal1Click
    end
    object odosAcessoParcial1: TMenuItem
      Caption = 'Todos Acesso Parcial'
      ImageIndex = 2
      OnClick = odosAcessoParcial1Click
    end
    object odosSomenteLeitura1: TMenuItem
      Caption = 'Todos Somente Leitura'
      OnClick = odosSomenteLeitura1Click
    end
  end
end
