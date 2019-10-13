package com.hp.service;


import com.hp.DAo.HouTaiDao;
import com.hp.domain.PageBean;
import com.hp.domain.Staff;
import com.hp.domain.User;

public class HouTaiService {

    //自动请求（第一次访问）用户
   public PageBean<User> findYH(int pc,int ps){
       HouTaiDao houTaiDao=new HouTaiDao();
       return houTaiDao.findYH(pc,ps);
   }

   //搜索 用户
   public PageBean<User> find( User user,int pc,int ps){
       HouTaiDao houTaiDao=new HouTaiDao();
       return houTaiDao.find(user,pc,ps);
   }

    //自动请求（第一次访问）员工
    public PageBean<Staff> findYG(int pc, int ps) {
        HouTaiDao houTaiDao=new HouTaiDao();
        return houTaiDao.findYG(pc,ps);
    }


    //搜索 员工
    public PageBean<Staff> findY(Staff staff, int pc, int ps) {
        HouTaiDao houTaiDao=new HouTaiDao();
        return houTaiDao.findY(staff,pc,ps);
    }
}
