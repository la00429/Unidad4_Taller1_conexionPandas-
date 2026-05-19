USE gestion_emp;

-- ============================================================
-- TABLAS
-- ============================================================

CREATE TABLE departments (
    department_id   INT          PRIMARY KEY,
    department_name VARCHAR(30)  NOT NULL,
    manager_id      INT,
    location_id     INT
);

CREATE TABLE employees (
    employee_id    INT           PRIMARY KEY,
    first_name     VARCHAR(20),
    last_name      VARCHAR(25)   NOT NULL,
    email          VARCHAR(25)   NOT NULL,
    phone_number   VARCHAR(20),
    hire_date      DATE          NOT NULL,
    job_id         VARCHAR(10)   NOT NULL,
    salary         DECIMAL(8,2),
    commission_pct DECIMAL(2,2),
    manager_id     INT,
    department_id  INT,
    CONSTRAINT emp_dept_fk FOREIGN KEY (department_id)
        REFERENCES departments (department_id)
);

-- ============================================================
-- DEPARTMENTS (sin manager_id para evitar FK circular)
-- ============================================================

INSERT INTO departments (department_id, department_name) VALUES
(10,  'Administration'),
(20,  'Marketing'),
(30,  'Purchasing'),
(40,  'Human Resources'),
(50,  'Shipping'),
(60,  'IT'),
(70,  'Public Relations'),
(80,  'Sales'),
(90,  'Executive'),
(100, 'Finance'),
(110, 'Accounting'),
(120, 'Treasury'),
(130, 'Corporate Tax'),
(140, 'Control And Credit'),
(150, 'Shareholder Services'),
(160, 'Benefits'),
(170, 'Manufacturing'),
(180, 'Construction'),
(190, 'Contracting'),
(200, 'Operations'),
(210, 'IT Support'),
(220, 'NOC'),
(230, 'IT Helpdesk'),
(240, 'Government Sales'),
(250, 'Retail Sales'),
(260, 'Recruiting'),
(270, 'Payroll');

-- ============================================================
-- EMPLOYEES
-- ============================================================

