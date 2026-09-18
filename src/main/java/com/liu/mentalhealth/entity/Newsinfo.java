package com.liu.mentalhealth.entity;

import java.sql.Date;

public class Newsinfo {
    private int nno;
    private String ntitle;
    private String ncontent;
    private String nauthor;
    private Date ntime;
    private String newsimg;

    public Newsinfo(){}

    public Newsinfo(int nno, String ntitle, String ncontent, String nauthor, Date ntime, String newsimg) {
        this.nno = nno;
        this.ntitle = ntitle;
        this.ncontent = ncontent;
        this.nauthor = nauthor;
        this.ntime = ntime;
        this.newsimg = newsimg;
    }

    public int getNno() {
        return nno;
    }

    public void setNno(int nno) {
        this.nno = nno;
    }

    public String getNtitle() {
        return ntitle;
    }

    public void setNtitle(String ntitle) {
        this.ntitle = ntitle;
    }

    public String getNcontent() {
        return ncontent;
    }

    public void setNcontent(String ncontent) {
        this.ncontent = ncontent;
    }

    public String getNauthor() {
        return nauthor;
    }

    public void setNauthor(String nauthor) {
        this.nauthor = nauthor;
    }

    public Date getNtime() {
        return ntime;
    }

    public void setNtime(Date ntime) {
        this.ntime = ntime;
    }

    public String getNewsimg() {
        return newsimg;
    }

    public void setNewsimg(String newsimg) {
        this.newsimg = newsimg;
    }

    @Override
    public String toString() {
        return "Newsinfo{" +
                "nno=" + nno +
                ", ntitle='" + ntitle + '\'' +
                ", ncontent='" + ncontent + '\'' +
                ", nauthor='" + nauthor + '\'' +
                ", ntime=" + ntime +
                ", newsimg='" + newsimg + '\'' +
                '}';
    }
}
