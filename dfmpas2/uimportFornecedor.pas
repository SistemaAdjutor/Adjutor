unit uimportFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, comobj,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora,system.StrUtils;

type
  TFrmImportarFornecedor = class(TfrmBaseDB)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    cdsImport: TClientDataSet;
    cdsImportobs: TStringField;
    cdsImportStatus: TStringField;
    dsImport: TDataSource;
    OpenDialog1: TOpenDialog;
    cdsImportFOR_RAZAO: TStringField;
    cdsImportFOR_ENDERE: TStringField;
    cdsImportFOR_BAIRRO: TStringField;
    cdsImportFOR_CIDADE: TStringField;
    cdsImportFOR_UF: TStringField;
    cdsImportCID_CODIGO: TIntegerField;
    cdsImportFOR_CEP: TStringField;
    cdsImportFOR_CONTATO: TStringField;
    cdsImportFOR_FONE: TStringField;
    cdsImportFOR_EMAIL: TStringField;
    cdsImportFOR_CGC: TStringField;
    cdsImportFOR_INSC: TStringField;
    cdsImportFOR_INSCMUNI: TStringField;
    DBGrid1: TDBGrid;
    chkUpdate: TCheckBox;
    cdsImportFOR_CODIGO: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
     function importarExcel : boolean;
     procedure ValidarRegistros;
     procedure GravarFornecedores;
  end;

var
  FrmImportarFornecedor: TFrmImportarFornecedor;

implementation

{$R *.dfm}
  USES UTEIS, animacao,InicioDB;
{ TFrmImportarFornecedor }

procedure TFrmImportarFornecedor.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ValidarRegistros;
end;

