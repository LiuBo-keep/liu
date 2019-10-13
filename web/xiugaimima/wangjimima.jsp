<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/xiugaimima/wangjimima.css" />

    <%--验证码--%>
    <script type="text/javascript">
        function change() {
            document.getElementById("img").src="<c:url value='/VerifyCode?'/>"+Math.random();
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
</head>

<body>
<!-- logo -->
<div class="top">
    <div class="top-logo">
        <img src="../img/login/1.jpg">
        <p class="top-text"><a href="/xiugaimima/xiugaimima.jsp">重置密码</a></p>
        <div class="ul">
            <ul>
                <li class="li">问题反馈</li>
                <li><a href="../index/login.jsp">登录</a></li>
            </ul>
        </div>
    </div>

    <!-- 显示找回密码 -->
    <div class="title">
            <span class="msg">
               ${requestScope.msg}
            </span>
    </div>
</div>

<%--表单--%>
<div class="main">
    <form action="<c:url value="/login"/>" method="post">
        <input type="hidden" name="mothed" value="findpassword">
        <!-- 用户名 -->
        <div>
            <p class="p1">用户名:</p>
            <div class="main_1">
                <input type="text" class="input-1" name="name" id="name">
            </div>
        </div>

        <!-- 验证码 -->
        <div>
            <p class="p2">验证码:</p>
            <div class="main_2"  >
                <input type="text" class="tr" name="yan" id="loginyan" onblur="ly()" >
                <img id="img" src="<c:url value='/VerifyCode'/>" style="border: 1px;border-style: none" name="Verify" class="img1"/>
            </div>
            <p class="p3" href="javascript:void(0)" onclick="change()">看不清,换一张</p>
        </div>

        <!-- 提交 -->
        <div class="tosub_1">
            <input type="submit" value="确定" class="tosub_2" onclick="tosu()">
        </div>
    </form>
</div>

<div class="food">
    <p class="addre">地址：天津市大学软件学院 &nbsp;惠普交付中心</p><br>
    <p class="group">第九组</p>
</div>
</body>

</body>
</html>
