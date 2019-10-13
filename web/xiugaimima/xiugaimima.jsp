<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/xiugaimima/xiugaimima.css" />
    <%--修改成功信息提醒--%>
    <script  type="text/javascript">
        document.onreadystatechange = function () {
            if(document.readyState=="complete") {
                var e=document.getElementById("msg").value;
                if(e!=""&&e!=null){
                   if (e=="密码修改成功"){
                       var flag=window.confirm(e);
                       if (flag){
                           location.href="/index/login.jsp";
                       }
                   }else {
                       alert(e);
                   }
                }
            }
        }
    </script>
</head>
<body>
<body>
<!--找回密码-->
<div class="top">
    <p>修改密码</p>
</div>
<div class="content">
    <div class="pwd">
        <h2>注意啦：</h2>
        <h6>修改完密码之后要重新登录</h6>
    </div>
    <form class="pwd1" method="post" action="<c:url value="/login"/>">
        <label for="">当前密码</label><input type="text" id="inp1" name=""/><br />
        <span>当前密码强度符合要求</span><br />
        <label for="">新密码</label><input type="password" id="inp2" name="newPwd"/><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br />
        <span>密码长度至少六位;字符种类至少一种(数字，大写字母，小写字母，标点符号)</span><br />
        <label for="">新密码确认</label><input type="password" id="inp3" name=""/><br />
        <span>确认密码与新密码保持一致</span><br />
        <label for="">验证码</label><input type="text" id="inp4" name=""/><span class="spa">ldhf</span>

        <div class="bottom">
            <input type="submit" value="保存" />
            <input type="hidden" name="mothed" value="xiugai">
            <input type="hidden" value="${requestScope.xiu}" id="msg">
        </div>
    </form>
</div>
</body>
<script type="text/javascript">

    //密码
    addEvent("inp2", function() {
        //2.判断是否符合标准
        if(/^[\$a-zA-Z0-9_-]{6,18}$/.test(this.value)) {
            //3.给样式(封装方法给)
            setClassName(this, "right");
            setinnerHTML(this, "输入正确");
        } else {
            setClassName(this, "wrong");
            setinnerHTML(this, "格式错误！");
        }
    });
    //因为每次都要这样调用，所以很繁琐，我们通过封装实现代码
    function addEvent(str, fn) {
        document.getElementById(str).onblur = fn;
    }

    function setClassName(aaa, txt) {
        var span = aaa.nextElementSibling || aaa.nextSibling;
        span.className = txt;
    }

    function setinnerHTML(aaa, txt) {
        var span = aaa.nextElementSibling || aaa.nextSibling;
        span.innerHTML = txt;
    }
</script>
</html>
