package com.hp.service;

import com.hp.DAo.DingdanDao;
import com.hp.Utils.jdbcUtils;
import com.hp.domain.DingDan;

import java.sql.SQLException;

public class DingdanService {

    //在线下单
    public void xiadan(DingDan dingDan){
        int line=0;
        DingdanDao dingdanDao=new DingdanDao();
        try {
            jdbcUtils.beginTransaction();
            line=dingdanDao.xiadan(dingDan);
            jdbcUtils.commitTransaction();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(line);
    }

    public DingDan find(DingDan dingDan) {
        DingdanDao dingdanDao=new DingdanDao();
        return  dingdanDao.find(dingDan);
    }
}
