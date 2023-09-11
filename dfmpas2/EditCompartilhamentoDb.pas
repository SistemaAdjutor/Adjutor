unit EditCompartilhamentoDb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBEditForm, {{DBXpress,}  FMTBCd, ExtCtrls, DBCtrls, StdCtrls,
  DB, DBClient, Provider, SqlExpr, ACBrBase, ACBrCalculadora, Buttons,
  Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab;

type
  TfrmEditCompartilhamentoDb = class(TfrmBaseDBEdit)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup9: TDBRadioGroup;
    DBRadioGroup10: TDBRadioGroup;
    DBRadioGroup11: TDBRadioGroup;
    DBRadioGroup13: TDBRadioGroup;
    DBRadioGroup14: TDBRadioGroup;
    DBRadioGroup15: TDBRadioGroup;
    DBRadioGroup16: TDBRadioGroup;
    DBRadioGroup17: TDBRadioGroup;
    DBRadioGroup18: TDBRadioGroup;
    DBRadioGroup19: TDBRadioGroup;
    CdsEditCLIENTES: TStringField;
    CdsEditPRODUTOS: TStringField;
    CdsEditBANCOS: TStringField;
    CdsEditTRANSPORTADORAS: TStringField;
    CdsEditREPRESENTANTES: TStringField;
    CdsEditFORNECEDORES: TStringField;
    CdsEditRECEBER: TStringField;
    CdsEditPAGAR: TStringField;
    CdsEditPEDIDOS: TStringField;
    CdsEditCOTACOES: TStringField;
    CdsEditORDENSCOMPRA: TStringField;
    CdsEditFICHATECNICA: TStringField; // NÃO USA MAIS (UNIFICADO COM PRODUTO)
    CdsEditORDEMPRODUCAO: TStringField;
    CdsEditPARAMETROS: TStringField;
    CdsEditTABELAS: TStringField;
    CdsEditPRAZOS: TStringField;
    CdsEditOPERACAOFISCAL: TStringField;
    CdsEditPLANODECONTAS: TStringField;
    CdsEditFISCAL: TStringField;
    qEditCLIENTES: TStringField;
    qEditPRODUTOS: TStringField;
    qEditBANCOS: TStringField;
    qEditTRANSPORTADORAS: TStringField;
    qEditREPRESENTANTES: TStringField;
    qEditFORNECEDORES: TStringField;
    qEditRECEBER: TStringField;
    qEditPAGAR: TStringField;
    qEditPEDIDOS: TStringField;
    qEditCOTACOES: TStringField;
    qEditORDENSCOMPRA: TStringField;
    qEditFICHATECNICA: TStringField; // NÃO USA MAIS (UNIFICADO COM PRODUTO)
    qEditORDEMPRODUCAO: TStringField;
    qEditPARAMETROS: TStringField;
    qEditTABELAS: TStringField;
    qEditPRAZOS: TStringField;
    qEditOPERACAOFISCAL: TStringField;
    qEditPLANODECONTAS: TStringField;
    qEditFISCAL: TStringField;
    Label12: TLabel;
    DBRadioGroup12: TDBRadioGroup;
    qEditESTOQUES: TStringField;
    CdsEditESTOQUES: TStringField;
    Label20: TLabel;
    DBRadioGroup20: TDBRadioGroup;
    qEditICMS: TStringField;
    CdsEditICMS: TStringField;
    Label21: TLabel;
    DBRadioGroup21: TDBRadioGroup;
    qEditPRODUTO_PRECO_EMPRESA: TStringField;
    CdsEditPRODUTO_PRECO_EMPRESA: TStringField;
    procedure FormCreate(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditCompartilhamentoDb: TfrmEditCompartilhamentoDb;

implementation

{$R *.dfm}

procedure TfrmEditCompartilhamentoDb.FormCreate(Sender: tObject);
begin
  inherited;
  self.SetTamanhoMAXIMO(480,675);
  self.SetTamanhominimo(480,675);
end;

end.




