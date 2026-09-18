package com.liu.mentalhealth.controller;

import com.liu.mentalhealth.entity.TestResult;
import com.liu.mentalhealth.services.TestResultServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class TestResultController {
    @Autowired
    public TestResultServices testResultServices;

    @GetMapping("/getalltresult")
    public List<TestResult> getalltresult(){
        List<TestResult> testResults = testResultServices.getalltresult();
        return testResults;
    }

    @GetMapping("/getresultbyvag")
    public List<TestResult> getresultbyvag(String str){
        str = '%' + str + '%';
        List<TestResult> testResults = testResultServices.getresultbyvag(str);
        return testResults;
    }

    @GetMapping("/gettresultbyuid")
    public TestResult gettresultbyuid(String uid){
        TestResult testResults = testResultServices.gettresultbyuid(uid);
        return testResults;
    }

    @GetMapping("/addresult")
    public String addresult(String uid, int tfid, float genIndex, int positivenum, float positivelevel, float somavg, float obseavg, float interavg, float depressavg, float anxietyavg, float hostavg, float photicavg, float paravg, float psychoavg, float otheravg){
        String msg;
        boolean b = testResultServices.addresult(uid,tfid,genIndex,positivenum,positivelevel,somavg,obseavg,interavg,depressavg,anxietyavg,hostavg,photicavg,paravg,psychoavg,otheravg);
        if(b == true){
            msg = "结果保存成功";
        }else {
            msg = "结果保存失败";
        }
        return msg;
    }

/*
@GetMapping("/addresult")
public String addresult(String uid, int tfid, float genIndex, int positivenum, float positivelevel, float somavg, float obseavg, float interavg, float depressavg, float anxietyavg, float hostavg, float photicavg, float paravg, float psychoavg, float otheravg){
    System.out.println("TestResult{" +
            "uid='" + uid + '\'' +
            ", tfid=" + tfid +
            ", genIndex=" + genIndex +
            ", positivenum=" + positivenum +
            ", positivelevel=" + positivelevel +
            ", somavg=" + somavg +
            ", obseavg=" + obseavg +
            ", interavg=" + interavg +
            ", depressavg=" + depressavg +
            ", anxietyavg=" + anxietyavg +
            ", hostavg=" + hostavg +
            ", photicavg=" + photicavg +
            ", paravg=" + paravg +
            ", psychoavg=" + psychoavg +
            ", otheravg=" + otheravg +
            '}');
    return "看控制台";
}

 */
    @GetMapping("/delresult")
    public String delresult(String uid,int tfid){
        String msg;
        boolean b = testResultServices.delresult(uid, tfid);
        if(b == true){
            msg = "删除成功";
        }else {
            msg = "删除失败";
        }
        return msg;
    }
}
