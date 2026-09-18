package com.liu.mentalhealth.services;

import com.liu.mentalhealth.dao.TestResultDao;
import com.liu.mentalhealth.entity.TestResult;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TestResultServices {
    @Resource
    public TestResultDao testResultDao;

    public List<TestResult> getalltresult(){
        return testResultDao.getalltresult();
    }
    public List<TestResult> getresultbyvag(String str){
        return testResultDao.getresultbyvag(str);
    }
    public TestResult gettresultbyuid(String uid){
        return testResultDao.gettresultbyuid(uid);
    }
    public boolean addresult(String uid, int tfid, float genIndex, int positivenum, float positivelevel, float somavg, float obseavg, float interavg, float depressavg, float anxietyavg, float hostavg, float photicavg, float paravg, float psychoavg, float otheravg){
        return testResultDao.addresult(uid, tfid, genIndex, positivenum, positivelevel, somavg, obseavg, interavg, depressavg, anxietyavg, hostavg, photicavg, paravg, psychoavg, otheravg);
    }
    public boolean delresult(String uid,int tfid){
        return testResultDao.delresult(uid,tfid);
    }
}
