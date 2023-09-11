unit QrPrev01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelPrevConsumo = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    StrBandProd: TQRStringsBand;
    StrBandCons: TQRStringsBand;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText13: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel13: TQRLabel;
    QRSysData2: TQRSysData;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRLabel2: TQRLabel;
    LbCusto: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    procedure RelPrevConsumoBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelPrevConsumo: TRelPrevConsumo;

implementation

uses PrevC001,RWFunc,ADJ0001,PrevC002, Men0001, DmProdu;

{$R *.DFM}

procedure TRelPrevConsumo.RelPrevConsumoBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
{Preparando Dados}
 RelPrevConsumo.StrBandProd.Items.Clear;
 DmProducao.CdsPrevConsumo.First;
 while not DmProducao.CdsPrevConsumo.Eof do
   begin
   RelPrevConsumo.StrBandProd.Items.Add(Copy(justifica(' ',DmProducao.CdsPrevConsumoPSV_QUANT1.AsString,8,' '),1,8)+
   copy(justifica('d',DmProducao.CdsPrevConsumoPSV_UND.Value,3,' '),1,3)+
   copy(justifica('d',DmProducao.CdsPrevConsumoPRD_DESCRI.Value,45,' '),1,45)+
   copy(justifica('d',DmProducao.CdsPrevConsumoPSV_MODE1.Value,12,' '),1,12)+
   copy(justifica('d',DmProducao.CdsPrevConsumoPRD_REFER.Value,11,' '),1,11));
   DmProducao.CdsPrevConsumo.Next;
   end;
 RelPrevConsumo.StrBandCons.Items.Add('Material Consumido REF.       DESCRIÇÃO UND E.ATUAL  ATUAL+COMPRA  CONSUMO P.CUSTO  FALTA');

end;

procedure TRelPrevConsumo.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    RelPrevConsumo.StrBandProd.Items.Clear;
    RelPrevConsumo.StrBandCons.Items.Clear;
end;

procedure TRelPrevConsumo.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
LbCusto.Caption := Format('%n',[FormPrevConsGrid.NumEdit1.Value]);
LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
