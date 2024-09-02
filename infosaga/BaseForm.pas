unit BaseForm;

interface

uses
     Windows, Messages, SysUtils, Variants, System.Win.ComObj,Vcl.ComCtrls,
     Classes, Graphics, Controls, Forms, Dialogs, Data.Db,
     ErrorForm, StdCtrls, Grids, DBGrids, Mask, IniFiles,
     DBCtrls, JvExMask, SqlExpr, ExtCtrls, JvDBGrid,Datasnap.DBClient,
     ACBrBase, ACBrCalculadora, TypInfo, JvToolEdit, JvDBControls, rxToolEdit,
     rxCurrEdit, ACBrEnterTab, Vcl.Menus, system.UITypes;

type

    tAccessGrid = Class( tdbGrid ) ; // AcessoSalvaEstadoGrida propriedades protegidas

    OnEventObject = class
      f_nme : string;
      f_ent : TNotifyEvent ;
      f_ext : TNotifyEvent ;
      f_drw : TDrawColumnCellEvent;
    private

    Public
      constructor create( Cmp: tComponent ) ;
      Property Nome: string read f_nme write f_nme;
      Property OnEnter: tNotifyEvent Read f_ent Write f_ent;
      Property OnExit: tNotifyEvent Read f_ext Write f_ext;
      Property OnDrawColumnCell: TDrawColumnCellEvent Read f_drw Write f_drw;

    end;

    tCntrl = Class(tWinControl);

  TfrmBase = class(TForm)
    coCalcula: TACBrCalculadora;
    ACBrEnterTab1: TACBrEnterTab;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridTitleClickDefault(Column: TColumn);
    procedure FormDestroy(Sender: TObject);
    procedure TimerClose(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    fSalvaEstadoGrid:Boolean;
    fCanInherit: boolean;
    fReadOnly: Boolean;
    OnEventList: tList;
    fLastActiveControl: tWinControl;
    vlTran: TTransactionDesc;
    vlDbConn: tSqlConnection;
    vlIsManutencao: Boolean;
    vlCreate: boolean;
    vlCaption: TCaption;
    vlBuscaI: Boolean;
    vProcEnterOld: TMessageEvent;
    fIDRetorno: string;

    pSalvaEstadoPesquisa: Boolean;
    pLeEstadoPesquisa:boolean;
    fReiniciaForm : Boolean;
    fZebrarGrade : boolean;
    pTimer: tTimer ;

    procedure InicializaComponentes;
    procedure DefineEnterExit(tEd: tCntrl);
    procedure DefaultOnEnter(sender: tObject);
    procedure DefaultOnExit(Sender: TObject);
    function GetEnterEvnt(const nome: string): tNotifyEvent;
    function GetExitEvnt(const nome: string): tNotifyEvent;
    function GetMHeight: integer;
    function GetMWidth: integer;
    procedure SetMHeight(const Value: integer);
    procedure SetMWifth(const Value: integer);
    procedure OnEventListDestroy;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DefineOnDrawColumnCell(pGrid: tDbGrid);
    function GetOnDrawColumnCellEvnt(const nome: string): TDrawColumnCellEvent;
    procedure SetSqlConnection(const Value: tSqlConnection);
    procedure NegritoColunasGrid(grd: tDbGrid);
    procedure SalvaInfoComponentes;


  public
    ErrHandler : tFrmError;
    FCancelaProcessamento: boolean;
    procedure SetTamanhoMaximo(pHeight, pwidth: integer);
    procedure SetTamanhoMinimo(pHeight, pwidth: integer);
    procedure SetReadOnly(const AValue: Boolean);
    procedure SetReadOnlyB(const AValue: Boolean; prnt: tWinControl);
    procedure SetColorEditReadOnly(obj:tComponent);
    procedure ClearErrors;
    Procedure AddErrWarning(const msg:string);
    Procedure AddErrValidation(const msg:string);
    Procedure CheckErrors;

    function BuscaUmDadoSql(const sql: string; const DefaultValue:Variant): variant;
    function BuscaUmDadoSqlAsInteger(const sql: string): integer;
    function BuscaUmDadoSqlAsString(const sql: string): String;
    function BuscaUmDadoSqlAsDateTime(const sql: string): tDateTime;
    function BuscaUmDadoSqlAsCurrency(const sql: string): Currency ;
    function BuscaUmDadoSqlAsFloat(const sql: string): Extended;
    procedure ExecSql(const pSql:string; Transacional: boolean = True);

    procedure BeginTransaction;
    procedure CommitRetainTransaction;
    procedure CommitTransaction;
    procedure RollBackTransaction;
    procedure RollBack;
    procedure Commit;

    Property SqlConnection: tSqlConnection Read vlDbConn Write SetSqlConnection;
    Property IsManutencao: boolean read vlIsManutencao write vlIsManutencao;
    Function GetNextSequence(const pNomeGenerator:string):integer;
    property IDRetorno:string read fIDRetorno write fIDRetorno;
    procedure ExportarExcel( dbGrid: tDbGrid; Sender: TObject);
    //function Locate(pCds: tDataset; pCampo, pConteudo: string): boolean;
    procedure CarregaEstadoPesquisa(aPanel:tComponent); overload ;
    procedure SalvaEstadoPesquisaProc(aPanel:tComponent) ; overload;
    Function CarregaEstadoGrid(aGrid: tDbGrid): Boolean;
    procedure SalvaEstadoGrid(aGrid: tDbGrid);
    function RetIdxUltimaColVisivel(DBGrid: TDBGrid): integer;
  Published
    property CanInherit: boolean read fCanInherit write fCanInherit;
    Property LastActiveControl: tWinControl Read fLastActiveControl Write fLastActiveControl;
    Property MinHeight: integer read GetMHeight write SetMHeight;
    Property MinWidth: integer read GetMWidth write SetMWifth;
    Property ReadOnly: Boolean Read fReadOnly Write SetReadOnly;
    Property aCaption: tCaption Read vlCaption Write vlCaption;
    Property BuscaInteligente: Boolean read vlBuscaI Write vlBuscaI;
    Property SalvaStatusGrid:boolean read fSalvaEstadoGrid write fSalvaEstadoGrid;
    Property LeEstadoPesquisa: Boolean Read pLeEstadoPesquisa Write pLeEstadoPesquisa;
    Property SalvaEstadoPesquisa:Boolean Read pSalvaEstadoPesquisa Write pSalvaEstadoPesquisa;
    property ZebrarGrade: boolean read fZebrarGrade write fZebrarGrade;
  end;


var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

uses Uteis, InicioDB, SgDbSeachComboUnit;

{ OnEventObject }

constructor OnEventObject.create(Cmp: tComponent);
var cntrl: tCntrl;
begin
     nome := cmp.Name;
     cntrl := tCntrl(cmp);
     if assigned ( cntrl.onEnter ) then
        OnEnter := cntrl.onEnter;
     if assigned ( cntrl.onExit ) then
        onExit := cntrl.onExit;

end;

procedure TfrmBase.FormActivate(Sender: TObject);
begin
     if assigned(pTimer)  then
        ptimer.Enabled:=True;
end;

procedure TfrmBase.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ini:TIniFile;
  nome: string;
begin
     SalvaInfoComponentes;
     if self.FindComponent('PN1')<>Nil then
        SalvaEstadoPesquisaProc(self.FindComponent('PN1'));

     //
     OnEventListDestroy;
     //
     if assigned (ErrHandler) then
     begin
          ErrHandler.Close;
          FreeAndNil(ErrHandler);
     end;
     //
     Application.OnMessage:=vProcEnterOld;
  TestaPasta ( dbInicio.SistemaLocal+'settings' );
  nome:= dbInicio.SistemaLocal+'settings\' + self.name + DBInicio.Usuario.CODIGO + 'form.pos';
  ini:=TIniFile.Create(nome);
  ini.WriteInteger('FORM', 'Top', Self.Top);
  ini.WriteInteger('FORM', 'Left', Self.Left);
  ini.WriteInteger('FORM', 'Width', Self.Width);
  ini.WriteInteger('FORM', 'Height', Self.Height);
  ini.Free;
end;

procedure TfrmBase.OnEventListDestroy;
var mx, x: integer;
    it : OnEventObject ;
begin
     if assigned ( OnEventList ) then
     begin
          mx := OnEventList.Count;
          for x := 0 to mx-1 do
          begin
               it := OnEventObject ( OnEventList[x] ) ;
               FreeAndnil( it );
               OnEventList[X]:=Nil;
          end;
          OnEventList.Clear;
          FreeAndNil(OnEventList);
     end;
end;

procedure TfrmBase.FormCreate(Sender: TObject);
begin

     inherited;

     TrimAppMemorySize;
     fSalvaEstadoGrid:=True;
     pSalvaEstadoPesquisa:=False;
     pLeEstadoPesquisa:=False;
     fZebrarGrade:= True;
     IDRetorno:='';
     vlCreate := True;
     vltran.TransactionId:=NumeroAleatorio;
     vltran.IsolationLevel:=xilREADCOMMITTED;
     self.KeyPreview:=true;
     //InicializaComponentes; <<--- Passou para onshow
     aCaption := self.caption ;
     // self.Position:=poDesktopCenter;
     errHandler := tFrmError.Create(Self);
     self.DoubleBuffered:=true;
     self.PixelsPerInch:=96;
     scaled := true;
     scaleBy(self.PixelsPerInch, screen.PixelsPerInch);
     if WindowState = wsMaximized then
     begin
        self.Constraints.MaxHeight:=0;
        self.Constraints.MaxWidth:=0;
     end
     else
     begin
       self.Constraints.MaxHeight:=SCREEN.WorkAreaHeight;
       self.Constraints.MaxWidth:=SCREEN.WorkAreaWidth;
     end;
     //self.WindowState:=wsMaximized;

     vProcEnterOld:= Application.OnMessage;
     Application.OnMessage := nil;
     //AcAPTION:='Nota Fiscal Eletrônica';


end;

procedure TfrmBase.CarregaEstadoPesquisa(aPanel:tComponent);
var y: integer;
    pObject: tComponent;
    ini: tIniFile ;
    Sect: String ;
begin
     if pLeEstadoPesquisa then
     begin
          if fileexists(dbInicio.SistemaLocal+'settings\Pesquisas.filtrosUsu'+DBInicio.Usuario.CODIGO+'.psq')  then
          begin
               Sect := Self.Name+'.'+aPanel.Name;
               ini := tIniFile.Create ( dbInicio.SistemaLocal+'settings\Pesquisas.filtrosUsu'+DBInicio.Usuario.CODIGO+'.psq' );
               try
                  for y := 0 to ( tWinControl(aPanel).ControlCount - 1) do
                  begin
                       pObject := tWinControl(aPanel).Controls[y];
                       if pObject.InheritsFrom(tPanel) or pObject.InheritsFrom(tGroupBox) or pObject.InheritsFrom(TCustomTabControl) OR pObject.InheritsFrom(TTabSheet) then
                          CarregaEstadoPesquisa( pObject )
                       else
                       if pObject.InheritsFrom(tPanel) or pObject.InheritsFrom(TSgDbSearchCombo) then
                          TSgDbSearchCombo(pObject).idretorno:=ini.ReadString(Sect,pObject.name,TSgDbSearchCombo(pObject).idretorno)
                       Else
                       if pObject.InheritsFrom( tCustomEdit ) then
                          tCustomEdit(pObject).Text:=ini.ReadString(Sect,pObject.name,tCustomEdit(pObject).Text)
                       Else
                       if pObject.InheritsFrom( TCustomComboBox ) then
                          TCustomComboBox(pObject).ItemIndex:=ini.ReadInteger(Sect,pObject.name,TCustomComboBox(pObject).ItemIndex)
                       Else
                       if pObject.InheritsFrom( TCheckBox ) then
                          TCheckBox(pObject).Checked:=(ini.ReadInteger(Sect,pObject.name,iif(TCheckBox(pObject).Checked,1,0))=1)
                       else
                       if pObject.InheritsFrom( TRadioButton ) then
                          TRadioButton(pObject).Checked:=(ini.ReadInteger(Sect,pObject.name,iif(TRadioButton(pObject).Checked,1,0))=1);

                  end;
               Finally
                      FreeAndNil(ini);
               end;
          end;
     end;
end;

Function TfrmBase.CarregaEstadoGrid(aGrid: tDbGrid): Boolean;
var fname: String ;
    ca, cb: integer;
begin
     Result := True ;
     if fSalvaEstadoGrid  then
     begin
          TestaPasta ( dbInicio.SistemaLocal+'settings' );
          fName := Self.Name+'.'+aGrid.Name+ DBInicio.Usuario.CODIGO +'.grid';
          if FileExists( dbInicio.SistemaLocal+'settings\'+fname ) then
          begin
               ca := aGrid.Columns.Count;
               aGrid.Columns.LoadFromFile( dbInicio.SistemaLocal+'settings\'+fname );
               cb := aGrid.Columns.Count;
               if ca <> cb then // testa alterações no número de colunas do grid
               begin
                    Result := False;
                    fSalvaEstadoGrid:=False;
                    DeleteFile( dbInicio.SistemaLocal+'settings\'+fName ); //Remove arquivo com configurações inválidas
               end;
          end;


     end;
end;

procedure TfrmBase.SalvaEstadoGrid(aGrid: tDbGrid);
var fname: String ;
begin
     if fSalvaEstadoGrid then
     begin
        TestaPasta ( dbInicio.SistemaLocal+'settings' );
        fName := Self.Name+'.'+aGrid.Name+dbinicio.Usuario.CODIGO+ '.grid';
        aGrid.Columns.SaveToFile( dbInicio.SistemaLocal+'settings\'+fname );
     end;
end;


procedure TfrmBase.SalvaEstadoPesquisaProc(aPanel:tComponent);
var  y: integer;
    pObject: tComponent;
    ini: tIniFile ;
    Sect: String ;
begin
     if pSalvaEstadoPesquisa then
     begin
           TestaPasta ( dbInicio.SistemaLocal+'settings' );
           Sect := Self.Name+'.'+aPanel.Name;
           ini := tIniFile.Create ( dbInicio.SistemaLocal+'settings\Pesquisas.filtrosUsu'+DBInicio.Usuario.CODIGO+'.psq' );
           try
              for y := 0 to (tWinControl(aPanel).ControlCount - 1) do
              begin
                   pObject := tWinControl(aPanel).Controls[y];
                   if pObject.InheritsFrom(tPanel) or pObject.InheritsFrom(tGroupBox) or pObject.InheritsFrom(TCustomTabControl) OR pObject.InheritsFrom(TTabSheet) then
                      SalvaEstadoPesquisaProc( pObject )
                   else
                   if pObject.InheritsFrom(tPanel) or pObject.InheritsFrom(TSgDbSearchCombo) then
                      ini.WriteString(Sect,pObject.name,TSgDbSearchCombo(pObject).idretorno)
                   Else
                   if pObject.InheritsFrom( tCustomEdit ) then
                      ini.WriteString(Sect,pObject.name,tCustomEdit(pObject).Text)
                   Else
                   if pObject.InheritsFrom( TCustomComboBox ) then
                      ini.WriteInteger(Sect,pObject.name,TCustomComboBox(pObject).ItemIndex)
                   Else
                   if pObject.InheritsFrom( TCheckBox ) then
                      ini.WriteInteger(Sect,pObject.name,iif(TCheckBox(pObject).Checked,1,0))
                   else
                   if pObject.InheritsFrom(TRadioButton) then
                      ini.WriteInteger(Sect,pObject.name,iif(TRadioButton(pObject).Checked,1,0));
              end;
           Finally
                  FreeAndNil(ini);
           end;
     end;
end;

procedure TfrmBase.FormDestroy(Sender: TObject);
begin
  inherited;
//  TrimAppMemorySize;

end;

procedure TfrmBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var cname: string;
begin
  inherited;
  // processar keydown dos componentes (primeiro)
  if assigned(Self.ActiveControl) then
  begin
       cname:= UpperCase(Self.ActiveControl.ClassName);
       if (cname='TSGDBSEARCHCOMBO') or (cname='TSGDBLOOKUPCOMBO') or (cname='TJVDBGRID') then
       begin
            tCntrl(Self.ActiveControl).KeyDown( key, Shift );
            if (key = VK_UP) or (key = VK_DOWN) or (key = VK_LEFT) or (key = VK_RIGHT) or (key = VK_PRIOR) or (key = VK_NEXT) then
               key := 0;
       end;
  end;

  // processar onkeydown do formulario
  if not (GetKeyState( VK_CONTROL ) and 128 > 0) then // control liberado
  begin
        if (Key=VK_ESCAPE) and (FCancelaProcessamento = False) then
        begin
            self.close;
            key := 0;
        end;
  end
  Else
  Begin
       if key = VK_F5 then
       begin
             coCalcula.Execute;
             key := 0;
       end
  End;


end;

procedure TfrmBase.SetTamanhoMinimo(pHeight,pwidth:integer);
begin
     self.constraints.minheight:=pHeight;
     self.constraints.minwidth:=pWidth;
     self.height:=pheight;
     self.width:=pwidth;
end;

procedure TfrmBase.SetTamanhoMaximo(pHeight,pwidth:integer);
begin
     self.constraints.maxheight:=pHeight;
     self.constraints.maxwidth:=pWidth;
     //SetTamanhoMinimo(pHeight, pwidth);
end;

procedure TfrmBase.TimerClose(Sender: TObject);
begin
     pTimer.Enabled := False;
     Application.ProcessMessages;
     Uteis.Aviso( self.caption +#13+#13+
                  'Este formulário será fechado pois suas configurações foram atualizadas e precisam ser relidas.'+#13+
                  'Gentileza abri-lo novamente!' );
     self.Close;
end;

procedure TfrmBase.FormShow(Sender: TObject);
var
 ini:TIniFile;
 nome: string;
begin
   if vlCreate then
      InicializaComponentes;
   Self.Caption:= aCaption;

   if fReiniciaForm then
   begin
        pTimer := tTimer.Create(self); // Timer para fechar o form (reler arquivo grid salvo)
        pTimer.Enabled := False;
        pTimer.OnTimer := TimerClose;
        pTimer.Interval := 1000;
   end;
  nome:= dbInicio.SistemaLocal+'settings\' + self.name + DBInicio.Usuario.CODIGO + 'form.pos';
  ini:=TiniFile.Create(nome);
  Self.Top:=ini.ReadInteger('FORM', 'Top', 0);
  Self.Left:=ini.ReadInteger('FORM', 'Left', 0);
  Self.Width:=ini.ReadInteger('FORM', 'Width', Self.Width);
  Self.Height:=ini.ReadInteger('FORM', 'Height', Self.Height);
  ini.Free;
  FCancelaProcessamento := True;
end;

procedure TfrmBase.InicializaComponentes;
var qtd, x: integer;
begin
   qtd := self.ComponentCount;
   fReiniciaForm := False;
//   if DBInicio.Versao.Issues <> '' then
//      exit;
   for x := 0 to qtd - 1 do
   begin
        // -> Cor do componente readonly
        //      if ReadOnly then
        //           vlEdit.Color := $00E2E2E2
        //        Else
        //           vlEdit.Color := clWindow;

        {if self.Components[x].InheritsFrom(TCustomMemo) then
        begin
             TCustomMemo(self.Components[x]).Hint := 'Para Inserir Nova Linha Neste Campo, Utilize as Teclas [CTRL]+[ENTER]'  ;
             TCustomMemo(self.Components[x]).ShowHint:=True ;
        end;}



        if self.Components[x].InheritsFrom(TJvDBCalcEdit) then
        BEGIN
             TJvDBCalcEdit(self.Components[x]).DecimalPlaces:=2;
             TJvDBCalcEdit(self.Components[x]).DecimalPlacesAlwaysShown:=True;
             if (TJvDBCalcEdit(self.Components[x]).DisplayFormat=',0.##') then // Default
                TJvDBCalcEdit(self.Components[x]).DisplayFormat:='###,###,##0.00';
             DefineEnterExit( tCntrl(self.Components[x]) ); // definir eventos onEnter / onExit
             SetColorEditReadOnly(self.Components[x]);
        end
        else
        if self.Components[x].InheritsFrom(tCustomEdit) then
        begin

           DefineEnterExit( tCntrl(self.Components[x]) ); // definir eventos onEnter / onExit
           SetColorEditReadOnly(self.Components[x]);

           tCustomEdit(self.Components[x]).StyleElements := [seFont, {seClient,} seBorder];
           tEdit(self.Components[x]).CharCase := ecUpperCase;

        end
        Else
        if self.Components[x].InheritsFrom(TCustomComboBox) then
        begin
           DefineEnterExit( tCntrl(self.Components[x]) ); // definir eventos onEnter / onExit
           SetColorEditReadOnly(self.Components[x]);
        end
        Else
        if self.Components[x].InheritsFrom(tCustomGrid) then
        BEGIN

             tDbGrid(self.Components[x]).ShowHint := (Trim(tDbGrid(self.Components[x]).Hint)<>'');

             //DefineEnterExit( tCntrl(self.Components[x]) ); // definir eventos onEnter / onExit
             if Not Assigned( tDbGrid( self.Components[x] ).OnTitleClick ) then
             begin
                  tDbGrid( self.Components[x] ).OnTitleClick := GridTitleClickDefault;
                  tDbGrid( self.Components[x] ).Options:= tDbGrid( self.Components[x] ).Options + [dgTitleClick, dgColumnResize];
                  tDbGrid( self.Components[x] ).Options:= tDbGrid( self.Components[x] ).Options - [dgRowSelect];
             end;
             if not delphiaberto  then
                DefineOnDrawColumnCell( tDbGrid(self.Components[x]) ); // definir eventos onDrawColumnCell / onEnter / onExit

             tDbGrid(self.Components[x]).BorderStyle:=bsNone;

             if Not CarregaEstadoGrid( tDbGrid( self.Components[x] ) ) then
                fReiniciaForm := True ;
             //NegritoColunasGrid ( tDbGrid( self.Components[x] ) );

             {tDbGrid(self.Components[x]).OnDrawColumnCellOld:= tDbGrid(self.Components[x]).OnDrawColumnCell;
             tDbGrid(self.Components[x]).OnDrawColumnCell:=DBGridDrawColumnCell;}
        end
        Else
        if self.Components[x].InheritsFrom(tField) then
           with tField(self.Components[x]) do
           begin
                if not dataset.Active then
                   if fieldkind=fkCalculated then
                      fieldkind:=fkInternalCalc;
           end;

   end;

   vlCreate:=False;
end;

procedure TfrmBase.SalvaInfoComponentes;
var qtd, x: integer;
begin
   qtd := self.ComponentCount;
   for x := 0 to qtd - 1 do
   begin
        if self.Components[x].InheritsFrom(tCustomGrid) then
        BEGIN
             SalvaEstadoGrid( tDbGrid( self.Components[x] ) );
        end;
   end;
end;

Procedure TfrmBase.NegritoColunasGrid( grd: tDbGrid );
var x, y: integer ;
begin
     x := grd.columns.count-1 ;
     for y := 0 to  X do
             grd.columns[y].title.font.style:=[];
end;


{Function TfrmBase.Locate( pCds:tDataset; pCampo, pConteudo: string ): boolean;
var it: tBookMark;
begin
     pCds.DisableControls;
     it := pCds.GetBookMark;
     result := False;
     try
        pCds.first;
        while not (result or pCds.eof) do
        begin
             result := pCds.FieldByName( pCampo ).asstring = pConteudo;
             pCds.Next;
        end;
        if not result then
           if it<>nil then
              if pCds.BookMarkValid(it) then
                 pCds.GotoBookMark(it);
     finally
            pCds.EnableControls;
     end;

end;}

procedure TfrmBase.GridTitleClickDefault(Column: TColumn);
{var fld, lQry, lQryB: string;
    dSet: tClientDataSet ;
begin
    inherited;
    if Column.Field.FieldKind=FkData then
    begin
        fld :=  Column.Field.FieldName;
        dSet := tClientDataSet( Column.Field.DataSet );
        if TClientDataSet(Column.Field.DataSet).IndexFieldNames=fld then
        begin

             dSet.DisableControls;
             dSet.Close;
             dSet.IndexFieldNames:='';

             lQryB := tSqlQuery(tDataSetProvider( Self.FindComponent ( dSet.ProviderName )).DataSet).Sql.Text;
             lQry := GetTextBefore( lQryB , 'order by' );
             if lQry='' then
                lQry := lQryB ;
             lQry := lQry + ' Order by '+fld+' DESC';
             tSqlQuery(tDataSetProvider( Self.FindComponent ( dSet.ProviderName )).dataSet).Sql.Text := lQry ;
             if delphiaberto then
                Uteis.CopyToClipBoard( lQry );

             TClientDataSet(dSet).Open;
             TClientDataSet(dSet).EnableControls;
        end
        Else
            TClientDataSet(dSet).IndexFieldNames:=fld;
    end
    Else
    if TClientDataSet(Column.Field.DataSet).IndexFieldNames<>fld then
       TClientDataSet(dSet).IndexFieldNames:=fld
    Else
        GeraException('Esta Coluna Não Prmite Ordenação Descrescente!');}

var indice: string;
    existe: boolean;
    clientdataset_idx: tclientdataset;
begin
     clientdataset_idx := TClientDataset(Column.Grid.DataSource.DataSet);

     if clientdataset_idx.IndexFieldNames = Column.FieldName then
     begin
          indice := AnsiUpperCase(Column.FieldName+'_INV');

          try
             clientdataset_idx.IndexDefs.Find(indice);
             existe := true;
          except
                existe := false;
          end;

          if not existe then
             with clientdataset_idx.IndexDefs.AddIndexDef do
             begin
                  Name := indice;
                  Fields := Column.FieldName;
                  Options := [ixDescending];
             end;
          clientdataset_idx.IndexName := indice;
     end
     else
     if Column.Field.FieldKind<>fkCalculated then
         clientdataset_idx.IndexFieldNames := Column.FieldName
     Else
         GeraException('Coluna Não Permite Ordenação!');
end;

procedure TfrmBase.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Evnt : TDrawColumnCellEvent;
begin
  inherited;
  with tAccessGrid(Sender) do
  begin
    if ZebrarGrade then
    begin

      if not (datalink.DataSet.IsEmpty) then
      begin
          //Zebrar o Grid azul claro/branco
          If odd(DataSource.DataSet.RecNo) then
             Canvas.Brush.Color := $00FFEFDF  // azul claro
          else
             Canvas.Brush.Color:= clWhite;

          if DataLink.ActiveRecord = Row - 1 then
          begin
               Canvas.Brush.Color := clHighlight; // pinta linha selecionada azul
               Canvas.Font.Color := clHighlightText;
          end
          else
          begin
               //Canvas.Brush.Color := clWindow;
               Canvas.Font.Color := clWindowText;
          end;

          if (gdSelected in state) and (not datalink.eof) then
          begin
             Canvas.Font.Color := clWindowText;
             Canvas.Font.Style:=[fsBold];
             Canvas.Brush.Color:= $0080FF80; //destaca lin/col selecionada com verde
          end;
      end
      Else
          Canvas.Brush.Color := $00FFEFDF;  // azul claro

      DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;

      evnt := GetOnDrawColumnCellEvnt( tComponent(sender).name );
      if assigned( Evnt ) then
         Evnt( Sender, Rect, DataCol, Column, State );

  End;
end;

procedure TfrmBase.KeyDown(var Key: Word; Shift: TShiftState);
begin
     inherited;
  {if not (GetKeyState( VK_CONTROL ) and 128 > 0) then // control liberado
  begin
        if key = VK_F5 then
        begin
             coCalcula.Execute;
             key := 0;
        end
        Else
       if (Key=VK_ESCAPE) then
       begin
            self.close;
            key := 0;
       end;
  end;}

end;

procedure TfrmBase.SetReadOnly(const AValue: Boolean);
begin
     SetReadOnlyB( AValue, Self ) ;
end;

procedure TfrmBase.SetReadOnlyB(const AValue: Boolean; prnt: tWinControl);
var
  prop: pPropInfo;
  vWinC:tWinControl;
  vObj:tObject;

  x: Integer;
  CanReadWrite: Boolean;

begin

     for x := 0 to (prnt.ControlCount - 1) do
     begin
          vWinC := tWinControl(prnt.Controls[x]);
          if vWinC.Parent=prnt then
          begin
              if vWinC.InheritsFrom(tPanel) or vWinC.InheritsFrom(tGroupBox) or vWinC.InheritsFrom(TCustomTabControl) OR vWinC.InheritsFrom(TTabSheet) then
                 SetReadOnlyB( AValue, vWinC )
              else
              if not ( vWinC.InheritsFrom(tDataSet) or vWinC.InheritsFrom(tField) ) then
              begin
                   vObj := tObject(vWinC );
                   Prop := GetPropInfo( vObj , 'READONLY');
                   if Prop<>nil then
                   begin
                          CanReadWrite:=True;
                          // Estado de tabstop serve para determinar
                          if GetPropInfo( vObj , 'TABSTOP')<>nil then
                             CanReadWrite:=GetPropValue( vObj , 'TABSTOP');
                          if CanReadWrite then
                             SetPropValue( vObj , 'READONLY', AValue);
                           if GetPropInfo( vObj , 'COLOR')<>nil then
                           begin
                              if vObj.InheritsFrom(tCustomEdit) then
                                 SetColorEditReadOnly(tComponent(vObj));
                           end;
                   END;
              end;
          end;
     end;

     fReadOnly:=AValue;

end;

procedure TfrmBase.SetSqlConnection(const Value: tSqlConnection);
     var qtd, x: integer;
begin
     vlDbConn := Value ;
     qtd := self.ComponentCount;
     for x := 0 to qtd - 1 do
        if self.Components[x].InheritsFrom(tCustomSqlDataSet) then
             tCustomSqlDataSet(self.Components[x]).SQLConnection:=vlDbConn;
end;

procedure TfrmBase.SetColorEditReadOnly(obj:tComponent);
var prop, propr: pPropInfo; // rtti
    vObj:tObject;
    vRo:Boolean;
begin
     vObj := tObject( Obj );
     prop := GetPropInfo( vObj , 'COLOR');
     propr := GetPropInfo( vObj , 'READONLY');
     if (prop<>nil) and (propr<>nil) then
     begin
          vro := getpropvalue( vObj , 'READONLY');
          if vro then
            SetPropValue( vObj , 'COLOR', clReadOnly )
          Else
            SetPropValue( vObj , 'COLOR', clWindow );
     end;
end;

procedure TfrmBase.DefineEnterExit(tEd: tCntrl);
///
   Procedure AddenterList ;
   var obj: OnEventObject;
   begin
        if not assigned(OnEventList) then
           OnEventList:=tList.Create;
        obj := OnEventObject.create( tEd ); // guarda pointer obj (enter)
        OnEventList.Add(obj); // Lista
   end;
///
begin
     if (tEd.TabStop) then
     begin
          if assigned ( tEd.onEnter ) or assigned ( tEd.OnExit ) then
             addenterlist;
          tEd.onEnter:=DefaultOnEnter;
          tEd.onExit:=DefaultOnExit;
     end;
end;

procedure TfrmBase.DefineOnDrawColumnCell(pGrid: tDbGrid);
///
   Procedure AddenterList ;
   var obj: OnEventObject;
   begin
        if not assigned(OnEventList) then
           OnEventList:=tList.Create;
        obj := OnEventObject.create( pGrid ); // guarda pointer obj (enter)
        obj.OnDrawColumnCell:=pGrid.OnDrawColumnCell;
        OnEventList.Add(obj); // Lista
   end;
///
begin
     {if delphiaberto then
        pGrid.OnDrawColumnCell:=Nil
     else}
     begin
         if assigned ( pGrid.OnDrawColumnCell )then
            addenterlist;
         {if delphiaberto then
            pGrid.OnDrawColumnCell:=Nil
         Else}
            pGrid.OnDrawColumnCell:=DBGridDrawColumnCell;
         pGrid.onEnter:=DefaultOnEnter;
         pGrid.onExit:=DefaultOnExit;
     end;
end;


procedure TfrmBase.DefaultOnEnter(sender: tObject);
var Evnt : tNotifyEvent;
begin
     if not (sender.InheritsFrom(tCustomGrid)) then // não muda cor grid
        tCntrl(sender).Color:=$00DFFFFE;
     if sender.InheritsFrom(tCustomEdit) then
        tCustomEdit(sender).SelectAll;
     Evnt := GetEnterEvnt( tComponent(sender).name );
     if assigned( Evnt ) then
        Evnt( sender ) ;
end;

procedure TfrmBase.DefaultOnExit(Sender: TObject);
var Evnt : tNotifyEvent;

begin
     try
        tCntrl(sender).Color:=clWhite;
        Evnt := GetExitEvnt( tComponent(sender).name );
        {Consistir datas validas}
        {if (sender.ClassType=tJvDBDateEdit) or (sender.ClassType=tJvDateEdit) then
        begin
             cargo := ExtrairNumeros (tJvDateEdit( sender ).Text);
             if cargo<>'' then // data não esta vazia
             begin
                  if Not HasTextaValidDate( cargo ) then
                     GeraException ('Data Inválida!');
             end;
        end;}
        /////////////////////////////
        if assigned( Evnt ) then
           Evnt( sender ) ;
        // self.LastActiveControl:=tWinControl(sender);
     except
           self.ActiveControl:=tWinControl(sender);
           raise;
     end;
end;

function TfrmBase.GetEnterEvnt(const nome: string): tNotifyEvent;
var mx,x: integer;
    it : OnEventObject ;
begin
     mx := 0;
     result:=Nil;
     if assigned ( OnEventList ) then
        mx := OnEventList.Count;
     if mx <> 0 then
     begin
          for x := 0 to mx - 1 do
          begin
               it := OnEventObject(OnEventList[x]); // onchangeobject ( pointer )
               if it.Nome = nome then
                  if assigned ( it.onEnter ) then
                     result := it.OnEnter;
          end;
     end;
end;

function TfrmBase.GetOnDrawColumnCellEvnt(const nome: string): TDrawColumnCellEvent;
var mx,x: integer;
    it : OnEventObject ;
begin
     mx := 0;
     result:=Nil;
     if assigned ( OnEventList ) then
        mx := OnEventList.Count;
     if mx <> 0 then
     begin
          for x := 0 to mx - 1 do
          begin
               it := OnEventObject(OnEventList[x]); // onchangeobject ( pointer )
               if it.Nome = nome then
                  if assigned ( it.onDrawColumnCell ) then
                     result := it.onDrawColumnCell;
          end;
     end;
end;


function TfrmBase.GetExitEvnt(const nome: string): tNotifyEvent;
var mx,x: integer;
    it : OnEventObject ;
begin
     mx := 0;
     result:=Nil;
     if assigned ( OnEventList ) then
        mx := OnEventList.Count;
     if mx <> 0 then
     begin
          for x := 0 to mx - 1 do
          begin
               it := OnEventObject(OnEventList[x]); // onchangeobject ( pointer )
               if it.Nome = nome then
                  if assigned ( it.onExit ) then
                     result := it.OnExit;
          end;
     end;
end;

procedure TfrmBase.ClearErrors;
begin
    errHandler.ClearErrors;
end;

procedure TfrmBase.AddErrWarning(const msg: string);
begin
     ErrHandler.AddErrWarning(msg);
end;

procedure TfrmBase.AddErrValidation(const msg: string);
begin
     ErrHandler.AddErrValidation(msg);
end;

procedure TfrmBase.CheckErrors;
begin
     try
        ErrHandler.CheckErrors;
     except
           raise;
     end;
end;


function TfrmBase.GetMHeight: integer;
begin
     result := self.constraints.minheight;
end;

function TfrmBase.GetMWidth: integer;
begin
     result := self.constraints.minwidth;
end;

procedure TfrmBase.SetMHeight(const Value: integer);
begin
     self.constraints.minheight := Value;
     self.height:=Value;
end;

procedure TfrmBase.SetMWifth(Const Value: integer);
begin
     self.constraints.minwidth := Value;
     self.width:=Value;
end;

procedure TfrmBase.RollBackTransaction;
begin
  if vlDbConn.InTransaction then
     vlDbConn.Rollback(vltran);
end;

function TfrmBase.RetIdxUltimaColVisivel(DBGrid: TDBGrid): integer;
var
	x: integer;
begin
	Result := -1;

	for x := DBGrid.Columns.Count-1 downto 0 do
	begin
		if  DBGrid.Columns.Items[x].Visible then
			begin
				Result := x;
				Break;
			end

	end;
end;

procedure TfrmBase.RollBack;
begin
     RollBackTransaction;
end;

procedure TfrmBase.CommitTransaction;
begin
  if vlDbConn.InTransaction then
     vlDbConn.Commit(vltran);
end;

procedure TfrmBase.Commit;
begin
     CommitTransaction;
end;

procedure TfrmBase.BeginTransaction;
begin
  if not vlDbConn.InTransaction then
     vlDbConn.StartTransaction(vltran);
end;

procedure TfrmBase.CommitRetainTransaction;
begin
     CommitTransaction;
     BeginTransaction;
end;

function TfrmBase.BuscaUmDadoSql(const sql: string;const  DefaultValue: Variant): variant;
var qry: tSqlQuery;
//    flg_tr: boolean;
    msgErro: string ;
begin
//     if vlDbConn <> nil then
//       flg_tr := vlDbConn.InTransaction;

     qry:=tSqlQuery.Create(self);
     try
       try
         // if not flg_tr then
         //   BeginTransaction;
         qry.SQLConnection:=vlDbConn;
         qry.SQL.text:=sql;
         if dbInicio.isDesenvolvimento then
          CopyToClipboard(sql);
         qry.Open;
         if qry.Fields[0].isnull then
            Result := DefaultValue
         Else
            Result := qry.Fields[0].AsVariant;
         // if not flg_tr then
         //   CommitTransaction;
       Except
             on E:EDataBaseError do
             begin
                  msgErro := 'BuscaUmDadoSql: '+#13+qry.SQL.text+#13+'Retornou o Erro: '+E.Message+#13+' *** Copiado para area de transferencia ***';
                  // if not flg_tr then
                  //   RollBackTransaction;
                  //CopiarParaAreaTransferencia(msgErro);
                  raise Exception.Create(msgErro);
             end;
       end;
     finally
       qry.close;
       FreeAndNil(qry);
     end;
end;

Function TfrmBase.GetNextSequence(const pNomeGenerator:string):integer;
begin
  result := BuscaUmDadoSqlAsInteger('SELECT GEN_ID('+pNomeGenerator+', 1) FROM RDB$DATABASE');
end;

function TfrmBase.BuscaUmDadoSqlAsInteger(const sql: string): integer;
begin
     Result := BuscaUmDadoSql(sql,0);
end;

function TfrmBase.BuscaUmDadoSqlAsString(const sql: string): String;
begin
     Result := BuscaUmDadoSql(sql,'');
end;

function TfrmBase.BuscaUmDadoSqlAsCurrency(const sql: string): Currency;
begin
     Result := BuscaUmDadoSql(sql,0.00);
end;

function TfrmBase.BuscaUmDadoSqlAsFloat(const sql: string): Extended;
begin
     Result := BuscaUmDadoSql(sql,0);
end;

function TfrmBase.BuscaUmDadoSqlAsDateTime(const sql: string): tDateTime;
begin
     Result := BuscaUmDadoSql(sql,now);
end;


procedure TfrmBase.ExecSql(const pSql: string; Transacional: boolean = True);
var qry: tSqlQuery;
    flg_tr: boolean;
    MsgErro: string;
begin
     // flg_tr := vlDbConn.InTransaction  ;//and Transacional;
     qry:=tSqlQuery.Create(self);
     try
       try
//         if not flg_tr then
//            BeginTransaction; // tá dando problemas esse tratamento de transação
         qry.SQLConnection:=vlDbConn;
         qry.SQL.text:=StringReplace( pSql, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
         if dbInicio.IsDesenvolvimento then
           CopyToClipBoard(qry.SQL.text);
         qry.ExecSQL(True);
  //       if not flg_tr then
//            CommitTransaction;
       Except
             on E:EDataBaseError do
             begin
                  msgErro := 'ExecSql: '+#13+qry.SQL.text+#13+'Retornou o Erro: '+E.Message+#13+' *** Copiado para area de transferencia ***';
//                  if not flg_tr then
//                     RollBackTransaction;
                  raise Exception.Create(msgErro);
             end;
       end;
     finally
       qry.close;
       FreeAndNil(qry);
     end;
end;

procedure TfrmBase.ExportarExcel( dbGrid: tDbGrid; Sender: TObject);
var vlinha, vcoluna, vColCount, vqtdrow : integer;
    vplanilha : variant;
    valorcampo : string;
    vit: tBookMark;
    vCampo: tField;
begin
     vit:=dbGrid.DataSource.DataSet.GetBookmark;
     try
         dbGrid.DataSource.DataSet.DisableControls;
         dbGrid.DataSource.DataSet.First;
         dbGrid.DataSource.DataSet.Last;
         vqtdRow := dbGrid.DataSource.DataSet.RecordCount;
         if vqtdrow>0 then
         begin
           if messagedlg('Exportar '+inttostr(vqtdRow)+' registros para planilha Excel ?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
           begin
               vplanilha:= CreateoleObject('Excel.Application');
               vplanilha.WorkBooks.add(1);
               vplanilha.caption := 'Exportando dados do dbGrid para o Excel';
               dbGrid.DataSource.DataSet.First;
               vColCount:=dbGrid.Columns.Count;
               for vColuna:=1 to vColCount do
               begin
                    vplanilha.cells[1,vcoluna] :=dbGrid.Columns[vColuna-1].Title.Caption;
               end;
               vlinha := 2;
               try
                 while not dbGrid.DataSource.DataSet.eof do
                 begin
                      TButton(Sender).Caption:='Linha: '+inttostr(vLinha);
                      application.ProcessMessages;
                      for vColuna := 1 to vColCount do
                      begin
                           vCampo := dbGrid.DataSource.DataSet.fieldbyname(dbGrid.Columns[vColuna-1].FieldName);
                           if assigned(vCampo.OnGetText) then
                              vCampo.OnGetText(vCampo,valorcampo,true)
                           Else
                              valorcampo := vCampo.AsString;
                           vplanilha.cells[vlinha,vcoluna] := ''''+valorCampo;
                      end;
                      dbGrid.DataSource.DataSet.Next;
                      Inc(vLinha);
                 end;
               finally
                      tButton(Sender).Caption:='&Exportar';
                      application.ProcessMessages;
               end;
               vplanilha.columns.Autofit;
               vplanilha.visible := True;
           end;
         end
         Else
             GeraException('Não Existem Registros!');
     finally
       if vIt <> Null  then
          if dbGrid.DataSource.DataSet.BookmarkValid(vit) then
             dbGrid.DataSource.DataSet.GotoBookmark(vit);
       dbGrid.DataSource.DataSet.FreeBookmark(vit);
       dbGrid.DataSource.DataSet.EnableControls;
     end;
end;






end.
