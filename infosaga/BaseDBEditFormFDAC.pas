unit BaseDBEditFormFDAC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FDAC.SgDbAutoF8Unit, System.TypInfo, SgDbLabeledUnit, BaseDBEditDetailFDAC, JvErrorIndicator, JvValidators, JvComponentBase, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Phys.FBDef,
  Data.SqlExpr;

type
  TEstado =(teNovo, teConsulta, teEdicao, teExclusao, teInicial, teAprovacao );

type
  TfrmBaseDBEditFDAC = class(TfrmBaseDBFDAC)
    pnUtil: TPanel;
    btnOk: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsEdits: TDataSource;
    cdsEdit: TFDQuery;
    cdsEditDetail: TFDQuery;
    dsEditDetail: TDataSource;
    JvValidators1: TJvValidators;
    JvValidationSummary1: TJvValidationSummary;
    JvErrorIndicator1: TJvErrorIndicator;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure cdsEditAfterOpen(DataSet: TDataSet);
    procedure cdsEditAfterPost(DataSet: TDataSet);
    procedure cdsEditBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fTabela: String;
    vlAutoCrud: TDBAutoCRUD;
    vlCreate: Boolean;
    vlSelectCrudList: tCampoCrudList;
    vlAfterApplyUpdates: tNotifyEvent;
    fEstado : TEstado;
    fInseriu:boolean;
    fEditou:boolean;
    fSemBotao : boolean;
    FTemDetalhe: boolean;
    function GetAutoCrud: TDBAutoCRUD;
    procedure SetAutoCrud(const Value: TDBAutoCRUD);
    procedure SetEstado (const Value : TEstado);
    procedure SetSemBotao (const Value: boolean);
    procedure AutoCrudBeforePost;
    procedure FieldCrudValidate(Sender: TField);
    procedure InsereFieldValidateCrud;
  public
    procedure ConfigBotoes(tipo: integer);
    procedure CdsPost;
    procedure CdsDelete;
    procedure Consulta(const pID: string; Capt: tCaption);
    function EditaUnico(const pID: string; const Capt: tCaption): Boolean; overload;
    function EditaUnico(const Capt: tCaption): Boolean; overload;
    function Edita(const pID: string; const Capt: tCaption): Boolean;
    function EditaDetalheItem (const Capt: tCaption; tcr: tfrmBaseDBEditDetailFDAC ): Boolean; VIRTUAL;
    function EditaSemAbrir(const pID: string): boolean;
    function Exclui(const pID: string; const Capt: tCaption): Boolean;
    function ExcluiDetalheItem: Boolean; VIRTUAL;
    function Novo(const Capt: tCaption): Boolean;
    procedure defaultInclusao; virtual;
    function NovoDetalheItem(const Capt: tCaption; tcr: tfrmBaseDBEditDetailFDAC ): Boolean; VIRTUAL;
    Property Tabela: string Read fTabela Write fTabela;
    Property AutoCRUD: TDBAutoCRUD read GetAutoCrud write SetAutoCrud;
    Property AfterApplyUpdates: tNotifyEvent Read vlAfterApplyUpdates write vlAfterApplyUpdates;
    property EstadoTela : TEstado read  fEstado write  SetEstado;
    property SemBotao : Boolean read fSemBotao write SetSemBotao;
    property TemDetalhe : boolean read fTemDetalhe write FTemDetalhe;
    procedure OpenEditID(pID: Variant);
    function Validar : boolean;
  end;

var
  frmBaseDBEditFDAC: TfrmBaseDBEditFDAC;

implementation


uses InicioDB, Uteis, DataCad;

{$R *.dfm}


procedure TfrmBaseDBEditFDAC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
//  if CdsEdit.State  in  then
//  begin
//    CdsEdit.Cancel;
//    ModalResult := mrCancel;
//  end;
end;

procedure TfrmBaseDBEditFDAC.FormCreate(Sender: TObject);
var
   i : Integer;
