unit BaseDBEditForm;

interface

uses
  Windows, Messages, SysUtils, Variants,
  Classes, Graphics,
  Controls, Forms, Dialogs, BaseDBForm, DB,
  SqlExpr, ExtCtrls, Buttons, StdCtrls, FMTBcd,
  TypInfo,
  DBClient, Provider, ACBrBase, ACBrCalculadora,
  Mask, DBCtrls, SgDbAutoF8Unit, SgDbLabeledUnit,
  Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab;

type
  TEstado =(teNovo, teConsulta, teEdicao, teExclusao, teInicial );

type
  TfrmBaseDBEdit = class(TfrmBaseDB)
    pnUtil: TPanel;
    Panel3: TPanel;
    btnOk: TSpeedButton;
    btnCancelar: TSpeedButton;
    qEdit: TSQLQuery;
    DspEdit: TDataSetProvider;
    CdsEdit: TClientDataSet;
    dsEditS: TDataSource;
    qAuditoria: TSQLQuery;
    qAuditoriaMODULO: TStringField;
    qAuditoriaTABELA: TStringField;
    qAuditoriaCODIGO: TStringField;
    qAuditoriaSEQUENCIA: TIntegerField;
    qAuditoriaACAO: TIntegerField;
    qAuditoriaDATA: TSQLTimeStampField;
    qAuditoriaUSERNAME: TStringField;
    qAuditoriaAUTORIZOU: TStringField;
    qAuditoriaHISTORICON: TMemoField;
    dspAuditoria: TDataSetProvider;
    cdsAuditoria: TClientDataSet;
    cdsAuditoriaMODULO: TStringField;
    cdsAuditoriaTABELA: TStringField;
    cdsAuditoriaCODIGO: TStringField;
    cdsAuditoriaSEQUENCIA: TIntegerField;
    cdsAuditoriaACAO: TIntegerField;
    cdsAuditoriaDATA: TSQLTimeStampField;
    cdsAuditoriaUSERNAME: TStringField;
    cdsAuditoriaAUTORIZOU: TStringField;
    cdsAuditoriaHISTORICON: TMemoField;
    cdsAuditoriaHISTGRID: TStringField;
    btCalc: TSpeedButton;
    pnMove: TPanel;
    btFirst: TSpeedButton;
    btPrior: TSpeedButton;
    btNext: TSpeedButton;
    btLast: TSpeedButton;
    btSave: TSpeedButton;
    cbPersistente: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btCalcClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure CdsEditAfterPost(DataSet: TDataSet);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure pnNavFirstClick(Sender: TObject);
    procedure DspEditGetTableName(Sender: TObject; DataSet: TDataSet; Var TableName: string);
    procedure CdsEditAfterOpen(DataSet: TDataSet);
    procedure qEditAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CdsEditReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
  private
    fTabela: String;
    vlAutoCrud: TSGDBAutoCRUD;
    vlCreate: Boolean;
    vlSelectCrudList: tCampoCrudList;
    vlAfterApplyUpdates: tNotifyEvent;
     fEstado : TEstado;
    fInseriu:boolean;
    fEditou:boolean;
    fSemBotao : boolean;
    function GetAutoCrud: TSGDBAutoCRUD;
    procedure SetAutoCrud(const Value: TSGDBAutoCRUD);
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
    function EditaSemAbrir(const pID: string): boolean;
    function Exclui(const pID: string; const Capt: tCaption): Boolean;
    function Novo(const Capt: tCaption): Boolean;
    Property Tabela: string Read fTabela Write fTabela;
    Property AutoCRUD: TSGDBAutoCRUD read GetAutoCrud write SetAutoCrud;
    Property AfterApplyUpdates: tNotifyEvent Read vlAfterApplyUpdates write vlAfterApplyUpdates;
    property EstadoTela : TEstado read  fEstado write  SetEstado;
    property SemBotao : Boolean read fSemBotao write SetSemBotao;
    procedure OpenEditID(pID: Variant);
  end;

var
  frmBaseDBEdit: TfrmBaseDBEdit;

implementation

uses InicioDB, Uteis;

{$R *.dfm}

procedure TfrmBaseDBEdit.btCalcClick(Sender: TObject);
begin
  inherited;
  coCalcula.Execute;
