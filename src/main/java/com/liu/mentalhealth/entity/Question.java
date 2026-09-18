package com.liu.mentalhealth.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;

import java.util.List;

public class Question {
    @TableId(type = IdType.AUTO)
    private int id;
    private int tfid;
    private boolean ismultiple;
    private String qname;
    private int score;
/*  @TableField(exist = false)
    private List<Qoption> qoptions;
*/
    public Question(int id, int tfid, boolean ismultiple, String qname, int score) {
        this.id = id;
        this.tfid = tfid;
        this.ismultiple = ismultiple;
        this.qname = qname;
        this.score = score;
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

    @Override
    public String toString() {
        return "Question{" +
                "id=" + id +
                ", tfid=" + tfid +
                ", ismultiple=" + ismultiple +
                ", qname='" + qname + '\'' +
                ", score=" + score +
                '}';
    }
}
