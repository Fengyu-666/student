package wangfengyu.demo.controller;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import wangfengyu.demo.pojo.Student;
import wangfengyu.demo.pojo.query.StudentQuery;
import wangfengyu.demo.service.StudentService;

import java.util.List;

@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;

    @GetMapping("/" )
    public String index(){

        return "index";
    }

    public List<Student> listStudent(){
        return studentService.listStudent();
    }


}