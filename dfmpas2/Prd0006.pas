unit Prd0006;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BaseDbForm,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, Grids, DBGrids,
  RwFunc, Provider, SqlExpr, SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  FMTBCd,
  JvExDBGrids, JvDBGrid, Data.DBXFirebird, SimpleDS, ACBrEnterTab,
  ACBrBase, ACBrCalculadora, SgDbSeachComboUnit, SgDbLookupComboUnit, ACBrETQ, JvExComCtrls, JvDateTimePicker, JvExMask, JvToolEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormProdutoGrid = class(TfrmBaseDB)
    DsRefer: TDataSource;
    pn1: TPanel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdtTipo: TEdit;
    EdtGrupo: TEdit;
    GroupBox1: TGroupBox;
    RadNome: TRadioButton;
    RadRefer: TRadioButton;
    GbPesquisa: TGroupBox;
    Edt_Nome: TEdit;
    BitPesquisar: TBitBtn;
    BitSair: TBitBtn;
    GrpProdutos: TGroupBox;
    DbProdutoGrid: TDBGrid;
    DspSaldos: TDataSetProvider;
    CdsSaldos: TClientDataSet;
    CdsSaldosAMX_CODIGO_RET: TStringField;
    CdsSaldosAMX_DESCRI_RET: TStringField;
    CdsSaldosAMX_SALDO_RET: TFMTBCdField;
    DsSaldos: TDataSource;
    GroupBox4: TGroupBox;
    JvDBGrid5: TJvDBGrid;
    RadCodigoOriginal: TRadioButton;
    rbCodigoFornecedor: TRadioButton;
    Label3: TLabel;
    EdtLinha: TEdit;
    RadComplemento: TRadioButton;
    RadDescricaoFornecedor: TRadioButton;
    chkOcultarInativas: TCheckBox;
    RbEnderecamento: TRadioButton;
    RbNcm: TRadioButton;
    cbTipo: TSgDbSearchCombo;
    CbGrupo: TSGDBSEARCHCOMBO;
    CBLinha: TSgDbSearchCombo;
    qTipoProduto: TSQLQuery;
    qGrupo: TSQLQuery;
    qLinha: TSQLQuery;
    sqlSaldos: TSQLQuery;
    cbFicha: TCheckBox;
    pMedidas: TPanel;
    lbDesc1: TLabel;
    cbMedInterno: TSgDbSearchCombo;
    lbDesc2: TLabel;
    cbMedExterno: TSgDbSearchCombo;
    lbDesc3: TLabel;
    cbMedAltura1: TSgDbSearchCombo;
    lbDesc4: TLabel;
    cbMedAltura2: TSgDbSearchCombo;
    Label7: TLabel;
    EdVariacao: TEdit;
    btnLimpar: TBitBtn;
    RadPRD_CODIGO: TRadioButton;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    dtInicial: TJvDateEdit;
    dtFinal: TJvDateEdit;
    cdsRefer: TFDQuery;
    cdsReferPTI_CODIGO: TStringField;
    cdsReferPRD_REFER: TStringField;
    cdsReferPRD_ESTOQUE: TFMTBCDField;
    cdsReferPRD_ENTRADA: TFMTBCDField;
    cdsReferPRD_SAIDA: TFMTBCDField;
    cdsReferPRD_PENDENTE: TFMTBCDField;
    cdsReferPRD_PCUSTO: TFMTBCDField;
    cdsReferPRD_PVENDA: TFMTBCDField;
    cdsReferPRD_RESERVA: TFMTBCDField;
    cdsReferPRD_EMPENHO: TFMTBCDField;
    cdsReferPRD_DESCRI: TStringField;
    cdsReferPRD_UND: TStringField;
    cdsReferPRD_CODIGO: TStringField;
    cdsReferPRD_CODORIGINAL: TStringField;
    cdsReferPRD_STATUS: TStringField;
    cdsReferLIN_DESCRI: TStringField;
    cdsReferIPI_CODIGO: TStringField;
    cdsReferPRDE_ENDERECO: TStringField;
    cdsReferCLI_RAZAO: TStringField;
    cdsReferPRD_PVENDA2: TFMTBCDField;
    cdsReferPRD_PVENDA3: TFMTBCDField;
    cdsReferPRD_PVENDA4: TFMTBCDField;
    cdsReferPRD_PVENDA5: TFMTBCDField;
    cdsReferPRD_PVENDA6: TFMTBCDField;
    cdsReferPRD_MARGEMVENDA: TFMTBCDField;
    procedure BuscaProduto(ordenar: string = '');
    procedure RadNomeClick(Sender: tObject);
    procedure RadCodigoClick(Sender: tObject);
    procedure DbProdutoGridDblClick(Sender: tObject);
    procedure RadReferClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure RadCodigoExit(Sender: tObject);
    procedure RadNomeExit(Sender: tObject);
    procedure RadReferExit(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure EdtTipoExit(Sender: tObject);
    procedure EdtGrupoExit(Sender: tObject);
    procedure DbProdutoGridDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DbProdutoGridKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtLinhaExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure CdsReferPRD_PCUSTOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cbTipoSelect(Sender: TObject);
    procedure CbGrupoSelect(Sender: TObject);
    procedure CBLinhaSelect(Sender: TObject);
    procedure CBLinhakeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLimparClick(Sender: TObject);
    procedure Edt_NomeChange(Sender: TObject);
    procedure cbFichaClick(Sender: TObject);
    procedure Edt_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_NomeEnter(Sender: TObject);
    procedure Edt_NomeExit(Sender: TObject);
    procedure cdsReferAfterScroll(DataSet: TDataSet);
    procedure DbProdutoGridTitleClick(Column: TColumn);
  privaTe


    wSeleciona, wOrdem: String;
    fCodigoRet: string;
    fProdutoAtivo: Boolean;
    fReferRet: String;
    fCodigoOriginalRetorno: string;
    fDescricaoRetorno: string;
    fUnidadeRetorno: string;
    fDisponivelVendas : boolean;
    fCodigoFornecedor : string;
    procedure LayOutRad;

    //procedure Calcular_Saldo_Almoxarifado(sRefer: String);
    procedure MostraSaldoAlmox;
    function Retorna_Reserva_Almoxarifado(const sCodAlmox, sRefer: String): Currency;
    procedure SetProdutoAtivo(const Value: Boolean);
    procedure RetornaProduto;
  public
    Property CodigoRetorno: String Read fCodigoRet write fCodigoRet;
    Property ReferRetorno: String Read fReferRet write fReferRet;
    Property SoAtivos: Boolean read fProdutoAtivo write SetProdutoAtivo;
    Property CodigoOriginalRetorno:string read fCodigoOriginalRetorno write fCodigoOriginalRetorno;
    Property DescricaoRetorno:string read fDescricaoRetorno write fDescricaoRetorno;
    Property UnidadeRetorno:string read fUnidadeRetorno write fUnidadeRetorno;
    property DisponivelVendas: boolean read fDisponivelVendas write fDisponivelVendas;
    property CodigoFornecedor: string read fCodigoFornecedor write fCodigoFornecedor;

  end;

var FormProdutoGrid: TFormProdutoGrid;

implementation

{$R *.DFM}

uses Uteis, InicioDB;

procedure TFormProdutoGrid.BuscaProduto(ordenar: string = '');
var whe : boolean;
    wOrdem: string;
   varperc : double;
   Min,Max: double;

///
   procedure sqladd( stt: string );
   begin
        if stt<>'' then
        begin
            if whe then
               cdsRefer.sql.add( ' where '+stt )
            Else
               cdsRefer.sql.add( ' and '+stt );
            whe := False;
        end;
   end;
///
begin
     whe := True;
     CdsRefer.DisableControls;
     try
         CdsRefer.Close;

         cdsRefer.sql.text := '';
         cdsRefer.sql.ADD( 'Select  PRD_STATUS,');
         cdsRefer.sql.ADD( '        T1.PRD_MARGEMVENDA,');
         cdsRefer.sql.ADD( '        T1.PTI_CODIGO,');
         cdsRefer.sql.ADD( '        IPI_CODIGO,');
         cdsRefer.sql.ADD( '        ( SELECT FIRST 1 T4.PRDCO_CODIGO_ORIGINAL FROM PRD_CODIGOORIGINAL T4 WHERE T4.PRD_CODIGO = T1.PRD_CODIGO  ) as PRD_CODORIGINAL,');
         cdsRefer.sql.ADD( '        PRD_REFER,');
         cdsRefer.sql.ADD( '        t1.PRD_CODIGO,');
         cdsRefer.sql.ADD( '        PRD_DESCRI,');
         cdsRefer.sql.ADD( '        PRD_UND,');
         // cdsRefer.sql.ADD( '        PRD_ESTOQUE,');
         cdsRefer.sql.ADD( '        (SELECT SUM(KAS_SALDO) - COALESCE(sum(KAS_RESERVA),0) FROM KARDEX_ALMOX_SALDO kas WHERE kas.PRD_CODIGO = T1.PRD_CODIGO AND (kas.AMX_CODIGO <> '''')  ' +
           iif(dbInicio.Exclusivo('ESTOQUES') , ' AND kas.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) ,'') + ' ) as PRD_ESTOQUE,');
         cdsRefer.sql.ADD( '        PRD_ENTRADA,');
         cdsRefer.sql.ADD( '        PRD_SAIDA,');
         cdsRefer.sql.ADD( '        PRD_RESERVA,');
         cdsRefer.sql.ADD( '        PRD_EMPENHO,');
         cdsRefer.sql.ADD( '        PRD_PCUSTO,');
         cdsRefer.sql.ADD( '        PRD_PVENDA,');
         cdsRefer.sql.ADD( '        PRD_PVENDA2,');
         cdsRefer.sql.ADD( '        PRD_PVENDA3,');
         cdsRefer.sql.ADD( '        PRD_PVENDA4,');
         cdsRefer.sql.ADD( '        PRD_PVENDA5,');
         cdsRefer.sql.ADD( '        PRD_PVENDA6,');
         cdsRefer.sql.ADD( '        PRD_PENDENTE,');
//         cdsRefer.sql.ADD( '        t3.prde_endereco,');
         cdsRefer.sql.ADD('  (SELECT DISTINCT pe.prde_endereco FROM PRD0000_ENDERECAMENTO_EMPRESA pee2 ');
         cdsRefer.sql.ADD( '  JOIN PRD0000_ENDERECAMENTO pe ON (pe.PRDE_REGISTRO = pee2.PRDE_REGISTRO) JOIN EMP0000 e ON (e.EMP_CODIGO = pee2.EMP_CODIGO ) WHERE	pee2.PRD_REFER = t1.PRD_REFER  AND pee2.EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO) + ') AS prde_endereco, ') ;
         cdsRefer.sql.ADD( '        t2.lin_descri, ');
         cdsRefer.sql.ADD( ' ( SELECT FIRST 1 cl.cli_razao FROM PRD_CODIGOORIGINAL T4  left join cli0000 cl on (cl.cli_codigo=t4.cli_codigo) WHERE T4.PRD_CODIGO = T1.PRD_CODIGO ) cli_razao ');
         cdsRefer.sql.ADD( 'from PRD0000 t1 ');
         if DisponivelVendas then
          cdsRefer.sql.ADD( '    inner JOIN PRD_TIPO pt ON (T1.PTI_CODIGO = pt.PTI_CODIGO AND pti_disponivel_vendas = '+ QuotedStr('S')+')');
         cdsRefer.sql.ADD( '     left join prd_linha t2 on (t2.lin_codigo = t1.lin_codigo) ');
         cdsRefer.sql.ADD( '     '+IIF(RbEnderecamento.checked,'','left ')+'join prd0000_enderecamento t3 on (t3.prde_registro = t1.prde_registro)');
//         cdsRefer.sql.ADD( '     left join prd_codigooriginal t4 on (t4.prd_codigo = t1.prd_codigo)');
         cdsRefer.sql.ADD( '     ');

         if rbCodigoFornecedor.checked or RadDescricaoFornecedor.checked then
            cdsRefer.sql.ADD( '     join prd0000_codigo cf on cf.prd_codigo=t1.prd_codigo');

         wOrdem := 'PRD_REFER';
         if cbFicha.checked then
            SqlADD( '(Select cast(count(*) as integer) as conta from    ftc_it01 FTC where FTC.prd_refer = T1.prd_refer)>0');
         if (DBINICIO.Empresa.bPMT_HABILITA_MEDIDAPRD) AND
           (((cbMedInterno.Text <> '') and IsNumeric(cbMedInterno.Text)) or
            ((cbMedExterno.Text <> '') and IsNumeric(cbMedExterno.Text)) or
            ((cbMedAltura1.Text <> '') and IsNumeric(cbMedAltura1.Text)) or
            ((cbMedAltura2.Text <> '') and IsNumeric(cbMedAltura2.Text))) then
         begin
           varperc := StrToFloat(EdVariacao.Text);
           varperc := ( varperc/100);
           if (cbMedInterno.Text <> '') and IsNumeric(cbMedInterno.Text)  then //and (Length(cbMedInterno.Text)>1) then
             begin

               max:=StrToFloat(cbMedInterno.Text)* (1+( varperc));
               min:=StrToFloat(cbMedInterno.Text)* (1-( varperc));

               SqlADD('INTERNO BETWEEN '+ FloatToSQL(min) + ' and ' + FloatToSQL(max));
             end;
             if (cbMedExterno.Text <> '') and IsNumeric(cbMedExterno.Text)  then //and (Length(cbMedExterno.Text)>1) then
             begin
               max:=StrToFloat(cbMedExterno.Text)* (1+( varperc));
               min:=StrToFloat(cbMedExterno.Text)* (1-( varperc));

               SqlADD('externo BETWEEN '+ FloatToSQL(min) + ' and ' + FloatToSQL(max));
             end;
             if (cbMedAltura1.Text <> '') and IsNumeric(cbMedAltura1.Text)  then //and (length(cbMedAltura1.Text)>1) then
             begin
               max:=StrToFloat(cbMedAltura1.Text)* (1+( varperc));
               min:=StrToFloat(cbMedAltura1.Text)* (1-( varperc));

               SqlADD('altura1 BETWEEN '+ FloatToSQL(min) + ' and ' + FloatToSQL(max));
             end;
             if (cbMedAltura2.Text <> '') and IsNumeric(cbMedAltura2.Text)  then //and (length(cbMedAltura2.Text)>1)then
             begin
               max:=StrToFloat(cbMedAltura2.Text)* (1+( varperc));
               min:=StrToFloat(cbMedAltura2.Text)* (1-( varperc));

               SqlADD('altura2 BETWEEN '+ FloatToSQL(min) + ' and ' + FloatToSQL(max));
             end;
         end ;

         if RadNome.checked then
         begin
              SqlAdd( CampoSql ( 't1.PRD_DESCRI' , Edt_Nome.Text) );
              wOrdem := 'PRD_DESCRI';
         end
         else
         if RadComplemento.checked then
         begin
              SqlAdd( CampoSql ( 't1.PRD_COMPL' , Edt_Nome.Text) );
              wOrdem := 'PRD_DESCRI';
         end
         else
         if RadRefer.checked then
            SqlAdd( CampoSql ( 't1.PRD_REFER' , Edt_Nome.Text) )
         else
         if RadCodigoOriginal.checked then
            SqlAdd( 'exists ( SELECT FIRST 1 T4.PRDCO_CODIGO_ORIGINAL FROM PRD_CODIGOORIGINAL T4 WHERE T4.PRD_CODIGO = T1.PRD_CODIGO and T4.PRDCO_CODIGO_ORIGINAL CONTAINING ' +
            QuotedStr( Edt_Nome.Text)+ ')')
         else
         if rbCodigoFornecedor.checked then
            SqlAdd( CampoSql( 'cf.prdc_referencia',Edt_Nome.Text) )
         else
         if RadDescricaoFornecedor.checked then
            SqlAdd( CampoSql( 'cf.PRDC_DESSCRICAO',Edt_Nome.Text) )
         else
         if RbEnderecamento.checked then
            SqlAdd( CampoSql( 't3.PRDE_ENDERECO',Edt_Nome.Text) )
         else
         if RbNcm.checked then
            SqlAdd( CampoSql( 'T1.IPI_CODIGO',Edt_Nome.Text) )
         else
         if RadPRD_CODIGO.Checked then
           SqlAdd( CampoSql( 't1.PRD_CODIGO',Edt_Nome.Text) ) ;

         if (cbTipo.IdRetorno<> '') then
            SqlAdd( CampoSql( 'PTI_CODIGO',cbTipo.IdRetorno) );
         if (cbGrupo.IdRetorno<> '') then
            SqlAdd( CampoSql( 'PGR_CODIGO', cbGrupo.IdRetorno ));
         if (cbLinha.IdRetorno <> '') then
            SqlAdd( CampoSql( 't1.LIN_CODIGO', cbLinha.IdRetorno));

         if (chkOcultarInativas.checked) then
            SqlAdd( 't1.PRD_STATUS = '+qStr('A') );

         if (dtInicial.Date > 0) then
            SqlAdd( 't1.PRD_DTCADASTRO >= '+ DateToSQL(dtInicial.Date)  );
         if (dtFinal.Date > 0) then
            SqlAdd( 't1.PRD_DTCADASTRO <= '+ DateToSQL(dtFinal.Date)  );



         sqladd( ConcatSE( 't1.',dbInicio.ExclusivoSql( 'PRODUTOS') ) );
         if ordenar <> '' then
           wordem := ordenar;
         cdsRefer.sql.ADD( 'order by '+wordem );
         if DBInicio.IsDesenvolvimento then
            CopyToClipBoard(cdsRefer.sql.text);
//         if CdsRefer.RecordCount = 0 then
         CdsRefer.Open;
//           MessageDlg('Nenhuma movimentação para este produto foi encontrada. Nada Será apresentado', mtWarning, [mbOK], 0 );
     Finally
            CdsRefer.EnableControls;
     end;
 //    DbProdutoGrid.SetFocus;
end;

procedure TFormProdutoGrid.cbFichaClick(Sender: TObject);
begin
  inherited;
  GravaIni(Self.name + 'FiltrarFichaTecnica', 'filtrar', 'filtrar', iif(cbFicha.Checked = True, 'True', 'False'));
end;

procedure TFormProdutoGrid.RadNomeClick(Sender: tObject);
begin
  LayOutRad;
end;

procedure TFormProdutoGrid.RadCodigoClick(Sender: tObject);
begin
  LayOutRad;
end;

procedure TFormProdutoGrid.DbProdutoGridDblClick(Sender: tObject);
begin
     RetornaProduto;
end;

procedure TFormProdutoGrid.RetornaProduto;
begin
    if not CdsReferPRD_CODIGO.IsNull then
    begin
        edtTipo.SetFocus;
        application.ProcessMessages;
        CodigoRetorno := CdsReferPRD_CODIGO.Asstring;
        ReferRetorno := CdsReferPRD_REFER.Asstring;
        CodigoOriginalRetorno:=CdsReferPRD_CODORIGINAL.Asstring;
        DescricaoRetorno:=CdsReferPRD_DESCRI.Asstring;
        UnidadeRetorno:=CdsReferPRD_UND.Asstring;
        ModalResult := mrOk;
    end;
end;

procedure TFormProdutoGrid.RadReferClick(Sender: tObject);
begin
  LayOutRad;
end;

procedure TFormProdutoGrid.FormShow(Sender: tObject);
Var i : integer;
    FichaTecnica: string;
begin
    Inherited;
    lbDesc1.Caption := BuscaUmDadoSqlAsString('SELECT PMT_HABILITA_MEDIDAPRD_DESC1 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
    lbDesc2.Caption := BuscaUmDadoSqlAsString('SELECT PMT_HABILITA_MEDIDAPRD_DESC2 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
    lbDesc3.Caption := BuscaUmDadoSqlAsString('SELECT PMT_HABILITA_MEDIDAPRD_DESC3 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
    lbDesc4.Caption := BuscaUmDadoSqlAsString('SELECT PMT_HABILITA_MEDIDAPRD_DESC4 FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));

    LeIni(Self.name + 'FiltrarFichaTecnica', 'filtrar', 'filtrar', FichaTecnica);
    cbFicha.Checked := FichaTecnica = 'True';

    if (dbInicio.Empresa.sPadraoPesquisaProduto = 'R') then
       RadRefer.checked := true
    else
    if (dbInicio.Empresa.sPadraoPesquisaProduto = 'D') then
       RadNome.checked := true
    else
    if (dbInicio.Empresa.sPadraoPesquisaProduto = 'O') then
       RadCodigoOriginal.checked := true
    else
    if (dbInicio.Empresa.sPadraoPesquisaProduto = 'F') then
       rbCodigoFornecedor.checked := true
    else if CodigoFornecedor <> '' then
    begin
       rbCodigoFornecedor.Checked := (CodigoFornecedor <> '');
       Edt_Nome.Text := CodigoFornecedor ;

    end;


   LayOutRad;
   Edt_Nome.SetFocus;
   for I := 0 to DbProdutoGrid.Columns.Count-1 do
   begin
      if DbProdutoGrid.Columns[i].FieldName = 'PRD_PVENDA' then
         DbProdutoGrid.Columns[i].Title.Caption := DBInicio.Empresa.wPmt_Tabnome1
      else
      if DbProdutoGrid.Columns[i].FieldName = 'PRD_PVENDA2' then
         DbProdutoGrid.Columns[i].Title.Caption := DBInicio.Empresa.wPmt_Tabnome2
      else
      if DbProdutoGrid.Columns[i].FieldName = 'PRD_PVENDA3' then
         DbProdutoGrid.Columns[i].Title.Caption := DBInicio.Empresa.wPmt_Tabnome3
      else
      if DbProdutoGrid.Columns[i].FieldName = 'PRD_PVENDA4' then
         DbProdutoGrid.Columns[i].Title.Caption := DBInicio.Empresa.wPmt_Tabnome4
      else
      if DbProdutoGrid.Columns[i].FieldName = 'PRD_PVENDA5' then
         DbProdutoGrid.Columns[i].Title.Caption := DBInicio.Empresa.wPmt_Tabnome5
      else
      if DbProdutoGrid.Columns[i].FieldName = 'PRD_PVENDA6' then
         DbProdutoGrid.Columns[i].Title.Caption := DBInicio.Empresa.wPmt_Tabnome6;

   end;
   CarregaEstadoPesquisa(pn1)  ;
   BuscaProduto;
end;

procedure TFormProdutoGrid.SetProdutoAtivo(const Value: Boolean);
begin
  fProdutoAtivo := Value;
  if Value then
    self.Caption := 'Lista de Produtos (Somente Ativos)';
  chkOcultarInativas.Checked:=True;
  chkOcultarInativas.Enabled:=False;
end;

procedure TFormProdutoGrid.cbTipoSelect(Sender: TObject);
begin
     inherited;
     EdtTipo.Text := CBtIPO.idRetorno;

end;

procedure TFormProdutoGrid.cdsReferAfterScroll(DataSet: TDataSet);
begin
  inherited;
     MostraSaldoAlmox;
end;

procedure TFormProdutoGrid.SpeedButton1Click(Sender: tObject);
begin
     Close;
end;

procedure TFormProdutoGrid.RadCodigoExit(Sender: tObject);
begin
  Edt_Nome.SetFocus;
end;

procedure TFormProdutoGrid.RadNomeExit(Sender: tObject);
begin
  Edt_Nome.SetFocus;
end;

procedure TFormProdutoGrid.RadReferExit(Sender: tObject);
begin
  Edt_Nome.SetFocus;
end;

procedure TFormProdutoGrid.BitPesquisarClick(Sender: tObject);
begin
  BuscaProduto;
  DbProdutoGrid.SetFocus;
end;

procedure TFormProdutoGrid.BitSairClick(Sender: tObject);
begin
     DbProdutoGrid.Columns.SaveToFile(DBInicio.SistemaLocal + '\' + self.Name+ '.ini');
     ModalResult:=mrCancel;
end;

procedure TFormProdutoGrid.btnLimparClick(Sender: TObject);
begin
  inherited;
  cbTipo.idRetorno := '';
  CbGrupo.idRetorno := '';
  CBLinha.idRetorno := '';
  Edt_Nome.Text := '';
  cbMedInterno.idRetorno := '';
  cbMedExterno.idRetorno := '';
  cbMedAltura1.idRetorno := '';
  cbMedAltura2.idRetorno := '';
  RadRefer.Checked := true;
  cbFicha.Checked := False;
  chkOcultarInativas.Checked := True;
end;

procedure TFormProdutoGrid.LayOutRad;
begin
     if RadNome.checked then
        GbPesquisa.Caption := 'Informe o Nome do produto:'
     else
     if RadRefer.checked then
        GbPesquisa.Caption := 'Informe a Referência do produto:'
     else
     if RadCodigoOriginal.checked then
        GbPesquisa.Caption := 'Informe o Código Original:'
     else
     if rbCodigoFornecedor.checked then
        GbPesquisa.Caption := 'Informe o Código do Fornecedor:'
     else
     if RadComplemento.checked then
        GbPesquisa.Caption := 'Informe Complemento:'
     else
     if RadDescricaoFornecedor.checked then
        GbPesquisa.Caption := 'Informe a descrição do fornecedor'
     else
     if RbEnderecamento.checked then
        GbPesquisa.Caption := 'Informe o endereçamento do produto';
     pMedidas.Visible :=   (DBINICIO.Empresa.bPMT_HABILITA_MEDIDAPRD) and RadNome.Checked;
end;

procedure TFormProdutoGrid.CbGrupoSelect(Sender: TObject);
begin
     inherited;
     EdtGrupo.Text := cbGrupo.idRetorno;
end;

procedure TFormProdutoGrid.CBLinhakeyPress(Sender: TObject; var Key: Char);
begin
     inherited;
     if key = #13 then
     begin
          edt_nome.setfocus;
          application.processmessages;
          edt_nome.setfocus;
          application.processmessages;
          key := #0;
     end;
end;

procedure TFormProdutoGrid.CBLinhaSelect(Sender: TObject);
begin
     inherited;
     EdtLinha.Text := CbLinha.idRetorno;

end;

procedure TFormProdutoGrid.EdtTipoExit(Sender: tObject);
begin
     CbTipo.idRetorno := strzero(  EdtTipo.Text , EdtTipo.MaxLength );

end;

procedure TFormProdutoGrid.Edt_NomeChange(Sender: TObject);
begin
 // inherited;
//  BuscaProduto;
end;

procedure TFormProdutoGrid.Edt_NomeEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.AllowDefault := False;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFormProdutoGrid.Edt_NomeExit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.AllowDefault := True;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFormProdutoGrid.Edt_NomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    BuscaProduto;
end;

procedure TFormProdutoGrid.EdtGrupoExit(Sender: tObject);
begin
     cbGrupo.idRetorno:=StrZero(EdtGrupo.Text, EdtGrupo.MaxLength);

end;

procedure TFormProdutoGrid.DbProdutoGridDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if (CdsReferPRD_STATUS.Asstring <> 'A') then
     begin
          DbProdutoGrid.Canvas.Font.Color := clRed;
          DbProdutoGrid.DefaultDrawDataCell(Rect, DbProdutoGrid.Columns[DataCol].Field, State);
     end;
end;

procedure TFormProdutoGrid.MostraSaldoAlmox;
begin
     CdsSaldos.DisableControls;
     CdsSaldos.Close;
     SqlSaldos.CommandText := 'SELECT * '+
                              'FROM pCd_kardex_saldo(' +qStr(dbInicio.Empresa.EMP_CODIGO) + ',' +qStr(CdsReferPRD_CODIGO.Value) +',null) t1 '+
                              'where t1.AMX_CODIGO_RET in ( SELECT t2.AMX_CODIGO from ALMOX0000 t2 '+
                              '                             WHERE t2.AMX_CODIGO = t1.AMX_CODIGO_RET and t2.AMX_ATIVO = ''S'')';
     CdsSaldos.Open;
     CdsSaldos.EnableControls;
end;


procedure TFormProdutoGrid.DbProdutoGridKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_RETURN then
     begin
          RetornaProduto;
          key := 0;
     end;
end;

procedure TFormProdutoGrid.DbProdutoGridTitleClick(Column: TColumn);
begin
  inherited;
  BuscaProduto(Column.FieldName);
end;

procedure TFormProdutoGrid.EdtLinhaExit(Sender: tObject);
begin
     CBLinha.idRetorno:=StrZero(EdtLinha.Text, EdtLinha.MaxLength);
end;

procedure TFormProdutoGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  SalvaEstadoPesquisaProc(pn1);
end;

procedure TFormProdutoGrid.FormCreate(Sender: tObject);
begin
  INHERITED;
  DisponivelVendas := False;
  pMedidas.Visible :=   (DBINICIO.Empresa.bPMT_HABILITA_MEDIDAPRD) and RadNome.Checked;
  EdVariacao.Text := FloatToStr( dbinicio.Empresa.wPMT_VARPERC_MEDIDA_PRODUTO);
  LeEstadoPesquisa := True;
  SalvaEstadoPesquisa := True;
  self.Constraints.MaxHeight:=0;
  self.Constraints.MaxWidth:=0;
  self.WindowState := wsMaximized;
end;

procedure TFormProdutoGrid.CdsReferPRD_PCUSTOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  IF dbinicio.empresa.pVENDA_VER_CUSTO <> 'S' then
    Text := '**********'
  Else
    Text := FormatFloat(TFloatField(Sender).DisplayFormat, Sender.AsFloat);

end;

Function TFormProdutoGrid.Retorna_Reserva_Almoxarifado(CONST sCodAlmox,sRefer: String): Currency;
begin
     OpenAux('select t1.* from prd_reserva_almox t1 where t1.amx_codigo='+qStr( sCodAlmox )+' and t1.prd_refer='+qStr(sRefer)+ ConcatSe(' and t1.',dbinicio.ExclusivoSql('produtos')));
     if (qAux.IsEmpty) then
       Result := 0
     else
     begin
       if dbInicio.Empresa.WvARIACOES then
         Result := ( qAux.FieldByName('PRA_QTDE_RESERVA_VAR1').AsCurrency +
                     qAux.FieldByName('PRA_QTDE_RESERVA_VAR2').AsCurrency +
                     qAux.FieldByName('PRA_QTDE_RESERVA_VAR3').AsCurrency +
                     qAux.FieldByName('PRA_QTDE_RESERVA_VAR4').AsCurrency +
                     qAux.FieldByName('PRA_QTDE_RESERVA_VAR5').AsCurrency +
                     qAux.FieldByName('PRA_QTDE_RESERVA_VAR6').AsCurrency +
                     qAux.FieldByName('PRA_QTDE_RESERVA_VAR7').AsCurrency +
                     qAux.FieldByName('PRA_QTDE_RESERVA_VAR8').AsCurrency)
       else
         Result := qAux.FieldByName('PRA_QTDE_RESERVA').AsCurrency;
     end;
     qAux.Close;
end;

end.






