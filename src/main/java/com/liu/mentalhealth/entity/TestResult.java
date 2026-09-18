package com.liu.mentalhealth.entity;

public class TestResult {
    private String uid;
    private int tfid;
    private float genIndex;
    private int positivenum;
    private float positivelevel;
    private float somavg;
    private float obseavg;
    private float interavg;
    private float depressavg;
    private float anxietyavg;
    private float hostavg;
    private float photicavg;
    private float paravg;
    private float psychoavg;
    private float otheravg;

    public TestResult(String uid, int tfid, float genIndex, int positivenum, float positivelevel, float somavg, float obseavg, float interavg, float depressavg, float anxietyavg, float hostavg, float photicavg, float paravg, float psychoavg, float otheravg) {
        this.uid = uid;
        this.tfid = tfid;
        this.genIndex = genIndex;
        this.positivenum = positivenum;
        this.positivelevel = positivelevel;
        this.somavg = somavg;
        this.obseavg = obseavg;
        this.interavg = interavg;
        this.depressavg = depressavg;
        this.anxietyavg = anxietyavg;
        this.hostavg = hostavg;
        this.photicavg = photicavg;
        this.paravg = paravg;
        this.psychoavg = psychoavg;
        this.otheravg = otheravg;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public int getTfid() {
        return tfid;
    }

    public void setTfid(int tfid) {
        this.tfid = tfid;
    }

    public float getGenIndex() {
        return genIndex;
    }

    public void setGenIndex(float genIndex) {
        this.genIndex = genIndex;
    }

    public int getPositivenum() {
        return positivenum;
    }

    public void setPositivenum(int positivenum) {
        this.positivenum = positivenum;
    }

    public float getPositivelevel() {
        return positivelevel;
    }

    public void setPositivelevel(float positivelevel) {
        this.positivelevel = positivelevel;
    }

    public float getSomavg() {
        return somavg;
    }

    public void setSomavg(float somavg) {
        this.somavg = somavg;
    }

    public float getObseavg() {
        return obseavg;
    }

    public void setObseavg(float obseavg) {
        this.obseavg = obseavg;
    }

    public float getInteravg() {
        return interavg;
    }

    public void setInteravg(float interavg) {
        this.interavg = interavg;
    }

    public float getDepressavg() {
        return depressavg;
    }

    public void setDepressavg(float depressavg) {
        this.depressavg = depressavg;
    }

    public float getAnxietyavg() {
        return anxietyavg;
    }

    public void setAnxietyavg(float anxietyavg) {
        this.anxietyavg = anxietyavg;
    }

    public float getHostavg() {
        return hostavg;
    }

    public void setHostavg(float hostavg) {
        this.hostavg = hostavg;
    }

    public float getPhoticavg() {
        return photicavg;
    }

    public void setPhoticavg(float photicavg) {
        this.photicavg = photicavg;
    }

    public float getParavg() {
        return paravg;
    }

    public void setParavg(float paravg) {
        this.paravg = paravg;
    }

    public float getPsychoavg() {
        return psychoavg;
    }

    public void setPsychoavg(float psychoavg) {
        this.psychoavg = psychoavg;
    }

    public float getOtheravg() {
        return otheravg;
    }

    public void setOtheravg(float otheravg) {
        this.otheravg = otheravg;
    }

    @Override
    public String toString() {
        return "TestResult{" +
                "uid='" + uid + '\'' +
                ", tfid=" + tfid +
                ", genIndex=" + genIndex +
                ", positivenum=" + positivenum +
                ", positivelevel=" + positivelevel +
                ", somavg=" + somavg +
                ", obseavg=" + obseavg +
                ", interavg=" + interavg +
                ", depressavg=" + depressavg +
                ", anxietyavg=" + anxietyavg +
                ", hostavg=" + hostavg +
                ", photicavg=" + photicavg +
                ", paravg=" + paravg +
                ", psychoavg=" + psychoavg +
                ", otheravg=" + otheravg +
                '}';
    }
}