begin
  inherited;
  FDTransac.Connection := dbConn;
  FDTransac.StartTransaction;
  TemDetalhe :=true;
  for I := 0 to self.ComponentCount-1 do
  begin
    if self.Components[i].InheritsFrom(TSQLQuery) then
    begin
      TSQLQuery( self.Components[i] ).SQLConnection := DataCadastros.SQLConnection1;

    end;


  end;
  self.WindowState := wsNormal;
  vlCreate := True;
  IdRetorno := '';
  CampoID := SqlGetCampoID(cdsEdit.SQL.Text);
  CampoIDRetorno := CampoID;
  Tabela := SqlGetNomeTabela(cdsEdit.SQL.Text);
  self.Height := 170;
  self.Width := 550;
  self.Constraints.MinHeight := 170;
  self.Constraints.MinWidth := 550;
  sqlconnection:=dbConn;

end;

procedure TfrmBaseDBEditFDAC.FormKeyDown(Sender: TObject; var Key: Word;
   Shift: TShiftState);
begin
  inherited;
  if GetKeyState(VK_CONTROL) and 128 > 0 then // control pressionado
  begin
    if (Key = VK_RETURN) and ((btnOk.tag = 1) or (btnOk.tag = 3) or  (btnOk.tag = 5)) then  // Inclusão(1), edição(3) ou edição de reg unico(5)
    begin
        btnOk.Click;
        Key := 0;
    end
    Else if (Key = VK_DELETE) and (btnOk.tag = 4) then
    begin
        btnOk.Click;
        Key := 0;
    end;
  end;
end;

procedure TfrmBaseDBEditFDAC.FormShow(Sender: TObject);
begin
  inherited;
  TForm(Self).Caption := aCaption;
  if (TemDetalhe) and (EstadoTela in [teConsulta,teEdicao,teAprovacao] ) then
  BEGIN
    cdsEditDetail.Close;
    cdsEditDetail.Params[0].Value := cdsEdit.Params[0].Value  ;
    cdsEditDetail.Open;
  END;
end;

function TfrmBaseDBEditFDAC.GetAutoCrud: TDBAutoCRUD;
begin
  Result := vlAutoCrud;
end;

procedure TfrmBaseDBEditFDAC.btnCancelarClick(Sender: TObject);
begin
  inherited;
  CdsEdit.Cancel;
  ModalResult := mrCancel;
end;


procedure TfrmBaseDBEditFDAC.CdsPost;
var vtr: boolean  ;
D : TFDTxOptions;
begin

  if not dbConn.TxOptions.AutoStart then
   dbConn.StartTransaction;
  try
    if cdsedit.state <> dsBrowse then
       CdsEdit.post;
    IF CdsEdit.ApplyUpdates(-1) <> 0 THEN
       GeraException('Erro ao tentar aplicar atualizações a tabela (cdsEdit).');
  //  if not cdsedit.Connection.Transaction.Options.AutoCommit then

    if TemDetalhe then
    begin


      if not (cdsEditDetail.state in [dsBrowse, dsInactive]) then
         cdsEditDetail.post;
      if cdsEditDetail.UpdatesPending then
        IF cdsEditDetail.ApplyUpdates(-1) <> 0 THEN
           GeraException('Erro ao tentar aplicar atualizações a tabela (cdsEditDetail).');
//       if not cdsEditDetail.Connection.Transaction.Options.AutoCommit then

    end;
   if not dbConn.TxOptions.AutoCommit then
     dbConn.Commit;

  //   dbConn.Connected := False;
   except on E: Exception do
   begin
    dbConn.Rollback;
    raise Exception.Create(e.Message);
   end;

  End;
end;



procedure TfrmBaseDBEditFDAC.CdsDelete;
var
  vtr: Boolean;
begin
  vtr :=  cdsedit.Connection.InTransaction;

  try
    CdsEdit.Delete;
    CdsEdit.ApplyUpdates(0);
    if TemDetalhe then
    begin
      cdsEditDetail.First;
      cdsEditDetail.Filtered:= False;
      while not cdsEditDetail.Eof do
         cdsEditDetail.Delete;

      cdsEditDetail.ApplyUpdates(0);

    end;
    if not vtr then
       cdsedit.Connection.Commit;
  Except
    if not vtr then
    begin
       cdsedit.Connection.Rollback;
      raise Exception.Create('Registro não pode ser excluido por estar em uso por Outra(s) Tabela(s)');
    end;
  End;

end;



