package com.hp.servlet;

import com.hp.domain.PageBean;
import com.hp.domain.Staff;
import com.hp.domain.User;
import com.hp.service.HouTaiService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class HouTaiServlet extends BaseServlet{

    //获取pc当前页面
    public int getPac(HttpServletRequest request){
        String value=request.getParameter("pc");
        if (value==null||value.trim().isEmpty()){
            return 1;
        }else {
            return Integer.parseInt(value);
        }
    }

    //自动请求（第一次访问）用户
    public String findYH(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HouTaiService houTaiService=new HouTaiService();

        int pc=getPac(req);//得到pc
        int ps=10;//给定ps值，每页10行记录
        PageBean<User> pb=houTaiService.findYH(pc,ps);
        req.setAttribute("pb",pb);

        return "f:/houtai/chaxunyonghuxinxi.jsp";
    }

    //搜索 用户
    public String find(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username=req.getParameter("username");
        String gender=req.getParameter("gender");
        String name=req.getParameter("name");
        String region=req.getParameter("region");
        String email=req.getParameter("email");

        User user=new User();
        user.setUserName(username);
        user.setGender(gender);
        user.setName(name);
        user.setRegion(region);
        user.setEmail(email);

        HouTaiService houTaiService=new HouTaiService();
        int pc=getPac(req);//得到pc
        int ps=10;//给定ps值，每页10行记录
        PageBean<User> pb=houTaiService.find(user,pc,ps);

        System.out.println(username+"--"+gender+"--"+name+"--"+region+"--"+email);

        req.setAttribute("pb",pb);

        return "f:/houtai/chaxunyonghuxinxi.jsp";
    }

    //自动请求（第一次访问）员工
    public String findYG(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HouTaiService houTaiService=new HouTaiService();

        int pc=getPac(req);//得到pc
        int ps=10;//给定ps值，每页10行记录
        PageBean<Staff> pb=houTaiService.findYG(pc,ps);
        req.setAttribute("pb",pb);

        return "f:/houtai/chaxunyundongxinxi.jsp";
    }

    //搜索 员工
    public String findY(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String unit=req.getParameter("unit");
        String name=req.getParameter("name");
        String data=req.getParameter("data");

        Staff staff=new Staff();
        staff.setUnit(unit);
        staff.setName(name);
        staff.setData(data);

        HouTaiService houTaiService=new HouTaiService();
        int pc=getPac(req);//得到pc
        int ps=10;//给定ps值，每页10行记录
        PageBean<Staff> pb=houTaiService.findY(staff,pc,ps);
        req.setAttribute("pb",pb);

        return "f:/houtai/chaxunyundongxinxi.jsp";
    }
}
