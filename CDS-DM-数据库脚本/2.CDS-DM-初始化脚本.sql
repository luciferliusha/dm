--��ʼ����Ϣϵͳ��T_META_SYSTEM
insert into T_META_SYSTEM(system_id,system_name,system_stat) values(1,'��������ϵͳ','1');

--��ʼ������Դ���ͱ�T_META_SOURCETYPE
insert into T_META_SOURCETYPE(CODE,TYPE_NAME,REMARK) values(1,'oracle','oracle���ݿ�');

	   
--��ʼ�������t_meta_tblclass
insert into t_meta_tblclass(class_id,class_name,class_detail,class_level,p_id,ds_id)
values(1,'δ����','δ���з���ı������ڸ����',1,null,null);

--��ʼ��Ԫ���ݱ����T_MODULE_MTBLCLASS
insert into T_MODULE_MTBLCLASS(CLASS_ID,CLASS_NAME,P_ID) VALUES(1,'��ҳ',0);

--��ʼ��Ԫ���ݱ������ϢT_MODULE_METATABLE
insert into T_MODULE_METATABLE(MTBL_ID,MTBL_NAME,MTBL_DETAIL,SOURCE_TYPE,CLASS_ID,DS_ID,VERSION,STAT,URL)
select 1,'����Դ����','����Դ��Ϣ','1',1,1,a.version,'1','t_meta_datasource_d.jsp' from t_meta_datasource a where ds_id=1;
insert into T_MODULE_METATABLE(MTBL_ID,MTBL_NAME,MTBL_DETAIL,SOURCE_TYPE,CLASS_ID,DS_ID,VERSION,STAT,URL)
select 2,'Ԫ���ݱ����','Ԫ������Ϣ','1',1,1,a.version,'1','t_meta_table_all.jsp' from t_meta_datasource a where ds_id=1;


--��ʼ����������T_DMLB
insert into T_DMLB (ID, DMLBMC)
values (1, '���ݸ�ʽ');

insert into T_DMLB (ID, DMLBMC)
values (2, '��������');

insert into T_DMLB (ID, DMLBMC)
values (3, '��׼�淶���');

insert into T_DMLB (ID, DMLBMC)
values (4, '���ղ���');

insert into T_DMLB (ID, DMLBMC)
values (5, '�������');

insert into T_DMLB (ID, DMLBMC)
values (6, '��׼�淶����У�����');

insert into T_DMLB (ID, DMLBMC)
values (7, '�Զ�ƥ�����');

--��ʼ�����������T_DMLB_GGDM
insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (1, 1, 1, '�ɱ䳤���ַ���(VARCHAR2)', 'VARCHAR2');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (2, 1, 2, '�̶������ַ���(CHAR)', 'CHAR');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (3, 1, 3, '��ֵ��(NUMBER)', 'NUMBER');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (4, 1, 4, '������(DATE)', 'DATE');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (5, 2, 6, '���ֶ�ֵ��', '���ֶ�ֵ������');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (7, 2, 2, '�ֶο�ֵ��¼', '�ֶ�ֵΪ�յļ�¼��');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (8, 2, 3, '�ֶ��ظ���¼', '��ֵ�ظ��ļ�¼��');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (9, 2, 4, '�ֶη����ڼ�¼', '�ֶβ��������ڸ�ʽ�淶�ļ�¼��');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (10, 2, 5, '�ֶη����ּ�¼', '�ֶ��в����������͵ļ�¼��');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (11, 3, 1, '���ұ�׼', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (12, 3, 2, '��ͨ����׼', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (13, 3, 3, '�㽭ʡ��׼', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (14, 3, 4, '��ҵ��׼', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (15, 3, 5, '��ͨ��׼', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (16, 4, 1, 'CREATE', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (17, 4, 2, 'TRUNCATE', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (18, 4, 3, 'DROP', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (19, 4, 4, 'ALTER', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (20, 5, 1, 'SELECT', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (21, 5, 2, 'INSERT', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (22, 5, 3, 'UPDATE', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (23, 5, 4, 'DELETE', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (24, 6, 1, '<', 'С��');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (25, 6, 2, '<=', 'С�ڵ���');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (26, 6, 3, '=', '����');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (27, 6, 4, '>', '����');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (28, 6, 5, '>=', '���ڵ���');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (29, 2, 7, '�ֶγ�������', '�ֶγ��������ж�');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (30, 2, 8, '�ֶ���������', '�ֶ����������ж�(��-��-�ո�ʽ)');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (31, 2, 9, '�ֶ�������ʽ', '�ֶ�������ʽ');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (32, 2, 10, '�ֶγ���_���֤', '���֤����Ϊ15λ��18λ');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (33, 2, 11, '�ֶ�����_���ڵ���', '��Ч��ֹ���ڴ��ڵ�������
');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (34, 2, 12, '�ֶ�����_����ָ������', '��Ч��ֹ���ڹ��ڶ���������
');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (35, 1, 5, '�����ƴ����(BLOB)', 'BLOB');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (36, 2, 13, '�ֶ�ֵ����', '�ֶ�ֵ�Ĵ�С');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (37, 7, 1, 'CODEƥ��', 'CODEƥ��');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (38, 7, 2, '����ƥ��', '����ƥ��');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (39, 7, 3, 'CODE�����ƶ�ƥ��', 'CODEƥ�������ƥ��');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (40, 7, 4, 'CODEƥ�������ƥ��', 'CODEƥ�������ƥ��');

--��׼�淶У���׼��t_bzgf_jygz
insert into t_bzgf_jygz values(1,1,80,80,null,null);
insert into t_bzgf_jygz values(2,2,20,80,5,1);

COMMIT;
/