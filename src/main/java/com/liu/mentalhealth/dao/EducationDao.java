package com.liu.mentalhealth.dao;

import com.liu.mentalhealth.entity.Education;
import org.apache.ibatis.annotations.Mapper;

import java.sql.Date;
import java.util.List;

@Mapper
public interface EducationDao {
    public List<Education> getAlledu();
    public List<Education> getFiveedu();
    public Education geteduByid(int eno);
    public List<Education> geteduByvague(String str);
    public boolean addedu(Education education);
    public boolean deledu(int eno);
    public boolean updatetitle(int eno,String etitle);
    public boolean updatecontent(int eno,String econtent);
    public boolean updatetime(int eno, Date etime);
    public boolean updateimg(int eno,String emig);
}
