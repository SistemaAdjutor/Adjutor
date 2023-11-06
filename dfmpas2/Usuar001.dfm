object FrmCadastroUsuario: TFrmCadastroUsuario
  Left = 625
  Top = 212
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de usu'#225'rios do Sistema'
  ClientHeight = 540
  ClientWidth = 1052
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1052
    Height = 540
    ActivePage = TabParametro
    Align = alTop
    TabOrder = 0
    object tabusu: TTabSheet
      Caption = 'Consu&lta'
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 1044
        Height = 89
        Align = alTop
        Caption = 'Selecione a Pesquisa'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        object RadCodigo: TRadioButton
          Left = 8
          Top = 17
          Width = 113
          Height = 17
          Caption = '&Codigo'
          Checked = True
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
          TabOrder = 1
          OnClick = RadnomeClick
        end
        object GbConsulta: TGroupBox
          Left = 2
          Top = 37
          Width = 1040
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
            Caption = '&Pesquisar'
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
            TabOrder = 1
            OnClick = BitSairClick
          end
          object EdPesquisa: TEdit
            Left = 9
            Top = 19
            Width = 35
            Height = 22
            CharCase = ecUpperCase
            MaxLength = 4
            TabOrder = 2
            Text = '0000'
            OnExit = EdPesquisaExit
            OnKeyPress = EdPesquisaKeyPress
          end
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 89
        Width = 1041
        Height = 415
        Caption = 'Usu'#225'rios'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 1
        object DBGridUsuario: TDBGrid
          Left = 2
          Top = 16
          Width = 1037
          Height = 397
          Align = alClient
          Color = 16776176
          Ctl3D = True
          DataSource = DataCadastros1.DsUsuario
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
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
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Usu'#225'rio'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 426
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_DATA_CADASTRO'
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'wTIPO_USUARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Usu'#225'rio'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
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
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1044
        Height = 467
        Align = alTop
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        object Label2: TLabel
          Left = 48
          Top = 19
          Width = 36
          Height = 14
          Caption = 'C'#243'digo:'
        end
        object Label4: TLabel
          Left = 556
          Top = 20
          Width = 72
          Height = 14
          Caption = 'Data Cadastro:'
        end
        object labe4: TLabel
          Left = 15
          Top = 43
          Width = 70
          Height = 14
          Caption = 'Nome Usu'#225'rio:'
        end
        object Label1: TLabel
          Left = 51
          Top = 90
          Width = 34
          Height = 14
          Caption = 'Senha:'
        end
        object LabConfirma: TLabel
          Left = 194
          Top = 90
          Width = 93
          Height = 14
          Caption = 'Confirmar a Senha:'
          Visible = False
        end
        object Label5: TLabel
          Left = 543
          Top = 44
          Width = 84
          Height = 14
          Caption = 'Data Atualiza'#231#227'o:'
        end
        object Label3: TLabel
          Left = 520
          Top = 160
          Width = 82
          Height = 14
          Alignment = taRightJustify
          Caption = 'Perfil do Usu'#225'rio:'
        end
        object Label6: TLabel
          Left = 5
          Top = 120
          Width = 82
          Height = 14
          Caption = 'Email do Usu'#225'rio:'
        end
        object Label7: TLabel
          Left = 56
          Top = 67
          Width = 29
          Height = 14
          Caption = 'Login:'
        end
        object Label8: TLabel
          Left = 51
          Top = 143
          Width = 323
          Height = 14
          Caption = 
            'Vincular Vendedor ao Usu'#225'rio (exclusivo p/ vendedores internos) ' +
            ':'
        end
        object Label9: TLabel
          Left = 495
          Top = 118
          Width = 79
          Height = 14
          Caption = 'Senha do email :'
        end
        object DBECodigo: TDBEdit
          Left = 87
          Top = 15
          Width = 50
          Height = 22
          TabStop = False
          Color = 14145495
          Ctl3D = True
          DataField = 'USU_CODIGO'
          DataSource = DataCadastros1.DsUsuario
          MaxLength = 5
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DbeUsuario: TDBEdit
          Left = 87
          Top = 39
          Width = 295
          Height = 22
          CharCase = ecUpperCase
          DataField = 'USU_NOME'
          DataSource = DataCadastros1.DsUsuario
          MaxLength = 45
          TabOrder = 2
        end
        object DBESenha: TDBEdit
          Left = 87
          Top = 87
          Width = 89
          Height = 22
          CharCase = ecUpperCase
          DataField = 'USU_SENHA'
          DataSource = DataCadastros1.DsUsuario
          MaxLength = 45
          PasswordChar = '#'
          TabOrder = 6
          OnKeyPress = DBESenhaKeyPress
        end
        object EdConfirmaSenha: TMaskEdit
          Left = 286
          Top = 87
          Width = 89
          Height = 22
          CharCase = ecUpperCase
          PasswordChar = '#'
          TabOrder = 7
          Text = 'DATACADASTROS1.DSUSUARIO'
          Visible = False
          OnExit = EdConfirmaSenhaExit
        end
        object CbTipoUsuario: TComboBox
          Left = 608
          Top = 157
          Width = 114
          Height = 22
          Style = csDropDownList
          TabOrder = 5
          OnClick = CbTipoUsuarioClick
          OnExit = CbTipoUsuarioExit
          Items.Strings = (
            'Administrador'
            'Gerencial'
            'Usu'#225'rio')
        end
        object BoxOperacao: TGroupBox
          Left = 590
          Top = 193
          Width = 132
          Height = 120
          Caption = 'Opera'#231#245'es'
          TabOrder = 9
          object ChkInclusao: TCheckBox
            Left = 12
            Top = 48
            Width = 73
            Height = 17
            Caption = 'Incl&us'#227'o'
            TabOrder = 1
            OnExit = ChkInclusaoExit
          end
          object ChkExclusao: TCheckBox
            Left = 12
            Top = 69
            Width = 73
            Height = 17
            Caption = 'E&xclus'#227'o'
            TabOrder = 2
            OnExit = ChkExclusaoExit
          end
          object ChkAlteracao: TCheckBox
            Left = 12
            Top = 27
            Width = 73
            Height = 17
            Caption = '&Altera'#231#227'o'
            TabOrder = 0
            OnExit = ChkAlteracaoExit
          end
          object chkRelatorio: TCheckBox
            Left = 12
            Top = 89
            Width = 117
            Height = 17
            Caption = 'Relat'#243'rio/Exportar'
            TabOrder = 3
            OnExit = chkRelatorioExit
          end
        end
        object GroupBox5: TGroupBox
          Left = 6
          Top = 188
          Width = 228
          Height = 274
          Caption = 'N'#237'vel de acesso do Usu'#225'rio'
          TabOrder = 10
          object SpBSemAcess: TSpeedButton
            Left = 3
            Top = 209
            Width = 110
            Height = 25
            Caption = '&Sem Acesso'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
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
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Arial'
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
            Transparent = False
            OnClick = SpBAcessTotClick
          end
          object SpBAcessPar: TSpeedButton
            Left = 3
            Top = 235
            Width = 110
            Height = 25
            Caption = 'Acesso &Parcial'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clAqua
            Font.Height = -11
            Font.Name = 'Arial'
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
            Font.Charset = ANSI_CHARSET
            Font.Color = 33023
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnClick = SpBSomentLeClick
          end
          object TrVMenus: TTreeView
            Left = 2
            Top = 16
            Width = 224
            Height = 190
            Align = alTop
            Images = ImageList1
            Indent = 19
            ReadOnly = True
            RightClickSelect = True
            TabOrder = 0
            OnChange = TrVMenusChange
            OnClick = TrVMenusClick
            OnGetImageIndex = TrVMenusGetImageIndex
            Items.NodeData = {
              030A000000300000000000000000000000FFFFFFFFFFFFFFFF00000000000000
              0000000000010943006100640061007300740072006F00730032000000000000
              0000000000FFFFFFFFFFFFFFFF000000000000000000000000010A460069006E
              0061006E0063006500690072006F00300000000000000000000000FFFFFFFFFF
              FFFFFF000000000000000000000000010943006F006D00650072006300690061
              006C00320000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
              000000010A4D006F00760069006D0065006E0074006F0073002A000000000000
              0000000000FFFFFFFFFFFFFFFF00000000000000000000000001064600690073
              00630061006C002E0000000000000000000000FFFFFFFFFFFFFFFF0000000000
              000000000000000108500072006F0064007500E700E3006F0030000000000000
              0000000000FFFFFFFFFFFFFFFF00000000000000000000000001094700650072
              0065006E006300690061006C00380000000000000000000000FFFFFFFFFFFFFF
              FF000000000000000000000000010D43006F006E006600690067007500720061
              00E700F50065007300380000000000000000000000FFFFFFFFFFFFFFFF000000
              000000000000000000010D410064006D0069006E006900730074007200610064
              006F007200260000000000000000000000FFFFFFFFFFFFFFFF00000000000000
              000000000001045300610069007200}
          end
        end
        object BoxAcesso: TGroupBox
          Left = 241
          Top = 188
          Width = 343
          Height = 274
          Caption = 'Acessos Itens do Menu'
          TabOrder = 11
          object LVCadastros: TListView
            Left = 5
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
          object LVFinanceiro: TListView
            Left = 5
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
            OnClick = LVFinanceiroClick
          end
          object LVComercial: TListView
            Left = 5
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
            OnClick = LVComercialClick
          end
          object LVMovimentos: TListView
            Left = 5
            Top = 16
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
            OnClick = LVMovimentosClick
          end
          object LVProducao: TListView
            Left = 5
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
            OnClick = LVProducaoClick
          end
          object LVSIE: TListView
            Left = 5
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
            OnClick = LVSIEClick
          end
          object LVUtilitarios: TListView
            Left = 5
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
            OnClick = LVUtilitariosClick
          end
          object LVConfiguracoes: TListView
            Left = 5
            Top = 15
            Width = 335
            Height = 266
            Hint = 'Bot'#227'o direito do mouse p/ acesso itens do menu'
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
            ReadOnly = True
            ParentShowHint = False
            PopupMenu = PopupMenu2
            ShowHint = True
            SmallImages = ImageList1
            TabOrder = 7
            ViewStyle = vsReport
            Visible = False
            OnClick = LVConfiguracoesClick
          end
          object lvFiscal: TListView
            Left = 8
            Top = 15
            Width = 335
            Height = 266
            Hint = 'Bot'#227'o direito do mouse p/ acesso itens do menu'
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
            ReadOnly = True
            ParentShowHint = False
            PopupMenu = PopupMenu2
            ShowHint = True
            SmallImages = ImageList1
            TabOrder = 8
            ViewStyle = vsReport
            Visible = False
            OnClick = lvFiscalClick
          end
        end
        object DBEdit2: TDBEdit
          Left = 89
          Top = 115
          Width = 400
          Height = 22
          Hint = 'Nome para Envio de email do sistema'
          CharCase = ecLowerCase
          DataField = 'USU_EMAIL'
          DataSource = DataCadastros1.DsUsuario
          MaxLength = 45
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object DBEdit3: TDBEdit
          Left = 87
          Top = 63
          Width = 295
          Height = 22
          CharCase = ecUpperCase
          DataField = 'USU_LOGIN'
          DataSource = DataCadastros1.DsUsuario
          MaxLength = 45
          TabOrder = 4
          OnChange = DBEdit3Change
        end
        object DBLookupVendedor: TDBLookupComboBox
          Left = 92
          Top = 157
          Width = 394
          Height = 22
          DataField = 'REP_CODIGO'
          DataSource = DataCadastros1.DsUsuario
          KeyField = 'REP_CODIGO'
          ListField = 'REP_NOME'
          ListSource = DataCadastros.DsRepresentante
          TabOrder = 12
          OnClick = DBLookupVendedorClick
          OnKeyDown = DBLookupVendedorKeyDown
          OnKeyUp = DBLookupVendedorKeyUp
        end
        object EditCodigoRep: TEdit
          Left = 58
          Top = 157
          Width = 30
          Height = 22
          Color = 14145495
          Enabled = False
          TabOrder = 13
          Text = '000'
        end
        object DBEdit5: TDBEdit
          Left = 580
          Top = 115
          Width = 89
          Height = 22
          DataField = 'USU_EMAIL_SENHA'
          DataSource = DataCadastros1.DsUsuario
          MaxLength = 45
          PasswordChar = '#'
          TabOrder = 14
        end
        object DBDateEdit1: TJvDBDateEdit
          Left = 629
          Top = 16
          Width = 93
          Height = 22
          TabStop = False
          DataField = 'USU_DATA_CADASTRO'
          DataSource = DataCadastros1.DsUsuario
          ReadOnly = True
          Color = 14145495
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ImageKind = ikCustom
          ButtonWidth = 16
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 1
        end
        object DBDateEdit2: TJvDBDateEdit
          Left = 629
          Top = 40
          Width = 93
          Height = 22
          DataField = 'USU_DATA_ATUALIZACAO'
          DataSource = DataCadastros1.DsUsuario
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ImageKind = ikCustom
          ButtonWidth = 16
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 3
        end
      end
      object Pn_Botoes: TPanel
        Left = 1
        Top = 471
        Width = 896
        Height = 34
        Cursor = crHandPoint
        BevelOuter = bvNone
        DragCursor = crDefault
        TabOrder = 1
        object DBNavega: TDBNavigator
          Left = 6
          Top = 4
          Width = 112
          Height = 25
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = (
            'Primeiro Registro|Passa p/primeiro registro...'
            'Registro Anterior|Passa p/registro anterior...'
            'Proximo Registro|Passa p/proximo registro...'
            #218'ltimo Registro|Passa p/ '#250'ltimo registro...')
          TabOrder = 0
          OnClick = DBNavegaClick
        end
        object BitInclusao: TBitBtn
          Left = 119
          Top = 4
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = 'Novo|Cadastra Nova Representada...'
          Caption = '&Novo'
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333300033333300333330003333
            3300333330003333330033000000000333003300000000033300330000000003
            3300333330003333330033333000333333003333300033333300333333333333
            33003333333333333300}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TabStop = False
          OnClick = BitInclusaoClick
        end
        object BitExclusao: TBitBtn
          Left = 319
          Top = 4
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = 'Exclui|Exclui Registro Atual (Representada)...'
          Caption = '&Excluir'
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333333333333300333333333333
            3300333333333333330033000000000033003300000000003300330000000000
            3300333333333333330033333333333333003333333333333300333333333333
            33003333333333333300}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          TabStop = False
          OnClick = BitExclusaoClick
        end
        object BitConfirmar: TBitBtn
          Left = 419
          Top = 4
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = 'Salva|Grava Registro Atual...'
          Caption = '&Gravar'
          Enabled = False
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555550055555
            55555555577FF5555555555500005555555555557777F5555555555500005555
            555555557777FF5555555550000005555555555777777F555555550000000555
            5555557777777FF5555557000500005555555777757777F55555700555500055
            55557775555777FF5555555555500005555555555557777F5555555555550005
            555555555555777FF5555555555550005555555555555777FF55555555555570
            05555555555555777FF5555555555557005555555555555777FF555555555555
            5000555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          TabStop = False
          OnClick = BitConfirmarClick
        end
        object BitCancelar: TBitBtn
          Left = 519
          Top = 4
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = 'Cancela|N'#227'o Grava Registro...'
          Cancel = True
          Caption = 'Cancela&r'
          Enabled = False
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033333333333333333333333F333333333333
            0000333333333333333333333377F333333F3333000033300333333300033333
            37F37F333F77F33300003330003333300033333337F337F3F7337F3300003333
            000333000333333337F3337F733337F3000033333000300033333333337F3337
            3333F7330000333333000003333333333337F333333F73330000333333300033
            3333333333337F3333373333000033333300000333333333333337F333733333
            00003333300030003333333333333733337F3333000033330003330003333333
            33337333337F333300003330003333300033333333373337F337F33300003330
            0333333300033333337333737F337F3300003333333333333003333333733733
            37F337F300003333333333333333333333377333337FFF730000333333333333
            3333333333333333333777330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          TabStop = False
          OnClick = BitCancelarClick
        end
        object BitPesquisa: TBitBtn
          Left = 619
          Top = 4
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Caption = 'Cons&ulta'
          TabOrder = 5
          TabStop = False
          OnClick = BitPesquisaClick
        end
        object BitSair: TBitBtn
          Left = 718
          Top = 4
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = 'Retorna|Retorna para o menu principal...'
          Cancel = True
          Caption = '&Sair'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          TabStop = False
          OnClick = BitSairClick
        end
        object BitDuplicar: TBitBtn
          Left = 219
          Top = 4
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = 'Copiar Pedido'
          BiDiMode = bdLeftToRight
          Caption = 'Cop&iar'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888888888844444444488888884FFFFFFF488888884F0000
            0F480000004FFFFFFF480FFFFF4F00000F480F00004FFFFFFF480FFFFF4F00F4
            44480F00004FFFF4F4880FFFFF4FFFF448880F00F044444488880FFFF0F08888
            88880FFFF0088888888800000088888888888888888888888888}
          Margin = 5
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          Spacing = 6
          TabOrder = 7
          TabStop = False
          OnClick = BitDuplicarClick
        end
      end
    end
    object TabParametro: TTabSheet
      Caption = 'Para&metros'
      ImageIndex = 2
      OnShow = TabParametroShow
      object Bevel2: TBevel
        Left = 10
        Top = 462
        Width = 1015
        Height = 6
        Shape = bsTopLine
      end
      object BitConfirmar1: TBitBtn
        Left = 825
        Top = 474
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Salva|Grava Registro Atual...'
        Caption = '&Confirmar'
        Enabled = False
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        OnClick = BitConfirmarClick
      end
      object BitCancelar1: TBitBtn
        Left = 925
        Top = 474
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Cancela|N'#227'o Grava Registro...'
        Cancel = True
        Caption = 'Cancela&r'
        Enabled = False
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        OnClick = BitCancelarClick
      end
      object GroupBox11: TGroupBox
        Left = 0
        Top = 0
        Width = 1044
        Height = 456
        Align = alTop
        Caption = 'Parametros'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 2
        object Pparametros: TScrollBox
          Left = 2
          Top = 65
          Width = 1040
          Height = 343
          Align = alTop
          BorderStyle = bsNone
          Color = clBtnFace
          ParentColor = False
          TabOrder = 0
          object cxPageControl1: TcxPageControl
            Left = 0
            Top = 0
            Width = 1040
            Height = 343
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = cxTabSheet1
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 339
            ClientRectLeft = 4
            ClientRectRight = 1036
            ClientRectTop = 25
            object cxTabSheet1: TcxTabSheet
              Caption = 'Pedido de venda'
              ImageIndex = 0
              object Label11: TLabel
                Left = 9
                Top = 77
                Width = 88
                Height = 14
                Caption = 'Desconto Ma&ximo:'
              end
              object ldias: TLabel
                Left = 985
                Top = 115
                Width = 20
                Height = 14
                Caption = 'dias'
              end
              object lOrc: TLabel
                Left = 704
                Top = 115
                Width = 213
                Height = 14
                Caption = 'Liberar consulta de pedidos or'#231'amentos por'
              end
              object Label12: TLabel
                Left = 626
                Top = 214
                Width = 95
                Height = 14
                Caption = 'Tipo pedido padr'#227'o:'
              end
              object CheckVisualizaClientes: TCheckBox
                Left = 284
                Top = 114
                Width = 213
                Height = 17
                Caption = 'Visualizar somente Clientes do Usu'#225'rio'
                TabOrder = 0
              end
              object CheckVisualizaPedidos: TCheckBox
                Left = 284
                Top = 76
                Width = 213
                Height = 17
                Caption = 'Visualizar somente Pedidos do Usu'#225'rio'
                TabOrder = 1
              end
              object ChkAlteraDescP: TCheckBox
                Left = 9
                Top = 48
                Width = 136
                Height = 17
                Caption = 'Alte&ra Desconto Pedido'
                Checked = True
                State = cbChecked
                TabOrder = 2
              end
              object chkAlteraFormaPagFat: TCheckBox
                Left = 703
                Top = 76
                Width = 242
                Height = 17
                Caption = 'Altera Forma de pagamento no faturamento'
                TabOrder = 3
              end
              object chkAlteraTabelaPreco: TCheckBox
                Left = 522
                Top = 146
                Width = 156
                Height = 17
                Caption = 'Altera Tabela de Pre'#231'os'
                TabOrder = 4
              end
              object chkAnaliseCredito: TCheckBox
                Left = 522
                Top = 76
                Width = 175
                Height = 17
                Caption = 'Visualizar An'#225'lise de Cr'#233'dito'
                TabOrder = 5
              end
              object ChkAutorizaVendaAbaixo: TCheckBox
                Left = 9
                Top = 179
                Width = 213
                Height = 17
                Caption = 'Autoriza Venda Abaixo do Custo '
                TabOrder = 6
              end
              object ChkCadastroProduto: TCheckBox
                Left = 522
                Top = 114
                Width = 158
                Height = 17
                Caption = 'Cadastra Produto'
                TabOrder = 7
              end
              object chkComissaoPedido: TCheckBox
                Left = 521
                Top = 179
                Width = 213
                Height = 17
                Caption = 'Visualizar comiss'#245'es do pedido'
                TabOrder = 8
              end
              object chkEstornaExpedicao: TCheckBox
                Left = 9
                Top = 214
                Width = 146
                Height = 17
                Caption = 'Permite estorna expedi'#231#227'o'
                TabOrder = 9
              end
              object ChkExclusaoPedP: TCheckBox
                Left = 703
                Top = 48
                Width = 175
                Height = 17
                Caption = 'Exclus'#227'o de Pedidos'
                Checked = True
                State = cbChecked
                TabOrder = 10
              end
              object ChkFuncaoReajuste: TCheckBox
                Left = 9
                Top = 114
                Width = 213
                Height = 17
                Caption = 'Fun'#231#227'o Reajuste'
                TabOrder = 11
              end
              object chkMarkupPedido: TCheckBox
                Left = 9
                Top = 146
                Width = 213
                Height = 17
                Caption = 'Visualizar Markup do Pedido'
                TabOrder = 12
              end
              object chkpermite_excluir_itens: TCheckBox
                Left = 703
                Top = 16
                Width = 146
                Height = 17
                Caption = 'Permite exclus'#227'o de itens'
                TabOrder = 13
              end
              object ChkPrazoDesabilitado: TCheckBox
                Left = 284
                Top = 179
                Width = 213
                Height = 17
                Caption = 'Pode Utilizar Prazos Desabilitados'
                TabOrder = 14
              end
              object ChkPrecoBrutoP: TCheckBox
                Left = 9
                Top = 16
                Width = 121
                Height = 17
                Caption = 'Al&tera Pre'#231'o Bruto'
                Checked = True
                State = cbChecked
                TabOrder = 15
              end
              object ChkPrecoLiqP: TCheckBox
                Left = 284
                Top = 16
                Width = 121
                Height = 17
                Caption = 'Al&tera Pre'#231'o Liquido'
                Checked = True
                State = cbChecked
                TabOrder = 16
              end
              object ChkReeMissaoP: TCheckBox
                Left = 522
                Top = 48
                Width = 114
                Height = 17
                Caption = 'Reemiss'#227'o Pedidos'
                Checked = True
                Enabled = False
                State = cbChecked
                TabOrder = 17
              end
              object ChkRelatoriosP: TCheckBox
                Left = 522
                Top = 16
                Width = 175
                Height = 17
                Caption = 'Acesso aos Relat'#243'rios'
                Checked = True
                State = cbChecked
                TabOrder = 18
              end
              object chkTransferenciaMercadorias: TCheckBox
                Left = 284
                Top = 146
                Width = 213
                Height = 17
                Caption = 'Transfer'#234'ncia de Mercadorias - Kardex'
                TabOrder = 19
              end
              object CurrDescMaxP: TJvValidateEdit
                Left = 110
                Top = 74
                Width = 82
                Height = 21
                AutoSize = False
                CriticalPoints.MaxValueIncluded = False
                CriticalPoints.MinValueIncluded = False
                DisplayFormat = dfPercent
                DecimalPlaces = 2
                DisplaySuffix = ' %'
                EditText = '0'
                TabOrder = 20
                OnChange = CurrDescMaxPChange
              end
              object edNumDiasOrca: TJvValidateEdit
                Left = 923
                Top = 112
                Width = 54
                Height = 21
                AutoSize = False
                CriticalPoints.MaxValueIncluded = False
                CriticalPoints.MinValueIncluded = False
                EditText = '0'
                MaxValue = 99.000000000000000000
                TabOrder = 21
                OnChange = CurrDescMaxPChange
              end
              object chkBloquearVendedor: TCheckBox
                Left = 704
                Top = 179
                Width = 219
                Height = 17
                Caption = 'Bloquear altera'#231#227'o do vendedor'
                TabOrder = 22
              end
              object chkAlterTipo: TCheckBox
                Left = 284
                Top = 213
                Width = 213
                Height = 17
                Caption = 'Permite alterar tipo de pedido '
                TabOrder = 23
              end
              object cbTipoPedido: TcxLookupComboBox
                Left = 727
                Top = 211
                Properties.KeyFieldNames = 'OPV_CODIGO'
                Properties.ListColumns = <
                  item
                    Caption = 'Descri'#231#227'o'
                    FieldName = 'OPV_DESCRICAO'
                  end>
                Properties.ListSource = DataCadastros1.dsTipoPedido
                TabOrder = 24
                Width = 312
              end
              object chkDescontoNota: TCheckBox
                Left = 284
                Top = 48
                Width = 136
                Height = 17
                Caption = 'Alte&ra Desconto na Nota'
                Checked = True
                State = cbChecked
                TabOrder = 25
              end
              object chkHabilitaColunaNF: TCheckBox
                Left = 9
                Top = 247
                Width = 224
                Height = 17
                Caption = 'Habilita/Mostra Coluna N'#186' da Nota Fiscal'
                TabOrder = 26
              end
              object chkDesabilitaCopiarPedido: TCheckBox
                Left = 284
                Top = 247
                Width = 181
                Height = 17
                Caption = 'Desabilitar Bot'#227'o Copiar Pedido'
                TabOrder = 27
              end
              object chkPedidoAbaixoPrazoMinimo: TCheckBox
                Left = 521
                Top = 247
                Width = 248
                Height = 17
                Caption = 'Libera pedido abaixo do valor m'#237'nimo do prazo '
                TabOrder = 28
              end
              object chkExibeAbaInfoClientePedido: TCheckBox
                Left = 284
                Top = 279
                Width = 245
                Height = 17
                Caption = 'Exibir Aba de Informa'#231#245'es do Cliente no Pedido'
                TabOrder = 29
              end
              object chkIncluiItemPedOPGerada: TCheckBox
                Left = 9
                Top = 279
                Width = 256
                Height = 17
                Caption = 'Permite incluir itens em pedidos com O.P. gerada'
                TabOrder = 30
              end
            end
            object tabProdutos: TcxTabSheet
              Caption = 'Cadastro de Produtos'
              ImageIndex = 1
              object ChkComissao: TCheckBox
                Left = 16
                Top = 12
                Width = 144
                Height = 17
                Caption = 'Altera Comiss'#227'o'
                TabOrder = 0
              end
              object ChkPrecoVenda: TCheckBox
                Left = 16
                Top = 48
                Width = 128
                Height = 17
                Caption = 'Altera Pre'#231'o Venda'
                TabOrder = 3
              end
              object chkAlteraCustosAutomaticos: TCheckBox
                Left = 16
                Top = 77
                Width = 211
                Height = 17
                Caption = 'Altera Custos Calculados Pelo Sistema'
                TabOrder = 6
              end
              object ChkVisualizacustosProd: TCheckBox
                Left = 292
                Top = 77
                Width = 173
                Height = 17
                Caption = 'Visualiza Pre'#231'os de Custos'
                TabOrder = 7
              end
              object ChkMagemMinima: TCheckBox
                Left = 292
                Top = 48
                Width = 157
                Height = 17
                Caption = 'Altera Margem M'#237'nima'
                TabOrder = 4
              end
              object ChkCusto: TCheckBox
                Left = 292
                Top = 12
                Width = 121
                Height = 17
                Caption = 'Altera Custo Liquido'
                TabOrder = 1
              end
              object ChkMargem: TCheckBox
                Left = 530
                Top = 12
                Width = 175
                Height = 17
                Caption = 'Altera Margem'
                TabOrder = 2
              end
              object ChkPrecoOferta: TCheckBox
                Left = 530
                Top = 48
                Width = 175
                Height = 17
                Caption = 'Altera Pre'#231'o Oferta'
                TabOrder = 5
              end
              object chkCampoTecnico: TCheckBox
                Left = 530
                Top = 77
                Width = 119
                Height = 17
                Caption = 'Campos T'#233'cnicos'
                TabOrder = 8
              end
              object chkVisualizaAbaVenda: TCheckBox
                Left = 16
                Top = 109
                Width = 173
                Height = 17
                Caption = 'Visualiza Aba de Vendas'
                TabOrder = 9
              end
            end
            object tabENF: TcxTabSheet
              Caption = 'Entrada Nota Fiscal'
              ImageIndex = 2
              object ChkAlteraNFEntrada: TCheckBox
                Left = 25
                Top = 49
                Width = 144
                Height = 17
                Caption = 'Altera Entrada Nota Fiscal'
                TabOrder = 0
              end
              object chkUsarCredito: TCheckBox
                Left = 25
                Top = 17
                Width = 352
                Height = 17
                Caption = 'Utilizar cr'#233'ditos da conta corrente do cliente'
                TabOrder = 1
              end
            end
            object tabGerencial: TcxTabSheet
              Caption = 'Gerencial'
              ImageIndex = 3
              object ChkAlteraComissao: TCheckBox
                Left = 9
                Top = 13
                Width = 192
                Height = 17
                Caption = 'Altera comiss'#227'o do item do pedido'
                TabOrder = 0
              end
              object chkDashVendas: TCheckBox
                Left = 9
                Top = 31
                Width = 192
                Height = 17
                Caption = 'Ativar Dashboard de vendas'
                TabOrder = 1
              end
              object ChkLiberaAnaliseCredito: TCheckBox
                Left = 281
                Top = 12
                Width = 192
                Height = 17
                Caption = 'Libera An'#225'lise de Cr'#233'dito'
                TabOrder = 2
              end
              object chkDashFin: TCheckBox
                Left = 281
                Top = 30
                Width = 192
                Height = 17
                Caption = 'Ativar Dashboard financeiro'
                TabOrder = 3
              end
              object ChkLiberaAnaliseProducao: TCheckBox
                Left = 521
                Top = 12
                Width = 192
                Height = 17
                Caption = 'Libera An'#225'lise de Produ'#231#227'o'
                TabOrder = 4
              end
              object chkTransfBancos: TCheckBox
                Left = 697
                Top = 12
                Width = 248
                Height = 17
                Caption = 'Transfer'#234'ncia de t'#237'tulos para outros bancos'
                TabOrder = 5
              end
            end
            object tabKardex: TcxTabSheet
              Caption = 'Kardex'
              ImageIndex = 4
              object ChkKardexLancEntrada: TCheckBox
                Left = 17
                Top = 10
                Width = 192
                Height = 17
                Caption = 'Entrada - Lan'#231'amento Manual'
                TabOrder = 0
              end
              object ChkKardexLancSaida: TCheckBox
                Left = 281
                Top = 10
                Width = 192
                Height = 17
                Caption = 'Sa'#237'da - Lan'#231'amento Manual'
                TabOrder = 1
              end
              object ChkKardexLancBalanco: TCheckBox
                Left = 521
                Top = 10
                Width = 192
                Height = 17
                Caption = 'Balan'#231'o - Lan'#231'amento Manual'
                TabOrder = 2
              end
            end
            object tabGerais: TcxTabSheet
              Caption = 'Cadastro Gerais'
              ImageIndex = 5
              object CHKLiberaColaborador: TCheckBox
                Left = 9
                Top = 17
                Width = 336
                Height = 17
                Caption = 'Liberar visualizar dados do colaborador no cad. de Fornecedor'
                TabOrder = 0
              end
              object chkAlterarClientes: TCheckBox
                Left = 362
                Top = 18
                Width = 255
                Height = 17
                Caption = 'Liberar bot'#227'o alterar dados cadastrais do cliente'
                TabOrder = 1
              end
              object chkNovoCliente: TCheckBox
                Left = 623
                Top = 18
                Width = 282
                Height = 17
                Caption = 'Liberar bot'#227'o para cadastro de novo cliente '
                TabOrder = 2
              end
              object chkAbrirChamado: TCheckBox
                Left = 864
                Top = 17
                Width = 121
                Height = 17
                Caption = 'Abrir chamado Novi'
                TabOrder = 3
              end
            end
            object tabFinanceiro: TcxTabSheet
              Caption = 'Financeiro'
              ImageIndex = 6
              object chkReprovar: TCheckBox
                Left = 16
                Top = 57
                Width = 352
                Height = 17
                Caption = 'Reprovar pagamento de contas a pagar'
                TabOrder = 1
              end
              object chkAprovar: TCheckBox
                Left = 16
                Top = 25
                Width = 273
                Height = 17
                Caption = ' Aprovar pagamento de contas a pagar'
                TabOrder = 0
              end
              object chkEstornoAprovacao: TCheckBox
                Left = 280
                Top = 25
                Width = 352
                Height = 17
                Caption = 'Estornar aprova'#231#227'o para pagamentos de contas a pagar'
                TabOrder = 2
              end
              object chkEstornoReprovacao: TCheckBox
                Left = 280
                Top = 57
                Width = 352
                Height = 17
                Caption = 'Estornar reprova'#231#227'o para pagamentos de contas a pagar'
                TabOrder = 3
              end
              object chkSolicitarPag: TCheckBox
                Left = 16
                Top = 92
                Width = 352
                Height = 17
                Caption = 'Solicitar libera'#231#227'o de pagamento'
                TabOrder = 4
              end
              object chkEstornarSolicitacao: TCheckBox
                Left = 280
                Top = 92
                Width = 352
                Height = 17
                Caption = 'Estornar solicita'#231#227'o'
                TabOrder = 5
              end
            end
            object cxTabSheet2: TcxTabSheet
              Caption = 'Produ'#231#227'o'
              ImageIndex = 7
              object chkCustosproducao: TCheckBox
                Left = 16
                Top = 15
                Width = 173
                Height = 17
                Hint = 'Visualizar custos de produ'#231#227'o'
                Caption = 'Visualizar custos de produ'#231#227'o'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
              end
            end
            object cxTabSheet3: TcxTabSheet
              Caption = 'Compra e Material'
              ImageIndex = 8
              object GroupBox6: TGroupBox
                Left = 3
                Top = 3
                Width = 273
                Height = 102
                Caption = 'Compras'
                TabOrder = 0
                object chkUSP_AUTORIZA_COTACAO_MATERIAL: TCheckBox
                  Left = 17
                  Top = 20
                  Width = 176
                  Height = 17
                  Caption = 'Autoriza Cota'#231#227'o de Material'
                  TabOrder = 0
                end
                object chkUSP_AUTORIZA_COMPRA_MATERIAL: TCheckBox
                  Left = 17
                  Top = 66
                  Width = 176
                  Height = 17
                  Caption = 'Autoriza Compra de Material'
                  TabOrder = 1
                end
                object chkUSP_REALIZA_COTACAO_MATERIAL: TCheckBox
                  Left = 17
                  Top = 43
                  Width = 176
                  Height = 17
                  Caption = 'Realiza a Cota'#231#227'o de Material'
                  TabOrder = 2
                end
              end
              object GroupBox9: TGroupBox
                Left = 3
                Top = 111
                Width = 273
                Height = 74
                Caption = 'Requisicao de Material'
                TabOrder = 1
                object chkUSP_AUTORIZA_RETIRADA_MATERIAL: TCheckBox
                  Left = 17
                  Top = 20
                  Width = 176
                  Height = 17
                  Caption = 'Autoriza Retirada de Material'
                  TabOrder = 0
                end
                object chkUSP_REALIZA_RETIRADA_MATERIAL: TCheckBox
                  Left = 17
                  Top = 43
                  Width = 176
                  Height = 17
                  Caption = 'Realiza a Retirada de Material'
                  TabOrder = 1
                end
              end
            end
          end
        end
        object GroupBox8: TGroupBox
          Left = 2
          Top = 16
          Width = 1040
          Height = 49
          Align = alTop
          Caption = 'Usu'#225'rio'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 1
          object DBEdit1: TDBEdit
            Left = 16
            Top = 16
            Width = 50
            Height = 22
            TabStop = False
            Color = 14145495
            Ctl3D = True
            DataField = 'USU_CODIGO'
            DataSource = DataCadastros1.DsUsuario
            MaxLength = 5
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 67
            Top = 16
            Width = 348
            Height = 22
            TabStop = False
            CharCase = ecUpperCase
            Color = 14145495
            DataField = 'USU_NOME'
            DataSource = DataCadastros1.DsUsuario
            MaxLength = 45
            ReadOnly = True
            TabOrder = 1
          end
          object SearchBox1: TcxTextEdit
            Left = 560
            Top = 16
            Properties.OnChange = SearchBox1PropertiesChange
            TabOrder = 2
            Visible = False
            OnEnter = SearchBox1Enter
            Width = 249
          end
        end
      end
    end
    object tabEmpresa: TTabSheet
      Caption = 'Empresa'
      ImageIndex = 3
      OnShow = tabEmpresaShow
      object Label10: TLabel
        Left = 5
        Top = 53
        Width = 107
        Height = 14
        Caption = 'Acesso as empresas '
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 1044
        Height = 42
        Align = alTop
        Caption = 'Usu'#225'rio'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        object edCod_Usu: TDBEdit
          Left = 16
          Top = 16
          Width = 50
          Height = 22
          TabStop = False
          Color = 14145495
          Ctl3D = True
          DataField = 'USU_CODIGO'
          DataSource = DataCadastros1.DsUsuario
          MaxLength = 5
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 67
          Top = 16
          Width = 348
          Height = 22
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          DataField = 'USU_NOME'
          DataSource = DataCadastros1.DsUsuario
          MaxLength = 45
          ReadOnly = True
          TabOrder = 1
        end
      end
      object chkListEmpDisp: TCheckListBox
        Left = 3
        Top = 73
        Width = 393
        Height = 249
        OnClickCheck = chkListEmpDispClickCheck
        ItemHeight = 14
        TabOrder = 1
      end
      object btnConfirmaEmpresa: TBitBtn
        Left = 522
        Top = 486
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Salva|Grava Registro Atual...'
        Caption = '&Confirmar'
        Enabled = False
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        OnClick = BitConfirmarClick
      end
      object btnCancelaEmpresa: TBitBtn
        Left = 622
        Top = 486
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Cancela|N'#227'o Grava Registro...'
        Cancel = True
        Caption = 'Cancela&r'
        Enabled = False
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        OnClick = BitCancelarClick
      end
    end
    object tabAlmoxarifado: TTabSheet
      Caption = 'Almoxarifado'
      ImageIndex = 4
      OnShow = tabAlmoxarifadoShow
      object Label13: TLabel
        Left = 13
        Top = 90
        Width = 134
        Height = 14
        Caption = 'Acesso aos Almoxarifados:'
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 1044
        Height = 42
        Align = alTop
        Caption = 'Usu'#225'rio'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        object edCod_Usu_Almox: TDBEdit
          Left = 16
          Top = 16
          Width = 50
          Height = 22
          TabStop = False
          Color = 14145495
          Ctl3D = True
          DataField = 'USU_CODIGO'
          DataSource = DataCadastros1.DsUsuario
          MaxLength = 5
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 67
          Top = 16
          Width = 348
          Height = 22
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          DataField = 'USU_NOME'
          DataSource = DataCadastros1.DsUsuario
          MaxLength = 45
          ReadOnly = True
          TabOrder = 1
        end
      end
      object chkListAlmoxDisp: TCheckListBox
        Left = 11
        Top = 110
        Width = 393
        Height = 249
        OnClickCheck = chkListAlmoxDispClickCheck
        ItemHeight = 14
        TabOrder = 1
      end
      object btnConfirmaAlmoxarifado: TBitBtn
        Left = 530
        Top = 486
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Salva|Grava Registro Atual...'
        Caption = '&Confirmar'
        Enabled = False
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        OnClick = btnConfirmaAlmoxarifadoClick
      end
      object btnCancelaAlmoxarifado: TBitBtn
        Left = 630
        Top = 486
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 'Cancela|N'#227'o Grava Registro...'
        Cancel = True
        Caption = 'Cancela&r'
        Enabled = False
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        OnClick = btnCancelaAlmoxarifadoClick
      end
      object chkUSP_PROD_SEM_ALMOX: TCheckBox
        Left = 15
        Top = 57
        Width = 210
        Height = 17
        Caption = 'Visualiza Produtos sem Almoxarifado'
        TabOrder = 4
        OnClick = chkUSP_PROD_SEM_ALMOXClick
      end
    end
  end
  object ListBox1: TListBox
    Left = 726
    Top = 0
    Width = 249
    Height = 97
    ItemHeight = 14
    TabOrder = 1
    Visible = False
    OnClick = ListBox1Click
  end
  object ImageList1: TImageList
    Left = 272
    Top = 32
    Bitmap = {
      494C010103000500080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 384
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
