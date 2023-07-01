create database scott;

use scott;

create table dept(
    deptno integer,
    dname varchar(14),
    loc varchar(13),
    constraint pk_dept primary key (deptno)
);

create table emp(
    empno integer,
    ename varchar(10),
    job varchar(9),
    mgr integer,
    hiredate date not null,
    sal integer,
    comm integer,
    deptno integer,
    constraint pk_emp primary key (empno),
    constraint fk_deptno foreign key (deptno) references dept (deptno)
);

insert into
    dept
values
    (10, 'ACCOUNTING', 'NEW YORK');

insert into
    dept
values
    (20, 'RESEARCH', 'DALLAS');

insert into
    dept
values
    (30, 'SALES', 'CHICAGO');

insert into
    dept
values
    (40, 'OPERATIONS', 'BOSTON');

insert into emp values(7839,'KING','PRESIDENT',null,str_to_date('171181','%d%m%y'),5000,null,10);

insert into emp values (7698,'BLAKE','MANAGER',7839,str_to_date('010581','%d%m%y'),2850,null,30);

insert into emp values (7782,'CLARK','MANAGER',7839,str_to_date('090681','%d%m%y'),2450,null,10);

insert into emp values (7566,'JONES','MANAGER',7839,str_to_date('020481','%d%m%y'),2975,null,20);

insert into emp values (7788,'SCOTT','ANALYST',7566,str_to_date('130787','%d%m%y'),3000,null,20);

insert into emp values (7902,'FORD','ANALYST',7566,str_to_date('031281','%d%m%y'),3000,null,20);

insert into emp values (7369,'SMITH','CLERK',7902,str_to_date('171280','%d%m%y'),800,null,20);

insert into emp values (7499,'ALLEN','SALESMAN',7698,str_to_date('200280','%d%m%y'),1600,300,30);

insert into emp values (7521,'WARD','SALESMAN',7698,str_to_date('220281','%d%m%y'),1250,500,20);

insert into emp values (7654,'MARTIN','SALESMAN',7698,str_to_date('280981','%d%m%y'),1250,1400,30);

insert into emp values (7844,'TURNER','SALESMAN',7698,str_to_date('080981','%d%m%y'),1500,NULL,30);

insert into emp values (7876,'ADAMS','CLERK',7788,str_to_date('130787','%d%m%y'),1100,NULL,20);

insert into emp values (7900,'JAMES','CLERK',7698,str_to_date('031281','%d%m%y'),950,NULL,30);

insert into emp values (7934,'MILLER','CLERK',7782,str_to_date('230182','%d%m%y'),1300,NULL,10);

create table bonus(
    ename varchar(10),
    job varchar(9),
    sal INTEGER,
    comm INTEGER
);

create table salgrade(
    grade INTEGER,
    losal INTEGER,
    hisal INTEGER
);

insert into
    salgrade
values
    (1, 700, 1200);

insert into
    salgrade
values
    (2, 1201, 1400);

insert into
    salgrade
values
    (3, 1401, 2000);

insert into
    salgrade
values
    (4, 2001, 3000);

insert into
    salgrade
values
    (5, 3001, 9999);
