package com.liu.mentalhealth.dao;

import com.liu.mentalhealth.entity.Class;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ClassDao {
    public List<Class> getAllclass();
    public Class getbycid(String cno);
    public List<Class> getclassByvague(String str);
    public boolean delclass(String cno);
    public boolean insertclass(String cno,String cname,String cmajor);
}
