unit runscript;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SYSTEM.IniFiles, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Script, FireDAC.VCLUI.Error, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script,
  FireDAC.Phys.IBWrapper, FireDAC.ConsoleUI.Wait, JvExControls, JvAnimatedImage, JvGIFCtrl, Vcl.ExtCtrls, Vcl.CheckLst, System.StrUtils, Vcl.Samples.Spin, ACBrBase, ACBrSocket, ACBrIBPTax,
  System.SyncObjs, System.Threading;

type
  TFrmScripts = class(TForm)
    Memo1: TMemo;
    btnAutomatico: TButton;
    FDConnec: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDGUIxScriptDialog1: TFDGUIxScriptDialog;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQuery1: TFDQuery;
    FDScript1: TFDScript;
    FDIBBackup1: TFDIBBackup;
    FDTransaction1: TFDTransaction;
    Button1: TButton;
    PanelAguarde: TPanel;
    JvGIFAnimator1: TJvGIFAnimator;
    pinfo: TPanel;
    cbConfig: TComboBox;
    chkBackup: TCheckBox;
    chkIBPT: TCheckBox;
    chkCest: TCheckBox;
    chkListScripts: TCheckListBox;
    btnManual: TButton;
    Label1: TLabel;
    Label2: TLabel;
    spVersao: TSpinEdit;
    spatch: TSpinEdit;
    Button3: TButton;
    FDTransac: TFDTransaction;
    ACBrIBPTax1: TACBrIBPTax;
    FdIbpt: TFDQuery;
    FdIbptIBPT_ID: TIntegerField;
    FdIbptIBPT_NCM: TStringField;
    FdIbptIBPT_EX: TStringField;
    FdIbptIBPT_TABELA: TIntegerField;
    FdIbptIBPT_ALIQFEDNACIONAL: TCurrencyField;
    FdIbptIBPT_ALIQFEDIMPORTADO: TCurrencyField;
    FdIbptIBPT_ALIQESTADUAL: TCurrencyField;
    FdIbptIBPT_ALIQMUNICIPAL: TCurrencyField;
    btnExecutarScript: TButton;
    pnlExecutar: TPanel;
    mScript: TMemo;
    btnExecutar: TButton;
    btnCancelar: TButton;
    btnteste: TButton;
    FdIbptIBPT_DESCRICAO: TStringField;
    btnConexao: TButton;
    tmrTime: TTimer;
    procedure btnAutomaticoClick(Sender: TObject);
    procedure FDScript1BeforeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDScript1AfterExecute(Sender: TObject);
    procedure FDScript1Error(ASender, AInitiator: TObject; var AException: Exception);
    procedure FDScript1SpoolPut(AEngine: TFDScript; const AMessage: string; AKind: TFDScriptOutputKind);

    procedure Memo1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnManualClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnExecutarScriptClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
    procedure btntesteClick(Sender: TObject);
    procedure btnConexaoClick(Sender: TObject);
    procedure tmrTimeTimer(Sender: TObject);
    procedure cbConfigChange(Sender: TObject);
  private
    { Private declarations }
  public
    LinhaComando: integer;
    HostName: string;
    DataBase: string;
    Port: string;
    Protocol:string;
    Conexao : string;
    user: string;
    password :string;
    PATHBACKUP : string;
    altura : integer;
    MemoErros, MemoTemp : TStringList;
    descErros: integer;  //descosiderar erros
   procedure LerIni;
   procedure FazerConexao;

   function ListarScripts(const versao,  patch:integer): TStringList;
   function ExecutarArquivoScript(const arq:string): boolean;
   function ExecutarScript(const script: TMemo): Boolean;
   function DesCriptografa(const cifrado: string): string;
   function AbrirQuery1(const sql : string): boolean;
   function executar(const sql:string): boolean;
   function FazerBackup(const versao: string) : boolean;
   function strzero( nm:Variant;tam:integer ): string ;
   function AtualizarIBPT : Boolean;
  end;

var
  FrmScripts: TFrmScripts;

implementation

{$R *.dfm}

{ TForm1 }

function TFrmScripts.AbrirQuery1(const sql: string): boolean;
begin
  if not assigned (FDQuery1) then
    FDQuery1 := TFDQuery.Create(nil);
  FDQuery1.SQL.Clear;
  if not FDConnec.Connected then
  begin
    LerIni;
    FazerConexao;
  end;
  FDQuery1.Connection := FDConnec;
  FDQuery1.Close;
  try
    FDQuery1.Open(sql);
    result := true;
  except
    result := False;
    raise;
  end;
end;


procedure TFrmScripts.btnAutomaticoClick(Sender: TObject);
var versaosistema : string;
 ret,i : integer;
 patch : integer;
 backretorno, retorno: boolean;
 dir : string;
 arquivoErro: string;
