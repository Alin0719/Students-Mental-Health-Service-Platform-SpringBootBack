package com.liu.mentalhealth.entity;

public class Class {
    private String cno;
    private String cname;
    private String cmajor;

    public Class(){}

    public Class(String cno, String cname, String cmajor) {
        this.cno = cno;
        this.cname = cname;
        this.cmajor = cmajor;
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCmajor() {
        return cmajor;
    }

    public void setCmajor(String cmajor) {
        this.cmajor = cmajor;
    }

    @Override
    public String toString() {
        return "Class{" +
                "cno='" + cno + '\'' +
                ", cname='" + cname + '\'' +
                ", cmajor='" + cmajor + '\'' +
                '}';
    }
}
