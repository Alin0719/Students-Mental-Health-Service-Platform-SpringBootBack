package com.liu.mentalhealth.dao;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.liu.mentalhealth.entity.ReplyandUser;
import com.liu.mentalhealth.entity.Treereply;
import org.apache.ibatis.annotations.Mapper;

import java.sql.Timestamp;
import java.util.List;

@Mapper
public interface TreereplyDao {
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    public List<Treereply> getAllreply();
    public List<Treereply> getreplybyvag(String str);
    public Treereply getreplyByreplyno(int replyno);
    public List<Treereply> getreplyByuid(String uid);
    public List<ReplyandUser> getreBytrnoanduid(int trno);
    public List<Treereply> getreplyBytrno(int trno);
    public List<ReplyandUser> getreplyanduserbyuid(String uid);
    public boolean addreply(int trno, String uid, String repcontent, Timestamp reptime);
    public boolean delreply(int replyno);
}
