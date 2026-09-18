package com.liu.mentalhealth.entity;

public class Teacher {
    private String tid;
    private String tpwd;
    private String tname;
    private String tsex;
    private int tage;
    private String tiphone;
    private String qualification;
    private String timg;

    public Teacher(){}

    public Teacher(String tid, String tpwd, String tname, String tsex, int tage, String tiphone, String qualification, String timg) {
        this.tid = tid;
        this.tpwd = tpwd;
        this.tname = tname;
        this.tsex = tsex;
        this.tage = tage;
        this.tiphone = tiphone;
        this.qualification = qualification;
        this.timg = timg;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getTpwd() {
        return tpwd;
    }

    public void setTpwd(String tpwd) {
        this.tpwd = tpwd;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTsex() {
        return tsex;
    }

    public void setTsex(String tsex) {
        this.tsex = tsex;
    }

    public int getTage() {
        return tage;
    }

    public void setTage(int tage) {
        this.tage = tage;
    }

    public String getTiphone() {
        return tiphone;
    }

    public void setTiphone(String tiphone) {
        this.tiphone = tiphone;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getTimg() {
        return timg;
    }

    public void setTimg(String timg) {
        this.timg = timg;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "tid='" + tid + '\'' +
                ", tpwd='" + tpwd + '\'' +
                ", tname='" + tname + '\'' +
                ", tsex='" + tsex + '\'' +
                ", tage=" + tage +
                ", tiphone='" + tiphone + '\'' +
                ", qualification='" + qualification + '\'' +
                ", timg='" + timg + '\'' +
                '}';
    }
}
