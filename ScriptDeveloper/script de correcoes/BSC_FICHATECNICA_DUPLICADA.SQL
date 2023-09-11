SET TERM  ^ ;
execute block as
declare variable PRD_REFER varchar(20);
DECLARE VARIABLE FTC_REGISTRO INTEGER;
BEGIN
    FOR
        SELECT PRD_REFER,
          (SELECT FIRST 1 FTC_REGISTRO FROM FTC0000
         WHERE PRD_REFER  = F1.PRD_REFER) AS FTC_REGISTRO
         FROM FTC0000 F1 
         GROUP BY PRD_REFER
         HAVING COUNT(*) > 1
        INTO :PRD_REFER, :FTC_REGISTRO
    DO
    BEGIN

         
         execute statement ' DELETE FROM FTC0000 '  ||
                           ' WHERE FTC_REGISTRO = ' || CAST(:FTC_REGISTRO AS VARCHAR(10))|| ' AND PRD_REFER  = ' ||
                          :PRD_REFER;

    END
    
END^
SET TERM ; ^
