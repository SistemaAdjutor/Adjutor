inherited FrmScript: TFrmScript
  Left = 334
  Top = 309
  BorderIcons = [biSystemMenu]
  Caption = 'FrmScript'
  ClientHeight = 302
  ClientWidth = 552
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 568
  ExplicitHeight = 340
  PixelsPerInch = 96
  TextHeight = 13
  object TPanel [0]
    Left = 0
    Top = 261
    Width = 552
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Execute'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Memo1: TMemo [1]
    Left = 0
    Top = 0
    Width = 552
    Height = 261
    Align = alClient
    Lines.Strings = (
      '*** AINDA N'#195'O FUNCIONOU ***'
      ''
      'CREATE PROCEDURE NORMALIZA_CHARSET AS'
      ''
      'DECLARE IDCHARSET INT;'
      'DECLARE IDCOLLATION INT;'
      'DECLARE FNAME VARCHAR(31);'
      ''
      'BEGIN'
      '    /* OBTEM COD CHARSET/COLLATION */'
      '    SELECT C.RDB$COLLATION_ID, C.RDB$CHARACTER_SET_ID'
      '    FROM RDB$COLLATIONS C'
      '    WHERE C.RDB$COLLATION_NAME='#39'WIN_PTBR'#39
      '    AND C.RDB$CHARACTER_SET_ID= ( Select CS.RDB$CHARACTER_SET_ID'
      '                                  from RDB$CHARACTER_SETS CS'
      
        '                                  where CS.RDB$CHARACTER_SET_NAM' +
        'E='#39'WIN1252'#39' )'
      '    into :idcharset, :idcollation;'
      ''
      '    /* LA'#199'O PARA DOMAIN FIELDS ALTERAR CHARSET COLLATION */'
      '    FOR SELECT DISTINCT B.rdb$field_name'
      '        FROM rdb$relation_fields A'
      
        '        JOIN rdb$fields B ON B.rdb$field_name=A.rdb$field_source' +
        ' AND B.rdb$field_type IN ( 14,37 )'
      '        WHERE A.rdb$system_flag=0'
      '        INTO :FNAME do'
      '    BEGIN'
      '        /* UPDATE DAMAINS */'
      
        '        update RDB$FIELDS UP set UP.RDB$CHARACTER_SET_ID = :idch' +
        'arset, UP.RDB$COLLATION_ID = '
      ':idcollation'
      '        where UP.RDB$FIELD_NAME = :fname;'
      ''
      '        SUSPEND;'
      '    END'
      'END;'
      ''
      ''
      'EXECUTE PROCEDURE NORMALIZA_CHARSET')
    TabOrder = 0
  end
  inherited coCalcula: TACBrCalculadora
    Left = 280
  end
  object zScript: TZSQLProcessor
    Params = <>
    Delimiter = ';'
    OnError = zScriptError
    AfterExecute = zScriptAfterExecute
    Left = 392
    Top = 72
  end
end
