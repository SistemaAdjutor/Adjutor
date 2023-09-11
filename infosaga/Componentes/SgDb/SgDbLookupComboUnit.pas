unit SgDbLookupComboUnit;

//{$D-}

interface

uses Classes, StdCtrls, Buttons, ExtCtrls,
     DBGrids, SqlExpr, Provider, DBClient,
     DB, DBCtrls, Controls, Messages, Windows,
     SysUtils, Graphics, Dialogs, Forms, uteis,
     SgDbAutoF8Unit, SgDbSeachComboUnit, BaseDBPesquisaForm, Menus,
     BaseDbEditForm;

Type

    TsgDBLookupCombo = Class ( TsgDBSearchCombo )
    private
      vlPesquisa: tNotifyEvent;
      vlNovo: tNotifyEvent;
      vlEdita: tNotifyEvent;
      vlMenu: tPopupMenu;
      procedure SetupInternal;
      procedure DefaultButtonClickB(sender:tobject);
      //procedure OnMnPesquisa(Sender: TObject);
      procedure OnMnNovo(Sender: TObject);
      Property OnButtonClick;
    public
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;
    protected
      Property OnClick;
      procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    published
      Property OnMenuPesquisaClick: tNotifyEvent Read vlPesquisa write vlPesquisa;
      Property OnMenuNovoClick: tNotifyEvent Read vlNovo Write vlNovo;
      Property OnMenuEditaClick: tNotifyEvent Read vlEdita Write vlEdita;
    End;

procedure Register;

implementation

Procedure Register;
begin
  RegisterComponents('Infosaga',[TsgDBLookupCombo]);
end;

{ TsgDBLookupCombo }

constructor TsgDBLookupCombo.Create(AOwner: TComponent);
begin
     inherited Create(AOWner);
     SetupInternal;
end;

Procedure TsgDBLookupCombo.SetupInternal;
var vBitmap:tBitMap;
///
   Procedure AddItemMenu(caption:tCaption;proc:tNotifyEvent; tag:integer);
   var vItMenu: tMenuItem;
   begin
     vItMenu:=tMenuItem.Create(vlMenu);
     vItMenu.Caption:=Caption;
     vItMenu.OnClick:=proc;
     vItMenu.Tag := tag;
     vlMenu.Items.Add(vItMenu);
   end;
///
begin
  if vlMenu=nil then
  begin
     vlMenu := tPopupMenu.Create(self);
     AddItemMenu('Pesquisar     F4',DefaultButtonClick,1);
     AddItemMenu('-',nil,0);
     AddItemMenu('Inserir Novo  Ctrl+N',OnMnNovo,2);
     AddItemMenu('-',nil,0);
     AddItemMenu('Ver/Editar    F10',OnMnNovo,3);
     //vlMenu.Items[0].OnClick:=DefaultButtonClick;
     try
        vBitmap:=tBitMap.Create;
        vBitmap.LoadFromResourceName(hinstance,'TsgDBLOOKUPCOMBO');
        Button.Glyph.Assign(vBitMap);
        Button.onClick:=DefaultButtonClickB;
     finally
          FreeAndNil(vBitMap);
     end;
  end;
end;

procedure TsgDBLookupCombo.KeyDown(var Key: Word; Shift: TShiftState);
begin
   if GetKeyState( VK_CONTROL ) and 128 > 0 then // control pressionado
   begin
        if key = VK_N then // Ctrl + N
        begin
             vlMenu.Items[2].Click;
             key:=0;
        end;
   end
   Else
   begin
       if key = VK_F4 then
       begin
            //IF vlMenu.Items[0].Enabled then
            vlMenu.Items[0].Click;
            key := 0;
       end
       Else
       if Key = VK_F10 then
       begin
          vlMenu.Items[4].Click;
          key:=0;
       end;
   End;
   inherited KeyDown( key,Shift );
end;


procedure TsgDBLookupCombo.OnMnNovo(Sender: TObject);
var Tag: Integer;
    faz: Boolean;
///
  Procedure DoAutoCRUD;
  var tcr: tFrmBaseDbEdit;
  begin
       try
          tcr:= tFrmBaseDbEdit.create(nil);
          tcr.AutoCRUD:=AutoF8.AutoCRUD ;
          case tag of
          2:tcr.Novo('Novo Registro de '+AutoF8.AutoCRUD.titulo);
          3:tcr.Edita(Field.AsString,'Consulta/Edição de Registro de '+AutoF8.AutoCRUD.titulo);
          end;
          if tcr.ModalResult=mrOk then
          begin
               idRetorno:=tcr.IDRetorno;
          end;
       finally
          FreeAndNil(tcr);
       end;
  end;
///
begin
     tag:= tWinControl(sender).tag;
     faz := False;
     if assigned(AutoF8) then
     begin
          if assigned(AutoF8.AutoCrud) then
             DoAutoCRUD
          Else
              faz := True;
     end
     Else
         Faz := True;

     if faz then
     begin
          case tag of
          2:if assigned(OnMenuNovoClick) then
               OnMenuNovoClick(nil);
          3:if assigned(OnMenuEditaClick) then
               OnMenuEditaClick(nil);
          end;
     End;
end;

{procedure TsgDBLookupCombo.OnMnPesquisa(Sender: TObject);
begin
     if assigned(AutoF8) then
        DoAutoF8
     Else
     if assigned(OnMenuPesquisaClick) then
        OnMenuPesquisaClick(self);
end;}

procedure TsgDBLookupCombo.DefaultButtonClickB(sender: tobject);
var Ponto : TPoint;
begin
     if not (csDesigning in ComponentState) then
     begin
         vlMenu.Items[0].Enabled:=TRUE;//Assigned(onMenuPesquisaClick) or assigned(AutoF8);
         if assigned(AutoF8) then
         begin
              if assigned(AutoF8.AutoCrud) then
              begin
                   vlMenu.Items[2].Enabled:=AutoF8.AutoCrud.PodeIncluir;
                   vlMenu.Items[4].Enabled:=AutoF8.AutoCrud.PodeEditar;
              end
              Else
              begin
                   vlMenu.Items[2].Enabled:=Assigned(OnMenuNovoClick);
                   vlMenu.Items[4].Enabled:=Assigned(OnMenuEditaClick);
              end;
         end
         Else
         begin
              vlMenu.Items[2].Enabled:=Assigned(OnMenuNovoClick);
              vlMenu.Items[4].Enabled:=Assigned(OnMenuEditaClick);
         end;
         Ponto := Button.ClientToScreen(Point(0, Button.Height));
         vlMenu.Popup(Ponto.X, Ponto.Y);
     end;
end;

destructor TsgDBLookupCombo.Destroy;
begin

  inherited;
end;

end.
