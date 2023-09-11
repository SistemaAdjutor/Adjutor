SET TERM ^ ;

alter table DUPLICAT_CNAB add DescricaoOcorrencia varchar(100) ^
COMMIT WORK^

update RDB$FIELDS A set A.RDB$FIELD_LENGTH = 8, A.RDB$CHARACTER_LENGTH = 8
where A.RDB$FIELD_NAME = (select B.rdb$field_source from rdb$relation_fields b where B.rdb$relation_name='ARQUIVO_CNAB' and B.rdb$field_name='CNAB_COD_ARQUIVO')^
COMMIT WORK^

Update VERSAOSISTEMA SET
       VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.0.460' ,
       VERSAOSISTEMA.DATA   = '26.09.2016'
 where VERSAOSISTEMA.CODIGO = 1^

COMMIT WORK^

SET TERM ; ^





