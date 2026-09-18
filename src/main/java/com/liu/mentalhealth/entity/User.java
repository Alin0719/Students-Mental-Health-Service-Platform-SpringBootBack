package com.liu.mentalhealth.entity;

public class User {
    private String uid;
    private String upwd;
    private String uname;
    private String usex;
    private int uage;
    private String uiphone;
    private String cno;
    private String uimg;

    public User(){}

    public User(String uid, String upwd, String uname, String usex, int uage, String uiphone, String cno, String uimg) {
        this.uid = uid;
        this.upwd = upwd;
        this.uname = uname;
        this.usex = usex;
        this.uage = uage;
        this.uiphone = uiphone;
        this.cno = cno;
        this.uimg = uimg;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUsex() {
        return usex;
    }

    public void setUsex(String usex) {
        this.usex = usex;
    }

    public int getUage() {
        return uage;
    }

    public void setUage(int uage) {
        this.uage = uage;
    }

    public String getUiphone() {
        return uiphone;
    }

    public void setUiphone(String uiphone) {
        this.uiphone = uiphone;
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public String getUimg() {
        return uimg;
    }

    public void setUimg(String uimg) {
        this.uimg = uimg;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid='" + uid + '\'' +
                ", upwd='" + upwd + '\'' +
                ", uname='" + uname + '\'' +
                ", usex='" + usex + '\'' +
                ", uage=" + uage +
                ", uiphone='" + uiphone + '\'' +
                ", cno='" + cno + '\'' +
                ", uimg='" + uimg + '\'' +
                '}';
    }
}
