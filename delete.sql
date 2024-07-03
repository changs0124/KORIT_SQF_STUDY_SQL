# 데이터 삭제(DML - DELETE)

select * from student_tb;

delete
from
	student_tb
where
	studnet_id = "2";

# 이메일 데이터 중 @앞에 bbb가 포함된 정보의 introduce 데이터를 'bbb를 포함하고 있는 계정입니다.'
# 'bbb를 포함하고 있는 계정입니다.' 라고 수정하고 student_id가 5 ~ 7인 데이터르들을 삭제하시오

select
	*
from
	student_tb
where
	email like "%bbb%";
    
update
	student_tb
set
	introduce = "bbb를 포함하고 있는 계정입니다."
where
	email like "%bbb%@%";
    
delete
from
	student_tb
where
	student_id between 5 and 7;