procedure TFrmImportarFornecedor.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if (MessageDlg('Os registros com erro não serão importados. Deseja continuar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
   GravarFornecedores;
end;

procedure TFrmImportarFornecedor.BitBtn3Click(Sender: TObject);
begin
  inherited;
  CLOSE;
end;

procedure TFrmImportarFornecedor.GravarFornecedores;
var Clone: TClientDataSet;
  vfone, vcep, vcgc, sql :string;

begin
 clone := TClientDataSet.Create(Self);
  fmAnimacao := TfmAnimacao.Create(application);
  try
    Screen.Cursor := crHourGlass;
    clone.CloneCursor(cdsImport,true);
    clone.Filtered := False;
    clone.Filter:= 'Status <> '+QuotedStr('ERRO');
    Clone.Filtered := True;
    CLONE.First;
    BeginTransaction;
    while NOT clone.Eof do
    begin
      if clone.FieldByName('FOR_FONE').AsString <> '' then
      begin
        vfone := AnsiReplaceStr(clone.FieldByName('FOR_FONE').AsString,'(','');
        vfone := AnsiReplaceStr(vfone,')','');
        vfone := AnsiReplaceStr(vfone,'-','');
        vfone := AnsiReplaceStr(vfone,' ','');
        if length(vfone) > 11 then
          vfone := '';
     end;
     if clone.FieldByName('FOR_CEP').AsString <> '' then
       vcep :=  AnsiReplaceStr(clone.FieldByName('FOR_CEP').AsString,'-','');
     if clone.FieldByName('FOR_cgc').AsString <> '' then
        vcgc := RetirarMascaraCNPJ_INSC(clone.FieldByName('FOR_cgc').AsString);
     if not (length(vcgc) in [14,11]) then
        vcgc := '';



     try
       if (clone.FieldByName('STATUS').AsString <> 'ATUALIZAÇÃO') then
       begin
         sql:= ' insert into FOR0000 (FOR_CODIGO, EMP_CODIGO, FOR_RAZAO, FOR_ENDERE, FOR_BAIRRO, FOR_CIDADE, CID_CODIGO ,FOR_CEP ,FOR_EMAIL, '+
         ' FOR_FONE , FOR_CGC,FOR_INSC,FOR_INSCMUNI, FOR_CONTATO ,FOR_UF,FOR_DTCADASTRO, FOR_ATIVO ) VALUES ( '+
         QuotedStr(strzero( dbInicio.GetNextSequence('GEN_FOR0000_CODIGO'), 4 ) )+','+
         QuotedStr(DBInicio.Empresa.EMP_CODIGO)+','+
         QuotedStr(copy(clone.FieldByName('FOR_razao').AsString,1,40))+','+
         QuotedStr(copy(clone.FieldByName('FOR_endere').AsString,1,40))+','+
         QuotedStr(copy(clone.FieldByName('FOR_bairro').AsString,1,30))+','+
         QuotedStr(iif(clone.FieldByName('cid_codigo').AsInteger>0,copy(clone.FieldByName('FOR_cidade').AsString,1,30),''))+','+
         IntToStr(clone.FieldByName('cid_codigo').AsInteger) +','+
         QuotedStr(RetiraTodaMascara(VCEP))+','+
         QuotedStr(COPY(clone.FieldByName('FOR_EMAIL').AsString,1,150))+','+
         QuotedStr(vfone)+','+
         QuotedStr(vcgc)+','+
         QuotedStr(RetirarMascaraCNPJ_INSC(clone.FieldByName('FOR_INSC').AsString)) + ','+
         QuotedStr(RetirarMascaraCNPJ_INSC(clone.FieldByName('FOR_INSCMUNI').AsString)) + ','+
         QuotedStr(COPY(clone.FieldByName('FOR_CONTATO').AsString,1,20))+','+
         QuotedStr(clone.FieldByName('FOR_UF').AsString)+','+
         DateToSQL(now)+','+
         QuotedStr('A')+ ')';
       end
       else if chkUpdate.Checked and (clone.FieldByName('STATUS').AsString = 'ATUALIZAÇÃO') then
       begin
         sql := 'update for0000 set '+
                 iif(clone.FieldByName('FOR_razao').AsString<>'','FOR_razao = '+ QuotedStr(copy(clone.FieldByName('FOR_razao').AsString,1,40)),' FOR_razao = trim(FOR_razao) ')  +
                 iif(clone.FieldByName('FOR_endere').AsString <> '', ' , FOR_endere = '+  QuotedStr(copy(clone.FieldByName('FOR_endere').AsString,1,40)),'')+
                 iif(clone.FieldByName('FOR_bairro').AsString <> '', ' , FOR_bairro = '+  QuotedStr(copy(clone.FieldByName('for_bairro').AsString,1,40)),'')+
                 iif(clone.FieldByName('cid_codigo').asinteger>0  ,', FOR_CIDADE = '+ QuotedStr(copy(clone.FieldByName('FOR_cidade').AsString,1,30)),'')+
                 iif(clone.FieldByName('cid_codigo').asinteger>0  ,', cid_codigo = '+  IntToStr(clone.FieldByName('cid_codigo').AsInteger),'')+
                 iif(VCEP<> '',  ' , FOR_CEP = '+ QuotedStr(RetiraTodaMascara(VCEP)),'')+
                 iif(clone.FieldByName('FOR_EMAIL').AsString<> '',' ,FOR_EMAIL = '+ QuotedStr(COPY(clone.FieldByName('FOR_EMAIL').AsString,1,150)),'')+
                 IIF(vfone <> '', ' , FOR_FONE = '+  QuotedStr(vfone) ,'')+
                 iif(clone.FieldByName('FOR_INSC').AsString <>'' , ', FOR_INSC= '+QuotedStr(RetirarMascaraCNPJ_INSC(clone.FieldByName('FOR_INSC').AsString)) ,'')+
                 iif(clone.FieldByName('FOR_INSCMUNI').AsString <> '',', FOR_INSCMUNI = '+clone.FieldByName('FOR_INSCMUNI').AsString,'')+
                 iif(clone.FieldByName('FOR_CONTATO').AsString <> '',' , FOR_CONTATO = '+ QuotedStr(COPY(clone.FieldByName('FOR_CONTATO').AsString,1,20)),'') +
                 iif(clone.FieldByName('FOR_UF').AsString <> '', ' ,FOR_UF = '+ QuotedStr(clone.FieldByName('FOR_UF').AsString),'')+
                'where for_codigo = '+QuotedStr( clone.FieldByName('for_codigo').AsString)  ;
       end;
        if sql <> '' then
          ExecSql(sql);
     except
       RollBackTransaction;
       raise Exception.Create('Erro na gravação do fornecedor id ' +clone.FieldByName('FOR_codigo').AsString );

     end;
     clone.Next;
    end;
    CommitTransaction;
    Aviso( inttostr(Clone.RecordCount) +  ' fornecedores incluidos com sucesso.');
    close;
  finally
    clone.Free;
    fmAnimacao.close;
    Screen.Cursor := crDefault;
  end;
end;

function TFrmImportarFornecedor.importarExcel: boolean;
const
   xlCellTypeLastCell = $0000000B;
var
   XLSAplicacao, AbaXLS: OLEVariant;
   x, k: Integer;

begin
 result := False;
 if OpenDialog1.Execute then
  begin
   XLSAplicacao := CreateoleObject('Excel.Application');
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
        cdsImportFOR_CGC.AsString :=   XLSAplicacao.cells[k,1];
        cdsImportFOR_RAZAO.AsString := XLSAplicacao.cells[k,2];
        cdsImportFOR_ENDERE.AsString := XLSAplicacao.cells[k,3];
        cdsImportFOR_CEP.AsString := XLSAplicacao.cells[k,4];
        cdsImportFOR_BAIRRO.AsString := XLSAplicacao.cells[k,5];
        cdsImportFOR_CIDADE.AsString := XLSAplicacao.cells[k,6];
        cdsImportFOR_UF.AsString :=XLSAplicacao.cells[k,7];
        cdsImportFOR_INSC.AsString := XLSAplicacao.cells[k,8];
        cdsImportFOR_INSCMUNI.AsString :=  XLSAplicacao.cells[k,9];
        cdsImportFOR_FONE.AsString := XLSAplicacao.cells[k,10];
        cdsImportFOR_EMAIL.AsString := XLSAplicacao.cells[k,11];
        cdsImportFOR_CONTATO.AsString := XLSAplicacao.cells[k,12];


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

procedure TFrmImportarFornecedor.ValidarRegistros;
var clone : TClientDataSet;
vfone :string;
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
     if clone.FieldByName('FOR_CODIGO').AsString = '' then
     begin
       OpenAux('select for_codigo from FOR0000 where for_cgc = '+ QuotedStr(RetirarMascaraCNPJ_INSC(clone.FieldByName('for_cgc').AsString)) );
       if not qAux.IsEmpty then
       begin
         clone.FieldByName('OBS').AsString := 'CNPJ JÁ CADASTRADO';
         clone.FieldByName('FOR_CODIGO').AsString := qAux.FieldByName('FOR_CODIGO').AsString;
         //clone.FieldByName('status').AsString := 'ERRO';
       end;
     end
     else
       clone.FieldByName('OBS').AsString := 'CNPJ JÁ CADASTRADO';


     if clone.FieldByName('For_razao').AsString = '' then
     begin
       clone.FieldByName('OBS').AsString := clone.FieldByName('obs').AsString +','+ 'sem nome';
       clone.FieldByName('status').AsString := 'ERRO';

     end;
     if ((clone.FieldByName('cid_codigo').AsInteger = 0 )  or (clone.FieldByName('cid_codigo').IsNull ))
        and (clone.FieldByName('for_cidade').AsString <> '')   then
     begin
        if (clone.FieldByName('for_uf').AsString = '')   then
        begin
          OpenAux('select cid_codigo, cid_estado from CID0000 where cid_cidade = '+ QuotedStr(UpperCase(clone.FieldByName('for_cidade').AsString))) ;
          if qAux.RecordCount = 1 then
            clone.FieldByName('for_uf').AsString :=   qaux.FieldByName('cid_estado').AsString
          else
          begin
            clone.FieldByName('obs').AsString :=clone.FieldByName('obs').AsString +','+ 'UF está em branco';
            clone.FieldByName('status').AsString := 'ERRO';
          end;


        end
        else if (Length(clone.FieldByName('for_uf').AsString)>2) then
        begin
          clone.FieldByName('obs').AsString :=clone.FieldByName('obs').AsString +','+ 'UF é maior que 2 letras';
          clone.FieldByName('status').AsString := 'ERRO';

        end
       else
       begin
         OpenAux('select cid_codigo, cid_estado,cid_cidade from CID0000 where cid_cidade = '+ QuotedStr(UpperCase(clone.FieldByName('for_cidade').AsString))+
         ' and cid_estado =  '+QuotedStr(clone.FieldByName('for_uf').AsString) );
         if qAux.IsEmpty then
           OpenAux('select cid_codigo, cid_estado,cid_cidade from CID0000 where cid_cidade like '+ QuotedStr('%'+UpperCase(clone.FieldByName('for_cidade').AsString)+'%')+
           ' and cid_estado =  '+QuotedStr(clone.FieldByName('for_uf').AsString) );
         if qAux.IsEmpty then
         begin
           clone.FieldByName('OBS').AsString :=clone.FieldByName('OBS').AsString +','+ ' cidade não encontrada';
           clone.FieldByName('status').AsString := 'ERRO';

         end
         else
         begin
          clone.FieldByName('cid_codigo').AsInteger :=  qAux.FieldByName('cid_codigo').AsInteger;
          clone.FieldByName('for_cidade').AsString :=  qAux.FieldByName('cid_cidade').AsString;

         end;
       end;

       if (clone.FieldByName('for_uf').AsString = '') or (length(clone.FieldByName('for_uf').AsString)>2) then
       begin
          clone.FieldByName('obs').AsString :=clone.FieldByName('obs').AsString +','+ 'UF em branco ou é maior que 2 letras';
          clone.FieldByName('status').AsString := 'ERRO';
       end;
     end;
      if clone.FieldByName('for_FONE').AsString <> '' then
      begin
        vfone := AnsiReplaceStr(clone.FieldByName('for_FONE').AsString,'(','');
        vfone := AnsiReplaceStr(vfone,')','');
        vfone := AnsiReplaceStr(vfone,'-','');
        vfone := AnsiReplaceStr(vfone,' ','');
     end;
     if length(vfone )> 11  then
      clone.FieldByName('obs').AsString :=clone.FieldByName('obs').AsString +','+'campo fone inválido, será suprimido';
     if not( length(RetirarMascaraCNPJ_INSC(clone.FieldByName('for_cgc').AsString))  in [14,11]) then
      clone.FieldByName('obs').AsString :=clone.FieldByName('obs').AsString +','+'campo cnpj/cpf inválido, será suprimido';
     if length(RetirarMascaraCNPJ_INSC(clone.FieldByName('for_INSC').AsString)) >18 then
       clone.FieldByName('obs').AsString :=clone.FieldByName('obs').AsString +','+'campo insc. estadual muito grande, será suprimido';
     if (clone.FieldByName('OBS').AsString = '') and  (clone.FieldByName('FOR_CODIGO').AsString <> '') then
      clone.FieldByName('OBS').AsString := 'CNPJ JÁ CADASTRADO' ;

    if (clone.FieldByName('status').AsString = '') and (clone.FieldByName('OBS').AsString <> '') AND (clone.FieldByName('OBS').AsString <> 'CNPJ JÁ CADASTRADO')  then
      clone.FieldByName('status').AsString  := 'Aviso'
    else if (clone.FieldByName('OBS').AsString = '')  then
      clone.FieldByName('status').AsString  := 'ok'
    else if clone.FieldByName('OBS').AsString = 'CNPJ JÁ CADASTRADO' then
      clone.FieldByName('status').AsString  := 'ATUALIZAÇÃO' ;

     clone.Post;
     clone.Next;
   end;


 finally
  FreeAndNil(clone);
 end;

end;

end.
