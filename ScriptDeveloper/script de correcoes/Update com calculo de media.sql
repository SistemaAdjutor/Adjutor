/* Update que faz com funcao media   */
UPDATE fat0000 T1
  SET T1.FAT_COMIS1 = (
   Select
   avg(T2.FIT_COMIS)
   from
   FAT_IT02 T2
   WHERE T1.FAT_CODIGO = t2.FAT_CODIGO
  );
