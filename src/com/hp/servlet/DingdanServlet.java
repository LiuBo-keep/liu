package com.hp.servlet;

import com.hp.domain.DingDan;
import com.hp.service.DingdanService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class DingdanServlet extends BaseServlet {

    //在线下单
    public String xiadan(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取下单信息
        String jname=req.getParameter("jname");
        String jphonea=req.getParameter("jphonea");
        String jphoneb=req.getParameter("jphoneb");
        String jregion=req.getParameter("jregion");
        String sname=req.getParameter("sname");
        String sphonea=req.getParameter("sphonea");
        String sphoneb=req.getParameter("sphoneb");
        String sregion=req.getParameter("sregion");
        String hname=req.getParameter("hname");
        String hmoeny=req.getParameter("hmoeny");
        String hweight=req.getParameter("hweight");
        String hbulk=req.getParameter("bulk");
        String remarks=req.getParameter("remarks");

        //获取javabean
         DingDan dingDan=new DingDan();

         dingDan.setJname(jname);
         dingDan.setJphonea(jphonea);
         dingDan.setJphoneb(jphoneb);
         dingDan.setJregion(jregion);

         dingDan.setSname(sname);
         dingDan.setSphonea(sphonea);
         dingDan.setSphoneb(sphoneb);
         dingDan.setSregion(sregion);

         dingDan.setHname(hname);
         dingDan.setHmoeny(hmoeny);
         dingDan.setHweight(hweight);

         dingDan.setHbulk(hbulk);
         dingDan.setRemarks(remarks);

        DingdanService dingdanService=new DingdanService();
        dingdanService.xiadan(dingDan);


        return "f:/woyaoxiadan/xiadan.jsp";
    }

    //获取订单信息
    public String find(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String jname=req.getParameter("jname");
        String jphonea=req.getParameter("jphonea");
        String jregion=req.getParameter("jregion");

        DingDan dingDan=new DingDan();
        dingDan.setJname(jname);
        dingDan.setJphonea(jphonea);
        dingDan.setJregion(jregion);

        DingdanService dingdanService=new DingdanService();
        DingDan dingDan1=dingdanService.find(dingDan);

        req.setAttribute("ding",dingDan1);

        return "f:/houtai/yonghudingdanchaxun.jsp";
    }
}
