inherited frmEmpresaExportacao: TfrmEmpresaExportacao
  Caption = 'Escolha as Empresas para Exporta'#231#227'o dos Dados'
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 635
    Height = 226
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dsAux
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Selecionado: TcxGridDBColumn
        Caption = '*'
        DataBinding.FieldName = 'SELECIONADO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Properties.OnChange = cxGrid1DBTableView1Column1PropertiesChange
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1EMP_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'EMP_CODIGO'
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1EMP_RAZAO: TcxGridDBColumn
        Caption = 'Raz'#227'o Social'
        DataBinding.FieldName = 'EMP_RAZAO'
        Options.Editing = False
        Width = 477
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 226
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 304
      Top = 6
      Width = 140
      Height = 25
      Caption = 'Confirma'
      Glyph.Data = {
        26050000424D26050000000000003604000028000000100000000F0000000100
        080000000000F0000000C40E0000C40E00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF0404FFFFFFFFFFFFFFFFFFFFFFFFFFFA020204
        FFFFFFFFFFFFFFFFFFFFFFFF0202020204FFFFFFFFFFFFFFFFFFFFFF02020202
        0204FFFFFFFFFFFFFFFFFFFF020202FA020204FFFFFFFFFFFFFFFFFF020204FF
        FA020204FFFFFFFFFFFFFFFFFA0204FFFFFA0202A4FFFFFFFFFFFFFFFFFFFFFF
        FFFFFA020204A4FFFFFFFFFFFFFFFFFFFFFFFFFA020204A4FFFFFFFFFFFFFFFF
        FFFFFFFFFA0202A4FFFFFFFFFFFFFFFFFFFFFFFFFFFA02A4FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      ModalResult = 1
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 464
      Top = 6
      Width = 140
      Height = 25
      Cancel = True
      Caption = 'Cancela'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDDDDFB9893F37870EF7A72EF9E99F4E8E8FCFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D0F91B0CE50000DF0000E023
        15E72012E70000E00000DF2C1EE6E5E5FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        8F8AF20000DF2B1CE6CBC9FBFFFFFFFFFFFFFFFFFFFFFFFFBFBCFC2515E60000
        E0B1AEF6FFFFFFFFFFFFFFFFFFACA8F50000DF7068EEFFFFFFFFFFFF40404000
        00000000001D1D1CFFFFEBC4C2FC0100E20000E0CECCF9FFFFFFFFFFFF0000E0
        4E43EAFFFFFFFFFFFF2F2F2F0000000000000000000000004A47940000EA665D
        ED4235E90800E2FFFFFF958EF20000E0FFFFFFFFFFFFEAEAEA00000000000000
        00000000005B57AA0500FB6057F5FFFFFFE8E9FC0000DFB4AFF64235E9473CE9
        FFFFFFFFFFFF7272720000000000000000005B57B00A00FF3B33CAB9BB9DFFFF
        FFFFFFFF2113E56258EC1708E4847CF0FFFFFFFFFFFF0000002D2D2D0000005B
        57B70700FF4F47DA0000009D9D9DFFFFFFFFFFFF6157ED382BE81303E48B83F1
        FFFFFFD0D0D0000000B8BA9F4944AB0600FE645CE80A0C000B0B0B9E9E9EFFFF
        FFFFFFFF675DED3325E73325E75D52ECFFFFFFFFFFFFC4C5AA9B96FF0000F73F
        38BC8284660505054D4D4D989898FFFFFFFFFFFF382AE85348EB7C73F00000E2
        FFFFFFFFFFFF8B85FA0000E95852CF56583A6969680707073D3D3D919191FFFF
        FFFFFFFF0000E09B95F3EFF0FD0000DF958FF38984F10000E27973EA00000059
        5959676767000000A3A3A3D0D0D0FFFFFF6158ED0000E0FFFFFFFFFFFF6F67EE
        0000E10100E29793F3FFFFFFA5A5A53939397373733E3E3EFFFFFFFFFFFF9E99
        F40000DF948FF2FFFFFFFFFFFFFFFFFF4339E90000E1867FF1FFFFFFFFFFFFE6
        E7D7FFFFF2FFFFFFFFFFFF6056EC0000DF6159EDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF817AF00000E00000E04236E9766DF47168F1392CE80000E00000E09A95
        F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9892F35146EB32
        24E73426E7584CEBA29DF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ModalResult = 2
      TabOrder = 1
    end
  end
  inherited qAux: TFDQuery
    SQL.Strings = (
      'SELECT EMP_UF AS SELECIONADO, EMP_CODIGO, EMP_RAZAO FROM EMP0000')
    Left = 43
    Top = 208
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\EXEMPLO\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Left = 59
    Top = 144
  end
  object dsAux: TDataSource
    DataSet = cdsAux
    Left = 240
    Top = 208
  end
  object dspAux: TDataSetProvider
    DataSet = qAux
    Left = 112
    Top = 208
  end
  object cdsAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAux'
    Left = 184
    Top = 208
  end
end
