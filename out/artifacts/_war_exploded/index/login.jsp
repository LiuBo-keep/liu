<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>网络物流</title>
    <link rel="stylesheet" href="../css/login.css" />
    <link rel="stylesheet" href="../css/base.css" />

    <%--判断用户名和密码,验证码不能为空--%>
    <script type="text/javascript">
        function doSubmit(){
            var myLoginName = document.getElementById("loginname").value;
            if(myLoginName==""){
                alert("用户名不能为空");
            }
        }
    </script>

    <script type="text/javascript">
        function pwd(){
            var loginpassword = document.getElementById("loginpassword").value;
            if(loginpassword==""){
                alert("密码不能为空");
            }
        }
    </script>

    <%--检验验证码--%>
    <script type="text/javascript">
        //检测xmlHttp对象
        function createXMLHttpRequest() {
            try {
                return new XMLHttpRequest();
            }catch (e) {
               try {
                   return new ActiveXObject("Msxml2.XMLHTTP");
               }catch (e) {
                   try {
                       return new ActiveXObject("Microsoft.XMLHTTP");
                   }catch (e) {
                       throw e;
                   }
               }
            }
        }
        window.onload = function () {
           var yan =document.getElementById("loginyan");

           yan.onblur = function () {
               var loginpassword = yan.value;

               if (loginpassword==""){
                   alert("验证码不能为空");
               } else {
                   var xmlHttp = createXMLHttpRequest();

                   xmlHttp.open("POST","/login?mothed=VerifyCode",true);

                   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

                   xmlHttp.send("yan="+yan.value);

                   xmlHttp.onreadystatechange = function () {
                       if (xmlHttp.readyState==4&xmlHttp.status==200){
                           var text =xmlHttp.responseText;

                           if (text==0){
                               alert("验证码有误");
                           }
                       }
                   }
               }
           }
        }
    </script>

    <%--注册--%>
    <script type="text/javascript">
        function a(){
            var index=document.getElementById("y").selectedIndex;
            if(index==1){
                location.href="../zhuce/putong.jsp";
            }else{
                location.href="../zhuce/guanliyuan.jsp";
            }
        }
    </script>

    <%--验证码--%>
    <script type="text/javascript">
        function change() {
            document.getElementById("img").src="<c:url value='/VerifyCode?'/>"+Math.random();
        }
    </script>

    <%--错误信息提示--%>
    <script  type="text/javascript">
        document.onreadystatechange = function () {
            if(document.readyState=="complete") {
                var e=document.getElementById("msg").value;
                if(e!=""&&e!=null){
                    alert(e);
                }
            }
        }
    </script>

</head>
<body>
<div class="login-hd">
    <div class="left-bg"></div>
    <div class="right-bg"></div>
    <div class="hd-inner">
        <span class="logo"></span>
        <span class="split"></span>
        <span class="sys-name">网 络 物 流 平 台</span>
    </div>
</div>
<div class="login-bd">
    <div class="bd-inner">
        <div class="inner-wrap">
            <div class="lg-zone">
                <div class="lg-box">
                    <div class="lg-label"><h4>用户登录</h4></div>
                    <form action="/login" method="post">
                        <input type="hidden" name="mothed" value="Login">
                        <input type="hidden" value="${requestScope.msg}" id="msg">

                        <%--账号/邮箱--%>
                        <div class="lg-username input-item clearfix">
                            <i class="iconfont">&#xe60d;</i>
                            <input type="text" placeholder="账号/邮箱" name="name" id="loginname" onblur="doSubmit()">
                        </div>

                            <%--请输入密码--%>
                        <div class="lg-password input-item clearfix">
                            <i class="iconfont">&#xe634;</i>
                            <input type="password" placeholder="请输入密码" name="password" id="loginpassword" onblur="pwd()">
                        </div>

                            <%--验证码--%>
                        <div class="lg-check clearfix" >
                            <div class="input-item">
                                <i class="iconfont">&#xe633;</i>
                                <input type="text" placeholder="验证码"  name="yan" id="loginyan" onblur="ly()">
                                <a href="javascript:void(0)" onclick="change()" class="yan" style="color:lightsteelblue;font-size: 14px">看不清，换一张</a>
                            </div>
                            &nbsp; &nbsp;&nbsp; &nbsp;
                            <img id="img" src="<c:url value='/VerifyCode'/>" border="1px" name="Verify" class="img1"/>
                        </div>

                            <%--记住用户名--%>
                        <div class="tips clearfix">
                            <label><input type="checkbox" checked="checked">记住用户名</label>
                            <select id="y" class="select" onchange="a()">
                                <option>--注册--</option>
                                <option>用户</option>
                                <option>管理员</option>
                            </select>
                            <a href="../xiugaimima/wangjimima.jsp" class="forget-pwd">忘记密码？</a>
                        </div>

                            <%--登录--%>
                        <div class="enter">
                                <input type="submit" value="普通登录" class="purchaser" name="shenfen">
                                <input type="submit" value="管理员登录" class="supplier" name="shenfen">
                        </div>

                    </form>
                </div>
            </div>
            <div class="lg-poster"></div>
        </div>
    </div>
</div>
<div class="login-ft">
    <div class="ft-inner">
        <div class="about-us">
            <a href="javascript:;">关于我们</a>
            <a href="javascript:;">法律声明</a>
            <a href="javascript:;">服务条款</a>
            <a href="javascript:;">联系方式</a>
        </div>
        <div class="address">地址：天津市大学软件学院 &nbsp;惠普交付中心 </div>
        <div class="other-info">第九组</div>
    </div>
</div>
</body>
</html>
</html>
