package com.liu.mentalhealth.entity;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Timestamp;


public class Treepost {
    private int trno;
    private String uid;
    private String trucontent;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Timestamp trtime;

    public Treepost(){}

    public Treepost(int trno, String uid, String trucontent, Timestamp trtime) {
        this.trno = trno;
        this.uid = uid;
        this.trucontent = trucontent;
        this.trtime = trtime;
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

    public String getTrucontent() {
        return trucontent;
    }

    public void setTrucontent(String trucontent) {
        this.trucontent = trucontent;
    }

    public Timestamp getTrtime() {
        return trtime;
    }

    public void setTrtime(Timestamp trtime) {
        this.trtime = trtime;
    }

    @Override
    public String toString() {
        return "Treepost{" +
                "trno=" + trno +
                ", uid='" + uid + '\'' +
                ", trucontent='" + trucontent + '\'' +
                ", trtime=" + trtime +
                '}';
    }
}
