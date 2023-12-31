unit BaseDBPesquisaFormOpc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
   Controls, Forms, Dialogs, BaseDBForm, DB,
  SqlExpr, ComCtrls, Buttons, ExtCtrls, FMTBcd, Grids,
  DBGrids, Menus, Provider, DBClient, StdCtrls,  clipbrd,
  Mask, TypInfo, ACBrBase, ACBrCalculadora, Math, ComObj,
  JvExDBGrids, JvDBGrid, SgDbAutoF8Unit, rxToolEdit, rxCurrEdit,
  uteis, Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab;

type

    tProcedureFiltro = Procedure of object;

    tAccessGrid = Class( tdbGrid ) ; // Acesso a propriedades protegidas
    
    tAccessCustomEdit = Class( tCustomEdit );

    OnChangeObject = class
      f_nme : string;
      f_prc : TNotifyEvent ;
    private
    Public
          constructor create( Cmp: tComponent ) ;
          Property Nome: string read f_nme write f_nme;
          Property OnChange: tNotifyEvent Read f_prc Write f_prc;
    end;

    OnSelectObject = class
      f_nme : string;
      f_prc : TNotifyEvent ;
    private
    Public
          constructor create( Cmp: tComponent ) ;
          Property Nome: string read f_nme write f_nme;
          Property OnSelect: tNotifyEvent Read f_prc Write f_prc;
    end;
  TfrmBaseDBPesquisaOpc = class(TfrmBaseDB)
    PageControl1: TPageControl;
    tsNotas: TTabSheet;
    pnControle: TPanel;
    pnFiltro: TPanel;
    pn1: TPanel;
    btnPesquisa: TSpeedButton;
    btnLimpar: TSpeedButton;
    DBGrid: TJvDBGrid;
    Panel2: TPanel;
    btCalc: TSpeedButton;
    btnSelect: TSpeedButton;
    btnQtdReg: TSpeedButton;
    Timer1: TTimer;
    qBusco: TSQLQuery;
    dspBusco: TDataSetProvider;
    cdsBusco: TClientDataSet;
    dsBusca: TDataSource;
    mnuGridPesquisa: TPopupMenu;
    Copiar1: TMenuItem;
    pnUtilTop: TPanel;
    btnExclui: TSpeedButton;
    btnNovo: TSpeedButton;
    btnConsulta: TSpeedButton;
    btnEdita: TSpeedButton;
    btnFechar: TSpeedButton;
    btnImprime: TSpeedButton;
    btnExtra: TSpeedButton;
    btnExcel: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btCalcClick(Sender: TObject);
    procedure btnQtdRegClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure pnControleResize(Sender: TObject);
    procedure SelecionaTodos(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FiltroPesquisaInteligente;
    procedure Copiar1Click(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormResize(Sender: TObject);
  private
 fIDBusca: integer;
        OnChangeList : tList;
        OnSelectList : tList;

        vlAutoF8: TSGDBAutoF8;

        vlCamposSelectF8: tCampoCRUDList;
        vlCamposFiltroF8: tCampoCRUDList;

        vlTituloRelAuto: String;
        vlImprimindo: boolean;
        vlFiltrados: boolean;
        vlAbreTabela: boolean;
        vlCreate: Boolean;
        vlProcedureFiltro: tProcedureFiltro;

        vlPesquisaI: Boolean;
        //vlListaCampos: tListaCampo
        fProcPageSumaryAuto: tProcedureDetalheAfterPrint ;
        fProcHeaderBeforePrintAuto: tProcedureDetalheAfterPrint ;

        procedure OnChangeListDestroy;
        procedure OnSelectListDestroy;
        procedure AddOnChangeList(tEd: tComponent);
        procedure AddOnSelectList(tEd: TComponent);
        function GetOnSelectList(nome: string): tNotifyEvent;
        function GetOnChangeList(nome: string): tNotifyEvent;

        procedure InicializaComponentes;
        procedure DefineOnChange(tEd: tComponent);

        procedure DefineComboOnSelect(tEd: tComponent);
        procedure DefaultComboOnSelect(sender: tObject);
        procedure DefaultOnChange(Sender: TObject);
        procedure ResetTimer;
        function ContaRegistros: integer;
        procedure SetAutoF8(const Value: tSgDbAutoF8);
        procedure FiltroAutoF8;
        procedure DestroyAutoF8;

        function GetProcedureFitro: tProcedureFiltro;
        procedure SetProcedureFitro(const Value: tProcedureFiltro);
        procedure SetPesquisaInteligente;
        procedure DefCampoID;
        procedure LimpaComponentes(pcmp: tWinControl);

        procedure SqlAddOR(stt: string);
        procedure AjustaLarguraColunasGrid;
    procedure ExecuteAutoCrud(sender: tObject);
  public
        property IDBusca:integer read fIDBusca write fIDBusca;
        function pesquisa( id: integer ): boolean ;
        procedure OpenTbBusca;
        Property AutoF8: tSgDbAutoF8 Write SetAutoF8;
        Property TituloRelAuto: String Read vlTituloRelAuto Write vlTituloRelAuto;
        Property Filtrados: boolean read vlFiltrados write vlFiltrados;
        Property AbreTabela: boolean read vlAbreTabela write vlAbreTabela;

        Property ProcedureFiltro: tProcedureFiltro Read GetProcedureFitro Write SetProcedureFitro;
        procedure SqlAdd( stt:string );
        procedure Filtro;

        Property PesquisaInteligente: Boolean Read vlPesquisaI Write vlPesquisaI;
        procedure GeraRelatorioAuto(Sender: TObject);
        Property ProcPageSumaryAuto: tProcedureDetalheAfterPrint read fProcPageSumaryAuto write fProcPageSumaryAuto;
        Property ProcHeaderBeforePrintAuto: tProcedureDetalheAfterPrint read fProcHeaderBeforePrintAuto write fProcHeaderBeforePrintAuto;
  end;

var
  frmBaseDBPesquisaOpc: TfrmBaseDBPesquisaOpc;

implementation

Uses InicioDB, BaseTelaRelatorioForm, BaseDbEditForm;

{$R *.dfm}

procedure TfrmBaseDBPesquisaOpc.btnExcelClick(Sender: TObject);
begin
     ExportarExcel ( dbGrid, Sender ) ;
end;

procedure TfrmBaseDBPesquisaOpc.btnFecharClick(Sender: TObject);
begin
  inherited;
  modalresult := mrCancel ; 
  Self.Close;
end;

procedure TfrmBaseDBPesquisaOpc.LimpaComponentes(pcmp:tWinControl);
var x,y: integer;
begin
  y := Self.ComponentCount-1;
  for x := 0 to y do
  begin
       if tWinControl(Self.Components[x]).parent=pcmp then
       begin
            if Self.Components[x].inheritsfrom(tCustomEdit) then
               tCustomEdit(Self.Components[x]).clear
            Else
            if Self.Components[x].inheritsfrom(TComboBox) then
               TComboBox(Self.Components[x]).itemindex:=TComboBox(Self.Components[x]).tag
            Else
            if Self.Components[x].inheritsfrom(TGroupBox) or
               Self.Components[x].inheritsfrom(TPanel) then
               LimpaComponentes(tWinControl(Self.Components[x]));
       end;
  end;
end;

procedure TfrmBaseDBPesquisaOpc.btnLimparClick(Sender: TObject);
begin
  inherited;
  qBusco.Tag:=0;
  LimpaComponentes( pn1 );
  qBusco.Tag:=1;
  Filtro;
end;

procedure TfrmBaseDBPesquisaOpc.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  Filtro;
end;

procedure TfrmBaseDBPesquisaOpc.btnQtdRegClick(Sender: TObject);
begin
  inherited;
  MessageDlg( IntToStr(ContaRegistros)+' Registros.', mtInformation , [mbOk],0);
end;

procedure TfrmBaseDBPesquisaOpc.btnSelectClick(Sender: TObject);
begin
  inherited;
  if cdsBusco.Active then
  begin
       if not cdsBusco.FieldByName( CampoID ).IsNull then
       begin
         IDRetorno := trim(cdsBusco.FieldByName( CampoIDRetorno ).asString);
         modalresult := mrOk;
       end
       Else
           GeraException('Nenhum registro selecionado!');
  end
  Else
      GeraException('Nenhum registro selecionado!');
end;

procedure TfrmBaseDBPesquisaOpc.FiltroPesquisaInteligente;
var sql,sqlcampos: string;
    lista: tStrings;
    Campos: tCampoCrudList;
    x,y,a,b,cSize:integer;
    def: tCampoCrud;
    vTipo, cFieldName, tFieldName, tFieldAlias: String;
    CampoLabel: tLabeledEdit;
    vTermo,vTermosPesquisar: string;
    ListaTermos: tStrings;
begin
  inherited;
  if vlPesquisaI then
  begin
       y := Self.ComponentCount-1;
       for x := 0 to y do
       begin
            if tWinControl(Self.Components[x]).parent=pn1 then
            if tWinControl(Self.Components[x]).ClassType=tLabeledEdit then
            begin
                 CampoLabel:=tLabeledEdit(Self.Components[x]);
                 Break;
            end;
       end;
       if CampoLabel=Nil then
          GeraException('Nenhum LabeledEdit Encontrado em PN1.');
       if trim(CampoLabel.Text)='' then
          Exit;
       try
         lista:=tStringList.Create;
         Campos:=tCampoCrudList.Create;
         sql := Trim(UpperCase(qbusco.SQL.Text));
         sqlCampos:=gettextbefore(gettextafter(sql,'SELECT'),'FROM')+',';
         sqlcampos:=stringreplace(sqlcampos,' ','',[rfReplaceAll]);
         while sqlcampos<>'' do
         begin
              lista.add(GetTextBefore(sqlcampos,','));
              sqlcampos:=GetTextAfter(sqlcampos,',');
         end;
         b := dbGrid.Columns.Count-1;
         y := lista.count-1;
         for a := 0 to b do
         begin
              cFieldName:=UpperCase(dbGrid.Columns[a].FieldName);
              cSize:=dbGrid.Columns[a].Field.Size;
              tFieldName:='';
              for x := 0 to y do
              begin
                tFieldAlias:=lista[x];
                if pos('AS',tFieldAlias)>0 then
                   tFieldAlias := trim(gettextafter(tFieldAlias,'AS'))
                else
                if pos('.',tFieldAlias)>0 then
                   tFieldAlias := trim(gettextafter(tFieldAlias,'.'));
                if cFieldName=tFieldAlias then
                begin
                    tFieldName:=lista[x];
                    if pos('AS',tFieldAlias)>0 then
                       tFieldName := trim(gettextBefore(tFieldAlias,'AS'));
                    Break;
                end;
              end;
              if tFieldName<>'' then
              begin
                   case dbGrid.Columns[a].Field.DataType of
                   ftString,ftWideString,ftBytes, ftVarBytes,ftFixedChar: vTipo:='S';
                   ftSmallint, ftInteger, ftWord, ftLargeint, ftAutoInc,
                   ftFloat, ftCurrency, ftBCD,ftFMTBcd: vTipo:='N';
                   ftDate, ftDateTime, ftTimeStamp: vTipo:='D';
                   else
                       vTipo:='U'; //Unknown
                   end;

                   def := tCampoCrud.Create('');
                   def.FieldName:=tFieldName;
                   //def.AliasName:=cFieldName;
                   def.Tipo:=vTipo;
                   def.Size:=cSize;

                   campos.Add(def);
              end
              Else
                  GeraException('Erro ao tentar referenciar colunas/campos sql.');
         end;
         // agora v�o os argumentos
         {\1= <<-- pesquisa pela coluna especifica
         , <<-- Separa termos de pesquisa
         ! << -- exclui resultados da pesquisa
         >= << -- Maior ou igual
         <= << -- menor ou igual
         # <<-- valor}

         vTermosPesquisar:=trim(CampoLabel.Text)+',';
         ListaTermos:=tStringList.Create;
         while vTermosPesquisar<>'' do
         begin
              vTermo:=GetTextBefore(vTermosPesquisar,',');
              vTermosPesquisar:=GetTextAfter(vTermosPesquisar,',');
              if vTermo<>'' then
                 ListaTermos.add(vTermo);
         end;

         { Oque tenho at� aqui:
         - Campos (tCamposCridList) - � Uma listagem que correlaciona campos qualificados da
                  tabela em rela��o as colunas (cujos nomes de campos s�o aliases), cada item
                  corresponde a um tCampoCrud contendo size e tipo. Na property caption esta
                  guardado o aliasfield
         - ListaTermos ( tStrings) - � Uma listagem com os dados a serem pesquisados
         - oque falta fazer: Gerar o sql pesquisa
         - a id�ia �: - pesquisas simples por todos os campos da tabela
                      - termos separados por virgulas
                      - pode-se incluir algum controle tipo !
                      - ex: Joao da silva, rua marte,1000
         - Quando pode funcionar????
                  - Em pesquisas simples e no autoF8
         *** Nenhuma desta rotinas para pesquisa inteligente foi testada
         *** 25/09/115
         }
       finally
         Campos.Clear;
         Lista.Clear;
         Campos:=Nil;
         Lista:=Nil;
       end;
  end;

end;

Function TfrmBaseDBPesquisaOpc.ContaRegistros:integer;
var it: tBookMark;
begin
  inherited;
  if cdsBusco.Active  then
  begin
       it := cdsBusco.GetBookmark;
      try
         cdsBusco.DisableControls;
         cdsBusco.Last;
         Result := cdsBusco.RecordCount;
      finally
             cdsBusco.EnableControls;
             if it<>Nil then
                if cdsBusco.BookmarkValid(it) then
                   cdsBusco.GotoBookmark(it);
      end;
  end
  else
      Result := 0;
end;

procedure TfrmBaseDBPesquisaOpc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  OnChangeListDestroy ;
  OnSelectListDestroy;
  DestroyAutoF8;
end;

procedure TfrmBaseDBPesquisaOpc.DestroyAutoF8;
//var x: integer;
begin
  if assigned(vlAutoF8) then
  begin
    {for x := 0 to vlCamposFiltroF8.Count-1 do
    begin
         // dispose
         FreeAndNil(tLabeledEdit(tCampoCrud(vlCamposFiltroF8[x]).Obj^));
    end;}
    vlCamposSelectF8.clear;
    vlCamposFiltroF8.clear;
  end;
end;

procedure TfrmBaseDBPesquisaOpc.FormCreate(Sender: TObject);
begin
     inherited;
     IDBusca:=0;
     vlCreate:=True;
     dbGrid.ReadOnly:=true;
     self.WindowState:=wsNormal;
     btnLimpar.Click; // limpa campos / inicializa filtro;
     //InicializaComponentes; <-- formshow
     self.Constraints.MinHeight:=380;
     self.Constraints.MinWidth:=650;
     self.width:=650;
     self.height:=500;
     DefCampoID;
end;

procedure TfrmBaseDBPesquisaOpc.DefCampoID;
begin
     CampoID:='ID'; // por omiss�o
     CampoIDRetorno:='ID'; // por omiss�o
end;

procedure TfrmBaseDBPesquisaOpc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  h: HWND;
begin
  inherited;
  if GetKeyState( VK_CONTROL ) and 128 > 0 then // control pressionado
  begin

       if key = VK_RETURN then
       begin
            if btnSelect.visible then
               btnSelect.click;
            key:=0;
       end ;
  end
  Else
  if (ssShift in Shift) and (not self.ActiveControl.InheritsFrom(TCustomDateEdit)) then  // problemas com dateedit(rx)
  begin
       if (key = VK_DOWN) or (key=VK_UP) or (key=VK_NEXT) or (key=VK_PRIOR) or
          (key = VK_LEFT) or (key=VK_RIGHT) then // CTRL+UP/DN/PgUp/PgDn - move rows in dbGrid
       begin
            tAccessGrid(dbGrid).KeyDown( key, shift );
            key := 0;
       end;
  End
  Else
  if (key = VK_DOWN) or (key=VK_UP) or (key=VK_NEXT) or (key=VK_PRIOR) then
  begin
       tAccessGrid(dbGrid).KeyDown( key, shift );
       key := 0;
  end
  Else

  begin
       if key = VK_F6 then //
       begin
            if btnImprime.enabled then
               btnImprime.click;
            key:=0;
       end;
       //VK_F5 esta na base
  end;
end;

procedure TfrmBaseDBPesquisaOpc.FormMouseWheel(Sender: TObject; Shift: TShiftState;WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
     inherited;
     tAccessGrid(dbGrid).DoMouseWheel(Shift,WheelDelta,MousePos);
end;

procedure TfrmBaseDBPesquisaOpc.FormResize(Sender: TObject);
begin
  inherited;
  AjustaLarguraColunasGrid;
end;

procedure TfrmBaseDBPesquisaOpc.SqlAdd( stt:string );
begin
    if stt<>'' then
    begin
         if Filtrados then
            qBusco.SQL.Add('AND '+stt)
         else
            qBusco.SQL.Add('WHERE '+stt);
         Filtrados:=True;
    end;
end;

procedure TfrmBaseDBPesquisaOpc.SqlAddOR( stt:string );
begin
    if stt<>'' then
    begin
         if Filtrados then
            qBusco.SQL.Add('OR '+stt)
         else
            qBusco.SQL.Add('WHERE ('+stt);
         Filtrados:=True;
    end;
end;


procedure TfrmBaseDBPesquisaOpc.Filtro;
begin
     if Assigned(vlProcedureFiltro) then
     begin
         Filtrados:=False;
         if qBusco.tag = 1 then
         try
            cdsBusco.DisableControls;
            qBusco.Tag := 0;
            if cdsBusco.Active then
               cdsBusco.Close;
            //qBusco.sql.Clear;

            vlProcedureFiltro;

            if trim(qBusco.SQL.Text)='' then
               GeraException('ProcedureFiltro: n�o retornou nenhum SQL para QUERY');

            //if filtrados or vlImprimindo or abretabela then
            //begin
                 OpentbBusca;
            //end;
         finally
                cdsBusco.EnableControls;
                qBusco.tag := 1;
         end;
     end;
End;

procedure TfrmBaseDBPesquisaOpc.FiltroAutoF8;
var x:integer;
    vDado: string;
begin
    qBusco.SQL.Clear;
    qBusco.SQL.Add('Select '+ vlCamposSelectF8.FieldsSelect );
    qBusco.SQL.Add('From '+vlAutoF8.SqlTable);

    IF vlAutoF8.CampoUnicoPesquisa then
    begin
         vDado := '%'+tLabeledEdit(tCampoCrud(vlCamposFiltroF8[0]).OBJ^).text;
         for x := 0 to vlCamposFiltroF8.Count-1 do
              SqlAddOR( CampoSql( tCampoCrud(vlCamposFiltroF8[x]).FieldName, vDado) );
         qBusco.SQL.Add(')');
    end
    Else
    for x := 0 to vlCamposFiltroF8.Count-1 do
    begin
         vDado := tLabeledEdit(tCampoCrud(vlCamposFiltroF8[x]).OBJ^).text;
         SqlAdd( CampoSql( tCampoCrud(vlCamposFiltroF8[x]).FieldName, vDado) );
    end;
    if vlAutoF8.FiltroTabela<>'' then
       SqlAdd( vlAutoF8.FiltroTabela );


    qBusco.SQL.add('Order By '+vlAutoF8.SqlOrder);
End;

procedure TfrmBaseDBPesquisaOpc.FormShow(Sender: TObject);
begin
  inherited;
  if vlCreate then
  begin
    SetPesquisaInteligente;
    InicializaComponentes;
    pnControleResize(nil);
    if not assigned(btnImprime.OnClick) then
    begin
       btnImprime.OnClick:=GeraRelatorioAuto;
       btnImprime.Caption:='Listar(F6)';
       if TituloRelAuto='' then
          TituloRelAuto:='Listagem de '+Caption;
    end;
  end;
  Self.Caption:= 'Pesquisa de '+aCaption;
end;

procedure TfrmBaseDBPesquisaOpc.SelecionaTodos(Sender: TObject);
begin
     btnLimpar.Click;
end;

procedure TfrmBaseDBPesquisaOpc.GeraRelatorioAuto(Sender: TObject);  //qiqi
var tcr: tFrmBaseTelaRelatorio;
begin
    tcr:= tFrmBaseTelaRelatorio.Create(self);
    try
       vlImprimindo:=True;
       tcr.ProcPageSumaryAuto := ProcPageSumaryAuto;
       tcr.ProcHeaderBeforePrintAuto := ProcHeaderBeforePrintAuto;
       tcr.TituloRelatorio:=TituloRelAuto;
       tcr.SetListaGrid(vlFiltrados) ;
       tcr.SelecionaTodos:=SelecionaTodos;
       tcr.dbGrid:=dbGrid;
       tcr.ShowModal;
    finally
      FreeAndNil(tcr);
      vlImprimindo:=False;
    end;
end;

procedure TfrmBaseDBPesquisaOpc.OnChangeListDestroy;
var mx, x: integer;
    it : OnChangeObject ;
begin
     if assigned ( OnChangeList ) then
     begin
          mx := OnChangeList.Count;
          for x := 0 to mx-1 do
          begin
               it := OnChangeObject ( OnChangeList[x] ) ;
               FreeAndnil( it );
              OnChangeList[X]:=Nil;
          end;
          OnChangeList.Clear;
          FreeAndNil(OnChangeList);
     end;
end;

procedure TfrmBaseDBPesquisaOpc.OnSelectListDestroy;
var mx, x: integer;
    it : OnSelectObject ;
begin
     if assigned ( OnSelectList ) then
     begin
          mx := OnSelectList.Count;
          for x := 0 to mx-1 do
          begin
               it := OnSelectObject ( OnSelectList[x] ) ;
               FreeAndnil( it );
               OnSelectList[X]:=Nil;
          end;
          OnSelectList.Clear;
          FreeAndNil(OnSelectList);
     end;
end;

procedure TfrmBaseDBPesquisaOpc.Timer1Timer(Sender: TObject);
begin
  inherited;
     timer1.Enabled:=false;
     if qBusco.tag=1 then
        btnPesquisa.Click;
end;

constructor OnChangeObject.create(Cmp: tComponent);
begin
     Nome := Cmp.Name;
     OnChange:= tAccessCustomEdit(Cmp).OnChange;
end;

constructor OnSelectObject.create(Cmp: tComponent);
begin
     Nome := Cmp.Name;
     OnSelect:= tComboBox(Cmp).OnSelect;
end;

procedure TfrmBaseDBPesquisaOpc.InicializaComponentes;
var qtd, x: integer;
begin
     qtd := self.ComponentCount;
     for x := 0 to qtd - 1 do
     begin
          if self.Components[x].InheritsFrom(tCustomEdit) then
             DefineOnChange( self.Components[x]) // definir evento onChange ativar/desartivar timer
          Else
          {if self.Components[x].InheritsFrom(tJvDateEdit) then
          begin
               DefineOnChange( self.Components[x]); // definir evento onChange ativar/desartivar timer
               (self.Components[x] as tJvDateEdit).dialogtitle:='Selecione uma data';
          end
          Else}
          if self.Components[x].inheritsfrom(tComboBox) then
             DefineComboOnSelect( self.Components[x] );
     end;
     vlCreate:=False;
end;

procedure TfrmBaseDBPesquisaOpc.DefineComboOnSelect(tEd: tComponent);
begin
     if assigned(tComboBox(tEd).OnSelect) then
        AddOnSelectList( tEd ) ; // salva evento onChange definido em tempo de projeto.
     tComboBox(tEd).OnSelect:=DefaultComboOnSelect; // atribui novo evento onChange
end;

Procedure TfrmBaseDBPesquisaOpc.AddOnSelectList( tEd: TComponent ) ;
var oco: OnSelectObject;
begin
     if not assigned(OnSelectList) then
        OnSelectList:=tList.Create;
     oco := OnSelectObject.create( tEd ); // guarda pointer (tEd) e OnChange Event
     OnSelectList.Add(oco); // Lista
end;

procedure TfrmBaseDBPesquisaOpc.DefineOnChange(tEd: tComponent);
begin
     if assigned(tAccessCustomEdit(tEd).OnChange) then
        AddOnChangeList( tEd ) ; // salva evento onChange definido em tempo de projeto.
     tAccessCustomEdit(tEd).OnChange:=DefaultOnChange; // atribui novo evento onChange
end;

procedure TfrmBaseDBPesquisaOpc.DefaultComboOnSelect ( sender : tObject );
var Evnt : tNotifyEvent;
begin
     Evnt := GetOnSelectList( tComponent(sender).Name );
     if assigned ( Evnt ) then
        Evnt(sender);
     ResetTimer ;
end;

function TfrmBaseDBPesquisaOpc.GetOnSelectList(nome: string): tNotifyEvent;
var mx,x: integer;
    it : OnSelectObject ;
begin
     mx := 0;
     result:=Nil;
     if assigned ( OnSelectList ) then
        mx := OnSelectList.Count;
     if mx <> 0 then
     begin
          for x := 0 to mx - 1 do
          begin
               it := OnSelectObject(OnSelectList[x]); // onchangeobject ( pointer )
               if it.Nome = nome then
                  result := it.OnSelect;
          end;
     end;
end;

function TfrmBaseDBPesquisaOpc.GetProcedureFitro: tProcedureFiltro;
begin
     Result := vlProcedureFiltro;
end;

Procedure TfrmBaseDBPesquisaOpc.AddOnChangeList( tEd: tComponent ) ;
var oco: OnChangeObject;
begin
     if not assigned(OnChangeList) then
        OnChangeList:=tList.Create;
     oco := OnChangeObject.create( tEd ); // guarda pointer (tEd) e OnChange Event
     OnChangeList.Add(oco); // Lista
end;

procedure TfrmBaseDBPesquisaOpc.DefaultOnChange(Sender: TObject); // onchange reset timer (atribui��o autom�tica para tEdit)
var ChangeEvnt : tNotifyEvent;
begin

     if timer1.Enabled then
        timer1.Enabled:=false; // desabilita timer

     ChangeEvnt := GetOnChangeList( tComponent(sender).Name );
     if assigned ( ChangeEvnt ) then
        ChangeEvnt(sender);

     timer1.interval := 300; // 0,3 segundos
     timer1.Enabled:=true; // reabilita timer

end;


function TfrmBaseDBPesquisaOpc.GetOnChangeList(nome: string): tNotifyEvent;
var mx,x: integer;
    it : OnChangeObject ;
begin
     mx := 0;
     result:=Nil;
     if assigned ( OnChangeList ) then
        mx := OnChangeList.Count;
     if mx <> 0 then
     begin
          for x := 0 to mx - 1 do
          begin
               it := OnChangeObject(OnChangeList[x]); // onchangeobject ( pointer )
               if it.Nome = nome then
                  result := it.OnChange;
          end;
     end;
end;

procedure TfrmBaseDBPesquisaOpc.ResetTimer; // onclick reset timer (atribui��o manual)
begin

     if timer1.Enabled then
        timer1.Enabled:=false; // desabilita timer

     timer1.interval := 300; // 0,3 seg
     timer1.Enabled:=true; // reabilita timer

end;

procedure TfrmBaseDBPesquisaOpc.SetAutoF8(const Value: tSgDbAutoF8);
var x,c: integer;
    aux, txLabel: string;
    edt: ^tLabeledEdit;  // Ponteiro para a classe;
begin
      txLabel:='';
      vlAutoF8:=Value;
      if assigned(vlAutoF8) and vlCreate then
      begin
        // campos e filtros
        vlCamposSelectF8:=tCampoCrudList.Create;
        vlCamposFiltroF8:=tCampoCrudList.Create;

        for x := 0 to vlAutoF8.SqlSelect.Count-1 do // selects/colunas
            vlCamposSelectF8.add( tCampoCrud.create(vlAutoF8.SqlSelect[x]) );

        for x := 0 to vlAutoF8.SqlFiltro.Count-1 do // campos filtro/captions edits
        begin
            vlCamposFiltroF8.add( tCampoCrud.create(vlAutoF8.SqlFiltro[x]) );
            txLabel := ConcatSe( txLabel,' ou ' )+ tCampoCrud(vlCamposFiltroF8[x]).Caption;
        end;


        // camposdb e columns do grid
        for x := 0 to vlCamposSelectF8.Count-1 do
        begin
           aux:=tCampoCrud( vlCamposSelectF8[x] ).Caption;
           if aux<>'' then
             with dbGrid.Columns.Add do
             begin
                FieldName := tCampoCrud( vlCamposSelectF8[x] ).FieldName;
                Title.Caption:= aux;
                if tCampoCrud(vlCamposSelectF8[x]).size>0 then
                begin
                    Aux := PreencherString('',tCampoCrud(vlCamposSelectF8[x]).size,'A');
                    width := Self.Canvas.TextWidth(Aux);
                end;
             end;
        end;

        // Edits e Filtrosdb
        c := 5;
        if vlAutoF8.CampoUnicoPesquisa then  // CAMPO UNICO DE PESQUISA
        begin
             new(edt); // aloca memoria
             edt^:= tLabeledEdit.Create(Self);
             tCampoCrud(vlCamposFiltroF8[0]).OBJ:=edt;
             with edt^ do   // define os campos
             begin
                  Parent:=Pn1;
                  ShowHint:=False;
                  EditLabel.Caption:=txLabel+':';
                  CharCase:=ecUpperCase;
                  Top:=floor( (pn1.Height-Height)/2 );
                  Aux := PreencherString('',40,'A'); // tamanho fixo para campo mult pesquisa (cod/nome0
                  width := Self.Canvas.TextWidth(Aux);
                  Left:=c;
                  c := c + width + 5;
                  Visible:=True;
             end;
        end
        else
        for x := 0 to vlCamposFiltroF8.Count-1 do  // MULTIPLOS CAMPOS DE PESQUISA
        begin
          new(edt); // aloca memoria
          edt^:= tLabeledEdit.Create(Self);
          tCampoCrud(vlCamposFiltroF8[x]).OBJ:=edt;
          With edt^ do   // define os campos
          begin
               Parent:=Pn1;
               ShowHint:=False;
               EditLabel.Caption:=tCampoCrud(vlCamposFiltroF8[x]).Caption+':';
               CharCase:=ecUpperCase;
               Top:=floor( (pn1.Height-Height)/2 );
               if tCampoCrud(vlCamposFiltroF8[x]).size<>0 then
               begin
                  Aux := PreencherString('',tCampoCrud(vlCamposFiltroF8[x]).size,'A');
                  width := Self.Canvas.TextWidth(Aux);
                  MaxLength:= tCampoCrud(vlCamposFiltroF8[x]).size;
               end;
               Left:=c;
               if editlabel.Width>width then
                  width:=editlabel.Width;
               c := c + width + 5;
               Visible:=True;
          end;
        end;
        btnPesquisa.Left := c;
        btnLimpar.Left := c;


        // Titulo Janela;
        aCaption:=vlAutoF8.Titulo;
        TituloRelAuto:='Listagem de '+aCaption;
        CampoID := vlAutoF8.SqlId;
        CampoIDRetorno := vlAutoF8.SqlIdRetorno;
        if CampoIDRetorno='' then
           CampoIDRetorno:=CampoID;
        btnSelect.Visible := True;
        // Nome Tabela
        //Tabela:=vlAutoF8.SqlTable;
        // Botoes Tela
        vlProcedureFiltro:=FiltroAutoF8;
        // Limpar
        btnLimpar.Click;
        // Botoes de edicao
        if assigned(vlAutoF8.AutoCrud) then
        begin
             btnNovo.enabled:= vlAutoF8.AutoCRUD.PodeIncluir;
             btnConsulta.Enabled:=True;
             btnEdita.Enabled:=vlAutoF8.AutoCRUD.PodeEditar;
             btnExclui.Enabled:=vlAutoF8.AutoCRUD.PodeExcluir;
        end
        else
        begin
             btnNovo.enabled:= False;
             btnConsulta.Enabled:=False;
             btnEdita.Enabled:=False;
             btnExclui.Enabled:=False;

             btnNovo.visible:= False;
             btnConsulta.visible:=False;
             btnEdita.visible:=False;
             btnExclui.visible:=False;

             btnImprime.Parent:=pnControle;
             btnExcel.Parent:=pnControle;
             btnFechar.Parent:=pnControle;
             pnUtilTop.Visible:=false;

             btnImprime.Top := CEIL((PNcONTROLE.Height - BTNiMPRIME.Height)/2);
             btnExcel.Top := btnImprime.Top;
             btnFechar.Top := btnImprime.Top;


        end;
        btnExtra.Enabled:=False;
        // Relatorio/Listagem
        btnImprime.enabled:= True;
        // AutoSize
        pnFiltro.Width:= btnPesquisa.Left+btnPesquisa.Width+5;
        btnPesquisa.Top:=Floor( (pn1.Height-((btnPesquisa.Height*2)+4))/2 );
        btnLimpar.Top:=btnPesquisa.Top+btnPesquisa.Height+4;

      end;
end;

procedure TfrmBaseDBPesquisaOpc.SetPesquisaInteligente;
var x,y:integer;
begin
     if vlPesquisaI then
     begin
          vlProcedureFiltro:=FiltroPesquisaInteligente;
          y := Self.ComponentCount-1;
          for x := 0 to y do
          begin
               if tWinControl(Self.Components[x]).parent=pn1 then
               begin
                  tWinControl(Self.Components[x]).parent:=pnFiltro;
               end;
          end;
          btnLimpar.Parent:=pn1;
          btnPesquisa.Parent:=pn1;
          btnLimpar.top:=47;
          btnLimpar.Left:=pn1.Width-(btnLimpar.Width+10);
          btnPesquisa.top:=47;
          btnPesquisa.Left:=btnLimpar.Left-(btnPesquisa.Width+10);
          With tLabeledEdit.Create(self) do
          begin
               parent := self;
               EditLabel.Caption:='Informe os dados para pesquisa:';
               top:= 23;
               left:=10;
               width:=btnLimpar.Left+btnLimpar.width;
               anchors:=[akLeft,akTop,akRight];
               visible := True;

          end;
          btnLimpar.Anchors:=[akTop,akRight];
          btnPesquisa.Anchors:=[akTop,akRight];
          tsNotas.Caption:='Pesquisa Inteligente';
          pnFiltro.Align:=alClient;
          pn1.Align:=alclient;
          pnControle.Height:=79;
     end;
end;

procedure TfrmBaseDBPesquisaOpc.SetProcedureFitro(const Value: tProcedureFiltro);
begin
     vlProcedureFiltro:=Value;
end;

procedure TfrmBaseDBPesquisaOpc.btCalcClick(Sender: TObject);
begin
  inherited;
  coCalcula.Execute;
end;

procedure TfrmBaseDBPesquisaOpc.OpenTbBusca;
begin
     if DelphiAberto or isManutencao then
        CopiarParaAreaTransferencia(qBusco.SQL.Text);
     try
       cdsBusco.Open;
     Except
       GeraException('Dados inv�lidos para pesquisa.');
     end;
end;

function TfrmBaseDBPesquisaOpc.pesquisa(id: integer): boolean;
begin
     IDBusca := id;
     IDRetorno := '';
     btnFechar.enabled:=true;
     btnFechar.visible:=true;
     //pnUtilTop.Visible:=False;
     BTNsELECT.Visible:=True;
     ShowModal;
     result := ModalResult=mrOk;
end;

procedure TfrmBaseDBPesquisaOpc.pnControleResize(Sender: TObject);
begin
  inherited;
  //pnFiltro.Left:=floor((pnControle.Width-pnFiltro.Width)/2);
end;

procedure TfrmBaseDBPesquisaOpc.ExecuteAutoCrud(sender: tObject);
var tcr: tFrmBaseDbEdit;
    tag: integer;
begin
  if assigned(vlAutoF8) then
     if assigned(vlAutoF8.AutoCrud) then
     begin
          tcr:=tFrmBaseDbEdit.create(self);
          try
            tcr.AutoCrud:=vlAutoF8.AutoCrud;
            tag:=  twincontrol(sender).Tag;
            if tag=1 then
               tcr.novo('Novo Registro de '+aCaption)
            else
            begin
              if cdsBusco.active then
              case tag of
              2: tcr.Consulta(cdsBusco.fieldbyname(Campoid).asstring,'Visualizar '+aCaption);
              3: tcr.edita(cdsBusco.fieldbyname(campoid).asstring,'Edi��o de '+aCaption);
              4: tcr.Exclui(cdsBusco.fieldbyname(campoid).asstring,'Exclus�o de '+aCaption);
              end;
            end;
            if tcr.modalresult=mrOK then
               if cdsBusco.Active then
                  cdsBusco.refresh;
          finally
                 FreeAndnil(tcr);
          end;

     end;
end;

procedure TfrmBaseDBPesquisaOpc.Copiar1Click(Sender: TObject);
begin
     inherited;
     clipbrd.Clipboard.AsText:=DBGrid.SelectedField.AsString;
end;

procedure TfrmBaseDBPesquisaOpc.DBGridDblClick(Sender: TObject);
begin
  inherited;
  if btnSelect.Visible then
     btnSelect.Click;
end;

procedure TfrmBaseDBPesquisaOpc.AjustaLarguraColunasGrid;
var  i, ColWidthTot, ColCount: Integer;
begin
     ColCount := DBGrid.Columns.Count;
     if ColCount <> 0 then
     begin

          ColWidthTot := 0;
          for i := 0 to ColCount-1 do
              ColWidthTot := ColWidthTot + DBGrid.Columns[i].Width;

          if ColWidthTot<>dbGrid.Width then
             dbGrid.Columns[ColCount-1].Width := dbGrid.Columns[ColCount-1].Width + (dbGrid.Width - ColWidthTot );

     end;
end;


end.




object btnImprime: TSpeedButton
  Left = 416
  Top = 15
  Width = 77
  Height = 39
  Anchors = [akTop, akRight]
  Caption = 'Listar (F6)'
  Glyph.Data = {
    76010000424D7601000000000000760000002800000020000000100000000100
    04000000000000010000120B0000120B00001000000000000000000000000000
    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
    0003377777777777777308888888888888807F33333333333337088888888888
    88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
    8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
    8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
    03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
    03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
    33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
    33333337FFFF7733333333300000033333333337777773333333}
  Layout = blGlyphTop
  NumGlyphs = 2
end
object btnExcel: TSpeedButton
  Left = 494
  Top = 15
  Width = 78
  Height = 39
  Anchors = [akTop, akRight]
  Caption = '&Exportar'
  Glyph.Data = {
    36030000424D3603000000000000360000002800000010000000100000000100
    18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC
    CCCCCCCCCCCCCCCFCFCFCFCFCFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC67
    9D703B86483C86483B86483C86483D87493C86483D8749488D53B5B5B3AFAFAD
    AEAEABADADABADADABB0AFADBBB3B72C7F3A45A15F419E5B409E5B449F5E47A1
    6045A05E47A2623A8647B0B0ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24
    7932FFFFFFFFFFFFFFFFFFFFFFFF3A9C55FFFFFFFFFFFF358242AEAEABFFFFFF
    FDFDFCFCFCFBFCFCFBFFFEFEFFFFFF24783247A863FFFFFFFFFFFF329C50FFFF
    FFFFFFFF4BAB66388344ADADABFFFFFFF8F8F8F8F8F8F8F8F8FBFAFBFFFFFF27
    793455B37043A960FFFFFFFFFFFFFFFFFF43A96058B5733A8446ADADABFFFFFF
    F6F5F5F6F5F5F6F5F5F9F7F8FFFFFF24773255B772FFFFFFFFFFFF48AD65FFFF
    FFFFFFFF58B975378344ADADABFFFFFFF3F2F2F3F2F2F3F2F2F6F4F4FFFBFF1D
    742CFFFFFFFFFFFF5BBA7661BD7B5ABA76FFFFFFFFFFFF348141ADADABFFFFFF
    F0F0EFF0F0EFF0F0EFF2F1F1FAF6F872A67B49A86268C8856FCA8A73CC8D71CC
    8C6DCA8971CF8E398445ADADABFFFFFFEEECEBEEEDECEEEDECEEEDECF2EFEFFC
    F4F874A67C2577332A7A37307F3D35824337834539854769A374ADADABFFFFFF
    EAE9E9EBEAEAEBEAEAEAE9E9F5F4F4FFFFFFFFFFFFD8EADCFFFFFFC2B7C0FFFF
    FFCCCCCCFFFFFFFFFFFFADADABFFFFFFE7E7E6E8E8E7E8E8E7E6E7E5FFFFFFCC
    CCCBA9A8A6A9A8A6FFFFFFB3B5BACCCCCCC78443CCCCCCFFFFFFAEAEABFFFFFF
    E4E3E2E5E4E3E5E4E3E4E3E2FFFFFFA6A6A4FBFBFAFFFFFFE9EBEEBCC0C4BB81
    3CF4C073BE8545CCCCCCAEAEACFFFFFFE0DFDEE1DFDEE1DFDEE0DFDEFFFFFFA5
    A5A2FFFFFFE7E8E9CFD1D4BA7E35BA8442B98545BB8646BC8747AFAFADFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9CCCECECCCCCCCCCCCCC8B9
    A8BB8747FFFFFFFFFFFFB8B8B6B0B0ADAEAEACAEAEABAEAEABADAEABAEAEABAF
    AFADB7B8B7FFFFFFBB7F36BB8542BB8747D5B58DFFFFFFFFFFFF}
  Layout = blGlyphTop
  OnClick = btnExcelClick
end
object btnFechar: TSpeedButton
  Left = 571
  Top = 15
  Width = 60
  Height = 39
  Hint = 'Fecha esta janela'
  Anchors = [akTop, akRight]
  Caption = 'Sair(ESC)'
  Glyph.Data = {
    CA010000424DCA01000000000000760000002800000026000000110000000100
    0400000000005401000000000000000000001000000000000000000000000000
    8000008000000080800080000000800080008080000080808000C0C0C0000000
    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
    8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
    FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
    FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
    00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
    FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
    B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
    FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
    FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
    00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
    FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
    8888888FFFFFFFFFFFFFFFFFFF00}
  Layout = blGlyphTop
  NumGlyphs = 2
  OnClick = btnFecharClick
end

