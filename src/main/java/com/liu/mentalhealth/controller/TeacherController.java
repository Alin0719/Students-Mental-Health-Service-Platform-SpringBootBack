package com.liu.mentalhealth.controller;

import com.liu.mentalhealth.entity.Teacher;
import com.liu.mentalhealth.services.TeacherServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class TeacherController {
    @Autowired
    public TeacherServices teacherServices;

    @GetMapping("/getAllteachers")
    public List<Teacher> getAllteachers(){
        List<Teacher> teachers = teacherServices.getAllteachers();
        return teachers;
    }

    @GetMapping("/getteacherbyvag")
    public List<Teacher> getteacherbyvag(String str){
        str = "%" + str +"%";
        List<Teacher> teachers = teacherServices.getteacherbyvag(str);
        return teachers;
    }

    @GetMapping("/getBytid")
    public Teacher getBytid(String tid){
        Teacher teacher = teacherServices.getBytid(tid);
        return teacher;
    }

    @GetMapping("/getBytidandtpwd")
    public Teacher getBytidandtpwd(String tid,String tpwd){
        Teacher teacher = teacherServices.getBytidandtpwd(tid, tpwd);
        return teacher;
    }

    @GetMapping("/addteacher")
    public String addteacher(String tid,String tpwd,String tname,String tsex,int tage,String tiphone,String qualification,String timg){
        String msg;
        boolean b = teacherServices.addteacher(tid, tpwd, tname, tsex, tage, tiphone, qualification, timg);
        if(b == true){
            msg = "添加成功";
        }else {
            msg = "添加失败";
        }
        return msg;
    }

    @GetMapping("/delteacher")
    public String delteacher(String tid){
        String msg;
        boolean b = teacherServices.delteacher(tid);
        if(b == true){
            msg = "删除成功";
        }else {
            msg = "删除失败";
        }
        return msg;
    }

    @GetMapping("/updatetage")
    public String updatetage(String tid,int tage){
        String msg;
        boolean b = teacherServices.updatetage(tid,tage);
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }

    @GetMapping("/updatetsex")
    public String updatetsex(String tid,String tsex){
        String msg;
        boolean b = teacherServices.updatetsex(tid, tsex);
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }

    @GetMapping("/updatetiphone")
    public String updatetiphone(String tid,String tiphone){
        String msg;
        boolean b = teacherServices.updatetiphone(tid, tiphone);
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }

    @GetMapping("/upqualification")
    public String upqualification(String tid,String qualification){
        String msg;
        boolean b = teacherServices.upqualification(tid, qualification);
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }

}