procedure TfrmBaseDBEditFDAC.btnOkClick(Sender: TObject);
var
  vTag  : integer;
begin
  inherited;

  //varrer os itens para preencher o codigo pai
  if (self.EstadoTela = teNovo) and cdsEditDetail.Active and  TemDetalhe
  and not cdsEditDetail.IsEmpty then
  begin
   cdsEditDetail.DisableControls;

   cdsEditDetail.Filtered := False;
   cdsEditDetail.First;
   while not cdsEditDetail.Eof do
   begin
     if cdsEditDetail.State = dsBrowse then
       cdsEditDetail.Edit;
     cdsEditDetail.FieldByName(CampoID).AsInteger :=  cdsEditDetail.FieldByName(CampoID).AsInteger ;
     cdsEditDetail.Post;

     cdsEditDetail.Next;
   end;
   cdsEditDetail.EnableControls;
  end;
  vTag := btnOk.tag;
  if vtag in [1,3,5] then
  begin
    if not Validar then
      exit;
  end;

  case vTag of
    0:begin
        CdsPost; // post and applyupdates
        fInseriu:=True;

      end;
    1:
      begin // inclusão
        CdsPost; // post and applyupdates
        fInseriu:=True;
        ModalResult := mrOk;
      end;
    3, 5:
      begin // edita/editaunico
        CdsPost;
        fEditou:=True;
        ModalResult := mrOk;
      end;
    4:
      begin
        if ConfirmaSimNao('Confirma a Exclusão Deste Registro?') then
        begin
          CdsDelete;
          ModalResult := mrOk;
        end;
      end;
  end;
end;

procedure TfrmBaseDBEditFDAC.btSaveClick(Sender: TObject);
begin
  inherited;
  CdsPost;
  CdsEdit.Edit;
end;

procedure TfrmBaseDBEditFDAC.CdsEditAfterOpen(DataSet: TDataSet);
begin
  inherited;
  InsereFieldValidateCrud;
end;

procedure TfrmBaseDBEditFDAC.CdsEditAfterPost(DataSet: TDataSet);
begin
  inherited;
  if CampoIDRetorno<>'' then
     IdRetorno := trim(CdsEdit.fieldbyname(CampoIDRetorno).asstring);
end;

procedure TfrmBaseDBEditFDAC.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  AutoCrudBeforePost;
end;

procedure TfrmBaseDBEditFDAC.ConfigBotoes(tipo: integer);
///
  Procedure VisibleAndEnabl(btn: TObject; Visible, Enabl: Boolean);
  begin
    SetPropValue(btn, 'VISIBLE', Visible);
    SetPropValue(btn, 'ENABLED', Enabl);
  end;

///
begin

  if SemBotao then
     tipo := 6;
  btnOk.tag := tipo;
  case tipo of
    1:
      begin // INCLUI
        btnCancelar.Caption := 'Abandonar (ESC)';
        btnOk.Caption := 'Salvar';
        VisibleAndEnabl(btnOk, True, True);

      end;
    2:
      begin // Consulta
        btnCancelar.Caption := 'Sair (ESC)';
        VisibleAndEnabl(btnOk, false, false);


      end;
    3:
      begin // Edita
        btnCancelar.Caption := 'Abandonar (ESC)';
        btnOk.Caption := 'Salvar';
        VisibleAndEnabl(btnOk, True, True);

      end;
    4:
      begin // Exclui
        btnCancelar.Caption := 'Abandonar (ESC)';
        btnOk.Caption := 'Excluir e Sair(Ctrl+DEL)';
        VisibleAndEnabl(btnOk, True, True);

      end;
    5:
      begin // EditaUnico
        btnCancelar.Caption := 'Abandonar (ESC)';
        btnOk.Caption := 'Salvar';
        VisibleAndEnabl(btnOk, True, True);
      end;

  end;
end;

function TfrmBaseDBEditFDAC.Novo(const Capt: tCaption): Boolean;
begin
  ConfigBotoes(1);
  EstadoTela := teNovo;
  aCaption := Capt;
  ReadOnly := false;
  cdsEdit.Connection := dbConn;
  CdsEdit.Close;
  if TemDetalhe then
  begin
    cdsEditDetail.Connection := dbConn;
    cdsEditDetail.Params[0].AsInteger := -1;
    cdsEditDetail.Open;
  end;

  cdsEdit.Params[0].AsInteger := -1;

  CdsEdit.Open;
  CdsEdit.Insert;
  defaultInclusao;

  self.ShowModal;
  Result := (self.ModalResult = mrOk) or (fInseriu);
