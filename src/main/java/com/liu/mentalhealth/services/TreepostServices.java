package com.liu.mentalhealth.services;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.liu.mentalhealth.dao.TreepostDao;
import com.liu.mentalhealth.entity.TreeandUser;
import com.liu.mentalhealth.entity.Treepost;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.List;

@Service
public class TreepostServices {
    @Resource
    public TreepostDao treepostDao;

    public List<Treepost> getAlltreepost(){
        return treepostDao.getAlltreepost();
    }
    public List<Treepost> getpostbyvag(String str){
        return treepostDao.getpostbyvag(str);
    }
    public List<TreeandUser> getpostanduser(){
        return treepostDao.getpostanduser();
    }
    public Treepost getpostbytrno(int trno){
        return treepostDao.getpostbytrno(trno);
    }
    public List<Treepost> getpostbyuid(String uid){
        return treepostDao.getpostbyuid(uid);
    }
    public List<TreeandUser> getpostanduserbyuid(String uid){
        return treepostDao.getpostanduserbyuid(uid);
    }
    public TreeandUser getpostByuidAndtrno(int trno){
        return treepostDao.getpostByuidAndtrno(trno);
    }
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    public boolean addtreepost(String uid, String trucontent, Timestamp trtime){
        return treepostDao.addtreepost(uid,trucontent,trtime);
    }
    public boolean deltreepost(int trno){
        return treepostDao.deltreepost(trno);
    }
}
