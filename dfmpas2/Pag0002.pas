{*************************************************************
| Programa...: Pag0002  - Nome formulario = FormPagParcelas
| Objetivo...: Controle de Parcela do Contas à Pagar
| Analista...: Márcio Neu Pacheco
| Programador.: Márcio
|
| Comentários:
|
| Criação..........: Nov/98
| Ultima Alteração.: Ago/11
| Alterado por.....: Márcio
|
**************************************************************}
unit Pag0002;

interface

uses BaseDBForm, System.Classes, Data.DBXFirebird, Data.FMTBCd, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls,
     SgDbSeachComboUnit, RxToolEdit, RxDBCtrl, Vcl.Controls, Vcl.Mask, ACBrETQ, SysUtils, DIALOGS,
     Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, JvExMask, JvToolEdit, JvDBControls, system.StrUtils ;

type
  TFormContasPagParcelas = class(TfrmBaseDB)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    DbePpc_Banco: TDBEdit;
    Label3: TLabel;
    Label6: TLabel;
    DbePpc_Vlparc: TDBEdit;
    DbePpc_Obs: TDBEdit;
    Label5: TLabel;
    Label4: TLabel;
    DbePpc_Vlpago: TDBEdit;
    Label8: TLabel;
    DBPPC_MULTA: TDBEdit;
    Label10: TLabel;
    Label24: TLabel;
    DBePpc_decto: TDBEdit;
    Label19: TLabel;
    Label11: TLabel;
    DbePpc_Juros: TDBEdit;
    DbeBan_Codigo: TDBEdit;
    Label9: TLabel;
    DBEPPC_NOSSONUM: TDBEdit;
    DBEPPC_STATUS: TDBComboBox;
    GrpExclusao: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBEdit3: TDBEdit;
    Edt_Usu_Cod: TDBEdit;
    Edt_Usu_Nome: TDBEdit;
    DBEdt_Motivo: TDBEdit;
    Panel1: TPanel;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label14: TLabel;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    EdFornecedor: TEdit;
    Label28: TLabel;
    DBChk_Previsao: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    CbxBco: TSgDbSearchCombo;
    qBan: TSQLQuery;
    DbDtPPC_VENCTO: TJvDBDateEdit;
    DbDtPPC_PAGTO: TJvDBDateEdit;
    edFPagto: TSgDbSearchCombo;
    Label12: TLabel;

    procedure FormShow(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure DBPPC_MULTAExit(Sender: tObject);
    procedure DbePpc_VlpagoExit(Sender: tObject);
    procedure DbeBan_CodigoExit(Sender: tObject);
    procedure DbDtPPC_VENCTOExit(Sender: tObject);
    procedure DbDtPPC_PAGTOExit(Sender: tObject);
    procedure CbxFormaClick(Sender: tObject);
    procedure DbePpc_BancoClick(Sender: tObject);
    procedure FormCreate(Sender: TObject);
    procedure CbxBcoSelect(Sender: TObject);
  private

    rValorParcelaAntes,
    rValorParcelaDepois:Currency;

    procedure Calcular;

    procedure Habilita_Objetos;
    procedure Desabilita_Objetos;

    procedure Verifica_Se_Exclui_Registro_Principal(sCodigo,sEmpresa:String);

  Public
      bConfirmar_Exclusao_parcela : Boolean;
  end;

Var
   FormContasPagParcelas: TFormContasPagParcelas;

implementation

uses Uteis, PAG0001, DataMov, Pag0004, Motivo, iniciodb ;

{$R *.DFM}

procedure TFormContasPagParcelas.HabilitaBotoes;
begin
    Bit_Excluir.Enabled  := True;
    Bit_Sair.Enabled     := True;
    Bit_Gravar.Enabled   := False;
    Bit_Cancelar.Enabled := False;
end;

procedure TFormContasPagParcelas.DesabilitaBotoes;
begin
    Bit_Excluir.Enabled  := False;
    Bit_Sair.Enabled     := False;
    Bit_Gravar.Enabled   := True;
    Bit_Cancelar.Enabled := True;
end;

procedure TFormContasPagParcelas.Bit_ExcluirClick(Sender: tObject);
begin
    if (DataMovimento.CdsPagarParcPPC_EXCLUSAO.AsString = 'N') then
    begin
          if (DataMovimento.CdsPagarParcPPC_SITPAG.AsString = 'L') then   //evita exclussão de parcelas liquidada
                 uteis.aviso('Não posso excluir uma conta "Liquidada" !')
          else
          if uteis.confirmacao ( 'Deseja Excluir a Parcela?')= Mryes then
          begin

                   FrmMotivo := TFrmMotivo.Create(self);
                   try
                      FrmMotivo.Edt_Motivo.MaxLength := 20;
                      FrmMotivo.ShowModal;
                      if (bConfirmar_Exclusao_parcela) then
                      begin
                            DataMovimento.CdsPagarParc.Edit;
                            DataMovimento.CdsPagarParcPPC_MOTIVO_EXCLUSAO.AsString := FrmMotivo.Edt_Motivo.Text;
                            DataMovimento.CdsPagarParcPPC_DATA_EXCLUSAO.AsString   := DateToStr(now);
                            DataMovimento.CdsPagarParcPPC_HORA_EXCLUSAO.AsString   := TimeToStr(now);
                            DataMovimento.CdsPagarParcUSU_CODIGO.AsString          := dbInicio.Usuario.Codigo;
                            DataMovimento.CdsPagarParcUSU_LOGIN.AsString           := dbInicio.Usuario.nome;
                            DataMovimento.CdsPagarParcPPC_EXCLUSAO.AsString        := 'S';
                            DataMovimento.CdsPagarParcPPC_STATUS.AsString          := 'Excluída';
                            DataMovimento.CdsPagarParcPPC_SITPAG.AsString          := 'X';
                            DataMovimento.CdsPagarParc.ApplyUpdates(0);
                            {Verifica se todas as parcelas foram excluídas}
                            Verifica_Se_Exclui_Registro_Principal(DBEdit2.Text,DataMovimento.CdsPagarParcEMP_CODIGO.AsString);
                      end;
                   finally
                      FreeAndNil( FrmMotivo );
                   end;
                   Close;
          end;
    end
    else
          uteis.aviso('Registro Excluído !');
end;

procedure TFormContasPagParcelas.Bit_GravarClick(Sender: tObject);
begin
    if (DbDtPPC_PAGTO.date = 0) and (DbePpc_Vlpago.Field.AsCurrency > 0) then
       begin
           uteis.aviso('Informe a data de pagamento !');
           DbDtPPC_PAGTO.SetFocus;
       end
    else
    if (DbDtPPC_PAGTO.date > 0) and (DbePpc_Vlpago.Field.AsCurrency = 0) then
       begin
           uteis.aviso('Informe o valor do pagamento !');
           DbePpc_Vlpago.SetFocus;
       end
    else
    if (DbDtPPC_VENCTO.Date = 0) then
       begin
           uteis.aviso('Digite o vencimento.');
           DbDtPPC_VENCTO.SetFocus;
       end
     else
     if DataMovimento.CdsPagarParcPPC_VLPARC.IsNull then
       begin
           uteis.aviso('O valor da parcela deve ser preenchido');
           DbePpc_VlParc.SetFocus;
       end
    else
       begin
           if (DbDtPPC_PAGTO.Date > 0) or (DbePpc_Vlpago.Field.AsCurrency > 0)  then
              begin
                  //marca situaçao como paga
                  DataMovimento.CdsPagarParcPPC_SITPAG.AsString := 'L';
                  if (DataMovimento.CdsPagarParc.State in [dsInsert]) then
                     DataMovimento.CdsPagarParcPPC_STATUS.AsString := 'Liquidada';

              end
           else
              begin
                  //marca situaçao como nao paga
                  DataMovimento.CdsPagarParcPPC_SITPAG.AsString := 'P';
                  if (DataMovimento.CdsPagarParc.State in [dsInsert]) then
                     DataMovimento.CdsPagarParcPPC_STATUS.AsString := 'Pendente';

              end;

             DataMovimento.CdsPagarParc.Post;
             DataMovimento.CdsPagarParc.ApplyUpdates(0);
             rValorParcelaDepois := DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency;

             if (rValorParcelaDepois <> rValorParcelaAntes)then
                begin
                   if (uteis.confirmacao ( 'O Valor da parcela foi alterado gostaria de atualizar o valor Total da Nota ?')=mrYes) then
                      begin
                         if (DataMovimento.CdsPagarPAG_REGISTRO.AsString <> '') then
                            Execsql( 'UPDATE PAG0000 SET PAG_VLNOTA = PAG_VLNOTA + '+FloatToSql(rValorParcelaDepois - rValorParcelaAntes)+
                                     ' WHERE PAG_REGISTRO = '+DataMovimento.CdsPagarPAG_REGISTRO.AsString )
                         else
                         if (Assigned(FormContasPagar)) then
                            FormContasPagar.DBePag_Vlnota.Field.Value := FormContasPagar.DBePag_Vlnota.Field.Value + (rValorParcelaDepois - rValorParcelaAntes);
                      end;
                end;

           if Assigned(FormContasPagarGrid) then
           begin
                  close;
                  FormContasPagarGrid.CdsPesquisaPagar.Refresh;
           end;

           Habilitabotoes;
           if (FormContasPagar.wFechaformParcela = True) or (DataMovimento.CdsPagarParc.IsEmpty) then
           begin
                  FormContasPagar.wFechaformParcela := False;
                  close;
           end;
           Bit_Sair.Click;
       end;
end;

procedure TFormContasPagParcelas.Bit_CancelarClick(Sender: tObject);
begin
    DataMovimento.CdsPagarParc.Cancel;
    if DataMovimento.CdsPagarParc.IsEmpty then
       begin
           DataMovimento.dsPagarParc.AutoEdit := False;
       end;
    HabilitaBotoes;

    DbDtPPC_VENCTO.SetFocus;
end;

procedure TFormContasPagParcelas.FormCreate(Sender: TObject);
begin
     inherited ;
     height := 351;
     width := 788;
end;

procedure TFormContasPagParcelas.FormShow(Sender: tObject);
Var
  wSeleciona : String;
begin
      inherited;
      bConfirmar_Exclusao_parcela := False;

      if DataMovimento.CdsPagar.State in [dsBrowse] then
      begin
               if Assigned(FormContasPagarGrid) then
                  wSeleciona := 'WHERE PAG.PAG_REGISTRO = '''+FormContasPagarGrid.CdsPesquisaPagarPAG_REGISTRO.AsString+''''
               else
                  wSeleciona := 'WHERE PAG.PAG_REGISTRO = '''+FormContasPagar.SqlCdsPagarParcPAG_REGISTRO.AsString+'''';

               DataMovimento.CdsPagarParc.Close;
               DataMovimento.CdsPagarParc.CommandText := 'select PAG.*,BAN_APELIDO from PAG_PC01 PAG left join BAN0000 BC on pag.BAN_CODIGO = BC.BAN_CODIGO '+
                                                         wSeleciona+ConcatSe( ' and pag.', dbinicio.ExclusivoSql('PAGAR'))+' Order by PAG.PAG_REGISTRO';
               DataMovimento.CdsPagarParc.Open;
               if DataMovimento.CdsPagarParc.IsEmpty then
                      DataMovimento.DsPagarParc.AutoEdit := False
               else
               begin
                     if (DataMovimento.CdsPagarParc.State <> dsBrowse) then
                        DesabilitaBotoes
                     else
                        HabilitaBotoes;

                     if (DataMovimento.CdsPagarParcPPC_EXCLUSAO.AsString = 'S') then
                     begin
                           Desabilita_Objetos;
                           DataMovimento.DsPagarParc.AutoEdit := False;
                           GrpExclusao.Visible := True;
                     end
                     else
                     begin
                           Habilita_Objetos;
                           DataMovimento.DsPagarParc.AutoEdit := True;
                           GrpExclusao.Visible := False;
                     end;
               end;
               FormContasPagar.Pn_Botoes.Visible := True;


      end;
      rValorParcelaAntes := DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency;
      DbePpc_Vlparc.Enabled := MatchStr( DataMovimento.CdsPagarParcPPC_STATUS.AsString,['Pendente','Parcial']  ) ;
      DbDtPPC_VENCTO.SetFocus;

end;

procedure TFormContasPagParcelas.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormContasPagParcelas.DBPPC_MULTAExit(Sender: tObject);
begin
    if (DBPPC_MULTA.Field.AsCurrency >=0) then
       Calcular;
end;

procedure TFormContasPagParcelas.Calcular;
begin
    if DataMovimento.CdsPagarParc.State in [dsEdit,dsInsert] then
       begin
           if (DataMovimento.CdsPagarParcPPC_VLPAGO.AsCurrency >= DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency) then
              begin
                  DataMovimento.CdsPagarParcPPC_JUROS.AsCurrency := DataMovimento.CdsPagarParcPPC_VLPAGO.AsCurrency -(DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency + DataMovimento.CdsPagarParcPPC_MULTA.AsCurrency);
                  if DataMovimento.CdsPagarParcPPC_DESCTO.AsCurrency >0 then
                     DataMovimento.CdsPagarParcPPC_DESCTO.AsCurrency := 0;
              end
           else
              begin
                  if DataMovimento.CdsPagarParcPPC_JUROS.AsCurrency >0 then
                     DataMovimento.CdsPagarParcPPC_JUROS.AsCurrency := 0;
                  DataMovimento.CdsPagarParcPPC_DESCTO.AsCurrency := (DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency - DataMovimento.CdsPagarParcPPC_VLPAGO.AsCurrency);
              end;
       end;
end;

procedure TFormContasPagParcelas.DbePpc_VlpagoExit(Sender: tObject);
begin
    if (DbePpc_Vlpago.Text = '') then
       DbePpc_Vlpago.Field.AsCurrency := 0;
    if (DbePpc_Vlpago.Field.AsCurrency >0) then
       Calcular;
    if (DbDtPPC_PAGTO.Date = 0) and (DbePpc_Vlpago.Field.AsCurrency>0) then
       begin
           uteis.aviso('Informe a data do pagamento !');
           DbDtPPC_PAGTO.SetFocus;
       end;
end;

procedure TFormContasPagParcelas.DbeBan_CodigoExit(Sender: tObject);
begin
  OpenAux3('select ban_ativo from ban0000 where ban_codigo = '+QuotedStr(StrZero(DbeBan_Codigo.Text,4)));
  if qAux3.FieldByName('BAN_ATIVO').AsString = 'N' then
     DataMovimento.CdsPagarParcBAN_CODIGO.Clear
  else
  begin
     DataMovimento.CdsPagarParcBAN_CODIGO.assTring :=StrZero(DbeBan_Codigo.Text,4);
     if (DataMovimento.CdsPagarParcBAN_CODIGO.assTring <> '0000') then
     begin
          if CbxBco.idRetorno='' then
          begin
                  uteis.aviso('Banco não existe !');
                  DbeBan_Codigo.Text := '';
                  DbeBan_Codigo.SetFocus;
          end;
     end
     Else
         CbxBco.clear;
  end;
end;

procedure TFormContasPagParcelas.CbxBcoSelect(Sender: TObject);
begin
   inherited;
   if cbxBco.idRetorno<>'' then
   begin

         if DataMovimento.CdsPagarParc.State = DsBrowse then
            DataMovimento.CdsPagarParc.Edit;
   end;
end;

procedure TFormContasPagParcelas.DbDtPPC_VENCTOExit(Sender: tObject);
begin

     if DbDtPPC_VENCTO.Date=0 then
        GeraException('É necessário informar a data de vencimento!')
     Else

    if Assigned(FormContasPagarGrid) then
       begin
           if (DbDtPPC_VENCTO.Date< FormContasPagarGrid.CdsPesquisaPagarPAG_DTEMIS.AsDateTime) Then
              begin
                  uteis.aviso('Data de Vencimento Menor que a Data Emissão !');
                  DbDtPPC_VENCTO.SetFocus;
              end;
       end
    else
     if (DbDtPPC_VENCTO.Date< FormContasPagar.DbePag_DtEmis.Date) Then
        begin
            uteis.aviso('Data de Vencimento Menor que a Data Emissão !');
            DbDtPPC_VENCTO.SetFocus;
        end;

end;

procedure TFormContasPagParcelas.DbDtPPC_PAGTOExit(Sender: tObject);
begin
    if (DataMovimento.CdsPagarParcPPC_PREVISAO.AsString = 'N') then
       begin
           // se usuario preencheu a data o programa já transfere o vl pago  que pode ser mudado
           if (DbDtPPC_PAGTO.Date <> 0) then //and( DataMovimento.CdsPagarParcPPC_VLPAGO.AsCurrency >= 0) then
              begin
                  if DataMovimento.CdsPagarParc.State in [dsBrowse] then
                     DataMovimento.CdsPagarParc.Edit;
                  if DbePpc_Vlpago.Field.AsCurrency = 0 then
                     DataMovimento.CdsPagarParcPPC_VLPAGO.AsCurrency :=DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency;
                  DataMovimento.CdsPagarParcPPC_STATUS.AsString   := 'Liquidada';
              end
           else
              begin
                  if (DataMovimento.CdsPagarParc.State in [dsinsert,dsEdit]) then
                     DataMovimento.CdsPagarParcPPC_STATUS.AsString := 'Pendente';
              end;
       end
    else
       begin
           if DbDtPPC_PAGTO.Date>0 then
              begin
                  uteis.aviso('A parcela esta marcada como Previsão desta forma não pode ser Liquidada !');
                  DbDtPPC_PAGTO.Date        := 0;
                  DbePpc_Vlpago.Field.Value := 0;
                  DbDtPPC_PAGTO.SetFocus;
              end;
       end;
end;

procedure TFormContasPagParcelas.CbxFormaClick(Sender: tObject);
begin
    if DataMovimento.CdsPagarParc.State in [dsBrowse] then
       DataMovimento.CdsPagarParc.Edit;
end;

procedure TFormContasPagParcelas.DbePpc_BancoClick(Sender: tObject);
begin
    DbePPc_Banco.SetFocus;
end;

procedure TFormContasPagParcelas.Desabilita_Objetos;
begin
   Bit_Excluir.Enabled   := False;
   CbxBco.Enabled        := False;
   DBEPPC_STATUS.Enabled := False;
end;

procedure TFormContasPagParcelas.Habilita_Objetos;
begin
   Bit_Excluir.Enabled   := True;
   CbxBco.Enabled        := True;
   DBEPPC_STATUS.Enabled := True;
end;

procedure TFormContasPagParcelas.Verifica_Se_Exclui_Registro_Principal(sCodigo, sEmpresa: String);
begin
     if BuscaUmDadoSqlAsInteger(  'Select cast(count(*) as integer) as conta from    PAG_PC01 T1 '+
                                  'WHERE T1.PPC_EXCLUSAO = ''N'' AND T1.PAG_CODIGO = '+qStr(sCodigo)+' AND T1.EMP_CODIGO = '+qStr(sEmpresa) )=0 then
        ExecSql('UPDATE PAG0000 SET PAG_EXCLUSAO = '+qStr('S')+', '+
                '                   PAG_DATA_EXCLUSAO = '+DateToSql(date)+', '+
                '                   PAG_HORA_EXCLUSAO = '+TimeToSql(Time)+', '+
                '                   PAG_MOTIVO_EXCLUSAO = '+qStr(DBEdt_Motivo.Text)+', '+
                '                   USU_CODIGO = '+qStr(Edt_Usu_Cod.Text)+', '+
                '                   USU_LOGIN = '+qStr(Edt_Usu_Nome.Text)+
                ' WHERE PAG_CODIGO = '+qStr(sCodigo)+' AND EMP_CODIGO = '+qStr(sEmpresa) );
end;

end.




