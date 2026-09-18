package com.liu.mentalhealth.services;

import com.liu.mentalhealth.dao.TeacherDao;
import com.liu.mentalhealth.entity.Teacher;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TeacherServices {
    @Resource
    public TeacherDao teacherDao;

    public List<Teacher> getAllteachers(){
        return teacherDao.getAllteachers();
    }
    public List<Teacher> getteacherbyvag(String str){
        return teacherDao.getteacherbyvag(str);
    }
    public Teacher getBytid(String tid){
        return teacherDao.getBytid(tid);
    }
    public Teacher getBytidandtpwd(String tid,String tpwd){
        return teacherDao.getBytidandtpwd(tid,tpwd);
    }
    public boolean addteacher(String tid,String tpwd,String tname,String tsex,int tage,String tiphone,String qualification,String timg){
        return teacherDao.addteacher(tid, tpwd, tname, tsex, tage, tiphone, qualification, timg);
    }
    public boolean delteacher(String tid){
        return teacherDao.delteacher(tid);
    }
    public boolean updatetage(String tid,int tage){
        return teacherDao.updatetage(tid, tage);
    }
    public boolean updatetsex(String tid,String tsex){
        return teacherDao.updatetsex(tid, tsex);
    }
    public boolean updatetiphone(String tid,String tiphone){
        return teacherDao.updatetiphone(tid, tiphone);
    }
    public boolean upqualification(String tid,String qualification){
        return teacherDao.upqualification(tid, qualification);
    }
}
