# 데이터 삽입(DML - INSERT)
select * from student_tb;    

# 1.
# insert into `study`.`student_tb`	Database가 use되지 않은 경우
# insert into `student_tb`			Database가 use상태인 경우
insert into student_tb
	(student_id, student_name, phone, email, admission_date)
values
	(0, "name", "010-1234-1234", "aaa1234@gmail.com", now());
    
insert into student_tb
	(student_id, student_name, phone, email, admission_date)
values
	# 다건 INSERT
	(0, "name1", "010-1234-1234", "aaa1234@gmail.com", now()),
    (0, "name2", "010-1234-1234", "aaa1234@gmail.com", now()),
    (0, "name3", "010-1234-1234", "aaa1234@gmail.com", now());
    
insert into student_tb
	(student_id, student_name, phone, email, introduce, admission_date)
values
	(0, "name4", "010-1234-1234", "aaa1234@gmail.com", null, now());
    
insert into student_tb
	(student_id, phone, email, introduce, student_name, admission_date)
values
	(0, "010-1234-1234", "aaa1234@gmail.com", null, "name5", now());
    
insert into student_tb
values
	(0, "name6", "010-1234-1234", "aaa1234@gmail.com", null, now());    
    
