package com.liu.mentalhealth.dao;

import com.liu.mentalhealth.entity.Qoption;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface QoptionDao {
    public List<Qoption> getalloption();
    public Qoption getopbyid(int id);
    public List<Qoption> getopbyqid(int qid);
    public boolean addoption(String oname,boolean checked,int sweight,String letter,int qid);
    public boolean deloption(int id);
    public boolean updateoname(int id,String oname);
    public boolean updatesweight(int id,int sweight);
}
