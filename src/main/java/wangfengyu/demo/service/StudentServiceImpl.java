package wangfengyu.demo.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wangfengyu.demo.dao.StudentDao;
import wangfengyu.demo.pojo.Student;
import wangfengyu.demo.pojo.query.StudentQuery;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService{
    @Autowired
    private StudentDao studentDao;

    @Override
    public List<Student> listStudent() {
        return studentDao.listStudent();
    }

    @Override
    public PageInfo<Student> listStudentByName(StudentQuery studentQuery) {
        PageHelper.startPage(studentQuery.getPageNum(),studentQuery.getPageSize());
        return new PageInfo<Student>(studentDao.listStudentByName(studentQuery));
    }
}
