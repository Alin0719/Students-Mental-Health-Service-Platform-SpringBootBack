package com.liu.mentalhealth.entity;

import java.sql.Date;

public class Education {
    private int eno;
    private String etitle;
    private String econtent;
    private Date etime;
    private String eimg;

    public Education(){}

    public Education(int eno, String etitle, String econtent, Date etime, String eimg) {
        this.eno = eno;
        this.etitle = etitle;
        this.econtent = econtent;
        this.etime = etime;
        this.eimg = eimg;
    }

    public int getEno() {
        return eno;
    }

    public void setEno(int eno) {
        this.eno = eno;
    }

    public String getEtitle() {
        return etitle;
    }

    public void setEtitle(String etitle) {
        this.etitle = etitle;
    }

    public String getEcontent() {
        return econtent;
    }

    public void setEcontent(String econtent) {
        this.econtent = econtent;
    }

    public Date getEtime() {
        return etime;
    }

    public void setEtime(Date etime) {
        this.etime = etime;
    }

    public String getEimg() {
        return eimg;
    }

    public void setEimg(String eimg) {
        this.eimg = eimg;
    }

    @Override
    public String toString() {
        return "Education{" +
                "eno=" + eno +
                ", etitle='" + etitle + '\'' +
                ", econtent='" + econtent + '\'' +
                ", etime=" + etime +
                ", eimg='" + eimg + '\'' +
                '}';
    }
}
