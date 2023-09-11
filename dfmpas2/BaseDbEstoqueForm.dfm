inherited frmBaseDbEstoque: TfrmBaseDbEstoque
  Caption = 'frmBaseDbEstoque'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ACBrEnterTab1: TACBrEnterTab
    AllowDefault = False
    Left = 168
    Top = 80
  end
  object qAuxEstorna: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 442
    Top = 96
  end
  object qAuxEstornaItem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 442
    Top = 152
  end
end
