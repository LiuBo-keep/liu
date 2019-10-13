package com.hp.domain;

import java.util.List;

public class PageBean<T> {
    private int pc;//当前页码
    //    private int tp;//总页数
    private int tr;//总记录数
    private int ps;//每页记录数
    private List<T> beanlist;//当前页记录

    public int getPc() {
        return pc;
    }

    public void setPc(int pc) {
        this.pc = pc;
    }

    /**
     * 计算总页数
     *
     * @return
     */
    public int getTp() {
        //通过总记录数和每页记录数计算总页数
        int tp = tr / ps;
        return tr % ps == 0 ? tp : tp + 1;
    }

//    public void setTp(int tp) {
//        this.tp = tp;
//    }

    public int getTr() {
        return tr;
    }

    public void setTr(int tr) {
        this.tr = tr;
    }

    public int getPs() {
        return ps;
    }

    public void setPs(int ps) {
        this.ps = ps;
    }

    public List<T> getBeanlist() {
        return beanlist;
    }

    public void setBeanlist(List<T> beanlist) {
        this.beanlist = beanlist;
    }
}
