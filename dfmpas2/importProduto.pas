unit importProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids ,
  animacao, Datasnap.DBClient,  iniciodb, system.StrUtils, system.UITypes,comobj,  uteis, SgDbSeachComboUnit, ComboBoxRW;

type
  TfrmImporProduto = class(TfrmBaseDB)
    DBGrid1: TDBGrid;
    bitrevalidar: TBitBtn;
    bitconfirmar: TBitBtn;
    bitcancelar: TBitBtn;
    Label1: TLabel;
    dsImport: TDataSource;
    cdsImport: TClientDataSet;
    cdsImportobs: TStringField;
    cdsImportStatus: TStringField;
    OpenDialog1: TOpenDialog;
    cdsImportPRD_REFER: TStringField;
    cdsImportPRD_DESCR: TStringField;
    cdsImportPRD_COMPL: TStringField;
    cdsImportPRD_UND: TStringField;
    cdsImportPRD_CEST: TStringField;
    cdsImportNCM_CODIGO: TStringField;
    cdsImportIPI_CODIGO: TIntegerField;
    cdsImportTIPO: TStringField;
    cdsImportPRD_PCUSTO: TFMTBCDField;
    cdsImportPRD_MARGEMVENDA: TFMTBCDField;
    cdsImportPRD_PVENDA: TFMTBCDField;
    chkUpdEstoque: TCheckBox;
    cdsImportPRD_CODIGO: TStringField;
    chkUpdate: TCheckBox;
    cdsImportESTOQUE: TFMTBCDField;
    CbAlmoxarifadoDestino: TComboBoxRw;
    Label2: TLabel;
    cdsImportGrupo: TStringField;
    cdsImportLIN_CODIGO: TStringField;
    procedure bitrevalidarClick(Sender: TObject);
    procedure bitconfirmarClick(Sender: TObject);
    procedure bitcancelarClick(Sender: TObject);
    procedure chkUpdEstoqueClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     function importarExcel : boolean;
     procedure ValidarRegistros;
     procedure GravarProdutos;
  end;

var
  frmImporProduto: TfrmImporProduto;

implementation

uses BaseDbEstoqueForm;
{$R *.dfm}

{ TfrmImporProduto }

