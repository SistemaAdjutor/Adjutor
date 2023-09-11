

ALTER TABLE NF_IT01 ALTER COLUMN nf_totalitem TYPE numeric(18,5);

COMMENT ON COLUMN NF_IT01.NF_TOTALITEM IS 'TOTAL DO ITEM QUANTIDADE X PRECO';

/* pode demorar alguns minutos */
alter trigger NF_IT01_BU0 inactive;
UPDATE NF_IT01 SET nf_totalitem = cast(NF_QTDE * NF_PRECO as numeric(18,5));
COMMIT WORK;
alter trigger NF_IT01_BU0 active;
