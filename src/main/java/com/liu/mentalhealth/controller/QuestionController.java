package com.liu.mentalhealth.controller;

import com.liu.mentalhealth.entity.Qoption;
import com.liu.mentalhealth.entity.QueandOpt;
import com.liu.mentalhealth.entity.Question;
import com.liu.mentalhealth.services.QoptionServices;
import com.liu.mentalhealth.services.QuestionServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class QuestionController {
    @Autowired
    public QuestionServices questionServices;
    @Autowired
    public QoptionServices qoptionServices;

    @GetMapping("/getAllque")
    public List<Question> getAllque(){
        List<Question> quelists = questionServices.getAllque();
        return quelists;
    }

    @GetMapping("/getquebyvag")
    public List<Question> getquebyvag(String str){
        str = "%" + str +"%";
        List<Question> questions = questionServices.getquebyvag(str);
        return questions;
    }

    @GetMapping("/getallqueandopt")
    public List<QueandOpt> getallqueandopt(){
        List<QueandOpt> queandOpts = new ArrayList<QueandOpt>();
        List<Question> questions = questionServices.getAllque();
        for (Question question : questions){
            List<Qoption> qoptions = qoptionServices.getopbyqid(question.getId());
            QueandOpt queandOpt = new QueandOpt(question.getId(),question.getTfid(),question.isIsmultiple(),question.getQname(),question.getScore(),qoptions);
            queandOpts.add(queandOpt);
        }
        return queandOpts;
    }

    @GetMapping("/getqueByid")
    public Question getqueByid(int id){
        Question que = questionServices.getqueByid(id);
        return que;
    }

    @GetMapping("/addquestion")
    public String addquestion(int tfid,boolean ismultiple,String qname,int score){
        String msg;
        boolean b = questionServices.addquestion(tfid,ismultiple,qname,score);
        if(b == true){
            msg = "添加成功";
        }else {
            msg = "添加失败";
        }
        return msg;
    }

    @GetMapping("/delquestion")
    public String delquestion(int id){
        String msg;
        boolean b = questionServices.delquestion(id);
        if(b == true){
            msg = "删除成功";
        }else {
            msg = "删除失败";
        }
        return msg;
    }

    @GetMapping("/updateqname")
    public String updateqname(int id,String qname){
        String msg;
        boolean b = questionServices.updateqname(id, qname);
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }

    @GetMapping("/updatescore")
    public String updatescore(int id,int score){
        String msg;
        boolean b = questionServices.updatescore(id, score);
        if(b == true){
            msg = "修改成功";
        }else {
            msg = "修改失败";
        }
        return msg;
    }
}
