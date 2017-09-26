create table s (
        sno char(5) NOT NULL primary key,
        sname char(10) NULL,
        city char(10) NULL
        );

create table p (
        pno char(5) NOT NULL
        primary key,
        pname char(10) NULL,
        color char(10) NULL,
        WEIGHT SMALLINT NULL,
        city char(10) NULL
        );

create table sp (
        sno char(5) NOT NULL,
        pno char(5) NOT NULL,
        qty SMALLINT NULL,
        constraint PK_SP primary key (sno, pno),
        constraint FK_SP_S foreign key (sno) references S on update cascade,
        constraint FK_SP_P foreign key (pno) references P on delete cascade
        );

insert into s values ('s01', 'Smith', 'London');
insert into s values ('s02', 'jones', 'Paris');
insert into s values ('s03', 'blakes', 'Paris');
insert into s values ('s04', 'clark', 'London');
insert into s values ('s05', 'adams', 'Athenes');

insert into p values ('p01', 'Nut', 'red', 12, 'London');
insert into p values ('p02', 'Bolt', 'green', 17, 'Paris');
insert into p values ('p03', 'Screw', 'blue', 17, 'Rome');
insert into p values ('p04', 'Screw', 'red', 14, 'London');
insert into p values ('p05', 'cam', 'blue', 12, 'Paris');
insert into p values ('p06', 'cog', 'red', 19, 'London');

insert into sp values ('s01', 'p01', 300);
insert into sp values ('s01', 'p02', 200);
insert into sp values ('s01', 'p03', 400);
insert into sp values ('s01', 'p04', 500);
insert into sp values ('s01', 'p05', 100);
insert into sp values ('s01', 'p06', 200);
insert into sp values ('s02', 'p01', 300);
insert into sp values ('s02', 'p02', 400);
insert into sp values ('s03', 'p02', 200);
insert into sp values ('s04', 'p04', 300);
insert into sp values ('s05', 'p05', 400);
