unit Almox0003;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, basedbestoqueform,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons,rwfunc,db, Mask,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  FMTBCd, DBCtrls, SimpleDS, Data.DBXFirebird, ACBrEnterTab, ACBrBase, ACBrCalculadora, RxToolEdit, RxCurrEdit;

type
  TFormAlmoxarifado = class(TfrmBaseDbEstoque)
    Notebook1: TNotebook;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    LblTexto: TLabel;
    GpMp: TGroupBox;
    DBGridMp: TDBGrid;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Panel2: TPanel;
    Bitconfirmar: TBitBtn;
    BitCancelar: TBitBtn;
    Panel3: TPanel;
    SqlCdsMP: TSQLClientDataSet;
    CdsMP: TClientDataSet;
    DspMP: TDataSetProvider;
    SqlMP: TSQLDataSet;
    DsMP: TDataSource;
    SqlMPOSV_CODIGO: TStringField;
    SqlMPPRD_REFER_ITENS: TStringField;
    SqlMPOSI_UC: TFMTBCdField;
    SqlMPOSI_QTDE1: TFMTBCdField;
    SqlMPOSI_QTDE2: TFMTBCdField;
    SqlMPOSI_QTDE3: TFMTBCdField;
    SqlMPOSI_QTDE4: TFMTBCdField;
    SqlMPOSI_QTDE5: TFMTBCdField;
    SqlMPOSI_QTDE6: TFMTBCdField;
    SqlMPOSI_QTDE7: TFMTBCdField;
    SqlMPOSI_QTDE8: TFMTBCdField;
    SqlMPOSI_RESERVADO: TFMTBCdField;
    SqlMPOSI_EMPENHO: TFMTBCdField;
    SqlMPOSI_APONTADO: TFMTBCdField;
    SqlMPPRD_DESCRI: TStringField;
    SqlMPPRD_UND: TStringField;
    SqlMPPRD_DCVAR1: TStringField;
    SqlMPPRD_DCVAR2: TStringField;
    SqlMPPRD_DCVAR3: TStringField;
    SqlMPPRD_DCVAR4: TStringField;
    SqlMPPRD_DCVAR5: TStringField;
    SqlMPPRD_DCVAR6: TStringField;
    SqlMPPRD_DCVAR7: TStringField;
    SqlMPPRD_DCVAR8: TStringField;
    SqlMPPTI_SIGLA: TStringField;
    SqlMPOSI_STATUSEMPENHO: TStringField;
    CdsMPOSV_CODIGO: TStringField;
    CdsMPPRD_REFER_ITENS: TStringField;
    CdsMPOSI_UC: TFMTBCdField;
    CdsMPOSI_QTDE1: TFMTBCdField;
    CdsMPOSI_QTDE2: TFMTBCdField;
    CdsMPOSI_QTDE3: TFMTBCdField;
    CdsMPOSI_QTDE4: TFMTBCdField;
    CdsMPOSI_QTDE5: TFMTBCdField;
    CdsMPOSI_QTDE6: TFMTBCdField;
    CdsMPOSI_QTDE7: TFMTBCdField;
    CdsMPOSI_QTDE8: TFMTBCdField;
    CdsMPOSI_RESERVADO: TFMTBCdField;
    CdsMPOSI_EMPENHO: TFMTBCdField;
    CdsMPOSI_APONTADO: TFMTBCdField;
    CdsMPPRD_DESCRI: TStringField;
    CdsMPPRD_UND: TStringField;
    CdsMPPRD_DCVAR1: TStringField;
    CdsMPPRD_DCVAR2: TStringField;
    CdsMPPRD_DCVAR3: TStringField;
    CdsMPPRD_DCVAR4: TStringField;
    CdsMPPRD_DCVAR5: TStringField;
    CdsMPPRD_DCVAR6: TStringField;
    CdsMPPRD_DCVAR7: TStringField;
    CdsMPPRD_DCVAR8: TStringField;
    CdsMPPTI_SIGLA: TStringField;
    CdsMPOSI_STATUSEMPENHO: TStringField;
    CdsMPCC_QTDE_TOTAL: TCurrencyField;
    CdsMPCC_VARIACAO: TBooleanField;
    CdsMPCC_PENDENTE: TCurrencyField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    SqlMPOSI_REGISTRO: TIntegerField;
    CdsMPOSI_REGISTRO: TIntegerField;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    DBEdit6: TDBEdit;
    SqlMPPRD_ESTOQUE: TFMTBCdField;
    SqlMPPRD_ENTRADA: TFMTBCdField;
    SqlMPPRD_SAIDA: TFMTBCdField;
    CdsMPPRD_ESTOQUE: TFMTBCdField;
    CdsMPPRD_ENTRADA: TFMTBCdField;
    CdsMPPRD_SAIDA: TFMTBCdField;
    CdsMPCC_SALDO_ESTOQUE: TCurrencyField;
    SqlMPPRD_EMPENHO: TFMTBCdField;
    CdsMPPRD_EMPENHO: TFMTBCdField;
    Cqtde1: TCurrencyEdit;
    LblDiferenca: TLabel;
    ChkPendente: TCheckBox;
    CqtdeDiferenca: TCurrencyEdit;
    SqlMPOSI_EMP_PENDENTE: TFMTBCdField;
    CdsMPOSI_EMP_PENDENTE: TFMTBCdField;
    CdsMPIC_EMPENHA: TCurrencyField;
    Panel4: TPanel;
    Bitconcluir: TBitBtn;
    BitVoltar: TBitBtn;
    BitAvancar: TBitBtn;
    Panel5: TPanel;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    CtotalEmpenhado: TCurrencyEdit;
    BitSair: TBitBtn;
    Timer1: TTimer;
    GroupBox2: TGroupBox;
    RadOp: TRadioButton;
    RadRefer: TRadioButton;
    EdLocalizar: TEdit;
    BitBtn1: TBitBtn;
    procedure BitSairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitAvancarClick(Sender: tObject);
    procedure BitVoltarClick(Sender: tObject);
    procedure CdsMPAfterScroll(DataSet: TDataSet);
    procedure DBGridMpDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridMpDblClick(Sender: tObject);
    procedure DBGridMpKeyPress(Sender: tObject; var Key: Char);
    procedure BitAlterarClick(Sender: tObject);
    procedure BitconfirmarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure CdsMPCalcFields(DataSet: TDataSet);
    procedure CQtde2KeyPress(Sender: tObject; var Key: Char);
    procedure CQtde3KeyPress(Sender: tObject; var Key: Char);
    procedure CQtde4KeyPress(Sender: tObject; var Key: Char);
    procedure CQtde5KeyPress(Sender: tObject; var Key: Char);
    procedure CQtde6KeyPress(Sender: tObject; var Key: Char);
    procedure CQtde7KeyPress(Sender: tObject; var Key: Char);
    procedure CQtde8KeyPress(Sender: tObject; var Key: Char);
    procedure BitconcluirClick(Sender: tObject);
    procedure Cqtde1Exit(Sender: tObject);
    procedure ChkPendenteKeyPress(Sender: tObject; var Key: Char);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: tObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn1Click(Sender: tObject);
    procedure RadOpClick(Sender: tObject);
    procedure RadReferClick(Sender: tObject);
    procedure DBGridMpTitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
  wTransacao :TTransactionDesc;

  Procedure BuscaOpLiberada;
  Procedure BuscaMPSeparar;
  Procedure MostraVariacao;
  Procedure LimpaVariacoes;
  Procedure HabilitaAlteracao;
  Procedure DesabilitaBotao;{des. confirmar e cancelar habilia alterar}
  Procedure HabilitaBotao;
  Procedure AtualizaQtdeEmpenhada;
  Procedure AtualizaEstoque;
  Procedure AtualizaInternalCalc;
  Procedure AtualizaEmpenhada;

    { Private declarations }
  public
    { Public declarations }
  end;