end;

function TfrmBaseDBEditFDAC.NovoDetalheItem(const Capt: tCaption; tcr: tfrmBaseDBEditDetailFDAC): Boolean;
begin
  Result := false;
  if not cdsEditDetail.Active then
  begin
    cdsEditDetail.Params[0].AsInteger := -1;
    cdsEditDetail.Open;
  end;
  cdsEditDetail.Insert;
  tcr.Novo(capt);
  if tcr.Showmodal =mrok then
  begin
    Result := true;
    cdsEditDetail.Post
  end
  else
    cdsEditDetail.Cancel;


end;

procedure TfrmBaseDBEditFDAC.OpenEditID(pID: Variant);
begin
  CdsEdit.DisableControls;
  CdsEdit.close;
  cdsEdit.Params[0].Value := pID;
  CdsEdit.open;
  CdsEdit.EnableControls;
   if CdsEdit.fieldbyname(CampoIDRetorno).Value = pID then
    IdRetorno := Trim(CdsEdit.fieldbyname(CampoIDRetorno).asstring)
  Else
    GeraException('Registro não localizado!!!');
end;

procedure TfrmBaseDBEditFDAC.Consulta(const pID: string; Capt: tCaption);
begin
  if trim(pID) <> '' then
  begin
    ConfigBotoes(2);
    EstadoTela := teConsulta;
    aCaption := Capt;
    ReadOnly := True;
    OpenEditID(pID);
    self.Show;
  end;
end;

procedure TfrmBaseDBEditFDAC.defaultInclusao;
begin

end;

function TfrmBaseDBEditFDAC.Edita(const pID: string; const Capt: tCaption): Boolean;
begin
  if Trim(pID) <> '' then
  begin
    ConfigBotoes(3);
    EstadoTela := teEdicao;
    aCaption := Capt;
    ReadOnly := false;
    OpenEditID(pID);

    CdsEdit.Edit;
    self.ShowModal;
    Result := (self.ModalResult = mrOk);
  end;
end;

function TfrmBaseDBEditFDAC.EditaDetalheItem(const Capt: tCaption; tcr: tfrmBaseDBEditDetailFDAC): Boolean;
begin
  Result := false;
  cdsEditDetail.Edit;
  tcr.Edita(capt);
  if tcr.ShowModal =mrok then
  begin
    Result := true;
    cdsEditDetail.Post
  end
  else
    cdsEditDetail.Cancel;

end;

function TfrmBaseDBEditFDAC.EditaSemAbrir(const pID: string): boolean;
begin
  if Trim(pID) <> '' then
  begin
    try
    OpenEditID(pID);
    CdsEdit.Edit;
    result := True;
    except
     result:= False;
    end;
  end;
end;

function TfrmBaseDBEditFDAC.EditaUnico(const pID: string; const Capt: tCaption): Boolean;
begin
  if Trim(pID) <> '' then
  begin
    ConfigBotoes(5);
    EstadoTela := teEdicao;
    aCaption := Capt;
    ReadOnly := false;

    OpenEditID(pID);

    CdsEdit.Edit;
    self.ShowModal;
    Result := (self.ModalResult = mrOk) or (fEditou);
  end;
end;

function TfrmBaseDBEditFDAC.EditaUnico(const Capt: tCaption): Boolean;
begin
    ConfigBotoes(5);
    EstadoTela := teEdicao;
    aCaption := Capt;
    ReadOnly := false;

    cdsEdit.Params.Clear;

    CampoID := '';
    IDRetorno := '';
    CampoIDRetorno := '';

    CdsEdit.DisableControls;
    CdsEdit.open;
    CdsEdit.EnableControls;

    CdsEdit.Edit;
    self.ShowModal;
    Result := (self.ModalResult = mrOk) or (fEditou);
end;


