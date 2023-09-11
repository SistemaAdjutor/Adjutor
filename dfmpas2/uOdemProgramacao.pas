unit uOdemProgramacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, JvErrorIndicator,
  JvValidators, JvComponentBase, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxEditRepositoryItems, uProducaoDAO;

type
  TfrmOrdemProgramacao = class(TfrmBaseDBEditFDAC)
    cdsEditOPA_CODIGO: TIntegerField;
    cdsEditOPA_SEQUENCIAL: TIntegerField;
    cdsEditPED_CODIGO: TStringField;
    cdsEditEMP_CODIGO: TStringField;
    cdsEditDEP_CODIGO: TIntegerField;
    cdsEditPRD_CODIGO: TStringField;
    cdsEditOPA_DATA_ENTREGA: TSQLTimeStampField;
    cdsEditOPA_QTDE_PRODUZIR: TFMTBCDField;
    cdsEditIOP_CODIGO: TIntegerField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1OPA_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1OPA_SEQUENCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1PED_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1EMP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DEP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1OPA_DATA_ENTREGA: TcxGridDBColumn;
    cxGrid1DBTableView1OPA_QTDE_PRODUZIR: TcxGridDBColumn;
    cxGrid1DBTableView1IOP_CODIGO: TcxGridDBColumn;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem;
    cdsEditOPA_DATA_FABRICACAO: TSQLTimeStampField;
    cdsEditOPA_DATA_AJUSTADA: TSQLTimeStampField;
    cdsEditOPA_DIAS_CORRIDOS: TIntegerField;
    cxGrid1DBTableView1OPA_DATA_FABRICACAO: TcxGridDBColumn;
    cxGrid1DBTableView1OPA_DATA_AJUSTADA: TcxGridDBColumn;
    cxGrid1DBTableView1OPA_DIAS_CORRIDOS: TcxGridDBColumn;
    cdsEditOPA_STATUS: TStringField;
    cxGrid1DBTableView1OPA_STATUS: TcxGridDBColumn;
    procedure btnOkClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsEditNewRecord(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure cdsEditOPA_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    FDep_codigo : integer;
    fQtdeSeq : integer;
    fped_codigo :string;
    fprd_codigo : string;
    fiop_codigo : integer;
    fDataEntrega : TDate;
    fQtdeproducao : double;
    fProdutoFracionado : boolean;
    fprf_registro : integer;
    pro: TProducaoDao;
  public
    property Dep_codigo : integer read fdep_codigo write fdep_codigo;
    property Ped_codigo : string read fped_codigo write fped_codigo;
    property prd_codigo : string read fprd_codigo write fprd_codigo;
    property iop_codigo : integer read fiop_codigo write fiop_codigo;
    property QtdeSeq : integer read fqtdeseq write fqtdeseq;
    property DataEntrega : tdate read fDataEntrega write fDataEntrega;
    property QtdeProducao : double read fQtdeproducao write fQtdeproducao;
    property ProdutoFracionado : boolean read fProdutoFracionado write fProdutoFracionado;
    property prf_registro : integer read fprf_registro write fprf_registro;
  end;

var
  frmOrdemProgramacao: TfrmOrdemProgramacao;

implementation

{$R *.dfm}

uses InicioDB, uteis;

procedure TfrmOrdemProgramacao.btnCancelarClick(Sender: TObject);
begin
  cdsEdit.Cancel;
  cdsedit.open(' SELECT * '+
               ' FROM ORDEM_PROGRAMADA   '+
               ' WHERE DEP_CODIGO ='+IntToStr(Dep_codigo));
  ModalResult := mrCancel;
  inherited;

end;

procedure TfrmOrdemProgramacao.btnOkClick(Sender: TObject);
var producao : double;

begin
  if cdsedit.State in dsEditModes then
     cdsEdit.Post;

    //validar
  cdsedit.First;
  cdsEdit.DisableControls;
   try
     while not cdsedit.Eof do
     begin
       if (cdsEditOPA_QTDE_PRODUZIR.AsFloat <=0) then
         raise Exception.Create('Quantidade a produzir deve ser preenchida');
       if cdsEditOPA_DATA_ENTREGA.AsDateTime = 0  then
         raise Exception.Create('Data de entrega deve ser preenchida');
       producao := producao +  cdsEditOPA_QTDE_PRODUZIR.AsFloat ;
       cdsedit.Next;
     end;
     // programando mais do que foi solicitado a produzir
     if producao <> fQtdeproducao then
       raise Exception.Create('Programado a produzir diferente do que foi solicitado a produzir');
     cdsedit.First;
     while not cdsedit.Eof do
     begin
       if prf_registro >0 then
          pro.AtualizarAjusteDataOrdem(prf_registro,0,cdsEditOPA_DATA_AJUSTADA.AsDateTime,cdsEditOPA_SEQUENCIAL.AsInteger);
       cdsedit.Next;
     end;



  finally
    cdsEdit.EnableControls;
  end;
  inherited;
   ExecSql('update DEMANDA_PRODUCAO set DEP_QTDE_PROGRA = ' + IntToStr(QtdeSeq) +' where dep_codigo =' +IntToStr(Dep_codigo));
   //histórico

   pro.DemandaHistorico(dep_codigo,'Realizado a programação da ordem',Ped_codigo, prd_codigo);



   ModalResult := mrok;
end;

procedure TfrmOrdemProgramacao.cdsEditNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsEditDEP_CODIGO.AsInteger:= Dep_codigo;
  cdsEditEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;
  cdsEditOPA_CODIGO.AsInteger := GetNextSequence('GEN_ORDEM_PROGRAMADA');
  cdsEditPED_CODIGO.AsString := Ped_codigo;
  cdsEditPRD_CODIGO.AsString := prd_codigo;
  cdsEditOPA_DATA_ENTREGA.AsDateTime := DataEntrega;
  cdsEditOPA_DATA_AJUSTADA.AsDateTime := DataEntrega;
  if iop_codigo > 0  then
   cdsEditIOP_CODIGO.AsInteger := iop_codigo;


end;

procedure TfrmOrdemProgramacao.cdsEditOPA_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsEditOPA_DATA_FABRICACAO.IsNull then
    text := ''
  else
  if Sender.asString = 'T' then
     text := 'Antecipado'
  else if Sender.AsString = 'A' then
    text := 'Entrega atrasada'
  else if Sender.AsString = 'P' then
    text:= 'No prazo';
end;

procedure TfrmOrdemProgramacao.FormCreate(Sender: TObject);
begin
  inherited;
	CampoID:='DEP_CODIGO';
	Tabela:='ORDEM_PROGRAMADA';
  self.Constraints.MinHeight:= 275;
  self.Constraints.MinWidth:=390;
  self.Constraints.MaxHeight:= 0;
  self.Width := 702;
  TemDetalhe := False;
  if not Assigned(pro) then
    pro := TProducaoDao.Create(application);
end;

procedure TfrmOrdemProgramacao.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(pro) then
    FreeAndNil(pro);

  cdsEditOPA_QTDE_PRODUZIR.DisplayFormat :=  '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
end;

procedure TfrmOrdemProgramacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    btnok.Click
end;

procedure TfrmOrdemProgramacao.FormShow(Sender: TObject);
var i : integer;
 producaoPart, restoFrac : Double;
 resto, partInteira : integer;
begin
  inherited;
  cdsEdit.CLOSE;
  cdsEdit.Params[0].Value := Dep_codigo;
  cdsEdit.Open;
  If cdsEdit.IsEmpty then
  begin

    if ProdutoFracionado then
     begin

      producaoPart :=RoundTo( QtdeProducao / QtdeSeq, - 2) ;

      restoFrac :=  RoundTo(  (qtdeproducao -
      RoundTo(   producaopart  *  qtdeseq, - 2 )), - 2) ;
     end
     else
     begin
       partInteira := Trunc( QtdeProducao) div trunc(qtdeseq);
       resto :=   Trunc( QtdeProducao) mod trunc(qtdeseq);
     end;
     for I := 1 to QtdeSeq do
     begin
       cdsedit.Insert;
       cdsEditOPA_SEQUENCIAL.AsInteger := i;
       if (resto > 0) and not ProdutoFracionado then
       begin
         Dec(resto);
         cdsEditOPA_QTDE_PRODUZIR.AsFloat := partInteira + 1;
       end
       else if not ProdutoFracionado then
        cdsEditOPA_QTDE_PRODUZIR.AsFloat := partInteira
       else if (restoFrac > 0)  then
       begin
         cdsEditOPA_QTDE_PRODUZIR.AsFloat := producaoPart + restoFrac;
         restoFrac := 0 ;
       end
       else
         cdsEditOPA_QTDE_PRODUZIR.AsFloat := producaoPart;
       cdsEdit.Post;
     end;

  end
  // tem mais registros que sequencia digitada
  else if cdsEdit.RecordCount > QtdeSeq then
  begin

     for I := cdsEdit.RecordCount  downto QtdeSeq+1 do
     begin
       if cdsEdit.Locate('opa_sequencial',i,[])  then
       begin
         cdsEdit.Delete;
         cdsEdit.Post;
       end;
     end;


  end
  else if cdsEdit.RecordCount < qtdeseq then
  begin
    for I := qtdeseq downto cdsEdit.RecordCount+1 do
    begin
       cdsedit.Insert;
       cdsEditOPA_SEQUENCIAL.AsInteger := i;
       cdsEdit.Post;
    end;
  end;
  self.Caption :=  'Ordem de produção programada';
end;

end.
