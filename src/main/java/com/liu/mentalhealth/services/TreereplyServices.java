package com.liu.mentalhealth.services;

import com.liu.mentalhealth.dao.TreereplyDao;
import com.liu.mentalhealth.entity.ReplyandUser;
import com.liu.mentalhealth.entity.Treereply;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.List;

@Service
public class TreereplyServices {
    @Resource
    public TreereplyDao treereplyDao;

    public List<Treereply> getAllreply(){
        return treereplyDao.getAllreply();
    }
    public List<Treereply> getreplybyvag(String str){
        return treereplyDao.getreplybyvag(str);
    }
    public Treereply getreplyByreplyno(int replyno){
        return treereplyDao.getreplyByreplyno(replyno);
    }
    public List<Treereply> getreplyByuid(String uid){
        return treereplyDao.getreplyByuid(uid);
    }
    public List<Treereply> getreplyBytrno(int trno){
        return treereplyDao.getreplyBytrno(trno);
    }
    public List<ReplyandUser> getreBytrnoanduid(int trno){
        return treereplyDao.getreBytrnoanduid(trno);
    }
    public List<ReplyandUser> getreplyanduserbyuid(String uid){
        return treereplyDao.getreplyanduserbyuid(uid);
    }
    public boolean addreply(int trno, String uid, String repcontent, Timestamp reptime){
        return treereplyDao.addreply(trno,uid,repcontent,reptime);
    }
    public boolean delreply(int replyno){
        return treereplyDao.delreply(replyno);
    }
}
