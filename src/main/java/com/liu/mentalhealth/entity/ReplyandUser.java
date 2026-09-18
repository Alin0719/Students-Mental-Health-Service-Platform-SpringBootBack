package com.liu.mentalhealth.entity;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Timestamp;

public class ReplyandUser {
    private int replyno;
    private int trno;
    private String uid;
    private String uname;
    private String uimg;
    private String repcontent;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Timestamp reptime;

    public ReplyandUser(){}
    public ReplyandUser(int replyno, int trno, String uid, String uname, String uimg, String repcontent, Timestamp reptime) {
        this.replyno = replyno;
        this.trno = trno;
        this.uid = uid;
        this.uname = uname;
        this.uimg = uimg;
        this.repcontent = repcontent;
        this.reptime = reptime;
    }

    public int getReplyno() {
        return replyno;
    }

    public void setReplyno(int replyno) {
        this.replyno = replyno;
    }

    public int getTrno() {
        return trno;
    }

    public void setTrno(int trno) {
        this.trno = trno;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUimg() {
        return uimg;
    }

    public void setUimg(String uimg) {
        this.uimg = uimg;
    }

    public String getRepcontent() {
        return repcontent;
    }

    public void setRepcontent(String repcontent) {
        this.repcontent = repcontent;
    }

    public Timestamp getReptime() {
        return reptime;
    }

    public void setReptime(Timestamp reptime) {
        this.reptime = reptime;
    }

    @Override
    public String toString() {
        return "ReplyandUser{" +
                "replyno=" + replyno +
                ", trno=" + trno +
                ", uid='" + uid + '\'' +
                ", uname='" + uname + '\'' +
                ", uimg='" + uimg + '\'' +
                ", repcontent='" + repcontent + '\'' +
                ", reptime=" + reptime +
                '}';
    }
}
