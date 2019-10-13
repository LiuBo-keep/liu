package com.hp.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;

public class VerifyCodeServlet extends HttpServlet {
    //验证码
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setHeader("Cache-Control", "no-cache");
        resp.setHeader("Pragma", "no-cache");
        resp.setDateHeader("Expires", 0);

        com.hp.Utils.VerifyCode vc=new com.hp.Utils.VerifyCode();
        BufferedImage bi=vc.getImage();
        req.getSession().setAttribute("ver",vc.getText());
        com.hp.Utils.VerifyCode.output(bi,resp.getOutputStream());

        String text=vc.getText();
        HttpSession session =req.getSession();
        session.setAttribute("Verify",text);

    }
}
