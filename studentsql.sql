# 创建学生表课程表sql
use student;
DROP TABLE IF EXISTS student_course_relation;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS course;

#学生表
CREATE TABLE student(
student_id  bigint unsigned PRIMARY KEY AUTO_INCREMENT, -- 学生主键 
stu_name        VARCHAR(128),-- 学生姓名
grade         int, -- 年级
id_no  char(18), -- 身份证号码
sex         tinyint(3) unsigned -- 性别
);

#课程表
CREATE TABLE course(
course_id bigint unsigned PRIMARY KEY AUTO_INCREMENT, -- 课程id 主键 
course_name varchar(128), -- 课程名称
credit float -- 课程学分
);

#学生课程中间表
CREATE TABLE student_course_relation(
student_id bigint unsigned,
course_id bigint unsigned,

CONSTRAINT pk_sc_id PRIMARY KEY(student_id, course_id), -- 设置为联合id
CONSTRAINT fk_student_id FOREIGN KEY(student_id) REFERENCES student(student_id), -- 设置外键
CONSTRAINT fk_course_id FOREIGN KEY(course_id) REFERENCES course(course_id)
);
alter table student convert to character set utf8;
alter table course convert to character set utf8;
alter table student_course_relation convert to character set utf8;

#学生表插入数据
INSERT INTO student(stu_name,grade,id_no,sex) VALUES('步惊云',2,'632323190605262000','1');
INSERT INTO student(stu_name,grade,id_no,sex) VALUES('聂风',2,'632323190605264501','1');
INSERT INTO student(stu_name,grade,id_no,sex) VALUES('赵敏',3,'632323190605261001','0');
INSERT INTO student(stu_name,grade,id_no,sex) VALUES('张三丰',4,'632323190605268000','1');
INSERT INTO student(stu_name,grade,id_no,sex) VALUES('张曼玉',5,'632323190605260447','0');
INSERT INTO student(stu_name,grade,id_no,sex) VALUES('猪八戒',5,'632323190605265002','1');
INSERT INTO student(stu_name,grade,id_no,sex) VALUES('孙悟空',5,'632323190605268780','1');
INSERT INTO student(stu_name,grade,id_no,sex) VALUES('任盈盈',2,'632323190605263007','0');
INSERT INTO student(stu_name,grade,id_no,sex) VALUES('赵灵儿',1,'632323190605260922','0');
INSERT INTO student(stu_name,grade,id_no,sex) VALUES('李逍遥',2,'632323190605267585','1');
INSERT INTO student(stu_name,grade,id_no,sex) VALUES('小白龙',2,'632323190605264085','1');
INSERT INTO student(stu_name,grade,id_no,sex) VALUES('叶凡',3,'632323190605266160','1');
INSERT INTO student(stu_name,grade,id_no,sex) VALUES('姬紫月',1,'632323190605265000','0');

#课程表插入数据
INSERT INTO course(course_name,credit) VALUES('高等数学',4);
INSERT INTO course(course_name,credit) VALUES('线性代数',4);
INSERT INTO course(course_name,credit) VALUES('数据结构',5);
INSERT INTO course(course_name,credit) VALUES('大学英语',3);
INSERT INTO course(course_name,credit) VALUES('大学计算机基础',4);
INSERT INTO course(course_name,credit) VALUES('概率论',2.5);
INSERT INTO course(course_name,credit) VALUES('C语言',5);
INSERT INTO course(course_name,credit) VALUES('c++',5);
INSERT INTO course(course_name,credit) VALUES('高等代数',4);
INSERT INTO course(course_name,credit) VALUES('插花艺术欣赏',1);
INSERT INTO course(course_name,credit) VALUES('语文',1);

#课程-学生关联表插入数据
INSERT INTO student_course_relation(student_id,course_id) VALUES(1,1);
INSERT INTO student_course_relation(student_id,course_id) VALUES(1,5);
INSERT INTO student_course_relation(student_id,course_id) VALUES(1,7);
INSERT INTO student_course_relation(student_id,course_id) VALUES(2,2);
INSERT INTO student_course_relation(student_id,course_id) VALUES(2,3);
INSERT INTO student_course_relation(student_id,course_id) VALUES(2,10);
INSERT INTO student_course_relation(student_id,course_id) VALUES(3,5);
INSERT INTO student_course_relation(student_id,course_id) VALUES(3,8);
INSERT INTO student_course_relation(student_id,course_id) VALUES(3,6);
INSERT INTO student_course_relation(student_id,course_id) VALUES(4,2);
INSERT INTO student_course_relation(student_id,course_id) VALUES(4,11);
INSERT INTO student_course_relation(student_id,course_id) VALUES(5,1);
INSERT INTO student_course_relation(student_id,course_id) VALUES(5,2);
INSERT INTO student_course_relation(student_id,course_id) VALUES(5,3);
INSERT INTO student_course_relation(student_id,course_id) VALUES(6,1);
INSERT INTO student_course_relation(student_id,course_id) VALUES(6,9);
INSERT INTO student_course_relation(student_id,course_id) VALUES(6,10);
INSERT INTO student_course_relation(student_id,course_id) VALUES(7,3);
INSERT INTO student_course_relation(student_id,course_id) VALUES(7,5);
INSERT INTO student_course_relation(student_id,course_id) VALUES(7,7);
INSERT INTO student_course_relation(student_id,course_id) VALUES(8,2);
INSERT INTO student_course_relation(student_id,course_id) VALUES(8,5);
INSERT INTO student_course_relation(student_id,course_id) VALUES(8,4);
INSERT INTO student_course_relation(student_id,course_id) VALUES(9,9);
INSERT INTO student_course_relation(student_id,course_id) VALUES(9,5);
INSERT INTO student_course_relation(student_id,course_id) VALUES(9,4);
INSERT INTO student_course_relation(student_id,course_id) VALUES(10,5);
INSERT INTO student_course_relation(student_id,course_id) VALUES(11,3);
INSERT INTO student_course_relation(student_id,course_id) VALUES(12,3);
INSERT INTO student_course_relation(student_id,course_id) VALUES(13,9);
