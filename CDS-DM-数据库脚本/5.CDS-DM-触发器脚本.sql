CREATE OR REPLACE TRIGGER TRIGGER_CZPZ
BEFORE INSERT ON T_META_DATASOURCE
FOR EACH ROW
DECLARE
yhm  varchar2(4000);
DSID NUMBER;
BEGIN
DSID :=:NEW.DS_ID;
SELECT COUNT(*) INTO yhm FROM T_LOG_CZPZ_CG T WHERE DS_ID=DSID;
IF yhm=0 THEN
insert into T_LOG_CZPZ_CG(ID,DS_ID,YHM,SQL_SELECT,SQL_INSERT,SQL_UPDATE,SQL_DELETE,IP)
VALUES(SEQ_LOG_CZPZ_CG_ID.NEXTVAL,:NEW.DS_ID,:NEW.CONNECT_USER,'1','1','1','1','0');

insert into T_LOG_CZPZ_YJ(ID,DS_ID,YHM,SQL_CREATE,SQL_DROP,SQL_ALTER,SQL_TRUNCATE)
VALUES(SEQ_LOG_CZPZ_YJ_ID.NEXTVAL,:NEW.DS_ID,:NEW.CONNECT_USER,'1','1','1','1');

END IF;
END;
/

CREATE OR REPLACE TRIGGER TRIGGER_CZRZ_LOG_YJ
BEFORE create or alter or drop or truncate ON DATABASE
DECLARE
sql_text            ora_name_list_t;
stmt                VARCHAR2(4000);
n                   number;
SQL_CREATE_LX       VARCHAR2(4000);
SQL_DROP_LX         VARCHAR2(4000);
SQL_ALTER_LX        VARCHAR2(4000);
SQL_TRUNCATE_LX     VARCHAR2(4000);
A                   NUMBER;

CURSOR CZPZ_YJ IS
  SELECT ID
   FROM t_log_czpz_yj;
YJ CZPZ_YJ%ROWTYPE;

begin
n := ora_sql_txt(sql_text);
FOR i IN 1..n LOOP
stmt := stmt || sql_text(i);
IF(LENGTH(stmt)>2999) then
EXIT;
END IF;
END LOOP;

OPEN CZPZ_YJ;
  LOOP
  FETCH CZPZ_YJ INTO YJ;
  A:=YJ.ID;
  exit when CZPZ_YJ%NOTFOUND;

SELECT SQL_CREATE   INTO SQL_CREATE_LX    FROM t_log_czpz_yj WHERE ID=A;
SELECT SQL_DROP     INTO SQL_DROP_LX      FROM t_log_czpz_yj WHERE ID=A;
SELECT SQL_ALTER    INTO SQL_ALTER_LX     FROM t_log_czpz_yj WHERE ID=A;
SELECT SQL_TRUNCATE INTO SQL_TRUNCATE_LX  FROM t_log_czpz_yj WHERE ID=A;

END LOOP;
IF SQL_CREATE_LX=1 THEN
INSERT INTO T_LOG_CZRZ_YJ(ID,SQL,CZYH,CZDX,CZLX,FSSJ,IP)
SELECT SEQ_LOG_CZRZ_YJ_ID.NEXTVAL,stmt,user,ora_dict_obj_name,ora_sysevent,SYSDATE,SYS_CONTEXT('USERENV','IP_ADDRESS')
FROM DUAL
WHERE USER IN(SELECT YHM FROM t_log_czpz_yj WHERE SQL_CREATE='1')
AND ora_sysevent='CREATE';
END IF;

IF SQL_DROP_LX=1 THEN
INSERT INTO T_LOG_CZRZ_YJ(ID,SQL,CZYH,CZDX,CZLX,FSSJ,IP)
SELECT SEQ_LOG_CZRZ_YJ_ID.NEXTVAL,stmt,user,ora_dict_obj_name,ora_sysevent,SYSDATE,SYS_CONTEXT('USERENV','IP_ADDRESS')
FROM DUAL
WHERE USER IN(SELECT YHM FROM t_log_czpz_yj WHERE SQL_DROP='1')
AND ora_sysevent='DROP';
END IF;

IF SQL_ALTER_LX=1 THEN
INSERT INTO T_LOG_CZRZ_YJ(ID,SQL,CZYH,CZDX,CZLX,FSSJ,IP)
SELECT SEQ_LOG_CZRZ_YJ_ID.NEXTVAL,stmt,user,ora_dict_obj_name,ora_sysevent,SYSDATE,SYS_CONTEXT('USERENV','IP_ADDRESS')
FROM DUAL
WHERE USER IN(SELECT YHM FROM t_log_czpz_yj WHERE SQL_ALTER='1')
AND ora_sysevent='ALTER';
END IF;

IF SQL_TRUNCATE_LX=1 THEN
INSERT INTO T_LOG_CZRZ_YJ(ID,SQL,CZYH,CZDX,CZLX,FSSJ,IP)
SELECT SEQ_LOG_CZRZ_YJ_ID.NEXTVAL,stmt,user,ora_dict_obj_name,ora_sysevent,SYSDATE,SYS_CONTEXT('USERENV','IP_ADDRESS')
FROM DUAL
WHERE USER IN(SELECT YHM FROM t_log_czpz_yj WHERE SQL_TRUNCATE='1')
AND ora_sysevent='TRUNCATE';
END IF;


end;

/