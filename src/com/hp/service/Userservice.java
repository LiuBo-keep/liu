package com.hp.service;


import com.hp.DAo.UserDao;
import com.hp.domain.DingDan;
import com.hp.domain.User;
import com.hp.Utils.*;

import java.sql.SQLException;

public class Userservice {
    private final UserDao userDao = new UserDao();

    //验证注册时管理员用户名是否重复
    public boolean yanName(String name) {
        User user = userDao.yanName(name);
        if (user.getName().equals(name)) {
            return false;
        } else {
            return true;
        }
    }

    //验证注册时普通用户名是否重复
    public boolean yanName1(String name) {
        User user = userDao.yanName1(name);
        if (user.getName().equals(name)) {
            return false;
        } else {
            return true;
        }
    }

    //普通用户注册
    public void reg(User user) {
        jdbcUtils jdbcUtils = new jdbcUtils();
        try {
            jdbcUtils.beginTransaction();
            userDao.reg(user.getName(), user.getPassword(), user.getUserName(),
                    user.getGender(), user.getPhone(), user.getEmail(), user.getRegion());
            jdbcUtils.commitTransaction();
        } catch (SQLException e) {
            try {
                jdbcUtils.rollbackTransaction();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
    }

    //管理员注册
    public void register(User user) {
        jdbcUtils jdbcUtils = new jdbcUtils();
        UserDao userDao = new UserDao();
        try {
            jdbcUtils.beginTransaction();
            userDao.register(user.getName(), user.getPassword(), user.getPhone(), user.getEmail());
            jdbcUtils.commitTransaction();
        } catch (SQLException e) {
            try {
                jdbcUtils.rollbackTransaction();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
    }

    //登录
    public boolean login(User user) {

        String number = user.getName();//得到用户输入的账号
        String password = user.getPassword();//得到用户输入密码
        String identity = user.getIdentity();//得到登录身份

        UserDao userDao = new UserDao();
        User user1 = userDao.login(number, password, identity);
        if (user1 == null) {
            return false;
        } else {
            return true;
        }
    }

    //找回密码
    public User findpassword(User user) {
        //获取用户输入账户名
        String name = user.getName();
        User user1=userDao.findpassword(name);
        return user1;
    }

    //修改密码
    public int xiugai(User user){
        int line=0;
        try {
            jdbcUtils.beginTransaction();
            line=userDao.xiugai(user.getName(),user.getPassword());
            jdbcUtils.commitTransaction();
        } catch (SQLException e) {
            try {
                jdbcUtils.rollbackTransaction();
            } catch (SQLException e1) {
               throw new RuntimeException(e1);
            }
        }
        return line;
    }
}
