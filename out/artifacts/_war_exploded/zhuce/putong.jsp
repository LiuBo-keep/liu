<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>普通注册</title>
    <link rel="stylesheet" href="../css/zhuce/pt.css" />

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
            var name =document.getElementById("Name");
            name.onblur = function () {
                var text=name.value;
                var xmlHttp =createXMLHttpRequest();

                xmlHttp.open("POST","<c:url  value="/login?mothed=yanName1"/>",true);

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
<!---->
<div id="top">
    <!--顶部-->
    <div class="head">
        <div class="bor">
            <p>普通用户注册</p>
        </div>
    </div>
    <div class="body">
        <form method="post" action="<c:url value="/login"/>">
            用户名:&nbsp;&nbsp;<input type="text" id="Name" name="Name"/><label for="lab1">&nbsp;*请输入用户名</label><br />
            密 码:&nbsp;&nbsp;<input type="password" id="pwd" name="password" /><label for="lab2">&nbsp;*请输入密码</label><br />
            姓 名:&nbsp;&nbsp;<input type="text" id="uName" name="userName" /><label for="lab3">&nbsp;*请输入姓名</label><br />
            <p>性 别:</p>&nbsp;&nbsp;<input type="radio" name="gender" value="男"/><span>男</span><input type="radio" name="gender" value="女"/><span>女</span><br />
            手机号:&nbsp;&nbsp;<input type="text" id="number" name="phone" /><label for="lab4">&nbsp;*请输入手机号</label><br />
            邮 箱:&nbsp;&nbsp;<input type="email" id="email" name="email" /><label for="lab5">&nbsp;*请输入邮箱</label><br />
            <p>地 区:</p>
            <select name="region">
                <option value="河北省">河北省</option>
                <option value="山西省">山西省</option>
                <option value="东北省">东北省</option>
                <option value="河南省">河南省</option>
                <option value="湖北省">湖北省</option>
            </select> <br />
            <input type="hidden" name="mothed" value="PuTong">
            <input type="hidden" value="${requestScope.msg}" id="msg">
            <input type="submit" value="注册" class="but"  onclick="zhu()"/>
            <input type="reset" value="重置" />
        </form>
    </div>

</div>
</body>

<script type="text/javascript">
    addEvent("userName", function() {
        //判断是否符合标准
        //	用户名
        if(/^[a-zA-Z0-9_-]{4,16}$/.test(this.value)) {
            //3.给样式(封装方法给)
            setClassName(this, "right");
            setinnerHTML(this, "*输入的正确！");
        } else {
            setClassName(this, "wrong");
            setinnerHTML(this, "*请重新输入！");
        }
    });

    //密码
    addEvent("pwd", function() {
        //判断是否符合标准
        if(/^[\$a-zA-Z0-9_-]{6,18}$/.test(this.value)) {
            //3.给样式(封装方法给)
            setClassName(this, "right");
            setinnerHTML(this, "*输入的正确！");
            password.className = "pwd str1";
            //只有密码通过了，才能执行密码强度测试
            //从大往小测试--->重中之重
            if(/^[A-Za-z0-9]+[_$][A-Za-z0-9]*$/.test(this.value)) {
                password.className = "pwd str4";
            } else if(/^([a-z].*[0-9])|([A-Z].*[0-9])|([0-9].*[a-zA-Z])$/.test(this.value)) {
                password.className = "pwd str3";
            } else if(/^([a-z].*[A-Z])|([A-Z].*[a-z])$/.test(this.value)) {
                password.className = "pwd str2";
            }
        } else {
            setClassName(this, "wrong");
            setinnerHTML(this, "*请重新输入！");
        }
    });
    //姓名
    addEvent("uName", function() {
        //2.判断是否符合标准
        if(/[\u4E00-\u9FA5]/.test(this.value)) {
            //3.给样式(封装方法给)
            setClassName(this, "right");
            setinnerHTML(this, "*输入的正确！");
        } else {
            setClassName(this, "wrong");
            setinnerHTML(this, "*请重新输入！");
        }
    });
    //手机号
    addEvent("number", function() {
        //2.判断是否符合标准
        //	QQ号
        if(/^((13[0-9])|(15[^4,\D])|(18[0-9]))\d{8}$/.test(this.value)) {
            //3.给样式(封装方法给)
            setClassName(this, "right");
            setinnerHTML(this, "*输入的正确！");
        } else {
            setClassName(this, "wrong");
            setinnerHTML(this, "*请重新输入！");
        }
    });
    //邮箱
    addEvent("email", function() {
        //2.判断是否符合标准
        if(/^[\w\-\.]+@[\w]+\.[\w]{2,4}$/.test(this.value)) {
            //3.给样式(封装方法给)
            setClassName(this, "right");
            setinnerHTML(this, "*输入的正确！");
        } else {
            setClassName(this, "wrong");
            setinnerHTML(this, "*请重新输入！");
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
