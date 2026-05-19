-- Script HR para Oracle - ejecutado como hr en PDB UPTC via 01_init.sh
-- Generado desde departments.csv y employees.csv


-- ============================================================
-- TABLAS
-- ============================================================

CREATE TABLE departments (
    department_id   NUMBER(4)    PRIMARY KEY,
    department_name VARCHAR2(30) NOT NULL,
    manager_id      NUMBER(6),
    location_id     NUMBER(4)
);

CREATE TABLE employees (
    employee_id    NUMBER(6)     PRIMARY KEY,
    first_name     VARCHAR2(20),
    last_name      VARCHAR2(25)  NOT NULL,
    email          VARCHAR2(25)  NOT NULL,
    phone_number   VARCHAR2(20),
    hire_date      DATE          NOT NULL,
    job_id         VARCHAR2(10)  NOT NULL,
    salary         NUMBER(8,2),
    commission_pct NUMBER(2,2),
    manager_id     NUMBER(6),
    department_id  NUMBER(4),
    CONSTRAINT emp_dept_fk FOREIGN KEY (department_id)
        REFERENCES departments (department_id)
);

-- ============================================================
-- DEPARTMENTS (sin manager_id para evitar FK circular)
-- ============================================================

INSERT INTO departments (department_id, department_name) VALUES (10,  'Administration');
INSERT INTO departments (department_id, department_name) VALUES (20,  'Marketing');
INSERT INTO departments (department_id, department_name) VALUES (30,  'Purchasing');
INSERT INTO departments (department_id, department_name) VALUES (40,  'Human Resources');
INSERT INTO departments (department_id, department_name) VALUES (50,  'Shipping');
INSERT INTO departments (department_id, department_name) VALUES (60,  'IT');
INSERT INTO departments (department_id, department_name) VALUES (70,  'Public Relations');
INSERT INTO departments (department_id, department_name) VALUES (80,  'Sales');
INSERT INTO departments (department_id, department_name) VALUES (90,  'Executive');
INSERT INTO departments (department_id, department_name) VALUES (100, 'Finance');
INSERT INTO departments (department_id, department_name) VALUES (110, 'Accounting');
INSERT INTO departments (department_id, department_name) VALUES (120, 'Treasury');
INSERT INTO departments (department_id, department_name) VALUES (130, 'Corporate Tax');
INSERT INTO departments (department_id, department_name) VALUES (140, 'Control And Credit');
INSERT INTO departments (department_id, department_name) VALUES (150, 'Shareholder Services');
INSERT INTO departments (department_id, department_name) VALUES (160, 'Benefits');
INSERT INTO departments (department_id, department_name) VALUES (170, 'Manufacturing');
INSERT INTO departments (department_id, department_name) VALUES (180, 'Construction');
INSERT INTO departments (department_id, department_name) VALUES (190, 'Contracting');
INSERT INTO departments (department_id, department_name) VALUES (200, 'Operations');
INSERT INTO departments (department_id, department_name) VALUES (210, 'IT Support');
INSERT INTO departments (department_id, department_name) VALUES (220, 'NOC');
INSERT INTO departments (department_id, department_name) VALUES (230, 'IT Helpdesk');
INSERT INTO departments (department_id, department_name) VALUES (240, 'Government Sales');
INSERT INTO departments (department_id, department_name) VALUES (250, 'Retail Sales');
INSERT INTO departments (department_id, department_name) VALUES (260, 'Recruiting');
INSERT INTO departments (department_id, department_name) VALUES (270, 'Payroll');

-- ============================================================
-- EMPLOYEES
-- ============================================================

