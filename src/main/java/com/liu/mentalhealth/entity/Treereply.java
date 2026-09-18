package com.liu.mentalhealth.entity;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Timestamp;

public class Treereply {
    private int replyno;
    private int trno;
    private String  uid;
    private String repcontent;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Timestamp reptime;

    public Treereply(){}

    public Treereply(int replyno, int trno, String uid, String repcontent, Timestamp reptime) {
        this.replyno = replyno;
        this.trno = trno;
        this.uid = uid;
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
        return "Treereply{" +
                "replyno=" + replyno +
                ", trno=" + trno +
                ", uid='" + uid + '\'' +
                ", repcontent='" + repcontent + '\'' +
                ", reptime=" + reptime +
                '}';
    }
}