Function TfrmBaseDBEditFDAC.Exclui(const pID: string; const Capt: tCaption): Boolean;
begin
  IF Trim(pID) <> '' then
  begin
    ConfigBotoes(4);
    EstadoTela := teExclusao;
    aCaption := Capt;
    ReadOnly := True;
    OpenEditID(pID);
   // self.ShowModal;

    self.btnOk.Click  ;

    Result := (self.ModalResult = mrOk);
  end;
end;

function TfrmBaseDBEditFDAC.ExcluiDetalheItem: Boolean;
begin
  if not cdsEditDetail.IsEmpty then
   cdsEditDetail.Delete;

end;

procedure TfrmBaseDBEditFDAC.SetAutoCrud(const Value: TDBAutoCRUD);
var
  x, t: integer;
  aux: string;
  edt: ^tSGDBLabeledEdit; // Ponteiro para a classe;
  edtb: tSGDBLabeledEdit;
begin
  vlAutoCrud := Value;
  if Assigned(vlAutoCrud) and vlCreate then
  begin
    // leitura das definições
    vlSelectCrudList := tCampoCrudList.Create;

    for x := 0 to vlAutoCrud.SqlSelect.Count - 1 do // selects/caption edits
      if Trim(vlAutoCrud.SqlSelect[x]) <> '' then
        vlSelectCrudList.add(tCampoCrud.Create(vlAutoCrud.SqlSelect[x]));

    // sql
    CampoID := vlAutoCrud.SqlCampoID;
    CampoIDRetorno := vlAutoCrud.SqlCampoIDRetorno;
    if Trim(CampoIDRetorno) = '' then
      CampoIDRetorno := CampoID;

    Tabela := vlAutoCrud.SqlTable;
    cdsEdit.SQL.Clear;
    cdsEdit.SQL.add('Select ' + vlSelectCrudList.FieldsSelect);
    cdsEdit.SQL.add('From ' + vlAutoCrud.SqlTable);
    cdsEdit.SQL.add('Where ' + CampoID + '=:ID');
    cdsEdit.Params[0].AsInteger := -1;

    try
      vlAutoCrud.Pronto := false;
      try
        CdsEdit.open;
      Except
        // CopiarParaAreaTransferencia(cdsEdit.SQL.Text);
        raise;
      end;

      // Campos e edits
      t := 21;
      for x := 0 to vlSelectCrudList.Count - 1 do
      begin
        if (tCampoCrud(vlSelectCrudList[x]).Caption <> '') and (not tCampoCrud(vlSelectCrudList[x]).hidden) then
        begin
          new(edt); // aloca memoria
          edt^ := tSGDBLabeledEdit.Create(self);
          tCampoCrud(vlSelectCrudList[x]).OBJ := edt;
          edtb := edt^;
          edtb.Parent := self;
          edtb.ShowHint := false;
          edtb.EditLabel.Caption := tCampoCrud(vlSelectCrudList[x]).Caption;
          edtb.ReadOnly := tCampoCrud(vlSelectCrudList[x]).ReadOnly;
          edtb.tabstop := not(edtb.ReadOnly);
          edtb.Top := t;
          edtb.Left := 5;
          edtb.CharCase := ecUpperCase;
          if tCampoCrud(vlSelectCrudList[x]).size <> 0 then
          begin
            aux := PreencherString('', tCampoCrud(vlSelectCrudList[x]).size, 'A');
            edtb.Width := self.Canvas.TextWidth(aux);
          end;
          t := t + edtb.Height + 21;
          edtb.Visible := True;
          // validar tField
          edtb.datasource := dsEditS;
          edtb.DataField := tCampoCrud(vlSelectCrudList[x]).FieldName;
        end;
      end;
      self.Height := t + pnUtil.Height + {lbhint.Height +} 20;
      self.Constraints.MaxHeight := self.Height;
      self.Constraints.MaxWidth := self.Width;
      self.BorderIcons := [biSystemMenu, biMinimize];
    finally
      vlAutoCrud.Pronto := True;
      CdsEdit.close;
    end;
  end;
end;

procedure TfrmBaseDBEditFDAC.SetEstado(const Value: TEstado);
begin
 fEstado := Value;
end;

procedure TfrmBaseDBEditFDAC.SetSemBotao(const Value: boolean);
begin
  fSemBotao := Value;
