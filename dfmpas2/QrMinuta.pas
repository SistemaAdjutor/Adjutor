unit QrMinuta;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QRExport;

type
  TRelMinuta = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    LabelEmpresa: TQRLabel;
    QRBand2: TQRBand;
    LabEndereco: TQRLabel;
    LabCidade: TQRLabel;
    LabEstado: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    LabFrete: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel28: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    LABELEMPRESA1: TQRLabel;
    LabEndereco1: TQRLabel;
    LabCidade1: TQRLabel;
    LabEstado1: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    LabFrete1: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape6: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRLabel29: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelMinuta: TRelMinuta;


  
implementation

uses NFImprim, ADJ0001, Men0001;

{$R *.DFM}

procedure TRelMinuta.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 //Nome da empresa no topo do relatorio
  LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
  if FormNFimprime.TbNFiscalNF_CIDENT.Value <> '' then
    begin
    LabEndereco.caption :=  FormNFimprime.TbNFiscalNF_ENDENT.Value;
    LabCidade.caption   :=  FormNFimprime.TbNFiscalNF_CIDENT.Value;
    LabEstado.caption   :=  FormNFimprime.TbNFiscalNF_ESTENT.Value;
    end
  else
    begin
    LabEndereco.caption :=  FormNFimprime.TbNFiscalNF_ENDCLI.Value;
    LabCidade.caption   :=  FormNFimprime.TbNFiscalNF_CIDCLI.Value;
    LabEstado.caption   :=  FormNFimprime.TbNFiscalNF_ESTCLI.Value;
    end;
  //
  if FormNFImprime.TbNFiscalNF_FRETE.Value = '1' then
    LabFrete.Caption := 'FRETE PAGO'
  else
    LabFrete.Caption := 'FRETE À PAGAR';

   // LABELS DA 2A VIA
   LabelEmpresa1.Caption:= LabelEmpresa.Caption;
   LabEndereco1.caption := LabEndereco.caption;
   LabCidade1.caption   := LabCidade.caption;
   LabEstado1.caption   := LabEstado.caption;
   LabFrete1.Caption    := LabFrete.Caption;

end;

end.
