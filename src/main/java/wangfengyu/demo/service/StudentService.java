package wangfengyu.demo.service;

import com.github.pagehelper.PageInfo;
import wangfengyu.demo.pojo.Student;
import wangfengyu.demo.pojo.query.StudentQuery;

import java.util.List;

public interface StudentService {
    //查询所有用户
    public List<Student> listStudent();

    //根据用户名来查询用户 并分页展示
    public PageInfo<Student> listStudentByName(StudentQuery studentQuery);

}