end;

procedure TfrmBaseDBEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if CdsEdit.State  in dsEditModes then
  begin
    CdsEdit.Cancel;
    RollBackTransaction;
    ModalResult := mrCancel;
  end;
end;

procedure TfrmBaseDBEdit.FormCreate(Sender: TObject);
begin
  inherited;
  self.WindowState := wsNormal;
  vlCreate := True;
  IdRetorno := '';
  CampoID := SqlGetCampoID(qEdit.SQL.Text);
  CampoIDRetorno := CampoID;
  Tabela := SqlGetNomeTabela(qEdit.SQL.Text);
  self.Height := 170;
  self.Width := 550;
  qEdit.SQLConnection := DBInicio.maindb;
  self.Constraints.MinHeight := 170;
  self.Constraints.MinWidth := 550;
  // qEdit.SQLConnection := dbConn;
end;

procedure TfrmBaseDBEdit.FormKeyDown(Sender: TObject; var Key: Word;
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

function TfrmBaseDBEdit.GetAutoCrud: TSGDBAutoCRUD;
begin
  Result := vlAutoCrud;
end;

procedure TfrmBaseDBEdit.btnCancelarClick(Sender: TObject);
begin
  inherited;
  CdsEdit.Cancel;
  RollBackTransaction;
  ModalResult := mrCancel;
end;

procedure TfrmBaseDBEdit.CdsPost;
var
  vtr: Boolean;
begin
  vtr := dbConn.InTransaction;
  begintransaction;
  try
    if cdsedit.state <> dsBrowse then
       CdsEdit.post;
//    IF CdsEdit.ApplyUpdates(0) <> 0 THEN
//       GeraException('Erro ao tentar aplicar atualizações a tabela (cdsEdit).');
    CdsEdit.ApplyUpdates(0);   // implementado mensagem mais elucidativa em onReconcileError
    if Assigned(AfterApplyUpdates) then
      AfterApplyUpdates(Nil);
    if not vtr then
      CommitTransaction;
  Except
    on e: Exception  do
    begin
      ShowMessage(e.Message);
      if not vtr then
      begin
        RollBackTransaction;
        raise;
      end;
    end;
  End;
end;

procedure TfrmBaseDBEdit.CdsDelete;
var
  vtr: Boolean;
begin
  vtr := dbConn.InTransaction;
  begintransaction;
  try
    CdsEdit.Delete;
    CdsEdit.ApplyUpdates(0);
    if not vtr then
      CommitTransaction;
  Except
    if not vtr then
    begin
      RollBackTransaction;
      raise Exception.Create('Registro não pode ser excluido por estar em uso por Outra(s) Tabela(s)');
    end;
  End;
end;

procedure TfrmBaseDBEdit.btnOkClick(Sender: TObject);
var
  vTag: integer;
begin
  inherited;
  vTag := btnOk.tag;
  case vTag of
    1:
      begin // inclusão
        CdsPost; // post and applyupdates
        fInseriu:=True;
        if cbPersistente.Checked then
          CdsEdit.Insert
        Else
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
  CommitTransaction;
end;

procedure TfrmBaseDBEdit.btSaveClick(Sender: TObject);
begin
  inherited;
  CdsPost;
  CdsEdit.Edit;
end;

procedure TfrmBaseDBEdit.CdsEditAfterOpen(DataSet: TDataSet);
begin
  inherited;
  InsereFieldValidateCrud;
end;

procedure TfrmBaseDBEdit.CdsEditAfterPost(DataSet: TDataSet);
begin
  inherited;
  if CampoIDRetorno<>'' then
     IdRetorno := trim(CdsEdit.fieldbyname(CampoIDRetorno).asstring);
end;

procedure TfrmBaseDBEdit.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  AutoCrudBeforePost;
end;

procedure TfrmBaseDBEdit.CdsEditReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  showmessage(e.Message);

end;

procedure TfrmBaseDBEdit.ConfigBotoes(tipo: integer);
///
  Procedure VisibleAndEnabl(btn: TObject; Visible, Enabl: Boolean);
  begin
    SetPropValue(btn, 'VISIBLE', Visible);
    SetPropValue(btn, 'ENABLED', Enabl);
  end;

///
begin
  VisibleAndEnabl(pnMove, True, True);
  VisibleAndEnabl(btFirst, True, True);
  VisibleAndEnabl(btPrior, True, True);
  VisibleAndEnabl(btNext, True, True);
  VisibleAndEnabl(btLast, True, True);
  VisibleAndEnabl(btSave, True, True);
  if SemBotao then
     tipo := 6;
  btnOk.tag := tipo;
  VisibleAndEnabl(cbPersistente, false, false);
  case tipo of
    1:
      begin // INCLUI
        btnCancelar.Caption := 'Abandonar (ESC)';
        btnOk.Caption := 'Salvar e Sair (Ctrl+ENTER)';
        VisibleAndEnabl(btnOk, True, True);
        VisibleAndEnabl(btFirst, false, false);
        VisibleAndEnabl(btPrior, false, false);
        VisibleAndEnabl(btNext, false, false);
        VisibleAndEnabl(btLast, false, false);

      end;
    2:
      begin // Consulta
        btnCancelar.Caption := 'Sair (ESC)';
        VisibleAndEnabl(btnOk, false, false);
        VisibleAndEnabl(btSave, false, false);

      end;
    3:
      begin // Edita
        btnCancelar.Caption := 'Abandonar (ESC)';
        btnOk.Caption := 'Salvar e Sair(Ctrl+ENTER)';
        VisibleAndEnabl(btnOk, True, True);

      end;
    4:
      begin // Exclui
        btnCancelar.Caption := 'Abandonar (ESC)';
        btnOk.Caption := 'Excluir e Sair(Ctrl+DEL)';
        VisibleAndEnabl(btnOk, True, True);
        VisibleAndEnabl(btSave, false, false);

      end;
    5:
      begin // EditaUnico
        btnCancelar.Caption := 'Abandonar (ESC)';
        btnOk.Caption := 'Salvar e Sair(Ctrl+ENTER)';
        VisibleAndEnabl(btnOk, True, True);
        VisibleAndEnabl(btFirst, false, false);
        VisibleAndEnabl(btPrior, false, false);
        VisibleAndEnabl(btNext, false, false);
        VisibleAndEnabl(btLast, false, false);

      end;
    6:
      begin
        VisibleAndEnabl(pnMove, false, false);
        VisibleAndEnabl(btFirst, false, false);
        VisibleAndEnabl(btPrior, false, false);
        VisibleAndEnabl(btNext, false, false);
        VisibleAndEnabl(btLast, false, false);
        VisibleAndEnabl(btSave, false, false);

      end;
  end;
end;

function TfrmBaseDBEdit.Novo(const Capt: tCaption): Boolean;
begin
  ConfigBotoes(1);
  EstadoTela := teNovo;
  aCaption := Capt;
  ReadOnly := false;
  qEdit.Params[0].AsInteger := -1;
  CdsEdit.open;
  CdsEdit.Insert;
  cbPersistente.Visible := False;
  cbPersistente.Left := 117;
  self.ShowModal;
  Result := (self.ModalResult = mrOk) or (fInseriu);
end;

procedure TfrmBaseDBEdit.OpenEditID(pID: Variant);
begin
  CdsEdit.DisableControls;
  CdsEdit.close;
  qEdit.Params[0].Value := pID;
  CdsEdit.open;
  CdsEdit.EnableControls;
  if CdsEdit.fieldbyname(CampoIDRetorno).Value = pID then
    IdRetorno := Trim(CdsEdit.fieldbyname(CampoIDRetorno).asstring)
  Else
    GeraException('Registro não localizado!!!');
end;

procedure TfrmBaseDBEdit.Consulta(const pID: string; Capt: tCaption);
begin
  if trim(pID) <> '' then
  begin
    ConfigBotoes(2);
    EstadoTela := teConsulta;
    aCaption := Capt;
    ReadOnly := True;
    OpenEditID(pID);
    self.ShowModal;
  end;
end;

procedure TfrmBaseDBEdit.DspEditGetTableName(Sender: TObject; DataSet: TDataSet;
   var TableName: string);
begin
  inherited;
  TableName:=Tabela;
end;

function TfrmBaseDBEdit.Edita(const pID: string; const Capt: tCaption): Boolean;
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

function TfrmBaseDBEdit.EditaSemAbrir(const pID: string): boolean;
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

function TfrmBaseDBEdit.EditaUnico(const pID: string; const Capt: tCaption): Boolean;
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

function TfrmBaseDBEdit.EditaUnico(const Capt: tCaption): Boolean;
begin
    ConfigBotoes(5);
    EstadoTela := teEdicao;
    aCaption := Capt;
    ReadOnly := false;

    qEdit.Params.Clear;

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


procedure TfrmBaseDBEdit.pnNavFirstClick(Sender: TObject);
var
  bof, eof: Boolean;
  cId, bId: integer;
begin
  bId := StrToIntDef(fieldbyname(CdsEdit, CampoIDRetorno), 0);
  bof := false;
  eof := false;
  case tComponent(Sender).tag of
    1:
      cId := BuscaUmDadoSqlasInteger('SELECT MIN(' + CampoID + ') FROM '+ Tabela);
    2:
      cId := BuscaUmDadoSqlasInteger('SELECT MAX(' + CampoID + ') FROM ' + Tabela + ' WHERE ' + CampoID + ' < ' + IntToStr(bId));
    3:
      cId := BuscaUmDadoSqlasInteger('SELECT MIN(' + CampoID + ') FROM ' + Tabela + ' WHERE ' + CampoID + ' > ' + IntToStr(bId));
    4:
      cId := BuscaUmDadoSqlasInteger('SELECT MAX(' + CampoID + ') FROM ' + Tabela);
  end;
  if cId <> 0 then
  begin
    bof := (cId = BuscaUmDadoSqlasInteger('SELECT MIN(' + CampoID + ') FROM '+ Tabela));
    if not bof then
      eof := (cId = BuscaUmDadoSqlasInteger('SELECT MAX(' + CampoID + ') FROM ' + Tabela));
    OpenEditID(IntToStr(cId));
  end
  else if tComponent(Sender).tag = 1 then
    bof := True
  else if tComponent(Sender).tag = 4 then
    eof := True;
  btFirst.Enabled := not bof;
  btPrior.Enabled := not bof;
  btNext.Enabled := not eof;
  btLast.Enabled := not eof;
end;

procedure TfrmBaseDBEdit.qEditAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // showmessage( qEdit.fieldbyname('id').asstring ) ;
end;

Function TfrmBaseDBEdit.Exclui(const pID: string; const Capt: tCaption): Boolean;
begin
  IF Trim(pID) <> '' then
  begin
    ConfigBotoes(4);
    EstadoTela := teExclusao;
    aCaption := Capt;
    ReadOnly := True;
    OpenEditID(pID);
    self.ShowModal;
    Result := (self.ModalResult = mrOk);
  end;
end;

procedure TfrmBaseDBEdit.SetAutoCrud(const Value: TSGDBAutoCRUD);
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
    qEdit.SQL.Clear;
    qEdit.SQL.add('Select ' + vlSelectCrudList.FieldsSelect);
    qEdit.SQL.add('From ' + vlAutoCrud.SqlTable);
    qEdit.SQL.add('Where ' + CampoID + '=:ID');
    qEdit.Params[0].AsInteger := -1;

    try
      vlAutoCrud.Pronto := false;
      try
        CdsEdit.open;
      Except
        // CopiarParaAreaTransferencia(qEdit.SQL.Text);
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

procedure TfrmBaseDBEdit.SetEstado(const Value: TEstado);
begin
 fEstado := Value;
end;

procedure TfrmBaseDBEdit.SetSemBotao(const Value: boolean);
begin
  fSemBotao := Value;
end;

Procedure TfrmBaseDBEdit.InsereFieldValidateCrud;
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

Procedure TfrmBaseDBEdit.AutoCrudBeforePost;
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

procedure TfrmBaseDBEdit.FieldCrudValidate(Sender: TField);
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
    if BuscaUmDadoSqlasInteger(' Select cast(Count(*) as integer) ' + ' from ' +
       vlAutoCrud.SqlTable + ' where ' + vWhere + ' and ' + CampoID + '<>' +
       vId) > 0 then

    begin
      GeraException('Registro já Existe.');
    end;
  end;
end;

end.

