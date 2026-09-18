package com.liu.mentalhealth.services;

import com.liu.mentalhealth.dao.QuestionDao;
import com.liu.mentalhealth.entity.Question;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class QuestionServices {
    @Resource
    public QuestionDao questionDao;

    public List<Question> getAllque(){
        return questionDao.getAllque();
    }
    public List<Question> getquebyvag(String str){
        return questionDao.getquebyvag(str);
    }
    public Question getqueByid(int id){
        return questionDao.getqueByid(id);
    }
    public boolean addquestion(int tfid,boolean ismultiple,String qname,int score){
        return questionDao.addquestion(tfid,ismultiple,qname,score);
    }
    public boolean delquestion(int id){
        return questionDao.delquestion(id);
    }
    public boolean updateqname(int id,String qname){
        return questionDao.updateqname(id,qname);
    }
    public boolean updatescore(int id,int score){
        return questionDao.updatescore(id,score);
    }
}
