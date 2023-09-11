unit importCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.Grids,
  Vcl.DBGrids,comobj, Datasnap.DBClient, uteis, Vcl.StdCtrls, Vcl.Buttons, animacao, iniciodb, system.StrUtils, system.UITypes;

type
  TFormImpCliente = class(TfrmBaseDB)
    DBGrid1: TDBGrid;
    cdsImport: TClientDataSet;
    dsImport: TDataSource;
    cdsImportCLI_CODIGO: TStringField;
    cdsImportCLI_RAZAO: TStringField;
    cdsImportCLI_FANTASIA: TStringField;
    cdsImportCLI_FONE: TStringField;
    cdsImportCLI_ENDERE: TStringField;
    cdsImportCLI_BAIRRO: TStringField;
    cdsImportCLI_CIDADE: TStringField;
    cdsImportCID_CODIGO: TIntegerField;
    cdsImportCLI_CEP: TStringField;
    cdsImportCLI_EMAIL: TStringField;
    cdsImportCLI_CGC: TStringField;
    cdsImportCLI_CONTATO: TStringField;
    cdsImportCLI_UF: TStringField;
    OpenDialog1: TOpenDialog;
    cdsImportobs: TStringField;
    cdsImportStatus: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    cdsImportCLI_INSC: TStringField;
    chkUpdate: TCheckBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
     function importarExcel : boolean;
     procedure ValidarRegistros;
     procedure GravarClientes;
  end;

var
  FormImpCliente: TFormImpCliente;

implementation

{$R *.dfm}

{ TFormImpCliente }

procedure TFormImpCliente.BitBtn1Click(Sender: TObject);
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

