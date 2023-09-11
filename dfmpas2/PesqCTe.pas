unit PesqCTe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.Mask, JvBaseDlg, JvSelectDirectory, ACBrCTeDACTEClass, ACBrCTeDACTeRLClass, ACBrDFe, ACBrCTe,
  SgDbSeachComboUnit, system.UITypes, ComboBoxRW, ACBrDFeReport, JvExMask, JvToolEdit, frxClass, frxDBSet;

type
  TfrmPesqCTE = class(TfrmBaseDBPesquisa)
    GbInformePeriodo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnGerarXML: TBitBtn;
    btnImportar: TBitBtn;
    btnDanfe: TBitBtn;
    ACBrCTe1: TACBrCTe;
    ACBrCTeDACTeRL1: TACBrCTeDACTeRL;
    JvSelectDirectory1: TJvSelectDirectory;
    Label3: TLabel;
    EdForneCodigo: TEdit;
    PesqFornecedor: TSgDbSearchCombo;
    Edt_lista: TEdit;
    Label4: TLabel;
    cdsBuscoECTE_NUMERO: TStringField;
    cdsBuscoECTE_MODELO_NF: TStringField;
    cdsBuscoECTE_SERIE: TStringField;
    cdsBuscoFOR_CODIGO: TStringField;
    cdsBuscoFOR_RAZAO: TStringField;
    cdsBuscoOPE_DESCRI: TStringField;
    cdsBuscoOPE_NATUREZA: TStringField;
    cdsBuscoECTE_VALOR_PREST: TFMTBCDField;
    cdsBuscoECTE_EMISSAO: TSQLTimeStampField;
    cdsBuscoECTE_XML: TBlobField;
    cdsBuscopag_codigo: TStringField;
    PesquisaOper: TComboBoxRw;
    Label5: TLabel;
    cdsBuscoECTE_REGISTRO: TIntegerField;
    cdsBuscoPAG_REGISTRO: TIntegerField;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    cdsBuscoECTE_DATAENTRADA: TSQLTimeStampField;
    PopupMenu1: TPopupMenu;
    teste1: TMenuItem;
    Button1: TButton;
    frxCFOP: TfrxReport;
    frxDBBusco: TfrxDBDataset;
    cdsBuscoECTE_VL_ICMS: TFMTBCDField;
    cdsBuscoECTE_BASEICMS: TFMTBCDField;
    cdsBuscoCCT_DESCRI: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnGerarXMLClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnDanfeClick(Sender: TObject);
    procedure PesqFornecedorSelect(Sender: TObject);
    procedure EdForneCodigoExit(Sender: TObject);
    procedure Edt_listaKeyPress(Sender: TObject; var Key: Char);
    procedure EdForneCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btnLimparClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure frxCFOPGetValue(const VarName: string; var Value: Variant);
    procedure Button1Click(Sender: TObject);
  private
   pesquisou : boolean;
   ordenaCFOP : boolean;
   procedure PadraoPesquisa;
   function CarregarXML(ACBrCTeCte: TACBrCTe): boolean;
  public
   procedure Filtro;
  end;

var
  frmPesqCTE: TfrmPesqCTE;

implementation

uses iniciodb, uteis, rwfunc, ctexmlopcao, CteXML,   animacao ;

{$R *.dfm}

{ TfrmBaseDBPesquisa1 }

procedure TfrmPesqCTE.btnDanfeClick(Sender: TObject);
begin
  inherited;
  if CarregarXML(ACBrCTe1) then
  begin
    ACBrCTe1.Conhecimentos.Imprimir;
    ACBrCTe1.Conhecimentos.Clear;
  end;
end;

