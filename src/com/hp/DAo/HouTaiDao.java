package com.hp.DAo;

import com.hp.Utils.TxQueryRunner;
import com.hp.domain.PageBean;
import com.hp.domain.Staff;
import com.hp.domain.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class HouTaiDao {

    //自动请求（第一次访问）用户
    public PageBean<User> findYH(int pc,int ps){
        QueryRunner qr = new TxQueryRunner();
        try{
            PageBean<User> pageBean=new PageBean<>();
            pageBean.setPc(pc);
            pageBean.setPs(ps);

            String sql ="select count(*) from user";
            Number num=(Number) qr.query(sql,new ScalarHandler());
            int tr=num.intValue();
            pageBean.setTr(tr);

            sql="select * from user limit ?,?";
            List<User> beanlist=qr.query(sql,new BeanListHandler<User>(User.class),(pc-1)*ps,ps);
            pageBean.setBeanlist(beanlist);
            return pageBean;
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    //搜索
    public PageBean<User> find( User user,int pc,int ps){
        QueryRunner qr = new TxQueryRunner();
        try{
            PageBean<User> pageBean=new PageBean<>();
            pageBean.setPc(pc);
            pageBean.setPs(ps);

            String sql="select * from user where username=? or gender=? or name=? or region=? or email=?";
            Object [] params={user.getUserName(),user.getGender(),user.getName(),user.getRegion(),user.getEmail()};
            List<User> beanlist=qr.query(sql,new BeanListHandler<User>(User.class),params);
            pageBean.setBeanlist(beanlist);
            return pageBean;
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    //自动请求（第一次访问）员工
    public PageBean findYG(int pc, int ps) {
        QueryRunner qr = new TxQueryRunner();
        try{
            PageBean<Staff> pageBean=new PageBean<>();
            pageBean.setPc(pc);
            pageBean.setPs(ps);

            String sql ="select count(*) from yg";
            Number num=(Number) qr.query(sql,new ScalarHandler());
            int tr=num.intValue();
            pageBean.setTr(tr);

            sql="select * from yg limit ?,?";
            List<Staff> beanlist=qr.query(sql,new BeanListHandler<Staff>(Staff.class),(pc-1)*ps,ps);
            pageBean.setBeanlist(beanlist);
            return pageBean;
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    public PageBean<Staff> findY(Staff staff, int pc, int ps) {
        QueryRunner qr = new TxQueryRunner();
        try{
            PageBean<Staff> pageBean=new PageBean<>();
            pageBean.setPc(pc);
            pageBean.setPs(ps);

            String sql="select * from yg where unit=? or name=? or data=?";
            Object [] params={staff.getUnit(),staff.getName(),staff.getData()};
            List<Staff> beanlist=qr.query(sql,new BeanListHandler<Staff>(Staff.class),params);
            pageBean.setBeanlist(beanlist);
            return pageBean;
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }
}