INSERT INTO employees VALUES (100,'Steven','King','SKING','5.151.234.567','2021-02-23','AD_PRES',24000,NULL,NULL,90);
INSERT INTO employees VALUES (101,'Neena','Kochhar','NKOCHHAR','5.151.234.568','2018-07-16','AD_VP',17000,NULL,100,90);
INSERT INTO employees VALUES (102,'Lex','De Haan','LDEHAAN','5.151.234.569','2012-08-21','AD_VP',17000,NULL,100,90);
INSERT INTO employees VALUES (103,'Alexander','Hunold','AHUNOLD','5.904.234.567','2015-05-19','IT_PROG',9000,NULL,102,60);
INSERT INTO employees VALUES (104,'Bruce','Ernst','BERNST','5.904.234.568','2017-07-01','IT_PROG',6000,NULL,103,60);
INSERT INTO employees VALUES (105,'David','Austin','DAUSTIN','5.904.234.569','2016-12-13','IT_PROG',4800,NULL,103,60);
INSERT INTO employees VALUES (106,'Valli','Pataballa','VPATABAL','5.904.234.560','2016-05-25','IT_PROG',4800,NULL,103,60);
INSERT INTO employees VALUES (107,'Diana','Lorentz','DLORENTZ','5.904.235.567','2019-12-01','IT_PROG',4200,NULL,103,60);
INSERT INTO employees VALUES (108,'Nancy','Greenberg','NGREENBE','5.151.244.569','2020-10-20','FI_MGR',12000,NULL,101,100);
INSERT INTO employees VALUES (109,'Daniel','Faviet','DFAVIET','5.151.244.169','2016-04-14','FI_ACCOUNT',9000,NULL,108,100);
INSERT INTO employees VALUES (110,'John','Chen','JCHEN','5.151.244.269','2014-10-25','FI_ACCOUNT',8200,NULL,108,100);
INSERT INTO employees VALUES (111,'Ismael','Sciarra','ISCIARRA','5.151.244.369','2012-04-07','FI_ACCOUNT',7700,NULL,108,100);
INSERT INTO employees VALUES (112,'Jose Manuel','Urman','JMURMAN','5.151.244.469','2019-04-27','FI_ACCOUNT',7800,NULL,108,100);
INSERT INTO employees VALUES (113,'Luis','Popp','LPOPP','5.151.244.567','2021-01-20','FI_ACCOUNT',6900,NULL,108,100);
INSERT INTO employees VALUES (114,'Den','Raphaely','DRAPHEAL','5.151.274.561','2020-12-27','PU_MAN',11000,NULL,100,30);
INSERT INTO employees VALUES (115,'Alexander','Khoo','AKHOO','5.151.274.562','2021-12-05','PU_CLERK',3100,NULL,114,30);
INSERT INTO employees VALUES (116,'Shelli','Baida','SBAIDA','5.151.274.563','2017-01-12','PU_CLERK',2900,NULL,114,30);
INSERT INTO employees VALUES (117,'Sigal','Tobias','STOBIAS','5.151.274.564','2015-11-14','PU_CLERK',2800,NULL,114,30);
INSERT INTO employees VALUES (118,'Guy','Himuro','GHIMURO','5.151.274.565','2020-02-10','PU_CLERK',2600,NULL,114,30);
INSERT INTO employees VALUES (119,'Karen','Colmenares','KCOLMENA','5.151.274.566','2014-06-06','PU_CLERK',2500,NULL,114,30);
INSERT INTO employees VALUES (120,'Matthew','Weiss','MWEISS','6.501.231.234','2017-01-10','ST_MAN',8000,NULL,100,50);
INSERT INTO employees VALUES (121,'Adam','Fripp','AFRIPP','6.501.232.234','2015-09-21','ST_MAN',8200,NULL,100,50);
INSERT INTO employees VALUES (122,'Payam','Kaufling','PKAUFLIN','6.501.233.234','2015-04-01','ST_MAN',7900,NULL,100,50);
INSERT INTO employees VALUES (123,'Shanta','Vollman','SVOLLMAN','6.501.234.234','2021-03-19','ST_MAN',6500,NULL,100,50);
INSERT INTO employees VALUES (124,'Kevin','Mourgos','KMOURGOS','6.501.235.234','2018-11-14','ST_MAN',5800,NULL,100,50);
INSERT INTO employees VALUES (125,'Julia','Nayer','JNAYER','6.501.241.214','2017-03-27','ST_CLERK',3200,NULL,120,50);
INSERT INTO employees VALUES (126,'Irene','Mikkilineni','IMIKKILI','6.501.241.224','2019-01-01','ST_CLERK',2700,NULL,120,50);
INSERT INTO employees VALUES (127,'James','Landry','JLANDRY','6.501.241.334','2018-01-09','ST_CLERK',2400,NULL,120,50);
INSERT INTO employees VALUES (128,'Steven','Markle','SMARKLE','6.501.241.434','2013-05-02','ST_CLERK',2200,NULL,120,50);
INSERT INTO employees VALUES (129,'Laura','Bissot','LBISSOT','6.501.245.234','2021-04-10','ST_CLERK',3300,NULL,121,50);
INSERT INTO employees VALUES (130,'Mozhe','Atkinson','MATKINSO','6.501.246.234','2015-10-29','ST_CLERK',2800,NULL,121,50);
INSERT INTO employees VALUES (131,'James','Marlow','JAMRLOW','6.501.247.234','2018-09-06','ST_CLERK',2500,NULL,121,50);
INSERT INTO employees VALUES (132,'TJ','Olson','TJOLSON','6.501.248.234','2019-10-31','ST_CLERK',2100,NULL,121,50);
INSERT INTO employees VALUES (133,'Jason','Mallin','JMALLIN','6.501.271.934','2019-04-27','ST_CLERK',3300,NULL,122,50);
INSERT INTO employees VALUES (134,'Michael','Rogers','MROGERS','6.501.271.834','2015-08-05','ST_CLERK',2900,NULL,122,50);
INSERT INTO employees VALUES (135,'Ki','Gee','KGEE','6.501.271.734','2017-10-15','ST_CLERK',2400,NULL,122,50);
INSERT INTO employees VALUES (136,'Hazel','Philtanker','HPHILTAN','6.501.271.634','2019-04-23','ST_CLERK',2200,NULL,122,50);
INSERT INTO employees VALUES (137,'Renske','Ladwig','RLADWIG','6.501.211.234','2012-02-28','ST_CLERK',3600,NULL,123,50);
INSERT INTO employees VALUES (138,'Stephen','Stiles','SSTILES','6.501.212.034','2019-02-18','ST_CLERK',3200,NULL,123,50);
INSERT INTO employees VALUES (139,'John','Seo','JSEO','6.501.212.019','2017-02-11','ST_CLERK',2700,NULL,123,50);
INSERT INTO employees VALUES (140,'Joshua','Patel','JPATEL','6.501.211.834','2015-03-31','ST_CLERK',2500,NULL,123,50);
INSERT INTO employees VALUES (141,'Trenna','Rajs','TRAJS','6.501.218.009','2018-02-08','ST_CLERK',3500,NULL,124,50);
INSERT INTO employees VALUES (142,'Curtis','Davies','CDAVIES','6.501.212.994','2015-12-20','ST_CLERK',3100,NULL,124,50);
INSERT INTO employees VALUES (143,'Randall','Matos','RMATOS','6.501.212.874','2013-02-04','ST_CLERK',2600,NULL,124,50);
INSERT INTO employees VALUES (144,'Peter','Vargas','PVARGAS','6.501.212.004','2015-05-14','ST_CLERK',2500,NULL,124,50);
INSERT INTO employees VALUES (145,'John','Russell','JRUSSEL','011.44.1344.429268','2021-05-24','SA_MAN',14000,0.40,100,80);
INSERT INTO employees VALUES (146,'Karen','Partners','KPARTNER','011.44.1344.467268','2012-05-25','SA_MAN',13500,0.30,100,80);
INSERT INTO employees VALUES (147,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278','2015-05-31','SA_MAN',12000,0.30,100,80);
INSERT INTO employees VALUES (148,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619268','2014-04-16','SA_MAN',11000,0.30,100,80);
INSERT INTO employees VALUES (149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018','2014-08-22','SA_MAN',10500,0.20,100,80);
INSERT INTO employees VALUES (150,'Peter','Tucker','PTUCKER','011.44.1344.129268','2015-08-05','SA_REP',10000,0.30,145,80);
INSERT INTO employees VALUES (151,'David','Bernstein','DBERNSTE','011.44.1344.345268','2018-11-23','SA_REP',9500,0.25,145,80);
INSERT INTO employees VALUES (152,'Peter','Hall','PHALL','011.44.1344.478968','2019-12-15','SA_REP',9000,0.25,145,80);
INSERT INTO employees VALUES (153,'Christopher','Olsen','COLSEN','011.44.1344.498718','2017-01-01','SA_REP',8000,0.20,145,80);
INSERT INTO employees VALUES (154,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668','2016-02-13','SA_REP',7500,0.20,145,80);
INSERT INTO employees VALUES (155,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508','2017-12-04','SA_REP',7000,0.15,145,80);
INSERT INTO employees VALUES (156,'Janette','King','JKING','011.44.1345.429268','2020-03-23','SA_REP',10000,0.35,146,80);
INSERT INTO employees VALUES (157,'Patrick','Sully','PSULLY','011.44.1345.929268','2018-12-24','SA_REP',9500,0.35,146,80);
INSERT INTO employees VALUES (158,'Allan','McEwen','AMCEWEN','011.44.1345.829268','2014-04-30','SA_REP',9000,0.35,146,80);
INSERT INTO employees VALUES (159,'Lindsey','Smith','LSMITH','011.44.1345.729268','2021-09-08','SA_REP',8000,0.30,146,80);
INSERT INTO employees VALUES (160,'Louise','Doran','LDORAN','011.44.1345.629268','2015-09-15','SA_REP',7500,0.30,146,80);
INSERT INTO employees VALUES (161,'Sarath','Sewall','SSEWALL','011.44.1345.529268','2019-04-23','SA_REP',7000,0.25,146,80);
INSERT INTO employees VALUES (162,'Clara','Vishney','CVISHNEY','011.44.1346.129268','2020-04-19','SA_REP',10500,0.25,147,80);
INSERT INTO employees VALUES (163,'Danielle','Greene','DGREENE','011.44.1346.229268','2017-08-12','SA_REP',9500,0.15,147,80);
INSERT INTO employees VALUES (164,'Mattea','Marvins','MMARVINS','011.44.1346.329268','2020-08-15','SA_REP',7200,0.10,147,80);
INSERT INTO employees VALUES (165,'David','Lee','DLEE','011.44.1346.529268','2021-11-05','SA_REP',6800,0.10,147,80);
INSERT INTO employees VALUES (166,'Sundar','Ande','SANDE','011.44.1346.629268','2014-12-05','SA_REP',6400,0.10,147,80);
INSERT INTO employees VALUES (167,'Amit','Banda','ABANDA','011.44.1346.729268','2019-09-11','SA_REP',6200,0.10,147,80);
INSERT INTO employees VALUES (168,'Lisa','Ozer','LOZER','011.44.1343.929268','2018-12-01','SA_REP',11500,0.25,148,80);
INSERT INTO employees VALUES (169,'Harrison','Bloom','HBLOOM','011.44.1343.829268','2015-11-10','SA_REP',10000,0.20,148,80);
INSERT INTO employees VALUES (170,'Tayler','Fox','TFOX','011.44.1343.729268','2015-04-10','SA_REP',9600,0.20,148,80);
INSERT INTO employees VALUES (171,'William','Smith','WSMITH','011.44.1343.629268','2013-04-22','SA_REP',7400,0.15,148,80);
INSERT INTO employees VALUES (172,'Elizabeth','Bates','EBATES','011.44.1343.529268','2014-11-20','SA_REP',7300,0.15,148,80);
INSERT INTO employees VALUES (173,'Sundita','Kumar','SKUMAR','011.44.1343.329268','2019-07-13','SA_REP',6100,0.10,148,80);
INSERT INTO employees VALUES (175,'Alyssa','Hutton','AHUTTON','011.44.1644.429266','2018-02-25','SA_REP',8800,0.25,149,80);
INSERT INTO employees VALUES (176,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265','2015-03-31','SA_REP',8600,0.20,149,80);
INSERT INTO employees VALUES (177,'Jack','Livingston','JLIVINGS','011.44.1644.429264','2018-06-20','SA_REP',8400,0.20,149,80);
INSERT INTO employees VALUES (178,'Kimberely','Grant','KGRANT','011.44.1644.429263','2018-05-08','SA_REP',7000,0.15,149,NULL);
INSERT INTO employees VALUES (179,'Charles','Johnson','CJOHNSON','011.44.1644.429262','2013-01-01','SA_REP',6200,0.10,149,80);
INSERT INTO employees VALUES (180,'Winston','Taylor','WTAYLOR','6.505.079.876','2021-01-11','SH_CLERK',3200,NULL,120,50);
INSERT INTO employees VALUES (181,'Jean','Fleaur','JFLEAUR','6.505.079.877','2016-08-01','SH_CLERK',3100,NULL,120,50);
INSERT INTO employees VALUES (182,'Martha','Sullivan','MSULLIVA','6.505.079.878','2015-06-21','SH_CLERK',2500,NULL,120,50);
INSERT INTO employees VALUES (183,'Girard','Geoni','GGEONI','6.505.079.879','2019-09-19','SH_CLERK',2800,NULL,120,50);
INSERT INTO employees VALUES (184,'Nandita','Sarchand','NSARCHAN','6.505.091.876','2015-02-13','SH_CLERK',4200,NULL,121,50);
INSERT INTO employees VALUES (185,'Alexis','Bull','ABULL','6.505.092.876','2016-09-08','SH_CLERK',4100,NULL,121,50);
INSERT INTO employees VALUES (186,'Julia','Dellinger','JDELLING','6.505.093.876','2014-01-06','SH_CLERK',3400,NULL,121,50);
INSERT INTO employees VALUES (187,'Anthony','Cabrio','ACABRIO','6.505.094.876','2014-02-04','SH_CLERK',3000,NULL,121,50);
INSERT INTO employees VALUES (188,'Kelly','Chung','KCHUNG','6.505.051.876','2015-12-23','SH_CLERK',3800,NULL,122,50);
INSERT INTO employees VALUES (189,'Jennifer','Dilly','JDILLY','6.505.052.876','2013-06-15','SH_CLERK',3600,NULL,122,50);
INSERT INTO employees VALUES (190,'Timothy','Gates','TGATES','6.505.053.876','2021-07-16','SH_CLERK',2900,NULL,122,50);
INSERT INTO employees VALUES (191,'Randall','Perkins','RPERKINS','6.505.054.876','2017-04-26','SH_CLERK',2500,NULL,122,50);
INSERT INTO employees VALUES (192,'Sarah','Bell','SBELL','6.505.011.876','2015-01-21','SH_CLERK',4000,NULL,123,50);
INSERT INTO employees VALUES (193,'Britney','Everett','BEVERETT','6.505.012.876','2013-06-12','SH_CLERK',3900,NULL,123,50);
INSERT INTO employees VALUES (194,'Samuel','McCain','SMCCAIN','6.505.013.876','2013-03-26','SH_CLERK',3200,NULL,123,50);
INSERT INTO employees VALUES (195,'Vance','Jones','VJONES','6.505.014.876','2016-02-16','SH_CLERK',2800,NULL,123,50);
INSERT INTO employees VALUES (196,'Alana','Walsh','AWALSH','6.505.079.811','2017-09-18','SH_CLERK',3100,NULL,124,50);
INSERT INTO employees VALUES (197,'Kevin','Feeney','KFEENEY','6.505.079.822','2020-12-24','SH_CLERK',3000,NULL,124,50);
INSERT INTO employees VALUES (198,'Donald','OConnell','DOCONNEL','6.505.079.833','2016-12-13','SH_CLERK',2600,NULL,124,50);
INSERT INTO employees VALUES (199,'Douglas','Grant','DGRANT','6.505.079.844','2015-03-27','SH_CLERK',2600,NULL,124,50);
INSERT INTO employees VALUES (200,'Jennifer','Whalen','JWHALEN','5.151.234.444','2012-08-11','AD_ASST',4400,NULL,101,10);
INSERT INTO employees VALUES (201,'Michael','Hartstein','MHARTSTE','5.151.235.555','2017-06-08','MK_MAN',13000,NULL,100,20);
INSERT INTO employees VALUES (202,'Pat','Fay','PFAY','6.031.236.666','2017-11-17','MK_REP',6000,NULL,201,20);
INSERT INTO employees VALUES (203,'Susan','Mavris','SMAVRIS','5.151.237.777','2021-05-03','HR_REP',6500,NULL,101,40);
INSERT INTO employees VALUES (204,'Hermann','Baer','HBAER','5.151.238.888','2018-08-05','PR_REP',10000,NULL,101,70);
INSERT INTO employees VALUES (205,'Shelley','Higgins','SHIGGINS','5.151.238.080','2014-10-06','AC_MGR',12000,NULL,101,110);
INSERT INTO employees VALUES (206,'William','Gietz','WGIETZ','5.151.238.181','2012-07-12','AC_ACCOUNT',8300,NULL,205,110);

-- ============================================================
-- ACTUALIZAR manager_id en departments
-- ============================================================

UPDATE departments SET manager_id = 200 WHERE department_id = 10;
UPDATE departments SET manager_id = 201 WHERE department_id = 20;
UPDATE departments SET manager_id = 114 WHERE department_id = 30;
UPDATE departments SET manager_id = 203 WHERE department_id = 40;
UPDATE departments SET manager_id = 121 WHERE department_id = 50;
UPDATE departments SET manager_id = 103 WHERE department_id = 60;
UPDATE departments SET manager_id = 204 WHERE department_id = 70;
UPDATE departments SET manager_id = 145 WHERE department_id = 80;
UPDATE departments SET manager_id = 100 WHERE department_id = 90;
UPDATE departments SET manager_id = 108 WHERE department_id = 100;
UPDATE departments SET manager_id = 205 WHERE department_id = 110;
