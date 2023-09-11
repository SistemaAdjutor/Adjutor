inherited FrmBaseDBPesquisaGeraFDAC: TFrmBaseDBPesquisaGeraFDAC
  Caption = 'FrmBaseDBPesquisaGeraFDAC'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    inherited tsNotas: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inherited pnlControle: TPanel
        inherited pnlFiltro: TPanel
          inherited pnlpn1: TPanel
            object LabeledEdit1: TLabeledEdit
              Left = 16
              Top = 32
              Width = 545
              Height = 21
              EditLabel.Width = 61
              EditLabel.Height = 13
              EditLabel.Caption = 'LabeledEdit1'
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 40
    Top = 256
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 120
    Top = 264
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 600
    Top = 208
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 424
    Top = 192
  end
  inherited FDTransac: TFDTransaction
    Left = 488
    Top = 192
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 480
    Top = 256
  end
  inherited cdsBusca: TFDQuery
    SQL.Strings = (
      
        'SELECT fr.FOR_CODIGO, fr.FOR_RAZAO,SUM (ENF_QTDE) ENF_QTDE ,SUM ' +
        '(ENF_QTDE * COALESCE (ENF_PRECO,0)),'
      '  count(*) AS conta,  PR.prd_codigo'
      'FROM ENF0001 EF'
      
        'INNER JOIN ENF_IT01 E1 ON (EF.ENF_NOTANUMBER = E1.ENF_IT_NOTANUM' +
        'BER AND ef.FOR_CODIGO = e1.FOR_CODIGO)'
      ' INNER JOIN PRD0000 PR ON (PR.PRD_CODIGO = E1.PRD_CODIGO)'
      ' INNER JOIN FOR0000 fr ON (fr.FOR_CODIGO = e1.FOR_CODIGO)'
      ' WHERE pr.PRD_REFER = :id'
      '  GROUP BY  fr.FOR_CODIGO, fr.FOR_RAZAO, PR.prd_codigo'
      '       ORDER BY 1 desc')
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  inherited frxPadrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
