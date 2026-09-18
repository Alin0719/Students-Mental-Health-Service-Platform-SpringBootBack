package com.liu.mentalhealth.controller;

import com.liu.mentalhealth.entity.Class;
import com.liu.mentalhealth.services.ClassServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ClassController {
    @Autowired
    public ClassServices classServices;

    @GetMapping("/getAllclass")
    public List<Class> getAllclass(){
        List<Class> classes = classServices.getAllclass();
        return classes;
    }

    @GetMapping("/getbycid")
    public Class getbycid(String cno){
        Class cla = classServices.getbycid(cno);
        return cla;
    }

    @GetMapping("/getclassByvague")
    public List<Class> getclassByvague(String str){
        str = "%" + str +"%";
        List<Class> classes = classServices.getclassByvague(str);
        return classes;
    }

    @GetMapping("/delclass")
    public String delclass(String cno){
        String msg;
        boolean b = classServices.delclass(cno);
        if(b == true){
            msg = "删除成功！";
        }else {
            msg = "删除失败！";
        }
        return msg;
    }

    @GetMapping("/insertclass")
    public String insertclass(String cno,String cname,String cmajor){
        String msg;
        boolean b = classServices.insertclass(cno, cname, cmajor);
        if (b == true){
            msg = "添加成功！";
        }else {
            msg = "添加失败！";
        }
        return msg;
    }
}
