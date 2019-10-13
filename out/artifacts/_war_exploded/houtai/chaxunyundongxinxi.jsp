<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/houtai/gyl1.css"/>
    <link rel="stylesheet" href="../css/houtai/gylMain.css"/>
    <link rel="stylesheet" href="../css/base.css"/>
    <style>
        .content {
            position: absolute;
            width: 1200px;
            border: 1px solid black;
            margin-left: 230px;
            margin-top: -355px;
        }

        .content .contentTop {
            width: 100%;
            height: 40px;
            border: 1px solid black;
            line-height: 40px;
            font-size: 18px;
            background-color: ghostwhite;
            background: linear-gradient(to bottom, grey, ghostwhite);
        }

        .content .contentTop p {
            margin-left: 20px;
        }

        .content .contentChaXun {
            width: 100%;
            height: 60px;
            border: 1px solid black;
        }

        .content .contentChaXun .contentCX {
            width: 100%;
            /*border: 1px solid black;*/
            margin-top: 13px;
            font-size: 18px;
        }

        .content .contentChaXun .contentCX label {
            margin-left: 15px;
        }

        .content .contentChaXun .contentCX input {
            width: 200px;
            height: 35px;
            margin-left: 8px;
        }

        .content .contentChaXun .contentCX .input {
            width: 100px;
            background-color: aqua;
            color: black;
            font-weight: 600;
        }

        .content .listNav {
            width: 100%;
            border: 1px solid black;
            border-style: none;
            line-height: 40px;
        }

        .tb{
            width: 100%;
        }
        .tb tr{
            border: 1px solid black;
            height: 30px;
        }

        .tb td{
            border: 1px solid black;
            text-align: center;
        }
        .aa{
            width: 300px;
            font-weight: 500;
            font-size: 21px;
            position: relative;
            left: 435px;
        }
        a{
            text-decoration: none;
            color: black;
        }

    </style>
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
                    <li><a href="#">查询车辆信息</a></li>
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
                    <li><a href="/houtai/chaxunyonghuxinxi.jsp">查询用户信息</a></li>
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
    <div class="contentTop">
        <p>员工信息表</p>
    </div>
    <div class="contentChaXun">
        <div class="contentCX">
            <form method="post" action="/houtai">
                <label for="">请选择</label><input type="text" name="unit" placeholder="所在单位"/>
                <label for="">姓名</label><input type="text" name="name"/>
                <label for="">入职时间</label><input type="text" name="data"/>
                <input type="hidden" name="mothed" value="findY">
                <input type="submit" value="搜索"  class="input"/>
            </form>
        </div>
    </div>
    <div class="listNav">
        <table class="tb" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="8">员工信息</td>
            </tr>
            <tr>
                <td>所在单位</td>
                <td>姓名</td>
                <td>性别</td>
                <td>身份证</td>
                <td>人员身份</td>
                <td>人员状态</td>
                <td>入职时间</td>
                <td>编制类型</td>
            </tr>
            <c:forEach items="${pb.beanlist}" var="user">
                <tr>
                    <td>${user.unit}</td>
                    <td>${user.name}</td>
                    <td>${user.sex}</td>
                    <td>${user.card}</td>
                    <td>${user.status}</td>
                    <td>${user.zhuangtai}</td>
                    <td>${user.data}</td>
                    <td>${user.type}</td>
                </tr>
            </c:forEach>
        </table>
        <div class="aa">
            第${pb.pc}页/共${pb.tp}页
            <a href="<c:url value="/houtai?mothed=findYG&pc=1"/>">首页</a>
            <c:if test="${pb.pc>1}">
                <a href="<c:url value="/houtai?mothed=findYG&pc=${pb.pc-1}"/>">上一页</a>
            </c:if>
            <c:if test="${pb.pc<pb.tp}">
                <a href="<c:url value="/houtai?mothed=findYG&pc=${pb.pc+1}"/>">下一页</a>
            </c:if>
            <a href="<c:url value="/houtai?mothed=findYG&pc=${pb.tp}"/>">尾页</a>
        </div>
    </div>
</div>
</body>
</html>

