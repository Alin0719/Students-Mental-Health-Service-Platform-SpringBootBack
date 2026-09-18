package com.liu.mentalhealth.dao;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.liu.mentalhealth.entity.TreeandUser;
import com.liu.mentalhealth.entity.Treepost;
import org.apache.ibatis.annotations.Mapper;

import java.sql.Timestamp;
import java.util.List;

@Mapper
public interface TreepostDao {
    public List<Treepost> getAlltreepost();
    public List<Treepost> getpostbyvag(String str);
    public List<TreeandUser> getpostanduser();
    public TreeandUser getpostByuidAndtrno(int trno);
    public Treepost getpostbytrno(int trno);
    public List<Treepost> getpostbyuid(String uid);
    public List<TreeandUser> getpostanduserbyuid(String uid);
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    public boolean addtreepost(String uid, String trucontent, Timestamp trtime);
    public boolean deltreepost(int trno);
}