procedure TfrmImporProduto.bitcancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmImporProduto.bitconfirmarClick(Sender: TObject);
begin
  inherited;
 if chkUpdEstoque.Checked and (CbAlmoxarifadoDestino.idRetorno = '') then
   raise Exception.Create('Preencha o almoxarifado');

 if (MessageDlg('Os registros com erro não serão importados. Deseja continuar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
   GravarProdutos;
end;

procedure TfrmImporProduto.bitrevalidarClick(Sender: TObject);
begin
  inherited;
  fmAnimacao := TfmAnimacao.Create(application);
  try
    Screen.Cursor := crHourGlass;
    fmAnimacao.Show;
    fmAnimacao.Caption := 'Revalidando ...' ;
    ValidarRegistros;

  finally
    fmAnimacao.close;
    Screen.Cursor := crDefault;
  end;

end;

procedure TfrmImporProduto.chkUpdEstoqueClick(Sender: TObject);
begin
  inherited;
  CbAlmoxarifadoDestino.Enabled := chkUpdEstoque.Checked;
  label2.Enabled := chkUpdEstoque.Checked;
end;

procedure TfrmImporProduto.FormCreate(Sender: TObject);
begin
  inherited;
  CbAlmoxarifadoDestino.Enabled := False;
  label2.Enabled := False;
  ExecSql('execute block as              '+
    ' declare variable x integer;  '+
    ' begin'+
    ' SELECT max(prd0000.prd_codigo) from prd0000 into x; '+
    ' execute statement  '+QuotedStr('set generator GEN_PRD_CODIGO to ') +' || (x+1); '+
    ' end; '+
   '  ');
end;

procedure TfrmImporProduto.GravarProdutos;
var Clone: TClientDataSet;
 sql :string;
 vtipo, vcest, vun, pti, stipo :string;
 codigo : integer;
 rValor:Real;
 tcr: TfrmBaseDbEstoque;
 valorBalanco : real;
begin
  clone := TClientDataSet.Create(Self);
  fmAnimacao := TfmAnimacao.Create(application);
  try
    codigo :=BuscaUmDadoSqlAsInteger('SELECT max(CAST(prd_codigo AS INTEGER)) from prd0000' );
    Screen.Cursor := crHourGlass;
    clone.CloneCursor(cdsImport,true);
    clone.Filtered := False;
    clone.Filter:= 'Status <> '+QuotedStr('ERRO');
    Clone.Filtered := True;
    CLONE.First;
    BeginTransaction;
    while NOT clone.Eof do
    begin
      try

        codigo := GetNextSequence('GEN_PRD_CODIGO');
        OpenAux('select 1 from CEST0000 where cest_cod = '+QuotedStr(clone.FieldByName('PRD_CEST').AsString)  );
        if qAux.IsEmpty  then
          vcest:= ''
        else
         vcest := clone.FieldByName('PRD_CEST').AsString;
        OpenAux('SELECT 1 FROM UND_MEDIDA where und_sigla = '+ QuotedStr(UpperCase(clone.FieldByName('PRD_UND').AsString)) );
        if qAux.IsEmpty then
          vun:= ''
        else
           vun := UPPERCASE(clone.FieldByName('PRD_UND').AsString);
        OpenAux('SELECT 1 FROM PRD_TIPO WHERE PTI_CODIGO = '  + QuotedStr(clone.FieldByName('Tipo').AsString));
        if qAux.IsEmpty then
           pti := ''
        else
           pti :=  clone.FieldByName('Tipo').AsString;
        OpenAux('SELECT * FROM  IPI0000 WHERE IPI_CODIGO =' + QuotedStr(clone.FieldByName('NCM_CODIGO').AsString) );
        if qAux.IsEmpty then
        Begin
          SQL:=
            'INSERT INTO IPI0000 (IPI_CODIGO, IPI_ALIQ, EMP_CODIGO, NCM_TEMCREDITO, IPI_VALOR_POR_ITEM) '+
            'VALUES (                                                                                   '+
             QuotedStr(clone.FieldByName('NCM_CODIGO').AsString) + ','+
             '0.00' + ','+
             QuotedStr(DBInicio.Empresa.EMP_CODIGO) + ','+
             QuotedStr('N') + ','+
             '0.00' +
            ')'  ;
            ExecSql(sql);
        End;
        if (clone.FieldByName('STATUS').AsString <> 'ATUALIZAÇÃO') then
        begin
          inc(codigo);
          sql :=
            'INSERT INTO PRD0000 (prd_codigo ,EMP_CODIGO,  prd_refer, PRD_STATUS, PRD_DTCADASTRO, PRD_DESCRI, PRD_UND, '+
            ' PTI_CODIGO, IPI_CODIGO, PRD_COMPL, PRD_PCUSTO, PRD_CUSTOCOMIPI, PRD_MARGEMVENDA, PRD_PVENDA, '+
            ' CEST_COD, CEST_REVISAR, PGR_CODIGO, LIN_CODIGO) ' +
            ' VALUES ( '+
            QuotedStr(strzero(codigo,5)) + ',' +
            QuotedStr(DBInicio.Empresa.EMP_CODIGO) + ','+
            QuotedStr(AnsiUpperCase(clone.FieldByName('prd_Refer').AsString)) + ',' +
            quotedStr('A') +','+
            DateToSQL(now)+','+
            QuotedStr(UpperCase(copy(AnsiUpperCase(clone.FieldByName('prd_descr').AsString),1,100))) + ',' +
            QuotedStr(VUN) + ','+
            QuotedStr(pti) + ','+
            QuotedStr(clone.FieldByName('NCM_CODIGO').AsString) +','+
            QuotedStr(copy(cdsImportPRD_COMPL.AsString,1,500)) + ','+
            FloatToSQL(clone.FieldByName('prd_pcusto').AsFloat)+ ',' +
            FloatToSQL(clone.FieldByName('prd_pcusto').AsFloat)+ ',' +
            FloatToSQL(clone.FieldByName('prd_margemvenda').AsFloat)+ ',' +
            FloatToSQL(clone.FieldByName('prd_pvenda').AsFloat)+ ',' +
            QuotedStr(vcest) +','+
            QUOTEDSTR(iif (vcest <> '', 'S', 'N'))  + ','+
            QuotedStr(Clone.FieldByName('Grupo').AsString)+  ',' +
            QuotedStr(Clone.FieldByName('LIN_CODIGO').AsString)+
            ')';
        end
        else if chkUpdate.Checked and (clone.FieldByName('STATUS').AsString = 'ATUALIZAÇÃO') then
        begin
          sql :='update prd0000 ' +
                IIF(clone.FieldByName('PRD_DESCR').AsString = '',' set PRD_DESCRI =  TRIM(PRD_DESCRI) ',' set PRD_DESCRI = ' +
                    QuotedStr(UpperCase(copy(AnsiUpperCase(clone.FieldByName('prd_descr').AsString),1,100)))) +
                IIF(VUN<>'',' ,PRD_UND = '+QuotedStr(VUN) ,'') +
                IIF( pti <> '', ' , PTI_CODIGO = '+  QuotedStr(pti),'')+
                IIF( Clone.FieldByName('Grupo').AsString <> '',' , PGR_CODIGO = '+ QuotedStr(Clone.FieldByName('Grupo').AsString),'') +
                IIF( Clone.FieldByName('LIN_CODIGO').AsString <> '',' , LIN_CODIGO = '+ QuotedStr(Clone.FieldByName('LIN_CODIGO').AsString),'') +
                IIF( clone.FieldByName('NCM_CODIGO').AsString <> '',', IPI_CODIGO = '+  QuotedStr(clone.FieldByName('NCM_CODIGO').AsString) ,'')+
                IIF( clone.FieldByName('PRD_COMPL').AsString  <> '', ' ,PRD_COMPL = '+ QuotedStr(copy(clone.FieldByName('PRD_COMPL').AsString,1,500)),'')+
                ', PRD_PCUSTO = ' +FloatToSQL(clone.FieldByName('prd_pcusto').AsFloat)+
                ', PRD_CUSTOCOMIPI = '+ FloatToSQL(clone.FieldByName('prd_pcusto').AsFloat)+
                ', PRD_MARGEMVENDA = '+ FloatToSQL(clone.FieldByName('prd_margemvenda').AsFloat)+
                ', PRD_PVENDA      =  '+FloatToSQL(clone.FieldByName('prd_pvenda').AsFloat)+
                ' ,CEST_COD        = '+  QuotedStr(vcest)+
                ' ,CEST_REVISAR =  '+QUOTEDSTR(iif (vcest <> '', 'S', 'N'))+
                ' where prd_codigo = ' + QuotedStr(clone.FieldByName('PRD_CODIGO').AsString) ;
        end;


        if sql <> '' then
        begin
          ExecSql(sql);
          if chkUpdEstoque.Checked then
          begin

              tcr := tfrmBaseDbEstoque.Create(application);
              try
                rValor:= frmBaseDbEstoque.KardexRetornaSaldo(clone.FieldByName('PRD_CODIGO').AsString,CbAlmoxarifadoDestino.idRetorno,dbinicio.Empresa.EMP_CODIGO );   // SALDO ATUAL
                if (clone.FieldByName('ESTOQUE').AsFloat < rValor) then
                    stipo := 'S'
                else
                    stipo := 'E';
                if clone.FieldByName('ESTOQUE').AsFloat <>  rValor then
                begin
                  if clone.FieldByName('ESTOQUE').AsFloat >  rValor then
                    valorBalanco := clone.FieldByName('ESTOQUE').AsFloat -  rValor
                  else
                    valorBalanco := rValor - clone.FieldByName('ESTOQUE').AsFloat ;

                    frmBaseDbEstoque.KardexLancamento('0',
                    'BAL',
                    CbAlmoxarifadoDestino.idRetorno,
                    '',
                    clone.FieldByName('PRD_CODIGO').AsString,
                    '',//Grade
                    clone.FieldByName('PRD_UND').AsString,
                    sTipo,
                    '',
                    '',//Novo esquema de lote
                    'BALANÇO POR IMPORTAÇÃO DE PLANILHA',
                    Now,
                    valorBalanco,
                    '',
                    '',
                    0.00,'','','', Clone.FieldByName('PRD_REFER').asstring   );

                end;
              finally
                FreeAndNil(tcr);
              end;

          end;

        end;
     except
       RollBackTransaction;
       raise Exception.Create('Erro na gravação do produto id ' +clone.FieldByName('prd_refer').AsString );

     end;
     clone.Next;
    end;
    CommitTransaction;
    Aviso( inttostr(Clone.RecordCount) +  ' produtos incluidos com sucesso.');
    close;
  finally
    clone.Free;
    fmAnimacao.close;
    Screen.Cursor := crDefault;
  end;



end;

function TfrmImporProduto.importarExcel: boolean;
const
   xlCellTypeLastCell = $0000000B;
var
   XLSAplicacao, AbaXLS: OLEVariant;
   x, k: Integer;

begin
result := False;
 if OpenDialog1.Execute then
  begin
   try
     XLSAplicacao := CreateoleObject('Excel.Application');
   except on e:Exception do
     begin
        ShowMessage(e.Message);
     end;
   end;
   try
     // Esconde Excel
      XLSAplicacao.Visible := False;
      // Abre o Workbook
      XLSAplicacao.Workbooks.Open(OpenDialog1.FileName);
      {Selecione aqui a aba que você deseja abrir primeiro - 1,2,3,4....}
      XLSAplicacao.WorkSheets[1].Activate;
      {Selecione aqui a aba que você deseja ativar - começando sempre no 1 (1,2,3,4) }
      AbaXLS := XLSAplicacao.Workbooks[ExtractFileName(OpenDialog1.FileName)].WorkSheets[1];
      AbaXLS.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
      // Pegar o número da última linha
      x := XLSAplicacao.ActiveCell.Row;
      // Pegar o número da última coluna
      if not cdsImport.Active then
        cdsImport.CreateDataSet;
      cdsImport.EmptyDataSet;
      cdsimport.DisableControls;
      for k := 2 to x do
      begin
        cdsimport.Insert;
        cdsImportPRD_REFER.AsString :=   XLSAplicacao.cells[k,1];
        cdsImportPRD_DESCR.AsString := XLSAplicacao.cells[k,2];
        cdsImportPRD_UND.AsString := XLSAplicacao.cells[k,3];
        cdsImportPRD_COMPL.AsString := XLSAplicacao.cells[k,4];
        cdsImportNCM_CODIGO.AsString := XLSAplicacao.cells[k,5];
        cdsImportNCM_CODIGO.AsString := RetiraTodaMascara(cdsImportNCM_CODIGO.AsString);
        cdsImportPRD_CEST.AsString := XLSAplicacao.cells[k,6];
        cdsImportTIPO.AsString :=XLSAplicacao.cells[k,7];
        cdsImportGrupo.AsString := StrZero(XLSAplicacao.cells[k,8], 3);
        cdsImportLIN_CODIGO.AsString := StrZero(XLSAplicacao.cells[k,9], 3);
        cdsImportPRD_PCUSTO.AsString := XLSAplicacao.cells[k,10];
        cdsImportPRD_MARGEMVENDA.AsString :=  XLSAplicacao.cells[k,11];
        cdsImportPRD_PVENDA.AsString := XLSAplicacao.cells[k,12];
        cdsImportESTOQUE.AsString    := XLSAplicacao.cells[k,13];

        cdsImport.Post;
      end;
   finally
    cdsImport.EnableControls;
    // Fecha o Microsoft Excel
    if not VarIsEmpty(XLSAplicacao) then
    begin
          XLSAplicacao.Quit;
          XLSAplicacao := Unassigned;
          AbaXLS := Unassigned;

    end;
   end;

   result:= true;

  end;



end;

procedure TfrmImporProduto.ValidarRegistros;
var clone : TclientDataSet;
begin
 clone := TClientDataSet.Create(Self);
 try
   clone.CloneCursor(cdsImport,true);
   clone.First;
   while not clone.Eof do
   begin
     clone.Edit;
     clone.FieldByName('obs').AsString :='';
     clone.FieldByName('status').AsString := '';
     if clone.FieldByName('PRD_CODIGO').AsString = '' then
     begin
       OpenAux('select prd_codigo, emp_codigo from prd0000 where prd_Refer = '+ QuotedStr(clone.FieldByName('prd_refer').AsString)  +ConcatSe(' and ', dbinicio.ExclusivoSql('PRODUTOS'))  );
       if not qAux.IsEmpty then
       begin
         clone.FieldByName('OBS').AsString := 'Código já existente';
         clone.FieldByName('prd_codigo').AsString :=  qaux.FieldByName('PRD_CODIGO').AsString;
       end;
     end
     else
      clone.FieldByName('OBS').AsString := 'Código já existente';


     {MÁRCIO PEDIU PARA TIRAR ESTA VALIDAÇÃO PORQUE A MAIORIA NO PARANA NÃO TEM}
//     OpenAux('select 1 from CEST0000 where cest_cod = '+QuotedStr(clone.FieldByName('PRD_CEST').AsString)  );
//     if qAux.IsEmpty  then
//     begin
//      if clone.FieldByName('OBS').AsString <> '' then
//        clone.FieldByName('OBS').AsString :=clone.FieldByName('OBS').AsString + ' e CEST inválido'
//      else
//        clone.FieldByName('OBS').AsString := 'CEST inválido';
//     end;
     if Length(clone.FieldByName('prd_descr').AsString)>100 then
     begin
       if clone.FieldByName('OBS').AsString <> '' then
        clone.FieldByName('OBS').AsString :=clone.FieldByName('OBS').AsString + ' e descrição muito grande'
      else
        clone.FieldByName('OBS').AsString := 'Descrição muito grande';


     end;
     OpenAux('SELECT 1 FROM UND_MEDIDA where und_sigla = '+ QuotedStr(UpperCase(clone.FieldByName('PRD_UND').AsString)) );
     if qAux.IsEmpty then
     begin
       if clone.FieldByName('OBS').AsString <> '' then
        clone.FieldByName('OBS').AsString :=clone.FieldByName('OBS').AsString + ' e Unidade de médida inválida'
      else
        clone.FieldByName('OBS').AsString := 'Unidade de médida inválida';

     end;
     OpenAux('SELECT 1 FROM PRD_TIPO WHERE PTI_CODIGO = '  + QuotedStr(clone.FieldByName('Tipo').AsString));
     if qAux.IsEmpty then
     begin
       if clone.FieldByName('OBS').AsString <> '' then
        clone.FieldByName('OBS').AsString :=clone.FieldByName('OBS').AsString + ' e tipo inexistente '
      else
        clone.FieldByName('OBS').AsString := 'Tipo inexistente ';

     end;
     if (clone.FieldByName('OBS').AsString = '') and  (clone.FieldByName('PRD_CODIGO').AsString <> '') then
       clone.FieldByName('OBS').AsString := 'Código já existente';

     if (clone.FieldByName('status').AsString = '') and (clone.FieldByName('OBS').AsString <> '') and  (clone.FieldByName('PRD_CODIGO').AsString = '') then
      clone.FieldByName('status').AsString  := 'Aviso'
     else if (clone.FieldByName('OBS').AsString = '')  then
      clone.FieldByName('status').AsString  := 'ok'
     else if (clone.FieldByName('OBS').AsString = 'Código já existente') OR (clone.FieldByName('PRD_CODIGO').AsString <> '')  then
       clone.FieldByName('status').AsString  := 'ATUALIZAÇÃO' ;


     clone.Post;
     clone.Next
   end;



 finally
   FreeAndNil(clone);

 end;
end;

end.
