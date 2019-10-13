package com.hp.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;

public abstract class BaseServlet extends HttpServlet {

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        /**
         *
         * 获取参数 ，用来识别用户想请求的方法
         * 然后判断是否哪一个方法，是哪一个就调用哪一个
         */

        //获取参数 ，用来识别用户想请求的方法
        String mothed = request.getParameter("mothed");

        if (mothed==null||mothed.trim().isEmpty()){
            throw new RuntimeException("您没有传递mothed参数");
        }
        /**
           得到方法名，是否可通过反射来调用方法？
             1.得到方法名，通过方法名再得到Method类对象
               需要我们得到Class，然后调用他的方法进行查询，得到Method
               我们要查询的是当前的方法，所以我们需要得到当前的Class
         */
        Class c = this.getClass();//得到当前类的Class对象
        Method method = null;
        try {
            method = c.getMethod(mothed, HttpServletRequest.class, HttpServletResponse.class);

        } catch (Exception e) {
            System.out.println("有异常");
            throw  new RuntimeException("你调用的"+mothed+"不存在");
        }

        /*
           调用method表示的方法
         */
        try {
            /**
             * 获取请求处理方法执行后返回的字符串，他表示转发或重定向路径
             * 帮他完成转发或重定向
             */

            String result=(String) method.invoke(this,request,response );//this.addUser(request,response);method(this,request,response)
            /**
             *
             * 如果用户返回的是字符串null，或为”“，那么我们什么也不做
             */
            if (result==null||result.trim().isEmpty()){
                return;
            }
            /**
             *
             * 查看返回的字符串中是否包含冒号，如果没有，表示转发
             * 如果有，使用冒号分割字符串，得到前缀和后缀
             * 其中前缀如果是f，表示转发，如果是r表示重定向，后缀就是要转发或重定向的路径
             */

            if (result.contains(":")){
                //使用冒号分割字符串
                int indext=result.indexOf(":");//获取冒号的位置
                String s=result.substring(0,indext);//获取前缀
                String path=result.substring(indext+1);//获取后缀,表示路径
                if (s.equals("r")){//如果是r表示重定向，
                    response.sendRedirect(path);
                }else if(s.equals("f")){//中前缀如果是f，表示转发
                    request.getRequestDispatcher(path).forward(request,response);
                }else {
                    throw new RuntimeException("你指定操作："+s+",当前版本还不支持");
                }
            }else {//没有冒号，默认为转发
                request.getRequestDispatcher(result).forward(request,response);
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}

