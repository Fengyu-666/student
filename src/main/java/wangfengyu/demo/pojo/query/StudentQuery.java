package wangfengyu.demo.pojo.query;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StudentQuery {
    private Integer pageNum = 1;
    private Integer pageSize = 4;
    private String stu_name;
}