var
FormAlmoxarifado: TFormAlmoxarifado;

implementation

uses Uteis, DmProdu, DataCad, Men0001;





{$R *.dfm}

procedure TFormAlmoxarifado.BitSairClick(Sender: tObject);
begin
   close;
end;

procedure TFormAlmoxarifado.BuscaOpLiberada;
var
wSQL1:string;
begin
  try
  {Rotina para buscar as ordens de produção liberada para separaçaõ}
    DmProducao.CdsAlmoxTemp.close;
//    wSQL1 := 'Select  TP.* , PRD_DESCRI from AMX_TEMP TP left join PRD0000 on  PRD_REFER = AMX_REFER';
//  dmproducao.CdsAlmoxTemp.CommandText := sqldef('TABELAS',wSQL1,'','AMX_REGISTRO','');
    DmProducao.CdsAlmoxTemp.Open;

    if DmProducao.CdsAlmoxTemp.IsEmpty = true then
       BitAvancar.Enabled := false;
       
  except
    on E:EdatabaseError do
      begin
        uteis.erro  (Pchar('Erro ao buscar O.P !'+e.Message));
      end;
  end;
end;

procedure TFormAlmoxarifado.FormShow(Sender: tObject);
begin
   inherited;
   Height := 572;
   Width  := 800;
   BuscaOpLiberada;
   notebook1.PageIndex := 0;
end;