procedure TFormImpCliente.BitBtn2Click(Sender: TObject);
begin
  inherited;
 if (MessageDlg('Os registros com erro não serão importados. Deseja continuar ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
   GravarClientes;
end;

procedure TFormImpCliente.BitBtn3Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFormImpCliente.GravarClientes;
var Clone: TClientDataSet;
vfone, vcep, vcgc, sql :string;
vtipo :string;
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
      if clone.FieldByName('CLI_FONE').AsString <> '' then
      begin
        vfone := AnsiReplaceStr(clone.FieldByName('CLI_FONE').AsString,'(','');
        vfone := AnsiReplaceStr(vfone,')','');
        vfone := AnsiReplaceStr(vfone,'-','');
        vfone := AnsiReplaceStr(vfone,' ','');
        if length(vfone) > 11 then
          vfone := '';
     end;
     if clone.FieldByName('CLI_CEP').AsString <> '' then
       vcep :=  AnsiReplaceStr(clone.FieldByName('CLI_CEP').AsString,'-','');
     if clone.FieldByName('cli_cgc').AsString <> '' then
        vcgc := RetirarMascaraCNPJ_INSC(clone.FieldByName('cli_cgc').AsString);
     if not (length(vcgc) in [14,11]) then
        vcgc := '';
     if length(vcgc) = 11 then
       vtipo := 'F'
     else if length(vcgc) = 14 then
       vtipo := 'J';


     try
       if (clone.FieldByName('STATUS').AsString <> 'ATUALIZAÇÃO') then
       begin
         sql:= ' insert into cli0000 (CLI_CODIGO, EMP_CODIGO, CLI_RAZAO, CLI_FANTASIA,CLI_ENDERE, CLI_BAIRRO, CLI_CIDADE, CID_CODIGO ,CLI_CEP ,CLI_EMAIL,CLI_EMAIL_ALTERNATIVO, '+
         ' CLI_FONE , CLI_PESSOA,CLI_CLASSE_CLI_FOR, CLI_CGC,CLI_INSC, CLI_CONTATO ,CLI_UF, CLI_DTINICIO, CLI_INATIVO,CLI_CONSFINAL,CLI_PAIS,CLI_CONSU_PROPRIO, PAI_CODIGO ,CLI_PORTE ) VALUES ( '+
         QuotedStr(strzero( dbInicio.GetNextSequence('GEN_CLI0000_CODIGO'), 5 ) )+','+
         QuotedStr(DBInicio.Empresa.EMP_CODIGO)+','+
         QuotedStr(copy(clone.FieldByName('cli_razao').AsString,1,55))+','+
         QuotedStr(copy(clone.FieldByName('cli_fantasia').AsString,1,55))+','+
         QuotedStr(copy(clone.FieldByName('cli_endere').AsString,1,50))+','+
         QuotedStr(clone.FieldByName('cli_bairro').AsString)+','+
         QuotedStr(iif(clone.FieldByName('cid_codigo').AsInteger>0,clone.FieldByName('cli_cidade').AsString,''))+','+
         IntToStr(clone.FieldByName('cid_codigo').AsInteger) +','+
         QuotedStr(VCEP)+','+
         QuotedStr(clone.FieldByName('CLI_EMAIL').AsString)+','+
         QuotedStr(clone.FieldByName('CLI_EMAIL').AsString)+','+
         QuotedStr(vfone)+','+
         QuotedStr(vtipo)+','+
         QuotedStr('C')+','+
         QuotedStr(vcgc)+','+
         QuotedStr(clone.FieldByName('CLI_INSC').AsString) + ','+
         QuotedStr(clone.FieldByName('CLI_CONTATO').AsString)+','+
         QuotedStr(clone.FieldByName('CLI_UF').AsString)+','+
         DateToSQL(now)+','+
         QuotedStr('A')+','+
         QuotedStr('N')+','+
         QuotedStr('N')+','+
         QuotedStr('N')+','+
         '1058'+','  +
         QuotedStr('M')+  ')';
       end
       else if chkUpdate.Checked and (clone.FieldByName('STATUS').AsString = 'ATUALIZAÇÃO') then
       begin
        sql :=  'update cli0000 '+
                ' set '+
                iif(clone.FieldByName('cli_razao').AsString<>'','CLI_RAZAO = '+ QuotedStr(copy(clone.FieldByName('cli_razao').AsString,1,55)),' CLI_RAZAO = trim(cli_razao) ')  +
                 iif(clone.FieldByName('cli_fantasia').AsString<>'',',CLI_FANTASIA = '+ QuotedStr(copy(clone.FieldByName('cli_fantasia').AsString,1,55)),'') +
                iif(clone.FieldByName('cli_endere').AsString<>'',' , CLI_ENDERE = '+QuotedStr(copy(clone.FieldByName('cli_endere').AsString,1,50)),'') +
                iif(clone.FieldByName('cli_bairro').AsString<>'',', CLI_BAIRRO = '+ QuotedStr(clone.FieldByName('cli_bairro').AsString),'') +
                iif(clone.FieldByName('cid_codigo').AsInteger>0, ', CLI_CIDADE = '+ QuotedStr(clone.FieldByName('cli_cidade').AsString),'')+
                iif(clone.FieldByName('cid_codigo').AsInteger>0,', CID_CODIGO = '+ IntToStr(clone.FieldByName('cid_codigo').AsInteger),'')+
                IIF(VCEP<>'',', CLI_CEP   = '+  QuotedStr(VCEP),'')+
                IIF(clone.FieldByName('CLI_EMAIL').AsString <> '', ', CLI_EMAIL = '+ QuotedStr(clone.FieldByName('CLI_EMAIL').AsString),'')+
                IIF(vfone<>'',',CLI_FONE = '+  QuotedStr(vfone),'')+
                IIF(clone.FieldByName('CLI_INSC').AsString<>'',', CLI_INSC  = '+ QuotedStr(clone.FieldByName('CLI_INSC').AsString),'')+
                IIF(clone.FieldByName('CLI_CONTATO').AsString<>'',' ,CLI_CONTATO = '+ QuotedStr(clone.FieldByName('CLI_CONTATO').AsString),'') +
                iif(clone.FieldByName('CLI_UF').AsString<>'',',CLI_UF      = '+ QuotedStr(clone.FieldByName('CLI_UF').AsString),'')+
                ' where cli_codigo = '+ QuotedStr( clone.FieldByName('CLI_CODIGO').AsString);
       end;
        if SQL <> '' then
          ExecSql(sql);
     except
       RollBackTransaction;
       raise Exception.Create('Erro na gravação do cliente id ' +clone.FieldByName('cli_codigo').AsString );

     end;
     clone.Next;
    end;
    CommitTransaction;
    Aviso( inttostr(Clone.RecordCount) +  ' clientes incluidos com sucesso.');
    close;
  finally
    clone.Free;
    fmAnimacao.close;
    Screen.Cursor := crDefault;
  end;


end;

function TFormImpCliente.importarExcel: boolean;
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
        cdsImportCLI_CGC.AsString :=   XLSAplicacao.cells[k,1];
        cdsImportCLI_INSC.AsString := XLSAplicacao.cells[k,2];
        cdsImportCLI_RAZAO.AsString := XLSAplicacao.cells[k,3];
        cdsImportCLI_FANTASIA.AsString := XLSAplicacao.cells[k,4];
        cdsImportCLI_FONE.AsString := XLSAplicacao.cells[k,5];
        cdsImportCLI_ENDERE.AsString := XLSAplicacao.cells[k,6];
        cdsImportCLI_BAIRRO.AsString :=XLSAplicacao.cells[k,7];
        cdsImportCLI_CIDADE.AsString := XLSAplicacao.cells[k,8];
        cdsImportCLI_UF.AsString :=  XLSAplicacao.cells[k,9];
        cdsImportCLI_CEP.AsString := XLSAplicacao.cells[k,10];
        cdsImportCLI_EMAIL.AsString := XLSAplicacao.cells[k,11];
        cdsImportCLI_CONTATO.AsString := XLSAplicacao.cells[k,12];

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

procedure TFormImpCliente.ValidarRegistros;
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
     if clone.FieldByName('CLI_CODIGO').AsString = '' then
     begin
       OpenAux('select CLI_CODIGO from CLI0000 where cli_cgc = '+ QuotedStr(RetirarMascaraCNPJ_INSC(clone.FieldByName('cli_cgc').AsString)) );
       if not qAux.IsEmpty then
       begin
         clone.FieldByName('OBS').AsString := 'CNPJ JÁ CADASTRADO';
      //   clone.FieldByName('status').AsString := '';
         clone.FieldByName('CLI_CODIGO').AsString :=  qAux.FieldByName('CLI_CODIGO').AsString;
       end;
     end
     else
       clone.FieldByName('OBS').AsString := 'CNPJ JÁ CADASTRADO';
//     if Length(clone.FieldByName('CLI_RAZAO').AsString) > 55 then
//        clone.FieldByName('OBS').AsString := 'Tam ''razão'' maior que 55 caracteres, campo será truncado';
//     if Length(clone.FieldByName('CLI_FANTASIA').AsString) > 55 then
//        clone.FieldByName('OBS').AsString := 'Tam ''fantasia'' maior que 55 caracteres, campo será truncado';
     if ((clone.FieldByName('cid_codigo').AsInteger = 0 )  or (clone.FieldByName('cid_codigo').IsNull ))
        and (clone.FieldByName('cli_cidade').AsString <> '')  and (clone.FieldByName('cli_uf').AsString <> 'EX' ) then
     begin
        if (clone.FieldByName('cli_uf').AsString = '')   then
        begin
          OpenAux('select cid_codigo, cid_estado from CID0000 where cid_cidade = '+ QuotedStr(UpperCase(clone.FieldByName('cli_cidade').AsString))) ;
          if qAux.RecordCount = 1 then
            clone.FieldByName('cli_uf').AsString :=   qaux.FieldByName('cid_estado').AsString
          else
          begin
            clone.FieldByName('obs').AsString :=clone.FieldByName('obs').AsString +','+ 'UF está em branco';
            clone.FieldByName('status').AsString := 'ERRO';
          end;


        end
        else if (Length(clone.FieldByName('cli_uf').AsString)>2) then
        begin
          clone.FieldByName('obs').AsString :=clone.FieldByName('obs').AsString +','+ 'UF é maior que 2 letras';
          clone.FieldByName('status').AsString := 'ERRO';

        end
       else
       begin
         OpenAux('select cid_codigo, cid_estado,cid_cidade from CID0000 where cid_cidade = '+ QuotedStr(UpperCase(clone.FieldByName('cli_cidade').AsString))+
         ' and cid_estado =  '+QuotedStr(clone.FieldByName('cli_uf').AsString) );
         if qAux.IsEmpty then
           OpenAux('select cid_codigo, cid_estado,cid_cidade from CID0000 where cid_cidade like '+ QuotedStr('%'+UpperCase(clone.FieldByName('cli_cidade').AsString)+'%')+
           ' and cid_estado =  '+QuotedStr(clone.FieldByName('cli_uf').AsString) );
         if qAux.IsEmpty then
         begin
           clone.FieldByName('OBS').AsString :=clone.FieldByName('OBS').AsString +','+ ' cidade não encontrada';
           clone.FieldByName('status').AsString := 'ERRO';

         end
         else
         begin
          clone.FieldByName('cid_codigo').AsInteger :=  qAux.FieldByName('cid_codigo').AsInteger;
          clone.FieldByName('cli_cidade').AsString :=  qAux.FieldByName('cid_cidade').AsString;

         end;
       end;

       if (clone.FieldByName('cli_uf').AsString = '') or (length(clone.FieldByName('cli_uf').AsString)>2) then
       begin
          clone.FieldByName('obs').AsString :=clone.FieldByName('obs').AsString +','+ 'UF em branco ou é maior que 2 letras';
          clone.FieldByName('status').AsString := 'ERRO';
       end;
     end;
      if clone.FieldByName('CLI_FONE').AsString <> '' then
      begin
        vfone := AnsiReplaceStr(clone.FieldByName('CLI_FONE').AsString,'(','');
        vfone := AnsiReplaceStr(vfone,')','');
        vfone := AnsiReplaceStr(vfone,'-','');
        vfone := AnsiReplaceStr(vfone,' ','');
     end;
     if length(vfone )> 11  then
      clone.FieldByName('obs').AsString :=clone.FieldByName('obs').AsString +','+'campo fone inválido, será suprimido';
     if not( length(RetirarMascaraCNPJ_INSC(clone.FieldByName('cli_cgc').AsString))  in [14,11]) then
      clone.FieldByName('obs').AsString :=clone.FieldByName('obs').AsString +','+'campo cnpj/cpf inválido, será suprimido';
     if length(RetirarMascaraCNPJ_INSC(clone.FieldByName('CLI_INSC').AsString)) >18 then
       clone.FieldByName('obs').AsString :=clone.FieldByName('obs').AsString +','+'campo insc. estadual muito grande, será suprimido';
     if (clone.FieldByName('OBS').AsString = '') and  (clone.FieldByName('CLI_CODIGO').AsString <> '') then
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
