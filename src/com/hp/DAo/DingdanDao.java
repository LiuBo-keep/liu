package com.hp.DAo;

import com.hp.Utils.TxQueryRunner;
import com.hp.domain.DingDan;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class DingdanDao {

    //在线下单
    public int xiadan(DingDan dingDan){
        int line=0;
        QueryRunner qr = new TxQueryRunner();
        String sql = "insert into dingdan(jname,jphonea,jphoneb,jregion,sname,sphonea," +
                "sphoneb,sregion,hname,hmoeny,hweight,hbulk,remarks)values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        Object [] params={dingDan.getJname(),dingDan.getJphonea(),dingDan.getJphoneb(),dingDan.getJregion(),
                dingDan.getSname(),dingDan.getSphonea(),dingDan.getSphoneb(),dingDan.getSregion(),
                dingDan.getHname(),dingDan.getHmoeny(),dingDan.getHweight(),dingDan.getHbulk(),dingDan.getRemarks()};
        try {
            line=qr.update(sql,params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return line;
    }

    public DingDan find(DingDan dingDan) {
        DingDan dingDan1= null;
        QueryRunner qr = new TxQueryRunner();
        String sql="select * from dingdan where jname=? or jphonea=? or jregion=?";
        Object [] params={dingDan.getJname(),dingDan.getJphonea(),dingDan.getJregion()};

        try {
            return dingDan1=qr.query(sql,new BeanHandler<DingDan>(DingDan.class),params);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
