object FrmBackup: TFrmBackup
  Left = 44
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Backup [Adjutor RW]'
  ClientHeight = 380
  ClientWidth = 712
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 13
    Top = 73
    Width = 95
    Height = 13
    Caption = 'Banco de Dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 712
    Height = 343
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '&Backup'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 704
        Height = 161
        Align = alTop
        Color = clSkyBlue
        ParentColor = False
        TabOrder = 0
        object Label1: TLabel
          Left = 9
          Top = 12
          Width = 167
          Height = 13
          Caption = 'Unidade do banco de Dados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 9
          Top = 54
          Width = 202
          Height = 13
          Caption = 'Unidade destino de para o Backup:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpButBackup: TSpeedButton
          Left = 516
          Top = 115
          Width = 172
          Height = 40
          Cursor = crHandPoint
          Hint = 'C'#243'pia Seguran'#231'a'
          BiDiMode = bdRightToLeft
          Caption = 'Iniciar Bac&kup'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            D6070000424DD60700000000000036040000280000001E0000001D0000000100
            080000000000A003000000000000000000000001000000010000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00080000000000
            0000000000000000000000000000000000000000000000080000000707070707
            0707070707070707070707070707070707070707070707000000000F07070707
            0707070707070707070707070707070707070707070707000000000F08080808
            0808080808080808080808080808080808080808080707000000000F08080808
            0808080808080808080808080808080808080808080707000000000F08080808
            0808080F0F0F0F0F0F0F0F0F0F0F080808080808080707000000000F0808080F
            0F0F070808080808080808080808070F0F0F0808080707000000000F08080800
            0000000000000000000000000000000000000808080707000000000F08080808
            0808080707070707070707070707080808080808080707000000000F08080808
            0808080808080808080808080808080808080808080707000000000F0808050D
            0D05080808080808080808080808080808080808080707000000000F08080808
            0808080808080808080808080808080808080808080707000000000F08000000
            0000000000000000000000000008080808080808080707000000000F00000707
            07070707070707070707070700000F0F0F0F0F0F0F0F07000000080000000807
            0807080708070807080708070000000000000000000000080000080800000708
            0708070807080708070807080000080808080808080808080000080800000807
            0807080708070807080708070000080808080808080808080000080800000708
            0708070807080708070807080000080808080808080808080000080800000807
            0807080708070807080708070000080808080808080808080000080800000708
            0708070807080708070807080000080808080808080808080000080800000000
            0000000000000000000000000000080808080808080808080000080800000000
            0000000000000000000000000000080808080808080808080000080800000000
            00000E0E0E0E0E0E0E0000000000080808080808080808080000080800000000
            000E0E0E0E0E00000E0E00000000080808080808080808080000080800000000
            000E0E0E0E0E00000E0E00000000080808080808080808080000080800000000
            000E0E0E0E0E00000E0E00000000080808080808080808080000080800000807
            000E0E0E0E0E00000E0E00000000080808080808080808080000080800000807
            000E0E0E0E0E00000E0E00000000080808080808080808080000080808000000
            0008080808080808080800000008080808080808080808080000}
          ParentFont = False
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
          Transparent = False
          OnClick = SpButBackupClick
        end
        object ArquivoNome: TFilenameEdit
          Left = 8
          Top = 26
          Width = 326
          Height = 21
          Filter = 'Banco de Dados (*.gdb)|*.gdb|Todos Arquivos (*.*)|*.*'
          CharCase = ecLowerCase
          Color = 10841658
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 0
          Text = ''
        end
        object ArquivoBackup: TFilenameEdit
          Left = 8
          Top = 69
          Width = 326
          Height = 21
          Filter = 'Arquivos de Backup(*.gbk)|*.gbk|Todos Arquivos (*.*)|*.*'
          CharCase = ecLowerCase
          Color = 10841658
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 1
          Text = ''
        end
        object GroupBox2: TGroupBox
          Left = 504
          Top = 8
          Width = 194
          Height = 102
          Caption = 'Op'#231#245'es de Backup'
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object ChkMonTrans: TCheckBox
            Left = 10
            Top = 16
            Width = 129
            Height = 17
            Caption = 'Todas Plataformas'
            TabOrder = 0
          end
          object ChkLimbo: TCheckBox
            Left = 10
            Top = 32
            Width = 129
            Height = 17
            Caption = 'Ignore Limbo'
            Checked = True
            State = cbChecked
            TabOrder = 1
          end
          object ChkMetaData: TCheckBox
            Left = 10
            Top = 48
            Width = 129
            Height = 17
            Caption = 'Metadata Only'
            TabOrder = 2
          end
          object ChkGarbage: TCheckBox
            Left = 10
            Top = 65
            Width = 153
            Height = 17
            Caption = 'No Garbage Collection'
            TabOrder = 3
          end
          object ChkIgnoreChecksum: TCheckBox
            Left = 10
            Top = 82
            Width = 171
            Height = 17
            Caption = 'Ignore Erros (checksums)'
            TabOrder = 4
          end
        end
        object Animate: TAnimate
          Left = 13
          Top = 93
          Width = 272
          Height = 60
          StopFrame = 26
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 165
        Width = 704
        Height = 150
        Align = alBottom
        Caption = 'Informa'#231#245'es'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object MemoBackup: TMemo
          Left = 2
          Top = 13
          Width = 700
          Height = 135
          Align = alBottom
          Color = 10841658
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Restaurar'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 704
        Height = 178
        Align = alTop
        Color = clSkyBlue
        ParentColor = False
        TabOrder = 0
        object Label4: TLabel
          Left = 9
          Top = 12
          Width = 208
          Height = 13
          Caption = 'Unidade do backup a ser restaurado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 9
          Top = 54
          Width = 221
          Height = 13
          Caption = 'Unidade destino do backup restaurado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpButRestaurar: TSpeedButton
          Left = 509
          Top = 132
          Width = 172
          Height = 40
          Cursor = crHandPoint
          Hint = 'C'#243'pia Seguran'#231'a'
          BiDiMode = bdRightToLeft
          Caption = 'Iniciar Res&taura'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
            33333333333F8888883F33330000324334222222443333388F3833333388F333
            000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
            F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
            223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
            3338888300003AAAAAAA33333333333888888833333333330000333333333333
            333333333333333333FFFFFF000033333333333344444433FFFF333333888888
            00003A444333333A22222438888F333338F3333800003A2243333333A2222438
            F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
            22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
            33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
            3333333333338888883333330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          ParentFont = False
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
          Transparent = False
          OnClick = SpButRestaurarClick
        end
        object ArquivoDestino: TFilenameEdit
          Left = 8
          Top = 68
          Width = 288
          Height = 21
          Filter = 'Banco de Dados (*.gdb)|*.gdb|Todos Arquivos (*.*)|*.*'
          CharCase = ecLowerCase
          Color = 10841658
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 1
          Text = ''
        end
        object ArquivoBkpRes: TFilenameEdit
          Left = 8
          Top = 29
          Width = 288
          Height = 21
          Filter = 'Arquivos de Backup(*.gbk)|*.gbk|Todos Arquivos (*.*)|*.*'
          CharCase = ecLowerCase
          Color = 10841658
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 0
          Text = 'c:\adjutor\dados\backup\rwbdadm.gbk'
        end
        object GroupBox5: TGroupBox
          Left = 488
          Top = 8
          Width = 209
          Height = 121
          Caption = 'Op'#231#245'es de Restaura'#231#227'o'
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object ChkDesativaIdx: TCheckBox
            Left = 10
            Top = 16
            Width = 129
            Height = 17
            Caption = 'Desativa '#205'ndices'
            TabOrder = 0
          end
          object ChkNenhumaSomb: TCheckBox
            Left = 10
            Top = 32
            Width = 129
            Height = 17
            Caption = 'Nenhuma Sombra'
            TabOrder = 1
          end
          object ChkCheqValide: TCheckBox
            Left = 10
            Top = 48
            Width = 159
            Height = 17
            Caption = 'Nenhum Cheque Validez'
            TabOrder = 2
          end
          object ChkRelaCaVez: TCheckBox
            Left = 10
            Top = 65
            Width = 191
            Height = 17
            Caption = 'Uma Rela'#231#227'o de cada vez '
            TabOrder = 3
          end
          object ChkSubstituir: TCheckBox
            Left = 10
            Top = 82
            Width = 153
            Height = 17
            Caption = 'Substituir registros'
            Checked = True
            State = cbChecked
            TabOrder = 4
          end
          object ChkCriaNovoArq: TCheckBox
            Left = 10
            Top = 99
            Width = 153
            Height = 17
            Caption = 'Criar Novo Arquivo'
            TabOrder = 5
          end
        end
        object Animate1: TAnimate
          Left = 13
          Top = 101
          Width = 272
          Height = 60
          StopFrame = 34
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 182
        Width = 704
        Height = 133
        Align = alBottom
        Caption = 'Informa'#231#245'es'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object MemoRestaura: TMemo
          Left = 2
          Top = 14
          Width = 700
          Height = 117
          Align = alBottom
          Color = 10841658
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
  end
  object BitSair: TBitBtn
    Left = 593
    Top = 353
    Width = 110
    Height = 25
    Cursor = crHandPoint
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    TabStop = False
    OnClick = BitSairClick
  end
  object IBBackupService: TIBBackupService
    Protocol = TCP
    LoginPrompt = False
    TraceFlags = []
    ServerType = 'IBServer'
    BlockingFactor = 0
    Options = []
    PreAllocate = 0
    Left = 296
  end
  object IBRestoreService: TIBRestoreService
    LoginPrompt = False
    TraceFlags = []
    ServerType = 'IBServer'
    PageBuffers = 0
    PreAllocate = 0
    ReadOnly = False
    Left = 328
  end
end
