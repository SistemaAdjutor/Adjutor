unit QREqpCom;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelEquipCom = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    LabelEmpresa: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    TQTmpEquip: TQuery;
    QRDBText5: TQRDBText;
    QRBand4: TQRBand;
    QRLabel9: TQRLabel;
    TQTmpEquipTmpequipREP_CODIGO: TStringField;
    TQTmpEquipTMP_TOTVENDAS: TFloatField;
    TQTmpEquipTMP_COMISSAO: TFloatField;
    TQTmpEquipTMP_TOTLITROS: TFloatField;
    TQTmpEquipRep0000REP_CODIGO: TStringField;
    TQTmpEquipREP_GRUPO: TStringField;
    TQTmpEquipREP_FUNCAO: TStringField;
    TQTmpEquipTMP_VENDAPROP: TFloatField;
    TQTmpEquipTMP_COMPROP: TFloatField;
    TQTmpEquipTMP_LITROPROP: TFloatField;
    QRLabel10: TQRLabel;
    LabelDatas: TQRLabel;
    LabelQuinzena: TQRLabel;
    LabelRepresentante: TQRLabel;
    QRLabel11: TQRLabel;
    ChildBand1: TQRChildBand;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel12: TQRLabel;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    TQTmpEquipREP_RAZAO: TStringField;
    QRExpr1: TQRExpr;
    QRTextFilter1: TQRTextFilter;
    QRLabel6: TQRLabel;
    TQTmpEquipREP_SUPERVISAO: TStringField;
    TQTmpEquipREP_GERENTE: TStringField;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelEquipCom: TRelEquipCom;

implementation

uses ADJ0001,GImpRepr, Men0001;

{$R *.DFM}

procedure TRelEquipCom.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
// LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
// if wPubRep_Funcao = 'G' then
//    LabelRepresentante.Caption := wPubRep_Codigo+' - '+FormGimpRepr.TQRepresREP_RAZAO.Value+' : GERENTE';
// if wPubRep_Funcao = 'S' then
//    LabelRepresentante.Caption := wPubRep_Codigo+' - '+FormGimpRepr.TQRepresREP_RAZAO.Value+' : SUPERVISOR';
// if wPubRep_Funcao = 'R' then
//    LabelRepresentante.Caption := wPubRep_Codigo+' - '+FormGimpRepr.TQRepresREP_RAZAO.Value+' : REPRESENTANTE';


end;

end.
