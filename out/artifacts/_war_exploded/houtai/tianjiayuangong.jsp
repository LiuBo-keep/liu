<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/houtai/gylMain.css"/>
    <link rel="stylesheet" href="../css/houtai/gyl1.css"/>
    <link rel="stylesheet" href="../css/base.css"/>
    <style>
        .container {
            width: 1200px;
            height: 650px;
            margin-left: 230px;
            margin-top: -355px;
        }

        .container .head {
            width: 100%;
            height: 40px;
            border: 1px solid black;
            line-height: 40px;
            font-size: 18px;
            background-color: ghostwhite;
            background: linear-gradient(to bottom, grey, ghostwhite);
        }

        .container .head p {
            margin-left: 20px;
            text-shadow: 2px 2px 1px gainsboro, -2px -2px 1px ghostwhite;
        }

        .container .nav {
            width: 150px;
            height: 40px;
            border: 1px solid black;
            margin-top: 15px;
            margin-left: 15px;
            /*background-color: whitesmoke;*/
            border-radius: 10px;
            background: linear-gradient(to bottom, whitesmoke, ghostwhite);

        }

        .container .nav img {
            margin-top: 0px;
            margin-left: 10px;
        }

        .container .nav p {
            display: inline;
            font-size: 18px;
            position: relative;
            top: -13px;
            left: 5px;
        }

        .container .footer {
            margin-top: 20px;
            width: 100%;
            height: 530px;
            border: 1px solid black;

        }

        .container .footer .footerTop {
            width: 100%;
            height: 40px;
            border: 1px solid black;
            line-height: 40px;
            background: linear-gradient(to bottom, gainsboro, white);
            color: black;
            font-size: 18px;
        }

        .container .footer .footerTop p {
            margin-left: 20px;
        }

        .container .footer .footerTop .footerNav {
            position: relative;
            bottom: 40px;
            float: right;
            width: 300px;
            height: 40px;
            /*border: 1px solid black;*/
            line-height: 40px;
        }

        .container .footer .footerTop .footerNav li {
            width: 90px;
            margin-right: 8px;
            float: left;
            /*border: 1px solid black;*/
            text-align: center;

        }

        .container .footer .footerTop .footerNav li input {
            height: 30px;

        }

        .container .footer .footerTop .footerNav li .img {
            position: relative;
            top: 8px;
        }

        .container .footer .footerTop .listNav {
            width: 100%;
            height: 40px;
            /*border: 1px solid black;*/
        }

        .container .footer .footerTop .listNav ul {
            position: absolute;
            width: 100%;
            display: block;
        }

        .container .footer .footerTop .listNav li {
            width: 148px;
            border: 1px solid black;
            float: left;
            text-align: center;
            box-sizing: content-box;
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
                    <li><a href="#">月销售情况</a></li>
                </ul>
            </div>
        </label>
    </div>
</div>

<!--主页内容-->
<div class="container">
    <div class="head">
        <p>员工管理</p>
    </div>
    <div class="nav">
        <img src="../img/houtai/gly/mainImg/user.png"/>
        <p>角色管理</p>
    </div>
    <div class="footer">
        <div class="footerTop">
            <p>员工管理列表</p>
            <div class="footerNav">
                <ul>
                    <li>
                        ＋<input type="button" value="添加" name=""/>
                    </li>
                    <li>
                        <img src="../img/houtai/gly/set.png" class="img"/>
                        <input type="button" value="修改" name=""/>
                    </li>
                    <li>
                        ×<input type="button" value="删除" name=""/>
                    </li>
                </ul>
            </div>
            <div class="listNav">
                <ul>
                    <li style="width: 80px;">所在单位</li>
                    <li style="width: 100px;">姓名</li>
                    <li style="width: 200px;">性别</li>
                    <li style="width: 200px;">身份证</li>
                    <li style="width: 80px;">人员身份</li>
                    <li style="width: 200px;">人员状态</li>
                    <li style="width: 150px;">入职时间</li>
                    <li style="width: 175px;">编辑类型</li>
                </ul>
                <div style="float: left;display: block; margin-top: -20px;">
                    <table border="1px" width="1200px" cellpadding="0px" cellspacing="0px">
                        <tbody>
                        <tr height="40px">
                            <td>
                                <ul>
                                    <li style="width: 80px;">1</li>
                                    <li style="width: 100px;">张三</li>
                                    <li style="width: 200px;">DB7386DD6B</li>
                                    <li style="width: 200px;">zhanglifeng@9158.com</li>
                                    <li style="width: 80px;">超管</li>
                                    <li style="width: 200px;">2019/06/26 09.30.12</li>
                                    <li style="width: 150px;">127.0.0.1</li>
                                    <li style="width: 175px;">圆通、顺丰</li>
                                </ul>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table border="1px" width="1200px" cellpadding="0px" cellspacing="0px">
                        <tbody>
                        <tr height="40px">
                            <td>
                                <ul>
                                    <li style="width: 80px;">2</li>
                                    <li style="width: 100px;">张三</li>
                                    <li style="width: 200px;">DB7386DD6B</li>
                                    <li style="width: 200px;">zhanglifeng@9158.com</li>
                                    <li style="width: 80px;">超管</li>
                                    <li style="width: 200px;">2019/06/26 09.30.12</li>
                                    <li style="width: 150px;">127.0.0.1</li>
                                    <li style="width: 175px;">圆通、顺丰</li>
                                </ul>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table border="1px" width="1200px" cellpadding="0px" cellspacing="0px">
                        <tbody>
                        <tr height="40px">
                            <td>
                                <ul>
                                    <li style="width: 80px;">3</li>
                                    <li style="width: 100px;">张三</li>
                                    <li style="width: 200px;">DB7386DD6B</li>
                                    <li style="width: 200px;">zhanglifeng@9158.com</li>
                                    <li style="width: 80px;">超管</li>
                                    <li style="width: 200px;">2019/06/26 09.30.12</li>
                                    <li style="width: 150px;">127.0.0.1</li>
                                    <li style="width: 175px;">圆通、顺丰</li>
                                </ul>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table border="1px" width="1200px" cellpadding="0px" cellspacing="0px">
                        <tbody>
                        <tr height="40px">
                            <td>
                                <ul>
                                    <li style="width: 80px;">4</li>
                                    <li style="width: 100px;">张三</li>
                                    <li style="width: 200px;">DB7386DD6B</li>
                                    <li style="width: 200px;">zhanglifeng@9158.com</li>
                                    <li style="width: 80px;">超管</li>
                                    <li style="width: 200px;">2019/06/26 09.30.12</li>
                                    <li style="width: 150px;">127.0.0.1</li>
                                    <li style="width: 175px;">圆通、顺丰</li>
                                </ul>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table border="1px" width="1200px" cellpadding="0px" cellspacing="0px">
                        <tbody>
                        <tr height="40px">
                            <td>
                                <ul>
                                    <li style="width: 80px;">5</li>
                                    <li style="width: 100px;">张三</li>
                                    <li style="width: 200px;">DB7386DD6B</li>
                                    <li style="width: 200px;">zhanglifeng@9158.com</li>
                                    <li style="width: 80px;">超管</li>
                                    <li style="width: 200px;">2019/06/26 09.30.12</li>
                                    <li style="width: 150px;">127.0.0.1</li>
                                    <li style="width: 175px;">圆通、顺丰</li>
                                </ul>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table border="1px" width="1200px" cellpadding="0px" cellspacing="0px">
                        <tbody>
                        <tr height="40px">
                            <td>
                                <ul>
                                    <li style="width: 80px;">6</li>
                                    <li style="width: 100px;">张三</li>
                                    <li style="width: 200px;">DB7386DD6B</li>
                                    <li style="width: 200px;">zhanglifeng@9158.com</li>
                                    <li style="width: 80px;">超管</li>
                                    <li style="width: 200px;">2019/06/26 09.30.12</li>
                                    <li style="width: 150px;">127.0.0.1</li>
                                    <li style="width: 175px;">圆通、顺丰</li>
                                </ul>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table border="1px" width="1200px" cellpadding="0px" cellspacing="0px">
                        <tbody>
                        <tr height="40px">
                            <td>
                                <ul>
                                    <li style="width: 80px;">7</li>
                                    <li style="width: 100px;">张三</li>
                                    <li style="width: 200px;">DB7386DD6B</li>
                                    <li style="width: 200px;">zhanglifeng@9158.com</li>
                                    <li style="width: 80px;">超管</li>
                                    <li style="width: 200px;">2019/06/26 09.30.12</li>
                                    <li style="width: 150px;">127.0.0.1</li>
                                    <li style="width: 175px;">圆通、顺丰</li>
                                </ul>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table border="1px" width="1200px" cellpadding="0px" cellspacing="0px">
                        <tbody>
                        <tr height="40px">
                            <td>
                                <ul>
                                    <li style="width: 80px;">8</li>
                                    <li style="width: 100px;">张三</li>
                                    <li style="width: 200px;">DB7386DD6B</li>
                                    <li style="width: 200px;">zhanglifeng@9158.com</li>
                                    <li style="width: 80px;">超管</li>
                                    <li style="width: 200px;">2019/06/26 09.30.12</li>
                                    <li style="width: 150px;">127.0.0.1</li>
                                    <li style="width: 175px;">圆通、顺丰</li>
                                </ul>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
