package com.hp.servlet;

import com.hp.domain.User;
import com.hp.service.Userservice;
import com.mchange.v2.beans.BeansUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

public class UserServlet extends BaseServlet {
    private final Userservice userservice = new Userservice();
    private final User user = new User();

    //校验验证码
    public void VerifyCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String verify1 = (String) session.getAttribute("Verify");
        String verify2 = req.getParameter("yan");
        if (verify1.equalsIgnoreCase(verify2)) {
            resp.getWriter().print(1);//没错，返回1
        } else {
            resp.getWriter().print(0);//有错，返回0
        }
    }


    //验证注册时管理员用户名是否重复
    public void yanName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        boolean flag = userservice.yanName(name);
        if (!flag) {
            resp.getWriter().print("用户名已存在");
        }
    }

    //验证注册时普通用户名是否重复
    public void yanName1(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        boolean flag = userservice.yanName1(name);
        if (!flag) {
            resp.getWriter().print("用户名已存在");
        }
    }


    //普通用户注册
    public String PuTong(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取普通注册表单信息
        String name = req.getParameter("Name");//用户名
        String password = req.getParameter("password");//密码
        String username = req.getParameter("userName");//姓名
        String sex = req.getParameter("gender");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String region = req.getParameter("region");

        //封装信息
        user.setName(name);
        user.setPassword(password);
        user.setUserName(username);
        user.setGender(sex);
        user.setPhone(phone);
        user.setEmail(email);
        user.setRegion(region);

        //保存信息
        userservice.reg(user);

        //显示成功信息
        req.setAttribute("msg", "注册成功");

        return "f:/zhuce/putong.jsp";
    }


    //管理员注册
    public String GuanLiYuan(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取表单信息
        String name = req.getParameter("name");//用户名
        String password = req.getParameter("password");//密码
        String email = req.getParameter("email");//邮箱
        String phone = req.getParameter("phone");//手机号

        //封装信息
        user.setName(name);
        user.setPassword(password);
        user.setEmail(email);
        user.setPhone(phone);

        //保存信息
        userservice.register(user);

        //显示成功信息
        req.setAttribute("msg", "注册成功");

        return "f:/zhuce/guanliyuan.jsp";
    }

    //登录
    public String Login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = null;
        //获取表单信息
        String number = req.getParameter("name");//账号
        String password = req.getParameter("password");//密码
        String identity = req.getParameter("shenfen");//

        //把数据封装到实体中
        user.setName(number);
        user.setPassword(password);
        user.setIdentity(identity);

        //把获取到的数据传到数据库，进行判断
        boolean flag = userservice.login(user);

        //如果账号密码正确，登录成功
        if (identity.equals("普通登录")) {
            if (flag) {
                HttpSession session = req.getSession();
                session.setAttribute("xx", "注销");
                session.setAttribute("ss", "欢迎" + number + "回来");
                path = "r:/index/main.jsp";
            } else {
                req.setAttribute("msg", "您的用户名或密码有误");
                path = "f:/index/login.jsp";
            }
        } else if (identity.equals("管理员登录")){
            if (flag) {
                path = "r:/houtai/Main.jsp";
            } else {
                req.setAttribute("msg", "您的用户名或密码有误");
                path = "f:/index/login.jsp";
            }
        }
        return path;
    }

    //更改session状态
    public void setSession(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.setAttribute("xx", "");
        session.setAttribute("ss", "");
    }

    //找回密码
    public String findpassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取账户
        String name = req.getParameter("name");

        HttpSession session=req.getSession();
        session.setAttribute("name",name);
        //把数据封装到实体中
        user.setName(name);

        //把获取到的数据传到数据库，进行查询
        User user1 = userservice.findpassword(user);

        if (user1 != null) {
            String password = user1.getPassword();
            req.setAttribute("msg", "您的密码是：" + password);
            return "f:/xiugaimima/wangjimima.jsp";
        } else {
            req.setAttribute("msg", "对不起，没有查询到您的密码，请核实您的用户名");
            return "f:/xiugaimima/wangjimima.jsp";
        }
    }

    //修改密码
    public String xiugai(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取session中保存的用户名
        HttpSession session=req.getSession();
        String name=(String)session.getAttribute("name");
        System.out.println(name);

        //获取新密码
        String newPwd=req.getParameter("newPwd");

        //把数据封装到实体中
        user.setName(name);
        user.setPassword(newPwd);

        //把获取到的数据传到数据库，进行修改
        int number=userservice.xiugai(user);

        //判断影响行数，是否修改成功
        if (number>0){
            req.setAttribute("xiu","密码修改成功");
            return "f:/xiugaimima/xiugaimima.jsp";
        }else {
            req.setAttribute("xiu","密码修改失败");
            return "f:/xiugaimima/xiugaimima.jsp";
        }
    }
}
