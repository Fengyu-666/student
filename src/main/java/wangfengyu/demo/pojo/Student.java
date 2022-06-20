package wangfengyu.demo.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    private Integer student_id;
    private String stu_name;
    private Integer grade;
    private String id_no;
    private Integer sex;
}

