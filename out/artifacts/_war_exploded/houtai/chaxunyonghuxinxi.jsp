<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/houtai/gylMain.css"/>
    <link rel="stylesheet" href="../css/houtai/gyl1.css"/>
    <link rel="stylesheet" href="../css/base.css"/>
    <link rel="stylesheet" href="../css/houtai/chaxunyonghhuxinxi.css">
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
    <div class="a">
        <form action="/houtai" method="POST">
            <table cellpadding="0" cellspacing="0" class="tb1">
                <tr>
                    <td colspan="6" class="td1">
                        <div class="tu"></div>
                        <p>查询条件</p>
                    </td>
                </tr>

                <tr class="tr1">
                    <td colspan="2">
                        姓名:<input type="text" name="username">
                    </td>
                    <td colspan="2">
                        性别:<select name="gender">
                        <option>请选择</option>
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>
                    </td>
                    <td colspan="2">
                        出生日期:<input type="date">
                    </td>
                </tr>

                <tr class="tr1">
                    <td colspan="2">
                        用户名:<input type="test" name="name">
                    </td>
                    <td colspan="2">
                        地址:<input type="text" name="region">
                    </td>
                    <td colspan="2">
                        邮箱:<input type="text" name="email">
                    </td>
                </tr>
                <tr class="tr1">
                    <td colspan="6">
                        <input type="hidden" name="mothed" value="find">
                        <input type="submit" value="搜索" class="sub">
                        <input type="reset" value="重置" class="sub">
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div class="b">
        <table class="tb" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="6">用户信息</td>
            </tr>

            <tr>
                <td>用户名</td>
                <td>姓名</td>
                <td>性别</td>
                <td>手机号</td>
                <td>邮箱</td>
                <td>地址</td>
            </tr>
            <c:forEach items="${pb.beanlist}" var="user">
                <tr>
                    <td>${user.name}</td>
                    <td>${user.userName}</td>
                    <td>${user.gender}</td>
                    <td>${user.phone}</td>
                    <td>${user.email}</td>
                    <td>${user.region}</td>
                </tr>
            </c:forEach>
        </table>
        <div class="aa">
            第${pb.pc}页/共${pb.tp}页
            <a href="<c:url value="/houtai?mothed=findYH&pc=1"/>">首页</a>
            <c:if test="${pb.pc>1}">
                <a href="<c:url value="/houtai?mothed=findYH&pc=${pb.pc-1}"/>">上一页</a>
            </c:if>
            <c:if test="${pb.pc<pb.tp}">
                <a href="<c:url value="/houtai?mothed=findYH&pc=${pb.pc+1}"/>">下一页</a>
            </c:if>
            <a href="<c:url value="/houtai?mothed=findYH&pc=${pb.tp}"/>">尾页</a>
        </div>
    </div>
</div>
</body>

</html>