INSERT INTO employees VALUES (100,'Steven','King','SKING','5.151.234.567',TO_DATE('23/02/2021','DD/MM/YYYY'),'AD_PRES',24000,NULL,NULL,90);
INSERT INTO employees VALUES (101,'Neena','Kochhar','NKOCHHAR','5.151.234.568',TO_DATE('16/07/2018','DD/MM/YYYY'),'AD_VP',17000,NULL,100,90);
INSERT INTO employees VALUES (102,'Lex','De Haan','LDEHAAN','5.151.234.569',TO_DATE('21/08/2012','DD/MM/YYYY'),'AD_VP',17000,NULL,100,90);
INSERT INTO employees VALUES (103,'Alexander','Hunold','AHUNOLD','5.904.234.567',TO_DATE('19/05/2015','DD/MM/YYYY'),'IT_PROG',9000,NULL,102,60);
INSERT INTO employees VALUES (104,'Bruce','Ernst','BERNST','5.904.234.568',TO_DATE('01/07/2017','DD/MM/YYYY'),'IT_PROG',6000,NULL,103,60);
INSERT INTO employees VALUES (105,'David','Austin','DAUSTIN','5.904.234.569',TO_DATE('13/12/2016','DD/MM/YYYY'),'IT_PROG',4800,NULL,103,60);
INSERT INTO employees VALUES (106,'Valli','Pataballa','VPATABAL','5.904.234.560',TO_DATE('25/05/2016','DD/MM/YYYY'),'IT_PROG',4800,NULL,103,60);
INSERT INTO employees VALUES (107,'Diana','Lorentz','DLORENTZ','5.904.235.567',TO_DATE('01/12/2019','DD/MM/YYYY'),'IT_PROG',4200,NULL,103,60);
INSERT INTO employees VALUES (108,'Nancy','Greenberg','NGREENBE','5.151.244.569',TO_DATE('20/10/2020','DD/MM/YYYY'),'FI_MGR',12000,NULL,101,100);
INSERT INTO employees VALUES (109,'Daniel','Faviet','DFAVIET','5.151.244.169',TO_DATE('14/04/2016','DD/MM/YYYY'),'FI_ACCOUNT',9000,NULL,108,100);
INSERT INTO employees VALUES (110,'John','Chen','JCHEN','5.151.244.269',TO_DATE('25/10/2014','DD/MM/YYYY'),'FI_ACCOUNT',8200,NULL,108,100);
INSERT INTO employees VALUES (111,'Ismael','Sciarra','ISCIARRA','5.151.244.369',TO_DATE('07/04/2012','DD/MM/YYYY'),'FI_ACCOUNT',7700,NULL,108,100);
INSERT INTO employees VALUES (112,'Jose Manuel','Urman','JMURMAN','5.151.244.469',TO_DATE('27/04/2019','DD/MM/YYYY'),'FI_ACCOUNT',7800,NULL,108,100);
INSERT INTO employees VALUES (113,'Luis','Popp','LPOPP','5.151.244.567',TO_DATE('20/01/2021','DD/MM/YYYY'),'FI_ACCOUNT',6900,NULL,108,100);
INSERT INTO employees VALUES (114,'Den','Raphaely','DRAPHEAL','5.151.274.561',TO_DATE('27/12/2020','DD/MM/YYYY'),'PU_MAN',11000,NULL,100,30);
INSERT INTO employees VALUES (115,'Alexander','Khoo','AKHOO','5.151.274.562',TO_DATE('05/12/2021','DD/MM/YYYY'),'PU_CLERK',3100,NULL,114,30);
INSERT INTO employees VALUES (116,'Shelli','Baida','SBAIDA','5.151.274.563',TO_DATE('12/01/2017','DD/MM/YYYY'),'PU_CLERK',2900,NULL,114,30);
INSERT INTO employees VALUES (117,'Sigal','Tobias','STOBIAS','5.151.274.564',TO_DATE('14/11/2015','DD/MM/YYYY'),'PU_CLERK',2800,NULL,114,30);
INSERT INTO employees VALUES (118,'Guy','Himuro','GHIMURO','5.151.274.565',TO_DATE('10/02/2020','DD/MM/YYYY'),'PU_CLERK',2600,NULL,114,30);
INSERT INTO employees VALUES (119,'Karen','Colmenares','KCOLMENA','5.151.274.566',TO_DATE('06/06/2014','DD/MM/YYYY'),'PU_CLERK',2500,NULL,114,30);
INSERT INTO employees VALUES (120,'Matthew','Weiss','MWEISS','6.501.231.234',TO_DATE('10/01/2017','DD/MM/YYYY'),'ST_MAN',8000,NULL,100,50);
INSERT INTO employees VALUES (121,'Adam','Fripp','AFRIPP','6.501.232.234',TO_DATE('21/09/2015','DD/MM/YYYY'),'ST_MAN',8200,NULL,100,50);
INSERT INTO employees VALUES (122,'Payam','Kaufling','PKAUFLIN','6.501.233.234',TO_DATE('01/04/2015','DD/MM/YYYY'),'ST_MAN',7900,NULL,100,50);
INSERT INTO employees VALUES (123,'Shanta','Vollman','SVOLLMAN','6.501.234.234',TO_DATE('19/03/2021','DD/MM/YYYY'),'ST_MAN',6500,NULL,100,50);
INSERT INTO employees VALUES (124,'Kevin','Mourgos','KMOURGOS','6.501.235.234',TO_DATE('14/11/2018','DD/MM/YYYY'),'ST_MAN',5800,NULL,100,50);
INSERT INTO employees VALUES (125,'Julia','Nayer','JNAYER','6.501.241.214',TO_DATE('27/03/2017','DD/MM/YYYY'),'ST_CLERK',3200,NULL,120,50);
INSERT INTO employees VALUES (126,'Irene','Mikkilineni','IMIKKILI','6.501.241.224',TO_DATE('01/01/2019','DD/MM/YYYY'),'ST_CLERK',2700,NULL,120,50);
INSERT INTO employees VALUES (127,'James','Landry','JLANDRY','6.501.241.334',TO_DATE('09/01/2018','DD/MM/YYYY'),'ST_CLERK',2400,NULL,120,50);
INSERT INTO employees VALUES (128,'Steven','Markle','SMARKLE','6.501.241.434',TO_DATE('02/05/2013','DD/MM/YYYY'),'ST_CLERK',2200,NULL,120,50);
INSERT INTO employees VALUES (129,'Laura','Bissot','LBISSOT','6.501.245.234',TO_DATE('10/04/2021','DD/MM/YYYY'),'ST_CLERK',3300,NULL,121,50);
INSERT INTO employees VALUES (130,'Mozhe','Atkinson','MATKINSO','6.501.246.234',TO_DATE('29/10/2015','DD/MM/YYYY'),'ST_CLERK',2800,NULL,121,50);
INSERT INTO employees VALUES (131,'James','Marlow','JAMRLOW','6.501.247.234',TO_DATE('06/09/2018','DD/MM/YYYY'),'ST_CLERK',2500,NULL,121,50);
INSERT INTO employees VALUES (132,'TJ','Olson','TJOLSON','6.501.248.234',TO_DATE('31/10/2019','DD/MM/YYYY'),'ST_CLERK',2100,NULL,121,50);
INSERT INTO employees VALUES (133,'Jason','Mallin','JMALLIN','6.501.271.934',TO_DATE('27/04/2019','DD/MM/YYYY'),'ST_CLERK',3300,NULL,122,50);
INSERT INTO employees VALUES (134,'Michael','Rogers','MROGERS','6.501.271.834',TO_DATE('05/08/2015','DD/MM/YYYY'),'ST_CLERK',2900,NULL,122,50);
INSERT INTO employees VALUES (135,'Ki','Gee','KGEE','6.501.271.734',TO_DATE('15/10/2017','DD/MM/YYYY'),'ST_CLERK',2400,NULL,122,50);
INSERT INTO employees VALUES (136,'Hazel','Philtanker','HPHILTAN','6.501.271.634',TO_DATE('23/04/2019','DD/MM/YYYY'),'ST_CLERK',2200,NULL,122,50);
INSERT INTO employees VALUES (137,'Renske','Ladwig','RLADWIG','6.501.211.234',TO_DATE('28/02/2012','DD/MM/YYYY'),'ST_CLERK',3600,NULL,123,50);
INSERT INTO employees VALUES (138,'Stephen','Stiles','SSTILES','6.501.212.034',TO_DATE('18/02/2019','DD/MM/YYYY'),'ST_CLERK',3200,NULL,123,50);
INSERT INTO employees VALUES (139,'John','Seo','JSEO','6.501.212.019',TO_DATE('11/02/2017','DD/MM/YYYY'),'ST_CLERK',2700,NULL,123,50);
INSERT INTO employees VALUES (140,'Joshua','Patel','JPATEL','6.501.211.834',TO_DATE('31/03/2015','DD/MM/YYYY'),'ST_CLERK',2500,NULL,123,50);
INSERT INTO employees VALUES (141,'Trenna','Rajs','TRAJS','6.501.218.009',TO_DATE('08/02/2018','DD/MM/YYYY'),'ST_CLERK',3500,NULL,124,50);
INSERT INTO employees VALUES (142,'Curtis','Davies','CDAVIES','6.501.212.994',TO_DATE('20/12/2015','DD/MM/YYYY'),'ST_CLERK',3100,NULL,124,50);
INSERT INTO employees VALUES (143,'Randall','Matos','RMATOS','6.501.212.874',TO_DATE('04/02/2013','DD/MM/YYYY'),'ST_CLERK',2600,NULL,124,50);
INSERT INTO employees VALUES (144,'Peter','Vargas','PVARGAS','6.501.212.004',TO_DATE('14/05/2015','DD/MM/YYYY'),'ST_CLERK',2500,NULL,124,50);
INSERT INTO employees VALUES (145,'John','Russell','JRUSSEL','011.44.1344.429268',TO_DATE('24/05/2021','DD/MM/YYYY'),'SA_MAN',14000,0.4,100,80);
INSERT INTO employees VALUES (146,'Karen','Partners','KPARTNER','011.44.1344.467268',TO_DATE('25/05/2012','DD/MM/YYYY'),'SA_MAN',13500,0.3,100,80);
INSERT INTO employees VALUES (147,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278',TO_DATE('31/05/2015','DD/MM/YYYY'),'SA_MAN',12000,0.3,100,80);
INSERT INTO employees VALUES (148,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619268',TO_DATE('16/04/2014','DD/MM/YYYY'),'SA_MAN',11000,0.3,100,80);
INSERT INTO employees VALUES (149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018',TO_DATE('22/08/2014','DD/MM/YYYY'),'SA_MAN',10500,0.2,100,80);
INSERT INTO employees VALUES (150,'Peter','Tucker','PTUCKER','011.44.1344.129268',TO_DATE('05/08/2015','DD/MM/YYYY'),'SA_REP',10000,0.3,145,80);
INSERT INTO employees VALUES (151,'David','Bernstein','DBERNSTE','011.44.1344.345268',TO_DATE('23/11/2018','DD/MM/YYYY'),'SA_REP',9500,0.25,145,80);
INSERT INTO employees VALUES (152,'Peter','Hall','PHALL','011.44.1344.478968',TO_DATE('15/12/2019','DD/MM/YYYY'),'SA_REP',9000,0.25,145,80);
INSERT INTO employees VALUES (153,'Christopher','Olsen','COLSEN','011.44.1344.498718',TO_DATE('01/01/2017','DD/MM/YYYY'),'SA_REP',8000,0.2,145,80);
INSERT INTO employees VALUES (154,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668',TO_DATE('13/02/2016','DD/MM/YYYY'),'SA_REP',7500,0.2,145,80);
INSERT INTO employees VALUES (155,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508',TO_DATE('04/12/2017','DD/MM/YYYY'),'SA_REP',7000,0.15,145,80);
INSERT INTO employees VALUES (156,'Janette','King','JKING','011.44.1345.429268',TO_DATE('23/03/2020','DD/MM/YYYY'),'SA_REP',10000,0.35,146,80);
INSERT INTO employees VALUES (157,'Patrick','Sully','PSULLY','011.44.1345.929268',TO_DATE('24/12/2018','DD/MM/YYYY'),'SA_REP',9500,0.35,146,80);
INSERT INTO employees VALUES (158,'Allan','McEwen','AMCEWEN','011.44.1345.829268',TO_DATE('30/04/2014','DD/MM/YYYY'),'SA_REP',9000,0.35,146,80);
INSERT INTO employees VALUES (159,'Lindsey','Smith','LSMITH','011.44.1345.729268',TO_DATE('08/09/2021','DD/MM/YYYY'),'SA_REP',8000,0.3,146,80);
INSERT INTO employees VALUES (160,'Louise','Doran','LDORAN','011.44.1345.629268',TO_DATE('15/09/2015','DD/MM/YYYY'),'SA_REP',7500,0.3,146,80);
INSERT INTO employees VALUES (161,'Sarath','Sewall','SSEWALL','011.44.1345.529268',TO_DATE('23/04/2019','DD/MM/YYYY'),'SA_REP',7000,0.25,146,80);
INSERT INTO employees VALUES (162,'Clara','Vishney','CVISHNEY','011.44.1346.129268',TO_DATE('19/04/2020','DD/MM/YYYY'),'SA_REP',10500,0.25,147,80);
INSERT INTO employees VALUES (163,'Danielle','Greene','DGREENE','011.44.1346.229268',TO_DATE('12/08/2017','DD/MM/YYYY'),'SA_REP',9500,0.15,147,80);
INSERT INTO employees VALUES (164,'Mattea','Marvins','MMARVINS','011.44.1346.329268',TO_DATE('15/08/2020','DD/MM/YYYY'),'SA_REP',7200,0.1,147,80);
INSERT INTO employees VALUES (165,'David','Lee','DLEE','011.44.1346.529268',TO_DATE('05/11/2021','DD/MM/YYYY'),'SA_REP',6800,0.1,147,80);
INSERT INTO employees VALUES (166,'Sundar','Ande','SANDE','011.44.1346.629268',TO_DATE('05/12/2014','DD/MM/YYYY'),'SA_REP',6400,0.1,147,80);
INSERT INTO employees VALUES (167,'Amit','Banda','ABANDA','011.44.1346.729268',TO_DATE('11/09/2019','DD/MM/YYYY'),'SA_REP',6200,0.1,147,80);
INSERT INTO employees VALUES (168,'Lisa','Ozer','LOZER','011.44.1343.929268',TO_DATE('01/12/2018','DD/MM/YYYY'),'SA_REP',11500,0.25,148,80);
INSERT INTO employees VALUES (169,'Harrison','Bloom','HBLOOM','011.44.1343.829268',TO_DATE('10/11/2015','DD/MM/YYYY'),'SA_REP',10000,0.2,148,80);
INSERT INTO employees VALUES (170,'Tayler','Fox','TFOX','011.44.1343.729268',TO_DATE('10/04/2015','DD/MM/YYYY'),'SA_REP',9600,0.2,148,80);
INSERT INTO employees VALUES (171,'William','Smith','WSMITH','011.44.1343.629268',TO_DATE('22/04/2013','DD/MM/YYYY'),'SA_REP',7400,0.15,148,80);
INSERT INTO employees VALUES (172,'Elizabeth','Bates','EBATES','011.44.1343.529268',TO_DATE('20/11/2014','DD/MM/YYYY'),'SA_REP',7300,0.15,148,80);
INSERT INTO employees VALUES (173,'Sundita','Kumar','SKUMAR','011.44.1343.329268',TO_DATE('13/07/2019','DD/MM/YYYY'),'SA_REP',6100,0.1,148,80);
INSERT INTO employees VALUES (175,'Alyssa','Hutton','AHUTTON','011.44.1644.429266',TO_DATE('25/02/2018','DD/MM/YYYY'),'SA_REP',8800,0.25,149,80);
INSERT INTO employees VALUES (176,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265',TO_DATE('31/03/2015','DD/MM/YYYY'),'SA_REP',8600,0.2,149,80);
INSERT INTO employees VALUES (177,'Jack','Livingston','JLIVINGS','011.44.1644.429264',TO_DATE('20/06/2018','DD/MM/YYYY'),'SA_REP',8400,0.2,149,80);
INSERT INTO employees VALUES (178,'Kimberely','Grant','KGRANT','011.44.1644.429263',TO_DATE('08/05/2018','DD/MM/YYYY'),'SA_REP',7000,0.15,149,NULL);
INSERT INTO employees VALUES (179,'Charles','Johnson','CJOHNSON','011.44.1644.429262',TO_DATE('01/01/2013','DD/MM/YYYY'),'SA_REP',6200,0.1,149,80);
INSERT INTO employees VALUES (180,'Winston','Taylor','WTAYLOR','6.505.079.876',TO_DATE('11/01/2021','DD/MM/YYYY'),'SH_CLERK',3200,NULL,120,50);
INSERT INTO employees VALUES (181,'Jean','Fleaur','JFLEAUR','6.505.079.877',TO_DATE('01/08/2016','DD/MM/YYYY'),'SH_CLERK',3100,NULL,120,50);
INSERT INTO employees VALUES (182,'Martha','Sullivan','MSULLIVA','6.505.079.878',TO_DATE('21/06/2015','DD/MM/YYYY'),'SH_CLERK',2500,NULL,120,50);
INSERT INTO employees VALUES (183,'Girard','Geoni','GGEONI','6.505.079.879',TO_DATE('19/09/2019','DD/MM/YYYY'),'SH_CLERK',2800,NULL,120,50);
INSERT INTO employees VALUES (184,'Nandita','Sarchand','NSARCHAN','6.505.091.876',TO_DATE('13/02/2015','DD/MM/YYYY'),'SH_CLERK',4200,NULL,121,50);
INSERT INTO employees VALUES (185,'Alexis','Bull','ABULL','6.505.092.876',TO_DATE('08/09/2016','DD/MM/YYYY'),'SH_CLERK',4100,NULL,121,50);
INSERT INTO employees VALUES (186,'Julia','Dellinger','JDELLING','6.505.093.876',TO_DATE('06/01/2014','DD/MM/YYYY'),'SH_CLERK',3400,NULL,121,50);
INSERT INTO employees VALUES (187,'Anthony','Cabrio','ACABRIO','6.505.094.876',TO_DATE('04/02/2014','DD/MM/YYYY'),'SH_CLERK',3000,NULL,121,50);
INSERT INTO employees VALUES (188,'Kelly','Chung','KCHUNG','6.505.051.876',TO_DATE('23/12/2015','DD/MM/YYYY'),'SH_CLERK',3800,NULL,122,50);
INSERT INTO employees VALUES (189,'Jennifer','Dilly','JDILLY','6.505.052.876',TO_DATE('15/06/2013','DD/MM/YYYY'),'SH_CLERK',3600,NULL,122,50);
INSERT INTO employees VALUES (190,'Timothy','Gates','TGATES','6.505.053.876',TO_DATE('16/07/2021','DD/MM/YYYY'),'SH_CLERK',2900,NULL,122,50);
INSERT INTO employees VALUES (191,'Randall','Perkins','RPERKINS','6.505.054.876',TO_DATE('26/04/2017','DD/MM/YYYY'),'SH_CLERK',2500,NULL,122,50);
INSERT INTO employees VALUES (192,'Sarah','Bell','SBELL','6.505.011.876',TO_DATE('21/01/2015','DD/MM/YYYY'),'SH_CLERK',4000,NULL,123,50);
INSERT INTO employees VALUES (193,'Britney','Everett','BEVERETT','6.505.012.876',TO_DATE('12/06/2013','DD/MM/YYYY'),'SH_CLERK',3900,NULL,123,50);
INSERT INTO employees VALUES (194,'Samuel','McCain','SMCCAIN','6.505.013.876',TO_DATE('26/03/2013','DD/MM/YYYY'),'SH_CLERK',3200,NULL,123,50);
INSERT INTO employees VALUES (195,'Vance','Jones','VJONES','6.505.014.876',TO_DATE('16/02/2016','DD/MM/YYYY'),'SH_CLERK',2800,NULL,123,50);
INSERT INTO employees VALUES (196,'Alana','Walsh','AWALSH','6.505.079.811',TO_DATE('18/09/2017','DD/MM/YYYY'),'SH_CLERK',3100,NULL,124,50);
INSERT INTO employees VALUES (197,'Kevin','Feeney','KFEENEY','6.505.079.822',TO_DATE('24/12/2020','DD/MM/YYYY'),'SH_CLERK',3000,NULL,124,50);
INSERT INTO employees VALUES (198,'Donald','OConnell','DOCONNEL','6.505.079.833',TO_DATE('13/12/2016','DD/MM/YYYY'),'SH_CLERK',2600,NULL,124,50);
INSERT INTO employees VALUES (199,'Douglas','Grant','DGRANT','6.505.079.844',TO_DATE('27/03/2015','DD/MM/YYYY'),'SH_CLERK',2600,NULL,124,50);
INSERT INTO employees VALUES (200,'Jennifer','Whalen','JWHALEN','5.151.234.444',TO_DATE('11/08/2012','DD/MM/YYYY'),'AD_ASST',4400,NULL,101,10);
INSERT INTO employees VALUES (201,'Michael','Hartstein','MHARTSTE','5.151.235.555',TO_DATE('08/06/2017','DD/MM/YYYY'),'MK_MAN',13000,NULL,100,20);
INSERT INTO employees VALUES (202,'Pat','Fay','PFAY','6.031.236.666',TO_DATE('17/11/2017','DD/MM/YYYY'),'MK_REP',6000,NULL,201,20);
INSERT INTO employees VALUES (203,'Susan','Mavris','SMAVRIS','5.151.237.777',TO_DATE('03/05/2021','DD/MM/YYYY'),'HR_REP',6500,NULL,101,40);
INSERT INTO employees VALUES (204,'Hermann','Baer','HBAER','5.151.238.888',TO_DATE('05/08/2018','DD/MM/YYYY'),'PR_REP',10000,NULL,101,70);
INSERT INTO employees VALUES (205,'Shelley','Higgins','SHIGGINS','5.151.238.080',TO_DATE('06/10/2014','DD/MM/YYYY'),'AC_MGR',12000,NULL,101,110);
INSERT INTO employees VALUES (206,'William','Gietz','WGIETZ','5.151.238.181',TO_DATE('12/07/2012','DD/MM/YYYY'),'AC_ACCOUNT',8300,NULL,205,110);

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

COMMIT;
