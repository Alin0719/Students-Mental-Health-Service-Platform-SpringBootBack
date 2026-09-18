package com.liu.mentalhealth.controller;

import com.liu.mentalhealth.entity.Education;
import com.liu.mentalhealth.services.EducationServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Date;
import java.util.List;

@RestController
public class EducationController {
    @Autowired
    public EducationServices educationServices;

    @GetMapping("/getAlledu")
    public List<Education> getAlledu(){
        List<Education> edus = educationServices.getAlledu();
        return edus;
    }
    @GetMapping("/getFiveedu")
    public List<Education> getFiveedu(){
        List<Education> educations = educationServices.getFiveedu();
        return educations;
    }

    @GetMapping("/geteduByid")
    public Education geteduByid(int eno){
        Education edu = educationServices.geteduByid(eno);
        String str = edu.getEcontent();
        edu.setEcontent(str.replace(" ","<br>"));
        return edu;
    }



    @GetMapping("/geteduByvague")
    public List<Education> geteduByvague(String str){
        String strs = "%" + str +"%";
        List<Education> myedus = educationServices.geteduByvague(strs);
        return myedus;
    }

    @GetMapping("/addedu")
    public String addedu(Education education){
        String msg;
        boolean b = educationServices.addedu(education);
        if(b == true){
            msg = "添加成功";
        }else {
            msg = "添加失败";
        }
        return msg;
    }

    @GetMapping("/deledu")
    public String deledu(int eno){
        String msg;
        boolean b = educationServices.deledu(eno);
        if(b == true){
            msg = "删除成功";
        }else {
            msg = "删除失败";
        }
        return msg;
    }

    @GetMapping("/updatetitle")
    public String updatetitle(int eno,String etitle){
        String msg;
        boolean b = educationServices.updatetitle(eno, etitle);
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }

    @GetMapping("/updatecontent")
    public String updatecontent(int eno,String econtent){
        String msg;
        boolean b = educationServices.updatecontent(eno, econtent);
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }

    @GetMapping("/updatetime")
    public String updatetime(int eno, Date etime){
        String msg;
        boolean b = educationServices.updatetime(eno, etime);
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }

    @GetMapping("/updateimg")
    public String updateimg(int eno,String eimg){
        String msg;
        boolean b = educationServices.updateimg(eno, eimg);
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }

}
