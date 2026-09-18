package com.liu.mentalhealth.controller;

import com.liu.mentalhealth.entity.Qoption;
import com.liu.mentalhealth.services.QoptionServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class QoptionController {
    @Autowired
    public QoptionServices qoptionServices;

    @GetMapping("/getalloption")
    public List<Qoption> getalloption(){
        List<Qoption> qoptions = qoptionServices.getalloption();
        return qoptions;
    }

    @GetMapping("/getopbyid")
    public Qoption getopbyid(int id){
        Qoption qoption = qoptionServices.getopbyid(id);
        return qoption;
    }
    @GetMapping("/getopbyqid")
    public List<Qoption> getopbyqid(int qid){
        List<Qoption> qoptions = qoptionServices.getopbyqid(qid);
        return qoptions;
    }

    @GetMapping("/addoption")
    public String addoption(String oname,boolean checked,int sweight,String letter,int qid){
        String msg;
        boolean b = qoptionServices.addoption(oname, checked, sweight, letter,qid);
        if (b == true){
            msg = "添加成功";
        }else {
            msg = "添加失败";
        }
        return msg;
    }

    @GetMapping("/deloption")
    public String deloption(int id){
        String msg;
        boolean b = qoptionServices.deloption(id);
        if (b == true){
            msg = "删除成功";
        }else {
            msg = "删除失败";
        }
        return msg;
    }

    @GetMapping("/updateoname")
    public String updateoname(int id,String oname){
        String msg;
        boolean b = qoptionServices.updateoname(id, oname);
        if (b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }

    @GetMapping("/updatesweight")
    public String updatesweight(int id,int sweight){
        String msg;
        boolean b = qoptionServices.updatesweight(id, sweight);
        if (b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }
}
