package com.hp.DAo;

import com.hp.Utils.TxQueryRunner;
import com.hp.domain.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class UserDao {
    private final QueryRunner qr = new TxQueryRunner();

    //验证注册时管理员用户名是否重复
    public User yanName(String name) {
        String sql = "select * from gly where name=?";
        Object[] param = {name};

        try {
            User user = qr.query(sql, new BeanHandler<User>(User.class), param);
            return user;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    //验证注册时普通用户名是否重复
    public User yanName1(String name) {
        String sql = "select * from user where name=?";
        Object[] param = {name};

        try {
            User user = qr.query(sql, new BeanHandler<User>(User.class), param);
            return user;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    //普通用户注册
    public void reg(String name, String password, String usernaem, String gender, String phone, String email, String region) {
        String sql = "insert into user(name,password,username,gender,phone,email,region)values(?,?,?,?,?,?,?)";
        Object[] params = {name, password, usernaem, gender, phone, email, region};

        try {
            qr.update(sql, params);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    //管理员注册
    public void register(String name, String password, String phone, String email) {
        String sql = "insert into gly (name,password,phone,email)values(?,?,?,?);";
        Object[] params = {name, password, phone, email};

        try {
            qr.update(sql, params);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    //登录
    public User login(String number, String password, String identity) {
        User user=null;
        if (identity.equals("普通登录")) {
            String sql = "select * from user where name=? and password=?";
            Object[] param = {number, password};

            try {
                 user = qr.query(sql, new BeanHandler<User>(User.class), param);

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        } else if (identity.equals("管理员登录")) {
            String sql = "select * from gly where name=? and password=?";
            Object[] param = {number, password};

            try {
                user = qr.query(sql, new BeanHandler<User>(User.class), param);

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return user;
    }



    //找回密码
    public User findpassword(String name) {
        String sql="select * from user where name=?";
        Object [] param={name};

        try {
            User user=qr.query(sql,new BeanHandler<User>(User.class),param);
            return user;
        } catch (SQLException e) {
            throw new RuntimeException("没找到");
        }
    }

    //修改密码
    public int xiugai(String name,String newPwd){
        int line = 0;
        String sql ="update user set password=? where name=?";
        Object [] params={newPwd,name};

        try {
           line=qr.update(sql,params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return line;
    }
}

