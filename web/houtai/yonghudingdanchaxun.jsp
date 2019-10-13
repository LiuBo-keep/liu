<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/houtai/gylMain.css"/>
    <link rel="stylesheet" href="../css/houtai/gyl1.css"/>
    <link rel="stylesheet" href="../css/base.css"/>
    <link rel="stylesheet" href="../css/houtai/yonghudingdanchaxun.css">
</head>
<body>
<!--导航栏-->
<div class="top">
    <div class="left-bg"></div>
    <div class="right-bg"></div>
    <div class="hd-inner">
        <img src="../img/houtai/gly/mainImg/main_logo.png" alt="" class="logo"/>
        <span class="split"></span>
    </div>
    <div class="topRight">
        <div class="topPhoto">
            <img src="../img/houtai/gly/mainImg/user.png"/>
        </div>
        <!--<h4>unimaker</h4>
            <i class="iconfont xiala">&#xe607;</i>-->
        <div class="listLa">
            <ul>
                <li class="listLi">
                    <a href="/index/login.jsp">
                        <i class="iconfont">&#xe60e;</i>
                        <span class="listTui">退出</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--下拉菜单-->
<div class="dowebok">
    <div class="swanky_wrapper">
        <input id="Dashboard" name="radio" type="radio">
        <label for="Dashboard">
            <img src="../img/houtai/gly/dash.png">
            <span>员工管理</span>
            <div class="lil_arrow"></div>
            <div class="bar"></div>
            <div class="swanky_wrapper__content">
                <ul>
                    <li><a href="chaxunyundongxinxi.jsp">查询员工信息</a></li>
                    <li><a href="/houtai/tianjiayuangong.jsp">添加员工信息</a></li>
                </ul>
            </div>
        </label>
        <input id="Sales" name="radio" type="radio">
        <label for="Sales">
            <img src="../img/houtai/gly/del.png">
            <span>车辆管理</span>
            <div class="lil_arrow"></div>
            <div class="bar"></div>
            <div class="swanky_wrapper__content">
                <ul>
                    <li>查询车辆信息</li>
                    <li>添加车辆信息</li>
                </ul>
            </div>
        </label>
        <input id="Messages" name="radio" type="radio">
        <label for="Messages">
            <img src="../img/houtai/gly/mess.png">
            <span>反馈查收</span>
            <div class="lil_arrow"></div>
            <div class="bar"></div>
            <div class="swanky_wrapper__content">
                <ul>
                    <li>查询路线信息</li>
                    <li>添加路线信息</li>
                </ul>
            </div>
        </label>
        <input id="Users" name="radio" type="radio">
        <label for="Users">
            <img src="../img/houtai/gly/users.png">
            <span>用户管理</span>
            <div class="lil_arrow"></div>
            <div class="bar"></div>
            <div class="swanky_wrapper__content">
                <ul>
                    <li><a href="chaxunyonghuxinxi.jsp">查询用户信息</a></li>
                    <li><a href="/houtai/yonghudingdanchaxun.jsp">查询用户订单</a></li>
                </ul>
            </div>
        </label>
        <input id="Settings" name="radio" type="radio">
        <label for="Settings">
            <img src="../img/houtai/gly/set.png">
            <span>订单管理</span>
            <div class="lil_arrow"></div>
            <div class="swanky_wrapper__content">
                <ul>
                    <li>揽件</li>
                    <li>订单统计</li>
                    <li>月销售情况</li>
                </ul>
            </div>
        </label>
    </div>
</div>
<!--主页面-->
<div class="content">
    <div class="fo">
        <form action="/xiadan" method="POST">
            <table cellpadding="0" cellspacing="0" class="tb1">
                <tr>
                    <td colspan="3">
                        <div class="ss1">
                            <div class="tu"></div>
                            <p>查询条件</p>
                        </div>
                    </td>
                </tr>
                <tr class="h">
                    <td>
                        <div class="ss2">
                            寄件人姓名:<input class="in" type="text" name="jname">
                        </div>
                    </td>
                    <td>
                        <div class="ss3">
                            寄件人手机号:<input class="in" type="text" name="jphonea">
                        </div>
                    </td>
                    <td>
                        <div class="ss4">
                            寄件人地址:<input class="in" type="text" name="jregion">
                        </div>
                    </td>
                </tr>

                <tr>
                    <td colspan="3">
                        <div class="ss8">
                            <input type="submit" value="查询" style="cursor:pointer">&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" value="重置" style="cursor:pointer">
                            <input type="hidden" name="mothed" value="find">
                        </div>
                    </td>
                </tr>
                <tr>

                </tr>
            </table>
        </form>
    </div>

    <div class="xia">
        <ul>
            <li>
                <p class="x1">订单信息</p>
            </li>
            <li class="x2">
                寄件人姓名:<span class="s1">
                ${requestScope.ding.jname}
            </span>
            </li>
            <li class="x3">
                寄件人手机号:<span class="s1">
                ${requestScope.ding.jphonea}
            </span>
            </li>
            <li class="x4">
                寄件人电话:<span class="s1">
                ${requestScope.ding.jphoneb}
            </span>
            </li>
            <li class="x5">
                寄件人地址:<span class="s1">
                ${requestScope.ding.jregion}
            </span>
            </li>
            <li class="x6">
                收件人姓名:<span class="s1">
                ${requestScope.ding.sname}
            </span>
            </li>
            <li class="x7">
                收件人手机号:<span class="s1">
                ${requestScope.ding.sphonea}
            </span>
            </li>
            <li class="x8">
                收件人电话:<span class="s1">
                ${requestScope.ding.sphoneb}
            </span>
            </li>
            <li class="x9">
                收件人地址:<span class="s1">
                ${requestScope.ding.sregion}
            </span>
            </li>
            <li class="x10">
                货物名称:<span class="s1">
                ${requestScope.ding.hname}
            </span>
            </li>
            <li class="x11">
                货物报价:<span class="s1">
                ${requestScope.ding.hmoeny}
            </span>
            </li>
            <li class="x12">
                货物重量:<span class="s1">
                ${requestScope.ding.hweight}
            </span>
            </li>
            <li class="x13">
                货物体积:<span class="s1">
                ${requestScope.ding.hbulk}
            </span>
            </li>
            <li class="x14">
                备注:<span class="s2">
                ${requestScope.ding.remarks}
            </span>
            </li>
        </ul>
    </div>
</div>
</body>

</html>

