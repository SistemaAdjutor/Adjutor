unit BaseDBPesquisaForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
   Controls, Forms, Dialogs, BaseDBForm, DB, BaseDBPesquisaBaseForm,
  SqlExpr, ComCtrls, Buttons, ExtCtrls, FMTBcd, Grids,
  DBGrids, Menus, Provider, DBClient, StdCtrls,  clipbrd,
  Mask, TypInfo, ACBrBase, ACBrCalculadora, Math, ComObj,
  JvExDBGrids, JvDBGrid, SgDbAutoF8Unit,
  Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab, SgDbSeachComboUnit, JvExMask, JvToolEdit;

type

  TfrmBaseDBPesquisa = class(TfrmBaseDBPesquisaBase)
    pnUtilTop: TPanel;
    btnNovo: TSpeedButton;
    btnConsulta: TSpeedButton;
    btnEdita: TSpeedButton;
    btnExclui: TSpeedButton;
    btnFechar: TSpeedButton;
    btnImprime: TSpeedButton;
    btnExtra: TSpeedButton;
    btnExcel: TSpeedButton;
    procedure btnNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnExcelClick(Sender: TObject);
    procedure pnControleResize(Sender: TObject);

    procedure FiltroPesquisaInteligente;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AcessoBotoes( const Menu :string);
    procedure DBGridDblClick(Sender: TObject);
  private

        vlAutoF8: TSGDBAutoF8;
        vlCamposSelectF8: tCampoCRUDList;
        vlCamposFiltroF8: tCampoCRUDList;
        vlPesquisaI: Boolean;
        //vlListaCampos: tListaCampo;

        procedure SetAutoF8(const Value: tSgDbAutoF8);
        procedure FiltroAutoF8;
        procedure SetPesquisaInteligente;
        procedure ExecuteAutoCrud(sender: tObject);

  public

        Property AutoF8: tSgDbAutoF8 Write SetAutoF8;
        Property PesquisaInteligente: Boolean Read vlPesquisaI Write vlPesquisaI;

  end;

var
  frmBaseDBPesquisa: TfrmBaseDBPesquisa;

implementation

Uses uteis, BaseTelaRelatorioForm, BaseDbEditForm, InicioDB;

{$R *.dfm}

procedure TfrmBaseDBPesquisa.AcessoBotoes(const Menu: string);
begin
  OpenAux('SELECT * FROM USUARIO_ACESSO    ' +
          ' WHERE usa_cod_usuario = '+ DBInicio.Usuario.CODIGO+
          ' AND UPPER(usa_menu) = UPPER('+QuotedStr(Menu) +')' );

  btnNovo.Enabled := not qAux.IsEmpty and (qAux.FieldByName('USA_INCLUSAO').AsString = 'S');
  btnEdita.Enabled := not qAux.IsEmpty and (qAux.FieldByName('USA_ALTERACAO').AsString = 'S');
  btnExclui.Enabled := NOT qAux.IsEmpty and (qAux.FieldByName('USA_EXCLUSAO').AsString = 'S');
  btnExcel.Enabled := NOT qAux.IsEmpty and (qAux.FieldByName('USA_RELATORIO').AsString = 'S');
  btnImprime.Enabled := NOT qAux.IsEmpty and (qAux.FieldByName('USA_RELATORIO').AsString = 'S');
end;

procedure TfrmBaseDBPesquisa.btnExcelClick(Sender: TObject);
begin
     ExportarExcel ( dbGrid, Sender ) ;
end;

procedure TfrmBaseDBPesquisa.btnFecharClick(Sender: TObject);
begin
     inherited;
     ModalResult := mrCancel ;
     CLOSE;
end;

procedure TfrmBaseDBPesquisa.btnNovoClick(Sender: TObject);
var tag: integer;
    Err: boolean;
begin
  inherited;
  tag:=  twincontrol(sender).Tag;
  if (tag > 1) and TWinControl(sender).Visible then
  begin
     Err := not cdsBusco.Active;
     if not Err then
        Err := cdsBusco.FieldByName(CampoID).IsNull;
     if Err then
        GeraException('Selecione um Registro e Tente Novamente...');
  end;
  ExecuteAutoCrud(Sender);
end;


procedure TfrmBaseDBPesquisa.DBGridDblClick(Sender: TObject);
begin
  inherited;
  btnEdita.Click;
end;

procedure TfrmBaseDBPesquisa.FormCreate(Sender: TObject);
begin
     inherited;
     btnImprimeBase := self.btnImprime;
end;

procedure TfrmBaseDBPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  h: HWND;
begin
  inherited;
  if GetKeyState( VK_CONTROL ) and 128 > 0 then // control pressionado
  begin
       if key = VK_N then // Ctrl + N
       begin
          if btnNovo.Enabled then
             btnNovo.click;
          key:=0;
       end
       else
       if key = VK_DELETE then // Ctrl + DEL
       begin
          if btnExclui.enabled then
             btnExclui.Click;
          key := 0;
       end ;
  end
  Else
  begin
       if key = VK_F6 then //
       begin
            if btnImprime.enabled then
               btnImprime.click;
            key:=0;
       end
       else
       if key = VK_F9 then //
       begin
          if btnConsulta.Enabled then
             btnConsulta.Click;
          key := 0;
       end
       else
       if key = VK_F10 then //
       begin
            if btnEdita.Enabled then
               btnEdita.Click;
          key:=0;
       end;
       //VK_F5 esta na base
  end;
