package com.hp.domain;

public class DingDan {
    //寄件人
    private String jname;//姓名
    private String jphonea;//手机号
    private String jphoneb;//电话号
    private String jregion;//发件地区
    //收件人
    private String sname;//姓名
    private String sphonea;//手机号
    private String sphoneb;//电话号
    private String sregion;//发件地区

    //货物信息
    private String hname;//货物名称
    private String hmoeny;//报价
    private String hweight;//重量
    private String hbulk;//体积

    //备注
    private String remarks;

    public DingDan() {
    }

    public DingDan(String jname,
                   String jphonea,
                   String jphoneb,
                   String jregion,
                   String sname,
                   String sphonea,
                   String sphoneb,
                   String sregion,
                   String hname,
                   String hmoeny,
                   String hweight,
                   String hbulk,
                   String remarks) {
        this.jname = jname;
        this.jphonea = jphonea;
        this.jphoneb = jphoneb;
        this.jregion = jregion;
        this.sname = sname;
        this.sphonea = sphonea;
        this.sphoneb = sphoneb;
        this.sregion = sregion;
        this.hname = hname;
        this.hmoeny = hmoeny;
        this.hweight = hweight;
        this.hbulk = hbulk;
        this.remarks = remarks;
    }

    public String getJname() {
        return jname;
    }

    public void setJname(String jname) {
        this.jname = jname;
    }

    public String getJphonea() {
        return jphonea;
    }

    public void setJphonea(String jphonea) {
        this.jphonea = jphonea;
    }

    public String getJphoneb() {
        return jphoneb;
    }

    public void setJphoneb(String jphoneb) {
        this.jphoneb = jphoneb;
    }

    public String getJregion() {
        return jregion;
    }

    public void setJregion(String jregion) {
        this.jregion = jregion;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSphonea() {
        return sphonea;
    }

    public void setSphonea(String sphonea) {
        this.sphonea = sphonea;
    }

    public String getSphoneb() {
        return sphoneb;
    }

    public void setSphoneb(String sphoneb) {
        this.sphoneb = sphoneb;
    }

    public String getSregion() {
        return sregion;
    }

    public void setSregion(String sregion) {
        this.sregion = sregion;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public String getHmoeny() {
        return hmoeny;
    }

    public void setHmoeny(String hmoeny) {
        this.hmoeny = hmoeny;
    }

    public String getHweight() {
        return hweight;
    }

    public void setHweight(String hweight) {
        this.hweight = hweight;
    }

    public String getHbulk() {
        return hbulk;
    }

    public void setHbulk(String hbulk) {
        this.hbulk = hbulk;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    @Override
    public String toString() {
        return "DingDan{" +
                "jname='" + jname + '\'' +
                ", jphonea='" + jphonea + '\'' +
                ", jphoneb='" + jphoneb + '\'' +
                ", jregion='" + jregion + '\'' +
                ", sname='" + sname + '\'' +
                ", sphonea='" + sphonea + '\'' +
                ", sphoneb='" + sphoneb + '\'' +
                ", sregion='" + sregion + '\'' +
                ", hname='" + hname + '\'' +
                ", hmoeny='" + hmoeny + '\'' +
                ", hweight='" + hweight + '\'' +
                ", hbulk='" + hbulk + '\'' +
                ", remarks='" + remarks + '\'' +
                '}';
    }
}
