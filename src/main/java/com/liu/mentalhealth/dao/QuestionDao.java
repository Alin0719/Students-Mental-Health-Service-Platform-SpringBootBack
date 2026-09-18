package com.liu.mentalhealth.dao;

import com.liu.mentalhealth.entity.Question;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface QuestionDao {
    public List<Question> getAllque();
    public List<Question> getquebyvag(String str);
    public Question getqueByid(int id);
    public boolean addquestion(int tfid,boolean ismultiple,String qname,int score);
    public boolean delquestion(int id);
    public boolean updateqname(int id,String qname);
    public boolean updatescore(int id,int score);
}
