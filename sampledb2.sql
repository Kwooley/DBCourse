create table student (
        sid smallint constraint const_student_pk PRIMARY KEY,
        sname char(20) NULL,
        major varchar(30) NULL,
        gradelevel char(2)
        constraint const_student_gr check ( gradelevel in ('GR', 'SO', 'GR', 'SN', 'JR', 'FR')),
        Age smallint NULL
        constraint const_student_age check ( age > 0 )
) ;


create table class (
        cname char(5),
        time varchar(7),
        room char(5),
        constraint const_class_pk primary key (cname)
        );

create table enrollment (
        studentnumber smallint,
        classname char(5),
        positionnumber smallint,
        constraint const_enroll_pk primary key (studentnumber, classname),
        constraint const_enroll_fk_snum foreign key (studentnumber) references student(sid),
        constraint const_enroll_fk_cname foreign key (classname) references class(cname)
);


insert into student values ( 100, 'JONES', 'HISTORY', 'GR', 21);
insert into student values ( 150, 'PARKS', 'ACCOUNTING', 'SO', 19);
insert into student values ( 200, 'BAKER', 'MATH', 'GR', 50);
insert into student values ( 250, 'GLASS', 'HISTORY', 'SN', 50);
insert into student values ( 300, 'BAKER', 'ACCOUNTING', 'SN', 41);
insert into student values ( 350, 'RUSSEL', 'MATH', 'JR', 20);
insert into student values ( 400, 'RYE', 'ACCOUNTING', 'FR', 18);
insert into student values ( 450, 'JONES', 'HISTORY', 'SN', 24);

insert into class values ( 'BA200', 'M-F9', 'SC110');
insert into class values ( 'BD445', 'MWF3', 'SC213');
insert into class values ( 'BF410', 'MWF8', 'SC213');
insert into class values ( 'CS150', 'MWF3', 'EA304');
insert into class values ( 'CS250', 'MWF12', 'EB210');

insert into enrollment values (100, 'BD445', 1);
insert into enrollment values (150, 'BA200', 1);
insert into enrollment values (200, 'BD445', 2);
insert into enrollment values (200, 'CS250', 1);
insert into enrollment values (300, 'CS150', 1);
insert into enrollment values (400, 'BA200', 2);
insert into enrollment values (400, 'BF410', 1);
insert into enrollment values (400, 'CS250', 2);
insert into enrollment values (450, 'BA200', 3);

