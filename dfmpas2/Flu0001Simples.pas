{****************************************************************
| Programa...: FLU0001   - Nome formulario = FormFluxoCaixa
| Objetivo...: Browse do Fluxo de Caixa
| Analista...: Marcio Neu Pacheco
| Programador: Jackson Neu Pacheco
| Comentários:
|
| Criação..........: fev/99
| Ultima Alteração.: Mai/01
| Alterado por.....: Márcio
|
*****************************************************************}
unit Flu0001Simples;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, RwFunc,Db, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppModule, raCodMod,
  ppBands, ppVar, ppPrnabl, ppCache, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal,
  DBLocalS, Data.DBXFirebird, ppDesignLayer, ppParameter, SimpleDS, Data.FMTBcd;

type
  TFormFluxoCaixaSimples = class(TForm)
    DbGridFluxoCaixa: TDBGrid;
    Panel1: TPanel;
    Bit_AtualizaFluxo: TBitBtn;
    Bit_MdSdoBanco: TBitBtn;
    Bit_Relatorio: TBitBtn;
    Bit_Sair: TBitBtn;
    ppDBFluxoCx: TppDBPipeline;
    ppRelFluxoCx: TppReport;
    pp00HeaderBand1: TppHeaderBand;
    ppLine18: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine20: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLine21: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    pp00DetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    pp00SummaryBand1: TppSummaryBand;
    ppLine22: TppLine;
    raCodeModule3: TraCodeModule;
    SqlCdsFluxo: TSQLClientDataSet;
    DsFluxo: TDataSource;
    SqlCdsFluxoFLU_DIA: TSQLTimeStampField;
    SqlCdsFluxoFLU_RECEBE: TFMTBCdField;
    SqlCdsFluxoFLU_PAGAR: TFMTBCdField;
    SqlCdsFluxoFLU_BANCO: TFMTBCdField;
    SqlCdsFluxoFLU_SALDO: TFMTBCdField;
    SqlCdsFluxoFLU_ACUMULO: TFMTBCdField;
    SqlCdsFluxoEMP_CODIGO: TStringField;
    sqlFluxo: TSQLQuery;
    dspFluxo: TDataSetProvider;
    cdsFluxo: TClientDataSet;
    sqlFluxoFLU_DIA: TSQLTimeStampField;
    sqlFluxoFLU_RECEBE: TFMTBCDField;
    sqlFluxoFLU_PAGAR: TFMTBCDField;
    sqlFluxoFLU_BANCO: TFMTBCDField;
    sqlFluxoFLU_SALDO: TFMTBCDField;
    sqlFluxoFLU_ACUMULO: TFMTBCDField;
    sqlFluxoEMP_CODIGO: TStringField;
    cdsFluxoFLU_DIA: TSQLTimeStampField;
    cdsFluxoFLU_RECEBE: TFMTBCDField;
    cdsFluxoFLU_PAGAR: TFMTBCDField;
    cdsFluxoFLU_BANCO: TFMTBCDField;
    cdsFluxoFLU_SALDO: TFMTBCDField;
    cdsFluxoFLU_ACUMULO: TFMTBCDField;
    cdsFluxoEMP_CODIGO: TStringField;
    procedure Bit_MdSdoBancoClick(Sender: tObject);
    procedure Bit_AtualizaFluxoClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure pp00HeaderBand1BeforePrint(Sender: tObject);
    procedure DbGridFluxoCaixaDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure MostraFluxo;
  private
    wDataI,wDataF:String;

  public
        procedure BotoesAcesso;
  end;

var
  FormFluxoCaixaSimples: TFormFluxoCaixaSimples;

implementation

{$R *.DFM}

uses Sab0001, Flu0002, DataMov, uteis, ufrmpreviewrb, inicioDB;

procedure TFormFluxoCaixaSimples.Bit_MdSdoBancoClick(Sender: tObject);
begin
    FormSaldoBanco :=TFormSaldoBanco.Create(Application);
    try
       FormSaldoBanco.ShowModal;
    finally
           FreeAndNil(FormSaldoBanco);
    end;
    DataMovimento.CdsFluxoCaixa.Close;
end;

procedure TFormFluxoCaixaSimples.Bit_AtualizaFluxoClick(Sender: tObject);
begin
    FormFluxoInterv := TFormFluxoInterv.Create(Application);
    try
       FormFluxoInterv.ShowModal;
       if FormFluxoInterv.ModalResult=mrOk then
       begin
            wDataI := FormFluxoInterv.Dt_Inicio.Text;
            wDataF := FormFluxoInterv.Dt_Final.Text;
            MostraFluxo;
       end;
    finally
      FreeAndNil(FormFluxoInterv);
    end;
end;

procedure TFormFluxoCaixaSimples.Bit_SairClick(Sender: tObject);
begin
     close;
end;

procedure TFormFluxoCaixaSimples.BotoesAcesso;
begin
if Assigned(FormFluxoCaixaSimples) then
  begin
    Bit_Relatorio.Enabled := Uteis.AcessoUsuario('FinanceiroFluxo Caixa - Saldo Banco',DBInicio.Usuario.CODIGO,FormFluxoCaixaSimples).Relatorio;

  end;
end;

procedure TFormFluxoCaixaSimples.Bit_RelatorioClick(Sender: tObject);
begin
    if CdsFluxo.IsEmpty = false then
    begin
         LBL_00_LTITULO1.Caption := 'RELATÓRIO DE PREVISÃO DE FLUXO DE CAIXA';
         LBL_00_LTITULO2.Caption := 'Periodo de: '+wDataI+' até '+wDataF;
         ppRelFluxoCx.DeviceType := 'Screen';
         RBuilderPreview(ppRelFluxoCx);
    end
    else
        uteis.aviso('Atualiza o fluxo para gerar o relatório !');
    DbGridFluxoCaixa.SetFocus;
end;

procedure TFormFluxoCaixaSimples.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
     DataMovimento.CdsFluxoCaixa.Close;
end;

procedure TFormFluxoCaixaSimples.pp00HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption := dbiNICIO.EMPRESA.Razao;
end;

procedure TFormFluxoCaixaSimples.DbGridFluxoCaixaDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 If Not odd(cdsFluxo.RecNo) then
     If not (GdSelected in State) then
     Begin
         DBGridFluxocaixa.Canvas.Brush.Color := $00FFEFDF;
         DBGridFluxoCaixa.Canvas.FillRect(rect);
         DBGridFluxoCaixa.DefaultDrawDataCell(Rect,column.Field,state);
     end;
end;

procedure TFormFluxoCaixaSimples.MostraFluxo;
begin
      cdsFluxo.Close;
      //SqlCdsFluxo.CommandText := SqlDef('TABELAS','Select * from FLUXOCX','','FLU_DIA','');
      cdsFluxo.Open;
end;

end.
