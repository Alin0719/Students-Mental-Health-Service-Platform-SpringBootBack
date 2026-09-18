package com.liu.mentalhealth.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;

public class Testform {
    @TableId(type = IdType.AUTO)
    private int tfid;
    private String tfname;
    private String tfimg;

    public Testform(){}
    public Testform(int tfid, String tfname, String tfimg) {
        this.tfid = tfid;
        this.tfname = tfname;
        this.tfimg = tfimg;
    }

    public int getTfid() {
        return tfid;
    }

    public void setTfid(int tfid) {
        this.tfid = tfid;
    }

    public String getTfname() {
        return tfname;
    }

    public void setTfname(String tfname) {
        this.tfname = tfname;
    }

    public String getTfimg() {
        return tfimg;
    }

    public void setTfimg(String tfimg) {
        this.tfimg = tfimg;
    }

    @Override
    public String toString() {
        return "Testform{" +
                "tfid=" + tfid +
                ", tfname='" + tfname + '\'' +
                ", tfimg='" + tfimg + '\'' +
                '}';
    }
}
