package com.liu.mentalhealth.dao;

import com.liu.mentalhealth.entity.Teacher;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TeacherDao {
    public List<Teacher> getAllteachers();
    public List<Teacher> getteacherbyvag(String str);
    public Teacher getBytid(String tid);
    public Teacher getBytidandtpwd(String tid,String tpwd);
    public boolean addteacher(String tid,String tpwd,String tname,String tsex,int tage,String tiphone,String qualification,String timg);
    public boolean delteacher(String tid);
    public boolean updatetage(String tid,int tage);
    public boolean updatetsex(String tid,String tsex);
    public boolean updatetiphone(String tid,String tiphone);
    public boolean upqualification(String tid,String qualification);
}