procedure TfrmPesqCTE.btnGerarXMLClick(Sender: TObject);
Var clone : TClientDataSet;
dir,chave :string;
i : integer;
xml :TStringStream;
xmlstream : TStream;
begin
  inherited;
  if not pesquisou then
    btnPesquisa.Click;
  //pegar todos os resultados
  cdsBusco.First;
  cdsBusco.FetchOnDemand := False;
  while not (cdsBusco.GetNextPacket = 0) do
    cdsBusco.GetNextPacket;

   clone := TClientDataSet.Create(Self);
    try
      clone.CloneCursor(cdsBusco,False,true);
      clone.FetchOnDemand := false;
      Screen.cursor := crHourGlass;
      clone.First;//  try
      dir := DBInicio.Versao.PATH;
      JvSelectDirectory1.InitialDir:= DIR;

      if JvSelectDirectory1.Execute then
      begin
        fmAnimacao := TfmAnimacao.Create(application);
        fmAnimacao.Show;

        for I := 0 to clone.RecordCount-1 do
        begin

          // ler os primeiras strings
          if (clone.FieldByName('ECTE_XML').AsString <> '') then
          begin
           xml :=  TStringStream.Create;
           xmlstream := clone.CreateBlobStream(clone.FieldByName('ECTE_XML'),bmRead);
           xml.CopyFrom(xmlstream,xmlstream.Size) ;
           try
             if ACBrCTe1.Conhecimentos.LoadFromStream(xml,false) then
             begin
               //chave:= ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
               chave:= ACBrCTe1.Conhecimentos.Items[0].numid;
               if chave <> '' then
               begin
                  application.ProcessMessages;
                  fmAnimacao.Panel1.Caption := 'Conhecimento importados ' + IntToStr(i)+ ' de '+ IntToStr(clone.RecordCount);
                  ACBrCTe1.Conhecimentos.GravarXML(JvSelectDirectory1.Directory+'\'+chave+'-CTe.xml');
                  ACBrCTe1.Conhecimentos.Clear;
               end;
             end;
           finally
             FreeAndNil(xml);
             FreeAndNil(xmlstream);

           end;
          end;

          clone.next;
        end;
        MessageDlg('XML das notas exportado com sucesso', mtInformation, [mbOk], 0);
      End;

    finally
      FreeAndNil(clone);
      Screen.cursor := crDefault;
      if assigned(fmAnimacao) then
       fmAnimacao.Close;
    end;
end;

procedure TfrmPesqCTE.btnImportarClick(Sender: TObject);
var scaminho : string;
begin
  inherited;
  frmCtexmlopcao := TfrmCtexmlopcao.Create(Application);
  try
    frmCtexmlopcao.ShowModal;
    if frmCtexmlopcao.resultado = mrok then
       scaminho := frmCtexmlopcao.scaminho;
  finally
   FreeAndNil(frmctexmlopcao);
  end;
  if scaminho <> '' then
  begin
    if not assigned(frmCte) then
      frmCte := TfrmCte.Create(application);
    try
      frmcte.CarregaXML(scaminho);
      frmcte.ShowModal;
    finally
      FreeAndNil(frmcte);
    end;
  end;
  btnPesquisa.Click;

end;

procedure TfrmPesqCTE.btnLimparClick(Sender: TObject);
begin
  inherited;
  PadraoPesquisa;
end;

procedure TfrmPesqCTE.btnNovoClick(Sender: TObject);
var tag: integer;
begin
  tag:=  twincontrol(sender).Tag;
  if tag = 4 then
  begin

     if (MessageDlg('Deseja excluir Cte selecionado ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     begin
       BeginTransaction;
       try

         ExecSql('Delete from ENTCTE where ecte_registro = '+IntToStr(cdsBuscoECTE_REGISTRO.AsInteger));
         if cdsBuscoPAG_REGISTRO.AsInteger > 0  then
            ExecSql('Delete from pag0000 WHERE PAG_REGISTRO = '+IntToStr(cdsBuscoPAG_REGISTRO.AsInteger));
         CommitTransaction;
         btnPesquisa.Click;
       except
       on e:exception do
         begin
           RollBackTransaction;
           raise Exception.Create(e.Message);
         end;
       end;
     end;


  end;

end;

procedure TfrmPesqCTE.Button1Click(Sender: TObject);
begin
  inherited;
  ordenaCFOP := true;
  btnPesquisa.Click;
  ordenaCFOP := false;
  frxCFOP.ShowReport;

end;

function TfrmPesqCTE.CarregarXML(ACBrCTeCte: TACBrCTe): boolean;
var
xml :TStringStream;
xmlstream : TStream;
begin
  ACBrCTeCte.Conhecimentos.Clear;
  if cdsBusco.IsEmpty then
    result := False;
  if (cdsBusco.FieldByName('ECTE_XML').AsString <> '') then
  begin
     xml :=  TStringStream.Create;
     xmlstream := cdsBusco.CreateBlobStream(cdsBusco.FieldByName('ECTE_XML'),bmRead);
     xml.CopyFrom(xmlstream,xmlstream.Size) ;
     try
        result:= ACBrCTeCte.Conhecimentos.LoadFromStream(xml,TRUE);
     finally
       FreeAndNil(xml);
       FreeAndNil(xmlstream);
     end;
  end;

end;

procedure TfrmPesqCTE.DBGridDblClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmCte) then
    frmCte := TfrmCte.Create(application);
    try
      CarregarXML(frmcte.ACBrCTe1) ;
      frmcte.CarregaXML('');
      frmCte.Status := stAlterando;
      frmcte.ShowModal;
    finally
      FreeAndNil(frmCte);
      btnPesquisa.Click;
    end;
end;

procedure TfrmPesqCTE.EdForneCodigoExit(Sender: TObject);
begin
  inherited;
  EdForneCodigo.Text:=StrZero(EdForneCodigo.Text,4);
  if EdForneCodigo.Text<>'0000' then
  begin
      PesqFornecedor.idRetorno:=EdForneCodigo.Text;
      if PesqFornecedor.idRetorno='' then
         GeraException('Fornecedor não localizado com o código informado');

  end
  Else
  begin
      EdForneCodigo.clear;
      PesqFornecedor.Clear;
  end;
  btnPesquisa.Click;
end;

procedure TfrmPesqCTE.EdForneCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if (Key = #13) and (EdForneCodigo.Text<>'00000' )  then
 begin
    PesqFornecedor.idRetorno:=EdForneCodigo.Text;
      if PesqFornecedor.idRetorno='' then
         GeraException('Fornecedor não localizado com o código informado');
 end;
end;

procedure TfrmPesqCTE.Edt_listaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) and  (Edt_lista.Text <> '') then
   btnPesquisa.Click;

end;

procedure TfrmPesqCTE.Filtro;
Var
  query : string;
begin
 with qBusco do
 begin
  query:= 'SELECT ECTE_REGISTRO, ECTE_NUMERO,ECTE_EMISSAO, ECTE_DATAENTRADA, ECTE_MODELO_NF,ECTE_SERIE, ECTE_VL_ICMS, ECTE_BASEICMS, f.FOR_CODIGO, f.FOR_RAZAO, op.OPE_DESCRI, '+
       ' op.OPE_NATUREZA,ECTE_VALOR_PREST, ECTE_XML, pg.pag_codigo,C.PAG_registro, CT.CCT_DESCRI   FROM ENTCTE c LEFT JOIN FOR0000 f ON (f.FOR_CODIGO = c.for_codigo)'+
       ' LEFT JOIN OPE0000 op ON (op.OPE_CODIGO = c.ope_codigo)'+
       ' LEFT JOIN pag0000 PG ON (PG.PAG_registro = C.PAG_registro) LEFT JOIN CCT_0000 CT ON (CT.CCT_CODIGO = C.CCT_CODIGO)' ;
  sql.Clear;
  qBusco.sql.Add(query) ;
  SqlAdd('c.emp_codigo='+ QuotedStr( DBInicio.Empresa.EMP_CODIGO ));
  if Edt_lista.Text = '' then
  begin
    if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
         SqlAdd (' ECTE_EMISSAO  between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date) )
    else if  (RxDataInicial.Date > 0)  then
       SqlAdd ('  ECTE_EMISSAO  >= ' + DateToSQL(RxDataInicial.Date))
    else if RxDataFinal.Date > 0 then
        SqlAdd (' ECTE_EMISSAO <= ' + DateToSQL(RxDataFinal.Date));

    //if not EmptyDate(RxDataInicial.Date) then
  //   SqlAdd(' ECTE_EMISSAO >= '+DateToSql( RxDataInicial.Date ) );
  //  if not EmptyDate(RxDataFinal.Date) then
  //   SqlAdd(iif(not EmptyDate(RxDataInicial.Date),' and ' ,'')+  ' ECTE_EMISSAO <= '+DateToSql( RxDataFinal.Date));

    if PesqFornecedor.idRetorno <> '' then
        SqlAdd('c.for_codigo =' + QuotedStr(PesqFornecedor.idRetorno));
    if PesquisaOper.idRetorno <> '' then
       SqlAdd(' c.ope_codigo = '+  QuotedStr(PesquisaOper.idRetorno));

  end
  else
     if IsNumeric(Edt_lista.Text) then
     SqlAdd(' ECTE_NUMERO like '+QuotedStr('%'+Edt_lista.Text+'%'));
     if ordenaCFOP = true then
      qBusco.sql.Add(' ORDER BY OPE_NATUREZA');

   pesquisou := True;
 end;
end;

procedure TfrmPesqCTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmPesqCTE.FormCreate(Sender: TObject);
begin
  inherited;
  self.ProcedureFiltro:=Filtro;
  Self.CampoID:='ECTE_REGISTRO';
  self.Constraints.MinHeight:= 608;;
  self.Constraints.MinWidth:=1167;
  self.Constraints.MaxHeight:= 0;
  self.width:=1167;
  self.height:=608;
  PadraoPesquisa;
  btnPesquisa.Click;
end;

procedure TfrmPesqCTE.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqCTE := nil;
end;

procedure TfrmPesqCTE.frxCFOPGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName = 'EMPRESA') then
      Value := Trim(dbInicio.Empresa.RAZAO);
end;

procedure TfrmPesqCTE.PadraoPesquisa;
begin
  RxDataInicial.Date := Date-45;
  RxDataFinal.Date := Date;
  PesqFornecedor.idRetorno := '';
  Edt_lista.Text := '';
end;

procedure TfrmPesqCTE.PesqFornecedorSelect(Sender: TObject);
begin
  inherited;
  if PesqFornecedor.IdRetorno <> '' then
    EdForneCodigo.Text := PesqFornecedor.IdRetorno
  else
  begin
   PesqFornecedor.Clear;
   EdForneCodigo.Clear;
  end;
end;

end.
