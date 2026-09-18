package com.liu.mentalhealth.dao;

import com.liu.mentalhealth.entity.TestResult;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TestResultDao {
    public List<TestResult> getalltresult();
    public List<TestResult> getresultbyvag(String str);
    public TestResult gettresultbyuid(String uid);
    public boolean addresult(String uid, int tfid, float genIndex, int positivenum, float positivelevel, float somavg, float obseavg, float interavg, float depressavg, float anxietyavg, float hostavg, float photicavg, float paravg, float psychoavg, float otheravg);
    public boolean delresult(String uid,int tfid);
}
