
create table dept (
        deptno int not null,
        deptname char(10),
        floor int,
        primary key (deptno)
        );

insert into dept values(1, '영업', 8);
insert into dept values(2, '기획', 10);
insert into dept values(3, '개발', 9);
insert into dept values(4, '총부', 7);

create table emp (
        empno int not null,
        empname char(10) unique,
        title char(10) default '사원',
        manager int,
        salary int check(salary < 6000000),
        dno int,
        primary key(empno),
        foreign key(manager) references emp(empno),
        foreign key(dno) references dept(deptno) on update cascade
        );

insert into emp values(4377, '이성래', '사장', NULL, 5000000, 2);
insert into emp values(3426, '박영권', '과장', 4377, 3000000, 1);
insert into emp values(3011, '이수민', '부장', 4377, 4000000, 3);
insert into emp values(3427, '최종철', '사원', 3011, 1500000, 3);
insert into emp values(1003, '조민희', '과장', 4377, 3000000, 2);
insert into emp values(2106, '김창섭', '대리', 1003, 2500000, 2);
insert into emp values(1365, '김상원', '사원', 3426, 1500000, 1);


create view emp_planning
        as
        select e.empname, e.title, e.salary
        from emp e, dept d
        where e.dno = d.deptno and d.deptname = '기획'
