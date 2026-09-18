package com.liu.mentalhealth.services;

import java.util.List;

import com.liu.mentalhealth.dao.ClassDao;
import com.liu.mentalhealth.entity.Class;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ClassServices {
    @Resource
    public ClassDao classDao;
    public List<Class> getAllclass(){
        return classDao.getAllclass();
    }
    public Class getbycid(String cno){
        return classDao.getbycid(cno);
    }
    public List<Class> getclassByvague(String str){
        return classDao.getclassByvague(str);
    }
    public boolean delclass(String cno){
        return classDao.delclass(cno);
    }
    public boolean insertclass(String cno,String cname,String cmajor){
        return classDao.insertclass(cno, cname, cmajor);
    }
}
