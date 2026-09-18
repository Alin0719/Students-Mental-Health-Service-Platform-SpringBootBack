package com.liu.mentalhealth.services;

import com.liu.mentalhealth.dao.QoptionDao;
import com.liu.mentalhealth.entity.Qoption;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service
public class QoptionServices {
    @Resource
    public QoptionDao qoptionDao;

    public List<Qoption> getalloption(){
        return qoptionDao.getalloption();
    }
    public Qoption getopbyid(int id){
        return qoptionDao.getopbyid(id);
    }
    public List<Qoption> getopbyqid(int qid){
        return qoptionDao.getopbyqid(qid);
    }
    public boolean addoption(String oname,boolean checked,int sweight,String letter,int qid){
        return qoptionDao.addoption(oname, checked, sweight, letter, qid);
    }
    public boolean deloption(int id){
        return qoptionDao.deloption(id);
    }
    public boolean updateoname(int id,String oname){
        return qoptionDao.updateoname(id, oname);
    }
    public boolean updatesweight(int id,int sweight){
        return qoptionDao.updatesweight(id, sweight);
    }
}
