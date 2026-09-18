package com.liu.mentalhealth.entity;

import com.baomidou.mybatisplus.annotation.TableField;

import java.util.List;

public class QueandOpt {
    private int id;
    private int tfid;
    private boolean ismultiple;
    private String qname;
    private int score;
    private List<Qoption> qoption;

    public QueandOpt(int id, int tfid, boolean ismultiple, String qname, int score, List<Qoption> qoption) {
        this.id = id;
        this.tfid = tfid;
        this.ismultiple = ismultiple;
        this.qname = qname;
        this.score = score;
        this.qoption = qoption;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTfid() {
        return tfid;
    }

    public void setTfid(int tfid) {
        this.tfid = tfid;
    }

    public boolean isIsmultiple() {
        return ismultiple;
    }

    public void setIsmultiple(boolean ismultiple) {
        this.ismultiple = ismultiple;
    }

    public String getQname() {
        return qname;
    }

    public void setQname(String qname) {
        this.qname = qname;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public List<Qoption> getQoption() {
        return qoption;
    }

    public void setQoption(List<Qoption> qoption) {
        this.qoption = qoption;
    }

    @Override
    public String toString() {
        return "QueandOpt{" +
                "id=" + id +
                ", tfid=" + tfid +
                ", ismultiple=" + ismultiple +
                ", qname='" + qname + '\'' +
                ", score=" + score +
                ", qoption=" + qoption +
                '}';
    }
}