end;

procedure TfrmBaseDBPesquisa.FiltroAutoF8;
var x:integer;
    vDado: string;
    vdata : TDateTime;
begin
    qBusco.SQL.Clear;
    qBusco.SQL.Add('Select '+ vlCamposSelectF8.FieldsSelect );
    qBusco.SQL.Add('From '+vlAutoF8.SqlTable);

    IF vlAutoF8.CampoUnicoPesquisa then
    begin
         vDado := {'%'+}tLabeledEdit(tCampoCrud(vlCamposFiltroF8[0]).OBJ^).text;

         for x := 0 to vlCamposFiltroF8.Count-1 do
         begin
           if (tCampoCrud(vlCamposFiltroF8[x]).tipo = 'D') and (TryStrToDate(vDado,vdata)) then
               SqlAddOR( tCampoCrud(vlCamposFiltroF8[x]).FieldName + ' =  ' + DateToSQL(vdata) )
           else
             SqlAddOR( CampoSql( tCampoCrud(vlCamposFiltroF8[x]).FieldName, vDado) );
         end;
         if Filtrados then
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

procedure TfrmBaseDBPesquisa.FiltroPesquisaInteligente;
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
         // agora vão os argumentos
         //\1= <<-- pesquisa pela coluna especifica
         //, <<-- Separa termos de pesquisa
         //! << -- exclui resultados da pesquisa
         //>= << -- Maior ou igual
         //<= << -- menor ou igual
         //# <<-- valor

         vTermosPesquisar:=trim(CampoLabel.Text)+',';
         ListaTermos:=tStringList.Create;
         while vTermosPesquisar<>'' do
         begin
              vTermo:=GetTextBefore(vTermosPesquisar,',');
              vTermosPesquisar:=GetTextAfter(vTermosPesquisar,',');
              if vTermo<>'' then
                 ListaTermos.add(vTermo);
         end;

         // Oque tenho até aqui:
         //- Campos (tCamposCridList) - É Uma listagem que correlaciona campos qualificados da
         //         tabela em relação as colunas (cujos nomes de campos são aliases), cada item
         //         corresponde a um tCampoCrud contendo size e tipo. Na property caption esta
         //         guardado o aliasfield
         //- ListaTermos ( tStrings) - É Uma listagem com os dados a serem pesquisados
         //- oque falta fazer: Gerar o sql pesquisa
         //- a idéia é: - pesquisas simples por todos os campos da tabela
         //             - termos separados por virgulas
         //             - pode-se incluir algum controle tipo !
         //             - ex: Joao da silva, rua marte,1000
         //- Quando pode funcionar????
         //         - Em pesquisas simples e no autoF8
         ///*** Nenhuma desta rotinas para pesquisa inteligente foi testada
         //*** 25/09/115

       finally
         Campos.Clear;
         Lista.Clear;
         Campos:=Nil;
         Lista:=Nil;
       end;
  end;
end;


procedure TfrmBaseDBPesquisa.SetAutoF8(const Value: tSgDbAutoF8);
var x,c,i, vWidth: integer;
    aux, txLabel: string;
    edt: ^tLabeledEdit;  // Ponteiro para a classe;
begin

      txLabel:='';
      vlAutoF8:=Value;

      if assigned(vlAutoF8) and SelfCreate then
      begin
        // campos e filtros
        vlCamposSelectF8:=tCampoCrudList.Create;
        vlCamposFiltroF8:=tCampoCrudList.Create;

        for i := 0 to vlAutoF8.SqlSelect.Count-1 do // selects/colunas
            vlCamposSelectF8.add( tCampoCrud.create(vlAutoF8.SqlSelect[i]) );

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
                    vWidth := Self.Canvas.TextWidth(Aux);
                    Width := vWidth ;
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
        // Tabela:=vlAutoF8.SqlTable;
        // Botoes Tela
        ProcedureFiltro:=FiltroAutoF8;
        // Limpar
        btnLimpar.Click;
        // Botoes de edição
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
        btnImprime.enabled:= True;
        pnFiltro.Width:= btnPesquisa.Left+btnPesquisa.Width+5;
        btnPesquisa.Top:=Floor( (pn1.Height-((btnPesquisa.Height*2)+4))/2 );
        btnLimpar.Top:=btnPesquisa.Top+btnPesquisa.Height+4;

      end;
end;

procedure TfrmBaseDBPesquisa.SetPesquisaInteligente;
var x,y:integer;
begin
     if vlPesquisaI then
     begin
          ProcedureFiltro:=FiltroPesquisaInteligente;
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

procedure TfrmBaseDBPesquisa.pnControleResize(Sender: TObject);
begin
  inherited;
  //pnFiltro.Left:=floor((pnControle.Width-pnFiltro.Width)/2);
end;

procedure TfrmBaseDBPesquisa.ExecuteAutoCrud(sender: tObject);
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
              3: tcr.edita(cdsBusco.fieldbyname(campoid).asstring,'Edição de '+aCaption);
              4: tcr.Exclui(cdsBusco.fieldbyname(campoid).asstring,'Exclusão de '+aCaption);
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




end.