procedure TFormAlmoxarifado.BitAvancarClick(Sender: tObject);
begin
    notebook1.PageIndex := notebook1.PageIndex + 1;
    if Notebook1.PageIndex = 1 then
       begin
           LblTexto.Caption    := 'Verifique a quantidade separada e clique em concluir para atualizar saldo do estoque';
           BuscaMPSeparar;
           AtualizaInternalCalc;
  //       AtualizaEmpenhada;
           BitAvancar.Visible  := false;
           BitConcluir.Visible := true;
           BitVoltar.Enabled   := true;
       end;
end;

procedure TFormAlmoxarifado.BitVoltarClick(Sender: tObject);
begin
    notebook1.PageIndex := notebook1.PageIndex - 1;

    if DataCadastros.SQLConnection1.InTransaction = true then
       DataCadastros.SQLConnection1.Rollback(wtransacao);
    //
    dmProducao.CdsAlmoxTemp.Refresh;
    BitAvancar.Visible  := True;
    BitConcluir.Visible := False;
    BitVoltar.Enabled  := false;
end;

procedure TFormAlmoxarifado.BuscaMPSeparar;
begin
    {}
    wTransacao.TransactionID  := RetornaTransacao;
    wTransacao.IsolationLevel := xilREADCOMMITTED;
    DataCadastros.SQLConnection1.StartTransaction(wTransacao);
    wSQL1 := 'select O2.OSV_CODIGO,O2.PRD_REFER_ITENS,O2.OSI_REGISTRO,O2.OSI_UC,O2.OSI_QTDE1,O2.OSI_QTDE2,O2.OSI_QTDE3,O2.OSI_QTDE4,O2.OSI_QTDE5,';
    wSQL2 := 'O2.OSI_QTDE6,O2.OSI_QTDE7,O2.OSI_QTDE8,O2.OSI_RESERVADO,O2.OSI_EMPENHO,O2.OSI_APONTADO,P2.PRD_DESCRI,P2.PRD_UND,P2.PRD_DCVAR1, P2.PRD_DCVAR2, P2.PRD_DCVAR3, P2.PRD_DCVAR4, P2.PRD_DCVAR5, P2.PRD_DCVAR6, P2.PRD_DCVAR7, P2.PRD_DCVAR8,O2.OSI_EMP_PENDENTE,';
    wSQL3 := 'P2.PRD_EMPENHO,P2.PRD_ESTOQUE,P2.PRD_ENTRADA,P2.PRD_SAIDA,P3.PTI_SIGLA,O2 .OSI_STATUSEMPENHO from OSV_IT02 O2 left join PRD0000 P2 on (O2.PRD_REFER_ITENS = P2.PRD_REFER) left join PRD_TIPO P3 on (P3.PTI_CODIGO = P2.PTI_CODIGO)';
    wSeleciona := ' Where O2.PRD_REFER = '''+DmProducao.CdsAlmoxTempAMX_REFER.AsString+'''and O2.OSV_CODIGO = '''+DmProducao.CdsAlmoxTempAMX_NUM_OP.AsString+'''';

  (*  wSql1      := 'Select F2.*,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_GRADE,P2.PTI_SIGLA,P1.PRD_PCUSTO from FTC_IT01 F2 ';
      wSql2      := 'left join prd0000 P1 on f2.prd_refer_itens = p1.prd_refer left join PRD_TIPO P2 ON P1.pti_codigo = P2.PTI_CODIGO ';
      wSeleciona := 'Where F2.PRD_REFER = '''+DmProducao.CdsAlmoxTempAMX_REFER.AsString+'''';
      wOrdem     := 'F2.PRD_REFER,F2.FTI_REGISTRO';
      *)

      CdsMP.Close;
      CdsMP.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2+wSQL3,wSeleciona,'','O2.');
      CdsMP.Open;
//      if (SqlCdsItensFicha.IsEmpty = true) then
  //       begin
    ///         MostrarGrade;
       //  end;

end;

procedure TFormAlmoxarifado.MostraVariacao;
var
Y,X :integer;
begin
    LimpaVariacoes;
    {Se tiver variacao atribui variacao do produto que sera fabricado}
end;

procedure TFormAlmoxarifado.CdsMPAfterScroll(DataSet: TDataSet);
begin
    MostraVariacao;
end;

procedure TFormAlmoxarifado.LimpaVariacoes;
begin
    {}
    Cqtde1.Clear;
    cTotalEmpenhado.Clear;
    CqtdeDiferenca.clear;
    chkPendente.Checked := true;
end;

procedure TFormAlmoxarifado.DBGridMpDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    If Not odd(CdsMP.RecNo) then
       If not (GdSelected in State) then
          Begin
              DBGridMP.Canvas.Brush.Color := $00FFEFDF;
              DBGridMP.Canvas.FillRect(rect);
              DBGridMP.DefaultDrawDataCell(Rect,column.Field,state);
           end;
    if CdsMPOSI_EMP_PENDENTE.AsCurrency > 0 then
      begin
        DBGridMp.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
  //      DBGridMP.Canvas.Brush.Color := clRed;
        DBGridMP.Canvas.FillRect(rect);
        DBGridMP.DefaultDrawDataCell(Rect,column.Field,state);

      end;

end;

procedure TFormAlmoxarifado.HabilitaAlteracao;
begin
   {}
    {habilita alteraçao}
    {Desabilita grade }
   GpMp.Enabled    := false;
   LimpaVariacoes;
   Cqtde1.Value := CdsMPIC_EMPENHA.AsCurrency;
   CQtde1.SetFocus;


   HabilitaBotao;

end;

procedure TFormAlmoxarifado.DBGridMpDblClick(Sender: tObject);
begin
   if uteis.confirmacao ( 'Deseja alterar a quantidade separada , para produção ?')=mryes then
      begin
          HabilitaAlteracao;
      end;
end;

procedure TFormAlmoxarifado.DBGridMpKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key = #13 then
       begin
         if uteis.confirmacao ( 'Deseja alterar a quantidade separada para produção ?')=mryes then
            begin
                HabilitaAlteracao;
            end;
          Key := #0;
       end;
end;

procedure TFormAlmoxarifado.DesabilitaBotao;
begin
    {}
    BitConfirmar.Enabled := false;
    BitCancelar.Enabled  := false;
    GpMp.Enabled         := True;
end;

procedure TFormAlmoxarifado.HabilitaBotao;
begin
    {}
    BitConfirmar.Enabled := True;
    BitCancelar.Enabled  := True;
end;

procedure TFormAlmoxarifado.BitAlterarClick(Sender: tObject);
begin
    HabilitaAlteracao;
end;

procedure TFormAlmoxarifado.BitconfirmarClick(Sender: tObject);
begin
    DesabilitaBotao;
    AtualizaQtdeEmpenhada;
    LimpaVariacoes;
    dbgridmp.SetFocus;
end;

procedure TFormAlmoxarifado.BitCancelarClick(Sender: tObject);
begin
    DesabilitaBotao;
    LimpaVariacoes;
    dbgridmp.SetFocus;
end;

procedure TFormAlmoxarifado.CdsMPCalcFields(DataSet: TDataSet);
begin
    CdsMPPRD_REFER_ITENS.AsString;

    CdsMPCC_QTDE_TOTAL.AsCurrency := (((CdsMPOSI_QTDE1.AsCurrency + CdsMPOSI_QTDE2.AsCurrency )+ CdsMPOSI_QTDE3.AsCurrency )+ CdsMPOSI_QTDE4.AsCurrency) +
    ((CdsMPOSI_QTDE5.AsCurrency + CdsMPOSI_QTDE6.AsCurrency )+ (CdsMPOSI_QTDE7.AsCurrency + CdsMPOSI_QTDE8.AsCurrency));

    CdsMPCC_QTDE_TOTAL.AsCurrency := (CdsMPCC_QTDE_TOTAL.AsCurrency * CdsMPOSI_UC.AsCurrency);

    CdsMPCC_PENDENTE.AsCurrency := CdsMPCC_QTDE_TOTAL.AsCurrency - CdsMPOSI_EMPENHO.AsCurrency;

//  CdsMPCC_QTDE_TOTAL.AsCurrency := (CdsMPCC_QTDE_TOTAL.AsCurrency * CdsMPOSI_UC.AsCurrency);

    if CdsMPCC_PENDENTE.AsCurrency < 0 then
       CdsMPCC_PENDENTE.AsCurrency := 0;

    {calculado para atualizar o estoque no confirmar}

     CdsMPCC_SALDO_ESTOQUE.AsCurrency := ((CdsMPPRD_ESTOQUE.AsCurrency + CdsMPPRD_ENTRADA.AsCurrency) - (CdsMPPRD_SAIDA.AsCurrency + CdsMPPRD_EMPENHO.AsCurrency));
end;

procedure TFormAlmoxarifado.CQtde2KeyPress(Sender: tObject; var Key: Char);
begin
    if key = #13 then
       begin
           Bitconfirmar.Click;
           Key := #0;
        end;
end;

procedure TFormAlmoxarifado.CQtde3KeyPress(Sender: tObject; var Key: Char);
begin
  if key = #13 then
    begin
      Bitconfirmar.Click;
      Key := #0;
     end;

end;

procedure TFormAlmoxarifado.CQtde4KeyPress(Sender: tObject; var Key: Char);
begin
  if key = #13 then
    begin
      Bitconfirmar.Click;
      Key := #0;
     end;

end;

procedure TFormAlmoxarifado.CQtde5KeyPress(Sender: tObject; var Key: Char);
begin
  if key = #13 then
    begin
      Bitconfirmar.Click;
      Key := #0;
     end;

end;

procedure TFormAlmoxarifado.CQtde6KeyPress(Sender: tObject; var Key: Char);
begin
  if key = #13 then
    begin
      Bitconfirmar.Click;
      Key := #0;
     end;

end;

procedure TFormAlmoxarifado.CQtde7KeyPress(Sender: tObject; var Key: Char);
begin
  if key = #13 then
    begin
      Bitconfirmar.Click;
      Key := #0;
     end;

end;

procedure TFormAlmoxarifado.CQtde8KeyPress(Sender: tObject; var Key: Char);
begin
  if key = #13 then
    begin
      Bitconfirmar.Click;
      Key := #0;
     end;

end;

procedure TFormAlmoxarifado.AtualizaQtdeEmpenhada;
begin
   {Rotina temporaria para atualizar empenho analisar melhor opcao}
   Cdsmp.Edit;

      if ChkPendente.checked  then
        begin
           if CdsMPCC_SALDO_ESTOQUE.AsCurrency < cQtde1.Value then
              CdsMPIC_EMPENHA.AsCurrency := CdsMPCC_SALDO_ESTOQUE.AsCurrency
           else
              CdsMPIC_EMPENHA.AsCurrency := Cqtde1.Value;

            CdsMPOSI_EMP_PENDENTE.AsCurrency := CqtdeDiferenca.Value;

            CdsMPOSI_STATUSEMPENHO.AsString := 'P';//parcial
         end
      else
        begin
           CdsMPOSI_EMP_PENDENTE.AsCurrency := 0;
           CdsMPOSI_STATUSEMPENHO.AsString  := 'S';
           CdsMPIC_EMPENHA.AsCurrency       := Cqtde1.Value;
        end;

   CdsMp.ApplyUpdates(0);
  //CdsMP.Refresh;

end;

procedure TFormAlmoxarifado.AtualizaEstoque;
var
wStatEmpenho,wSitEmpenhoItem :String[1];
wQTDE_EMPENHADA :Currency;
begin
    {Baixa saldo do estoque ***provisorio****}
    try
      wSitEmpenhoItem := 'T';
      //
      CdsMP.DisableControls;
      Cdsmp.First;
      {tem que verificar se tinha reserva se tiver tem que diminuir o saldo da reserva}
      while not Cdsmp.Eof do
       begin
           if CdsMPIC_EMPENHA.AsCurrency <> 0 then
              begin
                  if (((CdsMPOSI_EMPENHO.AsCurrency + CdsMPIC_EMPENHA.AsCurrency) < CdsMPCC_QTDE_TOTAL.AsCurrency) and  (CdsMPOSI_STATUSEMPENHO.AsString <> 'S')) then
                     wSitEmpenhoItem := 'P';

                  if CdsMPOSI_STATUSEMPENHO.AsString = '' Then
                     begin
                         if CdsMPOSI_EMP_PENDENTE.AsCurrency <> CdsMPIC_EMPENHA.AsCurrency  then
                            wStatEmpenho    := 'P'
                         else
                            wStatEmpenho    := 'S';
                     end
                  else
                     begin
                        wStatEmpenho := CdsMPOSI_STATUSEMPENHO.AsString;
                     end;

                  wQtde_Empenhada := CdsMPIC_EMPENHA.AsCurrency;

                  Inserir_Empenho('A',
                                  CdsMPOSV_CODIGO.AsString,
                                  CdsMPPRD_REFER_ITENS.AsString,
                                  dmproducao.CdsAlmoxTempEMP_CODIGO.AsString,
                                  DataAmericana(DateToStr(now)),
                                  ValorAmericano(FloatToStr(wQtde_Empenhada)),0);

                  {NAO PODE BAIXAR O ESTOQUE AQUI SE NAO DA ERRO DO SALDO EM QUE BAIXAR NA CONCLUSAO DA OP
                  Baixa_Estoque('A',
                                CdsMPOSV_CODIGO.AsString,
                                dmproducao.CdsAlmoxTempEMP_CODIGO.AsString,
                                ValorAmericano(FloatToStr(wQtde_Empenhada)));

                  }
                  if DmProducao.CdsAlmoxTempAMX_STATUS.AsString = 'R' then
                     begin
                         {baixa qtde da reserva}
                         {se sepaou qtde maior do que reservou dimiuir somente a qtde reservada}
                         if wQtde_Empenhada >= CdsMPCC_QTDE_TOTAL.AsCurrency then
                            begin

                                {ATUALIZA O STATUS SE O ITEM ESTA PARCIALMENTE ATENDIDO OU CONCLUIDO}
                                Atualiza_Status_ItemOP(CdsMPPRD_REFER_ITENS.AsString,
                                                       CdsMPOSV_CODIGO.AsString,
                                                       DmProducao.CdsAlmoxTempAMX_STATUS.AsString,
                                                       'S',
                                                       CdsMPCC_QTDE_TOTAL.AsCurrency);
                            end
                         else
                            begin

                                {ATUALIZA O STATUS SE O ITEM ESTA PARCIALMENTE ATENDIDO OU CONCLUIDO}
                                if CdsMPOSI_EMPENHO.AsCurrency >= CdsMPCC_QTDE_TOTAL.AsCurrency then
                                   Atualiza_Status_ItemOP(CdsMPPRD_REFER_ITENS.AsString,CdsMPOSV_CODIGO.AsString,DmProducao.CdsAlmoxTempAMX_STATUS.AsString,wStatEmpenho,wQtde_Empenhada)
                                else
                                   begin
                                       // wSitEmpenhoItem := 'P';
                                       if wQtde_Empenhada = 0 then
                                          Atualiza_Status_ItemOP(CdsMPPRD_REFER_ITENS.AsString,CdsMPOSV_CODIGO.AsString,DmProducao.CdsAlmoxTempAMX_STATUS.AsString,'N',wQtde_Empenhada)
                                       else
                                          Atualiza_Status_ItemOP(CdsMPPRD_REFER_ITENS.AsString,CdsMPOSV_CODIGO.AsString,DmProducao.CdsAlmoxTempAMX_STATUS.AsString,wStatEmpenho,wQtde_Empenhada);
                                   end;
                            end;
                        end
                     else
                        begin
                            {se nao estiverse na reserva}
                            if wQtde_Empenhada >= CdsMPCC_QTDE_TOTAL.AsCurrency then
                               Atualiza_Status_ItemOP(CdsMPPRD_REFER_ITENS.AsString,CdsMPOSV_CODIGO.AsString,DmProducao.CdsAlmoxTempAMX_STATUS.AsString,wStatEmpenho,wQtde_Empenhada)
                            else
                               begin
//                                 wSitEmpenhoItem := 'P';
                                   if wQtde_Empenhada = 0 then
                                      Atualiza_Status_ItemOP(CdsMPPRD_REFER_ITENS.AsString,CdsMPOSV_CODIGO.AsString,DmProducao.CdsAlmoxTempAMX_STATUS.AsString,'N',wQtde_Empenhada)
                                   else
                                      Atualiza_Status_ItemOP(CdsMPPRD_REFER_ITENS.AsString,CdsMPOSV_CODIGO.AsString,DmProducao.CdsAlmoxTempAMX_STATUS.AsString,wStatEmpenho,wQtde_Empenhada);
                               end;
                        end;
              end
           else
              begin
                  if CdsMPOSI_EMP_PENDENTE.AsCurrency <> 0 then
                     wSitEmpenhoItem := 'P';
              end;
           CdsMP.Next;
       end;
      AtualizaStatusOP(CdsMPOSV_CODIGO.AsString,'P');
      //
      CdsMP.EnableControls;
      CdsMP.ApplyUpdates(0);
      //
      if wSitEmpenhoItem = 'T' then
         begin
             DmProducao.CdsAlmoxTemp.Delete;
             DmProducao.CdsAlmoxTemp.ApplyUpdates(0);
         end
      else
         begin
             DmProducao.CdsAlmoxTemp.Edit;
             DmProducao.CdsAlmoxTempAMX_TIPO.AsString := 'P';
             DmProducao.CdsAlmoxTemp.ApplyUpdates(0);
         end;

      DataCadastros.SQLConnection1.Commit(wTransacao);
      //
      Notebook1.PageIndex := 0;
      BitConcluir.Visible := false;
      BitAvancar.Visible  := true;
      //
    except
        on E:EdatabaseError do
           begin
              uteis.erro  (Pchar('Erro ao atualizar estoque !'+e.message));
              DataCadastros.SQLConnection1.Rollback(wTransacao);
           end;
        on e:Exception do
           begin
              uteis.erro  (Pchar('Ocorreu uma excecao ao atualizar estoque !'+e.message));
              DataCadastros.SQLConnection1.Rollback(wTransacao);
           end;
    end;
end;

procedure TFormAlmoxarifado.BitconcluirClick(Sender: tObject);
begin
  if uteis.confirmacao ( 'Deseja realmente concluir o processo de separação dos produtos ?')=mryes then
     begin
        Screen.Cursor := crHourglass;
        AtualizaEstoque;
        Screen.Cursor := crDefault;
     end;
end;

procedure TFormAlmoxarifado.AtualizaInternalCalc;
begin
  {rotina para atualizar a qtde do campo internal calc}
    CdsMP.DisableControls;
    CdsMP.First;

      while not CdsMp.Eof do
         begin
            CdsMP.Edit;
             if CdsMPOSI_STATUSEMPENHO.AsString <> 'S' then
               begin
                   if CdsMPOSI_EMP_PENDENTE.AsCurrency <> 0 then
                      begin
                           if CdsMPCC_SALDO_ESTOQUE.AsCurrency >= CdsMPOSI_EMP_PENDENTE.AsCurrency then
                             begin
                                CdsMPIC_EMPENHA.AsCurrency       := CdsMPOSI_EMP_PENDENTE.AsCurrency;
                                CdsMPOSI_STATUSEMPENHO.AsString := 'S';
                             end
                          else
                            begin
                                if CdsMPCC_SALDO_ESTOQUE.AsCurrency > 0 then
                                   begin
                                       CdsMPIC_EMPENHA.AsCurrency       := CdsMPCC_SALDO_ESTOQUE.AsCurrency;
                                       CdsMPOSI_EMP_PENDENTE.AsCurrency := (CdsMPOSI_EMP_PENDENTE.AsCurrency - CdsMPCC_SALDO_ESTOQUE.AsCurrency);
                                   end
                                else
                                   begin
                                      CdsMPIC_EMPENHA.AsCurrency       := 0;
                                      CdsMPOSI_EMP_PENDENTE.AsCurrency := (CdsMPOSI_EMP_PENDENTE.AsCurrency);
                                   end;

                                CdsMPOSI_STATUSEMPENHO.AsString := 'P';
                            end;
                      end
                  else
                     begin
                     {pendente [e igual a zero mais náo empenhou - passando primeira vez}
                           if CdsMPCC_SALDO_ESTOQUE.AsCurrency >= CdsMPCC_QTDE_TOTAL.AsCurrency then
                           //if CdsMPOSI_EMPENHO.AsCurrency > CdsMPCC_QTDE_TOTAL.AsCurrency then
                              begin
                                CdsMPIC_EMPENHA.AsCurrency       := CdsMPCC_QTDE_TOTAL.AsCurrency - CdsMPOSI_EMPENHO.AsCurrency;
                                CdsMPOSI_STATUSEMPENHO.AsString := 'S';
                              end
                          else
                            begin
                                if CdsMPCC_SALDO_ESTOQUE.AsCurrency > 0 then
                                  begin
                                      CdsMPIC_EMPENHA.AsCurrency       := CdsMPCC_SALDO_ESTOQUE.AsCurrency;
                                      CdsMPOSI_EMP_PENDENTE.AsCurrency := ((CdsMPCC_QTDE_TOTAL.AsCurrency - CdsMPCC_SALDO_ESTOQUE.AsCurrency)- CdsMPOSI_EMPENHO.AsCurrency);
                                  end
                                else
                                   begin
                                      CdsMPIC_EMPENHA.AsCurrency       := 0;
                                      CdsMPOSI_EMP_PENDENTE.AsCurrency := (CdsMPCC_QTDE_TOTAL.AsCurrency - CdsMPOSI_EMPENHO.AsCurrency);
                                   end;
                                CdsMPOSI_STATUSEMPENHO.AsString := 'P';
                            end;
                     end;
                        // CdsMPOSI_EMP_PENDENTE.AsCurrency := 0;
                 //  CdsMPIC_EMPENHA.AsCurrency := CdsMPCC_PENDENTE.AsCurrency;
               end
             else
                 begin
                   CdsMPIC_EMPENHA.AsCurrency := 0;
                   CdsMPOSI_EMP_PENDENTE.AsCurrency := 0;
                   CdsMPOSI_STATUSEMPENHO.AsString := 'S';
                 end;

             CdsMP.Post;
            CdsMP.Next;
         end;
    CdsMP.First;
    DBGridMp.SetFocus;
    CdsMP.EnableControls;
end;
Procedure TFormAlmoxarifado.AtualizaEmpenhada;
begin
    CdsMP.DisableControls;
    CdsMP.First;
      while not CdsMp.Eof do
       begin
            CdsMP.Edit;
              if CdsMPOSI_EMPENHO.AsCurrency = 0 then
                 CdsMPOSI_EMPENHO.AsCurrency := CdsMPCC_QTDE_TOTAL.AsCurrency;
               //  CdsMPIC_QTDE_EMPENHO.AsCurrency := CdsMPCC_PENDENTE.AsCurrency;
            CdsMP.Post;
            CdsMP.Next;
       end;
    CdsMP.EnableControls;
end;
procedure TFormAlmoxarifado.Cqtde1Exit(Sender: tObject);
begin
//   if CQtde1.Value < CdsMPCC_QTDE_TOTAL.AsCurrency then
     begin
        if (cQtde1.Value + CdsMPOSI_EMPENHO.AsCurrency) > CdsMPCC_SALDO_ESTOQUE.AsCurrency then
           begin
              CqtdeDiferenca.Value  := ((cQtde1.Value + CdsMPOSI_EMPENHO.AsCurrency) - CdsMPCC_SALDO_ESTOQUE.AsCurrency);
              CTotalEmpenhado.Value := CdsMPOSI_EMPENHO.AsCurrency + cQtde1.Value;
              LblDiferenca.Enabled  := True;
              ChkPendente.Enabled   := True;
          end
       else
         begin
            CqtdeDiferenca.Value := ((CdsMPCC_QTDE_TOTAL.AsCurrency - CdsMPOSI_EMPENHO.AsCurrency) - Cqtde1.Value);
            LblDiferenca.Enabled := True;
            ChkPendente.Enabled  := True;
         end;
     end;
     if CqtdeDiferenca.Value < 0 then
          CqtdeDiferenca.Value := 0;
//   else
  //    begin
    //      LblDiferenca.Enabled := false;
      //    ChkPendente.Enabled  := false;
      //end;
end;

procedure TFormAlmoxarifado.ChkPendenteKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key =#13 then
       begin
           Bitconfirmar.Click;
           Key := #0;
       end;
end;

procedure TFormAlmoxarifado.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   If DataCadastros.SQLConnection1.InTransaction = true then
      Begin
        if uteis.confirmacao ( 'Deseja salvar alterações ?')= mryes then
           begin
              AtualizaEstoque;
              //Close;
           end
       else
          begin
             DataCadastros.SQLConnection1.Rollback(wTRansacao);
             //Close;
          end;
      end;
      inherited;
      Action := CaFree;
end;

procedure TFormAlmoxarifado.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAlmoxarifado := Nil;
end;

procedure TFormAlmoxarifado.FormResize(Sender: TObject);
begin
  inherited;
  Height := 572;
  Width  := 800;
end;

procedure TFormAlmoxarifado.Timer1Timer(Sender: tObject);
begin
    if Notebook1.PageIndex = 0 then
       dmProducao.CdsAlmoxTemp.Refresh;
end;

procedure TFormAlmoxarifado.DBGrid1TitleClick(Column: TColumn);
begin
  if Column.Field.FieldKind <> fkCalculated then
      DmProducao.CdsAlmoxTemp.IndexFieldNames := Column.FieldName;
end;

procedure TFormAlmoxarifado.BitBtn1Click(Sender: tObject);
begin
    DmProducao.CdsAlmoxTemp.Refresh;
    if radOp.checked  then
       begin
           DmProducao.CdsAlmoxTemp.IndexFieldNames :='AMX_NUM_OP';
           if DmProducao.CdsAlmoxTemp.Locate('AMX_NUM_OP',StrZero(EdLocalizar.Text,6),[])=true then
              DBGrid1.SetFocus
           else
              begin
                  uteis.aviso('Não foi localizado no almoxarifado a ordem de produção informada !');
                  EdLocalizar.SetFocus;

              end;
       end;
    if radRefer.checked  then
       begin
           DmProducao.CdsAlmoxTemp.IndexFieldNames :='AMX_REFER';
           if DmProducao.CdsAlmoxTemp.Locate('AMX_REFER',EdLocalizar.Text,[])=true then
              DBGrid1.SetFocus
           else
              begin
                  uteis.aviso('Não foi localizado no almoxarifado a ordem de produção com a referência informada !');
                  EdLocalizar.SetFocus;

              end;
       end;
    EdLocalizar.Clear;
end;


procedure TFormAlmoxarifado.RadOpClick(Sender: tObject);
begin
    EdLocalizar.Clear;
    EdLocalizar.MaxLength := 6;
    EdLocalizar.Width     := 80;
    EdLocalizar.SetFocus;
end;

procedure TFormAlmoxarifado.RadReferClick(Sender: tObject);
begin
    EdLocalizar.Clear;
    EdLocalizar.MaxLength := 20;
    EdLocalizar.Width     := 150;
    EdLocalizar.SetFocus;
end;

procedure TFormAlmoxarifado.DBGridMpTitleClick(Column: TColumn);
begin
    CdsMP.IndexFieldNames := Column.FieldName;
end;

procedure TFormAlmoxarifado.DBGrid1DrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if DmProducao.CdsAlmoxTempAMX_TIPO.AsString = 'P' then
      begin
          DBGrid1.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
          DBGrid1.Canvas.FillRect(rect);
          DBGrid1.DefaultDrawDataCell(Rect,column.Field,state);
      end;
end;

end.
