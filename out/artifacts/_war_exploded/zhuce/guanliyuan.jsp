<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="../css/zhuce/guanliyuan.css">

    <%--如果有账号可以直接去登录--%>
    <script type="text/javascript">
        function goLogin() {
            location.href="/index/login.jsp";
        }
    </script>

    <%--验证再次确认密码--%>
    <script type="text/javascript">
       function yan() {
           var apwd=document.getElementById("apwd").value;
           var bpwd=document.getElementById("bpwd").value;
           if (apwd!=bpwd){
               alert("两次密码不一致，请核实");
           }
       }
    </script>

    <%--验证用户名是否重复--%>
    <script type="text/javascript">
        function createXMLHttpRequest() {
            try{
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
            var name =document.getElementById("name");
            name.onblur = function () {
                var text=name.value;
                var xmlHttp =createXMLHttpRequest();

                xmlHttp.open("POST","<c:url  value="/login?mothed=yanName"/>",true);

                xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

                xmlHttp.send("name="+text);

                xmlHttp.onreadystatechange =function () {
                    if (xmlHttp.readyState==4&&xmlHttp.status==200){
                        var  text=xmlHttp.responseText;
                        alert(text);
                    }
                }
            }
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
<div class="top">
    <div class="top-1">
        <div class="logo">
            <img src="../img/login/1.jpg" class="logo-img">
        </div>
        <div class="tex">
            <ul>
                <li>首页</li>
                <li>在线客服</li>
                <li>意见反馈</li>
                <li>操作指引</li>
            </ul>
        </div>
    </div>
</div>
<div class="body">
    <div class="body-1">
        <div class="body-2">
            <div class="img">
                <img src="../img/login/1.jpg">
            </div>
            <div class="body-3">
                管理员注册
            </div>
            <form class="forma" action="<c:url  value="/login"/>" method="post">
                <input type="hidden" value="${requestScope.msg}" id="msg">
                <div class="div-1">
                    <input type="text" class="input-1" placeholder="用户名" name="name" id="name">
                </div>
                <div class="div-2">
                    <input type="password" class="input-2" placeholder="密码" name="password" id="apwd">
                </div>
                <div class="div-3">
                    <input type="password" class="input-3" placeholder="再次确认密码" name="password" id="bpwd" onblur="yan()">
                </div>
                <div class="div-4">
                    <input type="email" class="input-4" placeholder="邮箱" name="email">
                </div>
                <div class="div-5">
                    <input type="" class="input-5" placeholder="手机号" name="phone">
                </div>
                <div class="div-6">
                    <input type="submit" class="input-6" value="注册">
                </div>
                <input type="hidden" name="mothed" value="GuanLiYuan">
            </form>
            <div class="div-7">
                已有账号?
                <span onclick="goLogin()">登录</span>
            </div>
            <div class="div-8">
                点击“注册”,即代表您同意
                <a href="#">
                    <<"协议">>
                </a>
            </div>
        </div>
    </div>
</div>
<div class="foot">
    <div class="div-9">
        <p>© 2019 顺丰速运 版权所有 惠普交付中心 第九组</p>
    </div>
</div>
</body>
</html>
