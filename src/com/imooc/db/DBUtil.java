package com.imooc.db;

import com.imooc.bean.Emp;
import com.imooc.bean.Student;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * Created by TangTian on 2018/7/23.
 */
public class DBUtil {
    public static Map<String,Emp> map = new HashMap<String,Emp>();
    public static Map<String,Student> studentlist = new HashMap<String, Student>();
    static {
        map.put("1",new Emp("1","张三","1","1122@31","好孩子","51523513253215") );
        map.put("2",new Emp("2","李四","12345","3344@3","坏孩子","23453252345234") );
        map.put("3",new Emp("3","CC","12345","5566@31","男孩子","4235325325234532") );
        map.put("4",new Emp("4","DD","12345","7788@31","女孩子","42354325325") );
        map.put("5",new Emp("5","EE","12345","9911@31","就是个孩子","321431241321231234") );
        studentlist.put("201544901067",new Student("201544901067","1","90.00","唐甜"));
        studentlist.put("201544901068",new Student("201544901068","1","91.00","李四"));
        studentlist.put("201544901069",new Student("201544901069","1","93.00","张三"));
        studentlist.put("201544901061",new Student("201544901061","1","94.00","王小二"));
        studentlist.put("201544901062",new Student("201544901062","1","97.00","张麻子"));
    }


    public static boolean selectEmpByIpAndPassword(Emp emp){
        boolean flag = false;
        for (String key : map.keySet()){
             Emp e = map.get(key);

            if (emp.getId().equals(e.getId()) && emp.getPassword().equals(e.getPassword())){
                flag = true;
                break;
            }
        }
        return flag;
    }
}