begin
  try

    Application.ProcessMessages;
    memo1.Enabled := false;
    PanelAguarde.Show;
    Screen.Cursor := crHourGlass;
    Application.ProcessMessages;
    Memo1.Lines.Clear;
    MemoErros.Clear;
    LerIni;
    FazerConexao;
    Memo1.Lines.Add('Host:'+HostName );
    Memo1.Lines.Add('Database :'+DataBase );
    AbrirQuery1('SELECT SCRIPTADJUTOR,versao FROM VERSAOSISTEMA WHERE versao <> '''' ');
    if fdquery1.fieldbyname('SCRIPTADJUTOR').AsString = '' then
      versaosistema := fdquery1.fieldbyname('versao').AsString
    else
      versaosistema := fdquery1.fieldbyname('SCRIPTADJUTOR').AsString;
      ret := 0;
      for I := 1 to 3 do
        ret := ret + Pos('.',copy(versaosistema,ret+1,length(versaosistema)))  ;
    i:= pos('patch',versaosistema,ret+1);
    patch := StrToIntDef(copy(versaosistema,i+5,5),0);
    if i=0 then
    begin
      i:= pos('path',versaosistema,ret+1);
      patch := StrToIntDef(copy(versaosistema,i+4,5),0);
    end;

    if chkBackup.Checked then
    Begin
      if patch = 0 then
        backretorno:= FazerBackup(versaosistema)
      else
        backretorno:= FazerBackup(versaosistema+IntToStr(patch) );
    end;

    if chkBackup.Checked and backretorno then
    begin
      Memo1.Lines.Add('Backup realizado com sucesso');
      Application.ProcessMessages;
    end
    else
      Memo1.Lines.Add('Backup não realizado.');
//    if not backretorno and (MessageDlg('Backup não funcionou, deseja continuar mesmo assim ?', mtWarning, [mbYes, mbNo], 0) = mrNo) then
//      exit;
      chkListScripts.Items := ListarScripts(StrToIntDef(copy(versaosistema,ret+1,3),0), patch);
      if directoryexists( ExtractFilePath(Application.ExeName) + 'dados\Scripts\') then
         dir:= ExtractFilePath(Application.ExeName) + 'dados\Scripts\'
      else
         dir:= ExtractFilePath(Application.ExeName) +'ScriptDeveloper\';
      for I := 0 to chkListScripts.Items.Count-1 do
      begin
        retorno := ExecutarArquivoScript(Dir+ chkListScripts.Items[i]);
        if retorno  or (FDScript1.TotalErrors-descErros = 0 )then
           Memo1.Lines.Add('ok - ' + chkListScripts.Items[i] )
        else
          Memo1.Lines.Add( inttostr(FDScript1.TotalErrors-descErros) + ' erro(s) - ' +  chkListScripts.Items[i] )

      end;

    if chkListScripts.Items.Count > 0  then
      MessageDlg(IntToStr(chkListScripts.Items.Count)+ ' scripts executados', mtInformation, [mbOK], 0);

  //   LerScripts(StrToIntDef(copy(versaosistema,ret+1,3),0), patch);
    if chkIBPT.Checked then
    begin
     if  AtualizarIBPT then

       Memo1.Lines.Add('Atualizado IBPT com sucesso');
    end;
    if chkCest.Checked then
    begin
      Memo1.Lines.Add('Atualizando CEST');

      if fileexists(ExtractFilePath(Application.ExeName) + 'dados\Scripts\'+'CEST2019.SQL')  then
        retorno := ExecutarArquivoScript(ExtractFilePath(Application.ExeName) + 'dados\Scripts\'+'CEST2019.SQL')
      else
      if FileExists(ExtractFilePath(Application.ExeName) + 'ScriptDeveloper\'+'CEST2019.SQL')   then
        retorno := ExecutarArquivoScript(ExtractFilePath(Application.ExeName) + 'ScriptDeveloper\'+'CEST2019.SQL');
      if retorno then
      Memo1.Lines.Add('Atualizado CEST com sucesso');
    end;

  finally
    PanelAguarde.Hide;
    memo1.Enabled := true;
    Screen.Cursor := crDefault;
    dir :=ExtractFilePath(Application.ExeName)+'dados\logscript';
    if not directoryexists(dir) then
       CreateDir(dir);

     if (MemoErros.Count > 0) or  (Memo1.Lines.Count >0) then
     begin
          MemoErros.Add('Sumário: ')    ;
          MemoErros.AddStrings(Memo1.Lines);
          arquivoErro := dir+   '\'+ FormatDateTime('_ddmmyyyy_hhnn',now) +  '.log';
          MemoErros.SaveToFile(arquivoErro , TEncoding.UTF8 );
          Memo1.Lines.Add('Arquivo de log em : '+arquivoErro) ;
     end;

  end;

end;

procedure TFrmScripts.Button3Click(Sender: TObject);

begin

  chkListScripts.Items := ListarScripts(spVersao.value,spatch.Value);
  btnManual.Enabled := True;
end;

procedure TFrmScripts.cbConfigChange(Sender: TObject);
begin
  LerIni;
  FazerConexao;
end;

procedure TFrmScripts.btnExecutarScriptClick(Sender: TObject);
begin
  mScript.Lines.Clear;
  AnimateWindow(pnlExecutar.Handle, 500, AW_HOR_NEGATIVE or  AW_HIDE);
  pnlExecutar.Show;
end;

function TFrmScripts.AtualizarIBPT: Boolean;
var pesq: TSearchRec;
    UF :STRING;
    j,i:integer;
    sql: string;
begin
  AbrirQuery1('SELECT EMP_UF FROM EMP0000') ;
  UF:= FDQuery1.FieldByName('EMP_UF').AsString;
  j:= FindFirst(ExtractFilePath(Application.ExeName)+'ibpt\'+'TabelaIBPTax'+UpperCase(UF)+'*.CSV', faAnyFile, pesq);
  if J=0 then
  begin
     if ACBrIBPTax1.AbrirTabela(ExtractFilePath(Application.ExeName)+'ibpt\'+pesq.Name) then
     begin
       Application.ProcessMessages;
       //CABEÇALHO
       Memo1.Lines.Add ( 'Atualizando IBPT para estado do '+UF);
       Memo1.Lines.Add ( 'Versão: ' + ACBrIBPTax1.VersaoArquivo );
       Memo1.Lines.Add ( 'Vigência: ' + Format('%s a %s', [DateToStr(ACBrIBPTax1.VigenciaInicio), DateToStr(ACBrIBPTax1.VigenciaFim)]));
       Memo1.Lines.Add ( 'Chave: ' + ACBrIBPTax1.ChaveArquivo);
       Memo1.Lines.Add ( 'Fonte: ' + ACBrIBPTax1.Fonte);

        executar('DELETE FROM IBPT0000');
        executar('DELETE FROM IBPT0001');
        SQL:= 'INSERT INTO IBPT0001 (IBPT_VERSAO, IBPT_VIGENCIA_INI, IBPT_VIGENCIA_FIM, IBPT_CHAVE, IBPT_FONTE) '+
              ' VALUES ('+QuotedStr(ACBrIBPTax1.VersaoArquivo)+','+QuotedStr(FormatDateTime('YYYY-MM-DD', ACBrIBPTax1.VigenciaInicio))+','+
               QuotedStr(FormatDateTime ('YYYY-MM-DD', ACBrIBPTax1.VigenciaFim))+','+ QuotedStr(ACBrIBPTax1.ChaveArquivo)+','+
               QuotedStr(copy(ACBrIBPTax1.Fonte,1,8)  ) +')';
         executar(sql);

          FdIbpt.Open;
          j:= ACBrIBPTax1.Itens.Count-1;
          try

        //    TParallel.For(0,j,
//            procedure  (i: Int64)
//            begin
              for I := 0 to ACBrIBPTax1.itens.count-1 do
              begin

               try
                  FdIbpt.Insert;

                  FdIbptIBPT_ID.AsInteger := i+1;
                  FdIbptIBPT_NCM.AsString := ACBrIBPTax1.Itens[I].NCM;
                  FdIbptIBPT_DESCRICAO.AsString := copy(ACBrIBPTax1.Itens[I].Descricao,1,250);
                  if ACBrIBPTax1.Itens[I].Excecao <> '' then
                    FdIbptIBPT_EX.AsString := copy( trim(ACBrIBPTax1.Itens[I].Excecao),1,3)
                  else
                    FdIbptIBPT_EX.AsString := '';
                  FdIbptIBPT_Tabela.AsInteger := Integer(ACBrIBPTax1.Itens[I].Tabela);
                  FdIbptIBPT_ALIQFEDNACIONAL.AsFloat := ACBrIBPTax1.Itens[I].FederalNacional;
                  FdIbptIBPT_ALIQFEDIMPORTADO.AsFloat := ACBrIBPTax1.Itens[I].FederalImportado;
                  FdIbptIBPT_ALIQESTADUAL.AsFloat     := ACBrIBPTax1.Itens[I].Estadual;
                  FdIbptIBPT_ALIQMUNICIPAL.AsFloat    := ACBrIBPTax1.Itens[I].Municipal;

                    FdIbpt.Post;
                except
                 on e:Exception do
                   raise Exception.Create(e.Message);
                end;
              end;
//              end
//            );



          finally
           FdIbpt.ApplyUpdates(-1)  ;
           FdIbpt.Close
          end;

          Memo1.Lines.Add ( 'Atualizados '+IntToStr(I)+' NCM');
     end;



  end
  else
  begin
     raise Exception.Create('IBPT para o estado '+ uf +' não encontrado');
  end;
end;

procedure TFrmScripts.btnCancelarClick(Sender: TObject);
begin
  AnimateWindow(pnlExecutar.Handle, 500, AW_HOR_NEGATIVE or  AW_HIDE);
  pnlExecutar.Hide;
end;

procedure TFrmScripts.btnConexaoClick(Sender: TObject);
begin
 LerIni;
 FazerConexao;
 if FDConnec.Connected then
   ShowMessage('ok');
end;

procedure TFrmScripts.btnExecutarClick(Sender: TObject);
begin
  if ExecutarScript(mScript) then
  begin
    ShowMessage('Executado com sucesso');
    AnimateWindow(pnlExecutar.Handle, 500, AW_HOR_NEGATIVE or  AW_HIDE);
    pnlExecutar.Hide;
  end
  else
  begin
    ShowMessage('ocorreu erros');
  end;
end;

procedure TFrmScripts.btnManualClick(Sender: TObject);
var versaosistema : string;
 ret,i : integer;
 patch,countExe : integer;
 backretorno, retorno: boolean;
 dir,arquivoErro : string;
begin
  try
    Application.ProcessMessages;

    memo1.Enabled := false;
    PanelAguarde.Show;
    Screen.Cursor := crHourGlass;
    Application.ProcessMessages;
    Memo1.Lines.Clear;
    MemoErros.Clear;
    LerIni;
    FazerConexao;
    Memo1.Lines.Add('Host:'+HostName );
    Memo1.Lines.Add('Database :'+DataBase );
    AbrirQuery1('SELECT SCRIPTADJUTOR,versao FROM VERSAOSISTEMA WHERE versao <> '''' ');
    if fdquery1.fieldbyname('SCRIPTADJUTOR').AsString = '' then
      versaosistema := fdquery1.fieldbyname('versao').AsString
    else
      versaosistema := fdquery1.fieldbyname('SCRIPTADJUTOR').AsString;
      ret := 0;
      for I := 1 to 3 do
        ret := ret + Pos('.',copy(versaosistema,ret+1,length(versaosistema)))  ;
    i:= pos('patch',versaosistema,ret+1);
    patch := StrToIntDef(copy(versaosistema,i+5,5),0);
    if i=0 then
    begin
      i:= pos('path',versaosistema,ret+1);
      patch := StrToIntDef(copy(versaosistema,i+4,5),0);
    end;

    if chkBackup.Checked then
    Begin
      if patch = 0 then
        backretorno:= FazerBackup(versaosistema)
      else
        backretorno:= FazerBackup(versaosistema+IntToStr(patch) );
    end;

    if chkBackup.Checked and backretorno then
    begin
      Memo1.Lines.Add('Backup realizado com sucesso');
      Application.ProcessMessages;
    end
    else
      Memo1.Lines.Add('Backup não realizado.');
    if directoryexists( ExtractFilePath(Application.ExeName) + 'dados\Scripts\') then
       dir:= ExtractFilePath(Application.ExeName) + 'dados\Scripts\'
    else
       dir:= ExtractFilePath(Application.ExeName) +'ScriptDeveloper\';
    countExe:=0;
    for I := 0 to chkListScripts.Items.Count-1 do
    begin
     if chkListScripts.Checked[i] then
     begin
       inc(countExe);
       retorno := ExecutarArquivoScript(Dir+ chkListScripts.Items[i]);
       if retorno  or (FDScript1.TotalErrors-descErros = 0 )then
          Memo1.Lines.Add('ok - ' + chkListScripts.Items[i] )
       else
         Memo1.Lines.Add( inttostr(FDScript1.TotalErrors-descErros) + ' erro(s) - ' +  chkListScripts.Items[i] )
     end;
    end;
   //   LerScripts(StrToIntDef(copy(versaosistema,ret+1,3),0), patch);
    if chkIBPT.Checked then
    begin
      if  AtualizarIBPT then
        Memo1.Lines.Add('Atualizado IBPT com sucesso');
    end;
    if chkCest.Checked then
    begin
      Memo1.Lines.Add('Atualizando CEST');

      if fileexists(ExtractFilePath(Application.ExeName) + 'dados\Scripts\'+'CEST2019.SQL')  then
        retorno := ExecutarArquivoScript(ExtractFilePath(Application.ExeName) + 'dados\Scripts\'+'CEST2019.SQL')
      else
      if FileExists(ExtractFilePath(Application.ExeName) + 'ScriptDeveloper\'+'CEST2019.SQL')   then
        retorno := ExecutarArquivoScript(ExtractFilePath(Application.ExeName) + 'ScriptDeveloper\'+'CEST2019.SQL');
      if retorno then
      Memo1.Lines.Add('Atualizado CEST com sucesso');
    end;
    if countExe > 0  then
      MessageDlg(IntToStr(countExe)+ ' scripts executados', mtInformation, [mbOK], 0);
  finally
    PanelAguarde.Hide;
    memo1.Enabled := true;
    Screen.Cursor := crDefault;
    dir :=ExtractFilePath(Application.ExeName)+'dados\logscript';
    if not directoryexists(dir) then
       CreateDir(dir);

     if (MemoErros.Count > 0) or (Memo1.Lines.Count >0) then
     begin
          MemoErros.Add('Sumário: ')    ;
          MemoErros.AddStrings(Memo1.Lines);
          arquivoErro := dir+   '\'+ FormatDateTime('_ddmmyyyy_hhnn',now) +  '.log';
          MemoErros.SaveToFile(arquivoErro , TEncoding.UTF8 );
          Memo1.Lines.Add('Arquivo de log em : '+arquivoErro) ;
     end;
  end;

end;

procedure TFrmScripts.btntesteClick(Sender: TObject);
begin
  AtualizarIBPT;
end;

function TFrmScripts.DesCriptografa(const cifrado: string): string;
var
   Tamanho, n: integer;
   Retorno: String;
begin
     Tamanho := Length(cifrado);
     Retorno := '';
     for n := 1 to Tamanho do
     begin
          {decifrar subtraindo, no caso, 127 (ou o número
          usado para cifrar) ao valor ASCII de cada
          caracter da senha}
          Retorno := Retorno + Chr(Ord(cifrado[n]) - 131);
     end;
     DesCriptografa := Retorno;
end;

function TFrmScripts.executar(const sql: string): boolean;
var ExeSQL: TFDQuery;
begin
  if not FDConnec.Connected then
  begin
    LerIni;
    FazerConexao;
  end;
   ExeSQL := TFDQuery.Create(FDConnec);
  try
    FDTransac.Connection := FDConnec;
    ExeSQL.Transaction := FDTransac;
    ExeSQL.SQL.Text := sql;
    ExeSQL.Connection := FDConnec;

     FDConnec.StartTransaction;
    try
      //ExeSQL.Prepare;
      ExeSQL.ExecSQL ;
      FDConnec.Commit;
      result := True;

    except
     on e: exception do
     begin
       FDConnec.Rollback;
       result := False;
       raise Exception.Create(e.Message);
     end;
    end;
  finally
    ExeSQL.Free;
  end;

end;

function TFrmScripts.ExecutarArquivoScript(const arq: string): boolean;
begin
 result:= False;
  with FDScript1 do
  begin
    SQLScriptFileName := '';
    Arguments.Clear;
    SQLScriptFileName := arq;
    ScriptOptions.CharacterSet := 'ISO8859_1';
    //result := ValidateAll;
    try
      // result:=  ValidateAll;
      result:=  ExecuteAll;
      result:=true;
    except

    end;

  end;
end;

function TFrmScripts.ExecutarScript(const script: TMemo): Boolean;
var i : integer;

begin
  if not FDConnec.Connected then
  begin
    LerIni;
    FazerConexao;
  end;

  with FDScript1 do
  begin
    //Arguments.Clear;
    SQLScripts.Clear;
    ScriptOptions.CharacterSet := 'ISO8859_1';
    SQLScripts.Add;
    with SQLScripts[0].SQL do
    begin
      for i:= 0 to script.Lines.Count-1 do
         Add(script.Lines[i]);
    end;

    //result := ValidateAll;
    try
      // result:=  ValidateAll;
      result:=  ExecuteAll;

    except
      on e: Exception do
        ShowMessage(e.Message);
    end;

  end;
end;

function TFrmScripts.FazerBackup(const versao: string) : boolean;
begin
  result := True;
  FDIBBackup1.DriverLink := FDPhysFBDriverLink1;

  FDIBBackup1.UserName := user;
  FDIBBackup1.Password := password;
  FDIBBackup1.Database :=DataBase;
  FDIBBackup1.Port := StrToIntDef(port,0);

  if conexao = 'R' then
   begin
    FDIBBackup1.Host := HostName;
    FDIBBackup1.Protocol := ipTCPIP;
   end
   else
   begin
     FDIBBackup1.Protocol := ipLocal;
   end;

  FDIBBackup1.Host := HostName;



  FDIBBackup1.BackupFiles.Add(PATHBACKUP +'\RWBDADM_'+ versao+'.fbk');
  Memo1.Lines.Add('Fazendo backup em :'+PATHBACKUP +'\RWBDADM_'+ versao+'.fbk') ;
  try
   FDIBBackup1.Backup;
   result := True;
  except

    on e:exception do
    begin
      result:= False;
      memo1.Lines.Add(e.Message)

    end;
  end;
end;

procedure TFrmScripts.FazerConexao;
begin
//  FDPhysFBDriverLink1.VendorHome := ExtractFilePath(Application.ExeName) ;
 FDConnec.connected := False;
 FDPhysFBDriverLink1.VendorLib := ExtractFilePath(Application.ExeName) +'fbclient.dll';
 FDPhysFBDriverLink1.Release;
 with FDConnec do
 begin

   connected := False;
   Params.Values['Database'] := DataBase;
   params.Values['user_name'] := user;
   params.Values['password'] := password;
   if (conexao = 'R')  then
   begin
     params.Values['server'] := HostName;
     params.Values['Protocol']:= 'ipTCPIP';
   end
   else
   begin
    params.Values['Protocol']:= 'ipLocal';
     params.Values['server'] :='';
   end;


   params.Values['port'] := port;
   params.Values['CharacterSet'] :='ISO8859_1';// 'UTF8';
   params.Values['DriverID'] := 'FB';

   params.Values['SQLDialect']:= '3';

 end;
 TRY
  tmrTime.Enabled := true;
  FDConnec.connected := True;
  tmrTime.Enabled := False;
  PanelAguarde.Visible:=False;
  btnAutomatico.Enabled := True;
  btnManual.Enabled := True;
  btnExecutarScript.Enabled := True;
 EXCEPT
  on E: EFDDBEngineException do
  begin
    tmrTime.Enabled := False;
    PanelAguarde.Visible:=False;
    btnAutomatico.Enabled := False;
    btnManual.Enabled := False;
    btnExecutarScript.Enabled := False;

    case E.Kind of
      ekUserPwdInvalid: raise Exception.Create('Usuário ou senha inválidos');  // user name or password are incorrect
      ekUserPwdExpired: raise Exception.Create('Usuário ou senha experiados');  // user password is expired
      ekServerGone: raise Exception.Create('Servidor não acessível');      // DBMS is not accessible due to some reason
    end;
  end;
  ON E:Exception DO
  begin
    tmrTime.Enabled := False;
    PanelAguarde.Visible:=False;
    btnAutomatico.Enabled := False;
    btnManual.Enabled := False;
    btnExecutarScript.Enabled := False;
    raise Exception.Create(E.Message);

  end;

 END;

end;

procedure TFrmScripts.FDScript1AfterExecute(Sender: TObject);
begin
//  if FDScript1.TotalErrors = 0 then
//    MemoErros.Add('Script executado com sucesso')
//  else
//  begin
  if (FDScript1.TotalErrors-descErros) > 0 then
  begin
    MemoErros.AddStrings(MemoTemp);
    FDScript1.AllSpools.Text;
    MemoErros.Add('Script com '+ IntToStr(FDScript1.TotalErrors-descErros)+ ' erros ');
    MemoErros.Add('Fim script -->'+ FDScript1.SQLScriptFileName);
  end;

  MemoTemp.Clear;
end;

procedure TFrmScripts.FDScript1BeforeExecute(Sender: TObject);
begin
  MemoTemp.Add('Inicio script -->'+ FDScript1.SQLScriptFileName);
  descErros := 0 ;
end;

procedure TFrmScripts.FDScript1Error(ASender, AInitiator: TObject; var AException: Exception);
begin
  MemoTemp.Add(AException.Message)
end;

procedure TFrmScripts.FDScript1SpoolPut(AEngine: TFDScript; const AMessage: string; AKind: TFDScriptOutputKind);
var fil, fil2, rel , rel2: integer ;
  strLinha : string;
begin
  if AKind = soecho then
     LinhaComando :=  AEngine.currentcommand.Parser.LineNumber;
  if AKind = soError then
  begin
   strLinha := 'Fim de Linha '+ intToStr(LinhaComando); //+' Fim de linha '+IntToStr(AEngine.currentcommand.parser.position.y);
   //strLinha := 'Fim de linha '+IntToStr(AEngine.currentcommand.Parser.LineNumber);
   if (pos('store duplicate value',amessage)>0) and (pos('RDB$FIELD_NAME',amessage)> 0)  then
   begin
     fil:= pos(('RDB$FIELD_NAME'), amessage);
     rel:= pos(('RDB$RELATION_NAME'), amessage);
     if (fil>0) and (rel >0) then
     begin
      // field
      //exe :ERROR: unsuccessful metadata update'#$D#$A'STORE RDB$RELATION_FIELDS failed'#$D#$A'attempt to store duplicate value
      //(visible to active transactions) in unique index "RDB$INDEX_15"'#$D#$A'Problematic key value is ("RDB$FIELD_NAME" = ''PMT_AMX_ENTRADA'', "RDB$RELATION_NAME" = ''PRMT0001'')
       fil := fil+ pos('=',copy(amessage,fil,200));
       fil2:=  fil+ pos('''',copy(amessage,fil+2))-1;
       //relations
       rel := rel+pos('=',copy(amessage,rel,200));
       rel2:= rel+pos('''',copy(amessage,rel+2)) -1;

       MemoTemp.Add(strLinha+ '. Tabela já existe no banco ->'+copy(amessage,fil+ 2 ,fil2-fil ) + '.'+copy(amessage,rel+ 2 ,rel2-rel ) );

     end
     else
       MemoTemp.Add(strLinha+ '. '+amessage);
   end
   else if (pos('store duplicate value',amessage)>0) and (pos('RDB$TRIGGER_NAME',amessage)> 0)  then
   begin
    fil:= pos('RDB$TRIGGER_NAME', amessage);
    fil := fil+ pos('=',copy(amessage,fil,200));
    MemoTemp.Add(strLinha+ '. Trigger Já existe -->' +copy(amessage,fil+1) );

   end
   else if (pos('unsuccessful metadata update',amessage)> 0) and (pos('Table',amessage)>0)  and (pos('already exists',amessage) >0) then
   begin
    fil := pos('Table',amessage)  ;  // tamanho table de 5
    fil2 := pos('already exists',amessage);
    MemoTemp.Add(strLinha+ '. Tabela Já existe -->' +copy(amessage,fil+5,fil2-fil+5) ) ;
   end
   else if (pos('unsuccessful metadata update',amessage)> 0) and (pos('Generator',amessage)>0)  and (pos('already exists',amessage) >0) then
   begin
    fil := pos('Generator',amessage)  ;   //tamanho de Generator 9
    fil2 := pos('already exists',amessage);
    MemoTemp.Add(strLinha+ '. Generator Já existe -->' +copy(amessage,fil+9,fil2-fil+9))  ;
   end
   else
   if pos('Table unknown',amessage)>0 then
   begin
     fil := pos('Table unknown',amessage);
     MemoTemp.Add(strLinha+ '. '+StringReplace(copy(amessage,fil), 'Table unknown', 'Tabela não existe',[rfIgnoreCase])) ;

   end
   else
   if (pos('invalid transaction handle',amessage)>0 ) and (pos('expecting explicit',amessage)>0) then
     Inc(descErros)
   else
     MemoTemp.Add(strLinha+ '. '+amessage);

  end;
end;

procedure TFrmScripts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
  FreeAndNil(MemoErros);
  FreeAndNil(MemoTemp);
  if FDConnec.connected then
    FDConnec.connected := False;
  //FDPhysFBDriverLink1.Release;


 except


 end;
end;

procedure TFrmScripts.FormCreate(Sender: TObject);
begin
  MemoErros:= TStringList.Create;
  MemoTemp := TStringList.Create;
  Self.Caption := 'Atualização do banco Adjuntor versão 1.2 em ' + '13/03';
end;

procedure TFrmScripts.FormShow(Sender: TObject);
var
  pesq : TSearchRec;
  j:integer;
  fConfiguracoesIni : TStringList;
  verIBPT, verCSV: Integer;

begin
  pnlExecutar.Hide;
  j:= FindFirst(ExtractFilePath(Application.ExeName)+'Ad*.ini', faAnyFile, pesq);
  if j = 0 then
  begin
    fConfiguracoesIni:= TStringList.Create;

    repeat
       fConfiguracoesIni.Add(pesq.Name);


    until FindNext(pesq) <> 0 ;
    FindClose(pesq);
  end;
  if Assigned(fConfiguracoesIni) then
  begin
    cbConfig.Items :=  fConfiguracoesIni;
    FreeAndNil(fConfiguracoesIni);
  end;

  j:= FindFirst(ExtractFilePath(Application.ExeName)+'ibpt\'+'TabelaIBPTax*.CSV', faAnyFile, pesq);
  if J=0 then
  begin
   //    ShowMessage(ExtractFilePath(Application.ExeName)+'ibpt\');

    AbrirQuery1('SELECT ibpt_versao,IBPT_VIGENCIA_FIM FROM IBPT0001 ');
    if FDQuery1.IsEmpty then
      verIBPT :=0
    else
      verIBPT := StrToIntDef(
                 copy(FDQuery1.FieldByName('ibpt_versao').AsString,1, pos('.',FDQuery1.FieldByName('ibpt_versao').AsString)-1 ),0);
      verCSV :=  StrToIntDef(copy(pesq.Name,15, 2 ),0);
    if verIBPT < vercsv then
    begin
      chkIBPT.Caption := 'Atualizar IBPT - *** Desatualizado ***';
      chkIBPT.Hint :=  'Desatualizado desde  '+FormatDateTime('dd/mm/yyyy',(FDQuery1.FieldByName('IBPT_VIGENCIA_FIM').AsDateTime));
      chkIBPT.Checked := true;
    end
    else if verIBPT = verCSV then
    begin
      //verificar a versão menor
      verIBPT := StrToIntDef(
                 copy(FDQuery1.FieldByName('ibpt_versao').AsString,4, 1),0);
      verCSV :=  StrToIntDef(copy(pesq.Name,18,1 ),0);
      if verIBPT < vercsv then
      begin
        chkIBPT.Caption := 'Atualizar IBPT - *** Desatualizado ***';
        chkIBPT.Hint :=  'Desatualizado desde  '+FormatDateTime('dd/mm/yyyy',(FDQuery1.FieldByName('IBPT_VIGENCIA_FIM').AsDateTime));
        chkIBPT.Checked := true;
      end
      else if verIBPT = verCSV then
      begin
        try
         // ShowMessage(IntToStr (ord(copy( FDQuery1.FieldByName('ibpt_versao').AsString,6, 1)[1] )));
          verIBPT := ord(copy( FDQuery1.FieldByName('ibpt_versao').AsString,6, 1)[1] );
          verCSV :=  ord(copy(pesq.Name,20,1 )[1]);
        except
          verIBPT := 0;
          verCSV := 1;
        end;
        if verIBPT < vercsv then
        begin
          chkIBPT.Caption := 'Atualizar IBPT - *** Desatualizado ***';
          chkIBPT.Hint :=  'Desatualizado desde  '+FormatDateTime('dd/mm/yyyy',(FDQuery1.FieldByName('IBPT_VIGENCIA_FIM').AsDateTime));
          chkIBPT.Checked := true;
        end
        else if verIBPT = verCSV then
        begin
          chkIBPT.Caption :='Atualizar IBPT';
          chkIBPT.Hint := 'Atualiza as taxas IBPT da versão '  +copy(pesq.Name,15, 6 )
        end;
      end;
    end;
      

  end;
end;

procedure TFrmScripts.LerIni;
var
  ArqIni: TIniFile;
  DataBaseLocal : string;
  NomeArquivoIni : string;
begin
  if (cbConfig.Items[cbConfig.ItemIndex] = 'Adjutor')  or (cbConfig.ItemIndex = -1)  then
    NomeArquivoIni := ExtractFilePath(Application.ExeName)+'Adjutor.ini'
  else
    NomeArquivoIni := ExtractFilePath(Application.ExeName)+cbConfig.Items[cbConfig.ItemIndex] ;

  ArqIni := TIniFile.Create(NomeArquivoIni);
  try
    HostName :=  ArqIni.ReadString('SERVIDOR','HOSTNAME','localhost');
   // database :=  ExtractFilePath(Application.ExeName)+ '\'+ ArqIni.ReadString('conexao','database','');
    database :=   ArqIni.ReadString('SERVIDOR','PATHREMOTO','');
    DataBaseLocal :=   ArqIni.ReadString('SERVIDOR','PATHLOCAL','');
    PATHBACKUP := ArqIni.ReadString('SERVIDOR','PATHBACKUP','');
    if PATHBACKUP = '' then
      PATHBACKUP := ExtractFilePath(Application.ExeName);
    Port :=  ArqIni.ReadString('SERVIDOR','port','3050');
    user :=  DesCriptografa(ArqIni.ReadString('SERVIDOR','USUARIO','SYSDBA'));
    password := DesCriptografa(ArqIni.ReadString('SERVIDOR','SENHA','MASTERKEY'));
    Conexao :=  ArqIni.ReadString('SERVIDOR','CONEXAO','L');
    if (HostName = '127.0.0.1') and (Conexao = 'R') then
    begin
      Conexao := 'L' ;
      DataBaseLocal := database;
    end;
    if conexao = 'L' then
    begin
      if DataBaseLocal <> '' then
        DataBase := DataBaseLocal;
    end;

  finally
    FreeAndNil(ArqIni);
  end;

end;


function TFrmScripts.ListarScripts(const versao, patch: integer): TStringList;
var
   lista: TStringList;
   dir : string;
   pesq : TSearchRec;
    ret,i, j,posPatch: integer;

   verscript : integer;

   patchscript : integer;
begin
  lista := TStringList.Create;
  try
    dir:= ExtractFilePath(Application.ExeName) + 'dados\Scripts\';

    j:= FindFirst(Dir+'Adjutor*.sql', faAnyFile, pesq);
    if j<>0 then
    begin
       dir:= ExtractFilePath(Application.ExeName) + 'ScriptDeveloper\';
       j:= FindFirst(Dir+'Adjutor*.sql', faAnyFile, pesq);
    end;
    if j = 0 then
    repeat
      ret := 0;
      for I := 1 to 3 do
        ret := ret + Pos('.',copy(pesq.Name,ret+1,length(pesq.Name)))  ;
      // pega a versão do arquivo
      verscript := StrToIntDef(copy(pesq.Name,ret+1,3),0);

     //verifica se tem patch
      posPatch:= pos('patch',pesq.Name,ret+1);
      patchscript := StrToIntDef(StringReplace(copy(pesq.Name,posPatch+5,6),'.sql','',[rfReplaceAll, rfIgnoreCase]),0);
      if posPatch=0 then
      begin
        posPatch:= pos('path',pesq.Name,ret+1);
        patchscript := StrToIntDef(StringReplace(copy(pesq.Name,posPatch+4,6),'.sql','',[rfReplaceAll, rfIgnoreCase]),0);
      end;


      if (verscript > versao) or ((verscript = versao) and (patchscript>0) and (patch<patchscript ) )then
      begin

          lista.Add(pesq.Name);
      end

    until FindNext(pesq) <> 0 ;


  finally
    Result:= lista;
    //FreeAndNil(lista);
  end;
end;

procedure TFrmScripts.Memo1Change(Sender: TObject);
begin
   Application.ProcessMessages;
end;

function TFrmScripts.strzero(nm: Variant; tam: integer): string;
var y,n: integer;
begin
     if VarType(nm)=varInteger then
        result := inttostr(nm)
     Else
        result := IntToStr(StrToIntDef(nm,0));
     y := length( result );
     if y < tam then
        for n := 1 to (tam-y) do
            result := '0'+result;

end;

procedure TFrmScripts.tmrTimeTimer(Sender: TObject);
begin
  Application.ProcessMessages;
  PanelAguarde.Visible:=true;



end;

end.
