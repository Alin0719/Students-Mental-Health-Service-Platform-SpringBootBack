package com.liu.mentalhealth.services;

import com.liu.mentalhealth.dao.EducationDao;
import com.liu.mentalhealth.entity.Education;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.Date;
import java.util.List;

@Service
public class EducationServices {

    @Resource
    public EducationDao educationDao;

    public List<Education> getAlledu(){
        return educationDao.getAlledu();
    }

    public List<Education> getFiveedu(){
        return educationDao.getFiveedu();
    }

    public Education geteduByid(int eno){
        return educationDao.geteduByid(eno);
    }
    public List<Education> geteduByvague(String str){
        return educationDao.geteduByvague(str);
    }
    public boolean addedu(Education education){
        return educationDao.addedu(education);
    }
    public boolean deledu(int eno){
        return educationDao.deledu(eno);
    }
    public boolean updatetitle(int eno,String etitle){
        return educationDao.updatetitle(eno, etitle);
    }
    public boolean updatecontent(int eno,String econtent){
        return educationDao.updatecontent(eno, econtent);
    }
    public boolean updatetime(int eno, Date etime){
        return educationDao.updatetime(eno, etime);
    }
    public boolean updateimg(int eno,String emig){
        return educationDao.updateimg(eno, emig);
    }
}
