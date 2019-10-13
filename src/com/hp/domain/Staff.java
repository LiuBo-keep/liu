package com.hp.domain;

public class Staff {
    private String unit;//所在单位
    private String name;//姓名
    private String sex;//性别
    private String card;//身份证
    private String status;//人员身份
    private String zhuangtai;//人员状态
    private String data;//入职时间
    private String type;//编制类型

    public Staff() {
    }

    public Staff(String unit, String name, String sex, String card, String status, String zhuangtai, String data, String type) {
        this.unit = unit;
        this.name = name;
        this.sex = sex;
        this.card = card;
        this.status = status;
        this.zhuangtai = zhuangtai;
        this.data = data;
        this.type = type;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getZhuangtai() {
        return zhuangtai;
    }

    public void setZhuangtai(String zhuangtai) {
        this.zhuangtai = zhuangtai;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "unit='" + unit + '\'' +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", card='" + card + '\'' +
                ", status='" + status + '\'' +
                ", zhuangtai='" + zhuangtai + '\'' +
                ", data='" + data + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
