package com.liu.mentalhealth.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;

public class Qoption {
    @TableId(type = IdType.AUTO)
    private int id;
    private String oname;
    private boolean checked;
    private int sweight;
    private String letter;
    private int qid;

    public Qoption(int id, String oname, boolean checked, int sweight, String letter, int qid) {
        this.id = id;
        this.oname = oname;
        this.checked = checked;
        this.sweight = sweight;
        this.letter = letter;
        this.qid = qid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname;
    }

    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

    public int getSweight() {
        return sweight;
    }

    public void setSweight(int sweight) {
        this.sweight = sweight;
    }

    public String getLetter() {
        return letter;
    }

    public void setLetter(String letter) {
        this.letter = letter;
    }

    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    @Override
    public String toString() {
        return "Qoption{" +
                "id=" + id +
                ", oname='" + oname + '\'' +
                ", checked=" + checked +
                ", sweight=" + sweight +
                ", letter='" + letter + '\'' +
                ", qid=" + qid +
                '}';
    }
}
