select * from room;


select * from CALENDAR;
insert into Calendar (title) values(#{title});


select * from CALENDAR where MEMBER_ID= 1;


select * from CALENDAR where CALENDAR_ID  = 1;


select c.*, m.member_id from Calendar c, member m where c.member_id = m.member_id;

