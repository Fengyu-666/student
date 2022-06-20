package wangfengyu.demo.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import wangfengyu.demo.pojo.Student;
import wangfengyu.demo.pojo.query.StudentQuery;

import java.util.List;

@Mapper
@Repository
public interface StudentDao {
    //查询所有用户
    public List<Student> listStudent();

    //根据用户名来查询用户 并分页展示
    public List<Student> listStudentByName(StudentQuery studentQuery);
}