end;

function TfrmBaseDBEditFDAC.Validar :boolean;
var erroContinua :boolean   ;
  i : integer;

  erros : string;
begin
  result:= True;
  erroContinua := JvValidationSummary1.Summaries.Count >0;
  JvErrorIndicator1.ClearErrors;
  JvValidators1.ValidationSummary := JvValidationSummary1;
  JvValidators1.ErrorIndicator := JvErrorIndicator1;
  // JvValidators1.OnValidateFailed := JvValidators1ValidateFailed;
  if  (self.EstadoTela <> teExclusao ) and (not JvValidators1.Validate)  then
  begin
    if erroContinua then
    begin
      erros := 'Ainda contém erros: '+#13+#10;
      for I := 0 to JvValidationSummary1.Summaries.Count-1 do
        erros := erros + JvValidationSummary1.Summaries[i]+#13+#10;
        MessageDlg(erros, mtConfirmation, [mbOK], 0);
    end;
    result:=False;
  end;

end;

Procedure TfrmBaseDBEditFDAC.InsereFieldValidateCrud;
var
  x: integer;
begin
  if Assigned(vlAutoCrud) then
  begin
    for x := 0 to vlSelectCrudList.Count - 1 do
    begin
      if tCampoCrud(vlSelectCrudList[x]).Unique then
        CdsEdit.fieldbyname(tCampoCrud(vlSelectCrudList[x]).FieldName)
           .OnValidate := FieldCrudValidate;
    end;
  end;
end;

Procedure TfrmBaseDBEditFDAC.AutoCrudBeforePost;
var
  x: integer;
  dado, campo: string;
begin
  // consistencia dos campos gerados pelo autoCRUD
  if Assigned(vlAutoCrud) then
  begin
    ClearErrors;
    for x := 0 to vlSelectCrudList.Count - 1 do
    begin
      if tCampoCrud(vlSelectCrudList[x]).Required then
      begin
        dado := trim(tSGDBLabeledEdit(tCampoCrud(vlSelectCrudList[x]).OBJ^).Text);
        if dado = '' then
        begin
             campo := tCampoCrud(vlSelectCrudList[x]).Caption;
             AddErrValidation('É necessário preencher o campo [' + campo + ']');
        end
      end;

      if tCampoCrud(vlSelectCrudList[x]).value<>'' then
      begin
           if CdsEdit.fieldbyname(tCampoCrud(vlSelectCrudList[x]).FieldName).isnull then
              CdsEdit.fieldbyname(tCampoCrud(vlSelectCrudList[x]).FieldName).AsString:=tCampoCrud(vlSelectCrudList[x]).value;
      end;

    end;
    CheckErrors;
    if CdsEdit.fieldbyname(CampoID).isnull then
      CdsEdit.fieldbyname(CampoID).AsInteger :=dbinicio.getnextsequence(vlAutoCrud.SqlGenerator);

  end;
end;

procedure TfrmBaseDBEditFDAC.FieldCrudValidate(Sender: TField);
var
  vCampoCrud: tCampoCrud;
  vWhere, vId, vDado: string;
  x, y: integer;
  flg: Boolean;

begin
  y := vlSelectCrudList.Count - 1;
  flg := True;
  vWhere := '';
  for x := 0 to y do
  begin
    vCampoCrud := vlSelectCrudList[x];
    if vCampoCrud.Unique then
    begin
      vDado := trim(fieldbyname(CdsEdit, vCampoCrud.FieldName));
      if vDado = '' then
        flg := false
      else
      begin
        vWhere := InsereAfter(vWhere, ' and ') + vCampoCrud.FieldName + '=' +
           qStr(vDado)
      end;
    end;
  end;
  if flg and (vWhere <> '') then
  begin
    vId := CdsEdit.fieldbyname(CampoID).asstring;
    vId := IntToStr(StrToIntDef(vId, -1));
    if BuscaUmDadoSqlasInteger(' Select Count(*) ' + ' from ' +
       vlAutoCrud.SqlTable + ' where ' + vWhere + ' and ' + CampoID + '<>' +
       vId) > 0 then

    begin
      GeraException('Registro já Existe.');
    end;
  end;
end;

end.
