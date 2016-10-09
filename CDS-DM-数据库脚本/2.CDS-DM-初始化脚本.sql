--初始化信息系统表T_META_SYSTEM
insert into T_META_SYSTEM(system_id,system_name,system_stat) values(1,'数据中心系统','1');

--初始化数据源类型表T_META_SOURCETYPE
insert into T_META_SOURCETYPE(CODE,TYPE_NAME,REMARK) values(1,'oracle','oracle数据库');

	   
--初始化表分类t_meta_tblclass
insert into t_meta_tblclass(class_id,class_name,class_detail,class_level,p_id,ds_id)
values(1,'未分类','未进行分类的表都归属于该类别',1,null,null);

--初始化元数据表类别T_MODULE_MTBLCLASS
insert into T_MODULE_MTBLCLASS(CLASS_ID,CLASS_NAME,P_ID) VALUES(1,'首页',0);

--初始化元数据表基本信息T_MODULE_METATABLE
insert into T_MODULE_METATABLE(MTBL_ID,MTBL_NAME,MTBL_DETAIL,SOURCE_TYPE,CLASS_ID,DS_ID,VERSION,STAT,URL)
select 1,'数据源管理','数据源信息','1',1,1,a.version,'1','t_meta_datasource_d.jsp' from t_meta_datasource a where ds_id=1;
insert into T_MODULE_METATABLE(MTBL_ID,MTBL_NAME,MTBL_DETAIL,SOURCE_TYPE,CLASS_ID,DS_ID,VERSION,STAT,URL)
select 2,'元数据表管理','元数据信息','1',1,1,a.version,'1','t_meta_table_all.jsp' from t_meta_datasource a where ds_id=1;


--初始化代码类别表T_DMLB
insert into T_DMLB (ID, DMLBMC)
values (1, '数据格式');

insert into T_DMLB (ID, DMLBMC)
values (2, '剖析规则');

insert into T_DMLB (ID, DMLBMC)
values (3, '标准规范类别');

insert into T_DMLB (ID, DMLBMC)
values (4, '风险操作');

insert into T_DMLB (ID, DMLBMC)
values (5, '常规操作');

insert into T_DMLB (ID, DMLBMC)
values (6, '标准规范长度校验规则');

insert into T_DMLB (ID, DMLBMC)
values (7, '自动匹配规则');

--初始化公共代码表T_DMLB_GGDM
insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (1, 1, 1, '可变长度字符型(VARCHAR2)', 'VARCHAR2');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (2, 1, 2, '固定长度字符型(CHAR)', 'CHAR');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (3, 1, 3, '数值型(NUMBER)', 'NUMBER');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (4, 1, 4, '日期型(DATE)', 'DATE');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (5, 2, 6, '表字段值域', '表字段值域剖析');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (7, 2, 2, '字段空值记录', '字段值为空的记录数');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (8, 2, 3, '字段重复记录', '键值重复的记录数');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (9, 2, 4, '字段非日期记录', '字段不符合日期格式规范的记录数');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (10, 2, 5, '字段非数字记录', '字段中不是数字类型的记录数');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (11, 3, 1, '国家标准', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (12, 3, 2, '交通部标准', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (13, 3, 3, '浙江省标准', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (14, 3, 4, '行业标准', null);

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (15, 3, 5, '普通标准', null);

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
values (24, 6, 1, '<', '小于');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (25, 6, 2, '<=', '小于等于');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (26, 6, 3, '=', '等于');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (27, 6, 4, '>', '大于');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (28, 6, 5, '>=', '大于等于');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (29, 2, 7, '字段长度区间', '字段长度区间判断');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (30, 2, 8, '字段日期区间', '字段日期区间判断(年-月-日格式)');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (31, 2, 9, '字段正则表达式', '字段正则表达式');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (32, 2, 10, '字段长度_身份证', '身份证长度为15位或18位');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (33, 2, 11, '字段日期_大于当天', '有效截止日期大于当天日期
');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (34, 2, 12, '字段日期_大于指定天数', '有效截止日期过期多少天以上
');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (35, 1, 5, '二进制大对象(BLOB)', 'BLOB');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (36, 2, 13, '字段值区间', '字段值的大小');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (37, 7, 1, 'CODE匹配', 'CODE匹配');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (38, 7, 2, '名称匹配', '名称匹配');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (39, 7, 3, 'CODE和名称都匹配', 'CODE匹配和名称匹配');

insert into T_DMLB_GGDM (ID, DMLB_ID, DMBH, DMMC, DMBZ)
values (40, 7, 4, 'CODE匹配或名称匹配', 'CODE匹配或名称匹配');

--标准规范校验标准表t_bzgf_jygz
insert into t_bzgf_jygz values(1,1,80,80,null,null);
insert into t_bzgf_jygz values(2,2,20,80,5,1);

COMMIT;
/