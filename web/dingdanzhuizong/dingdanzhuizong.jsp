<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../css/woyaoxiadan/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/woyaoxiadan/main.css" />

    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        .center {
            width: 800px;
            height: 1210px;
            /*border: 1px solid black;*/
            margin: 0 auto;
        }

        .center .centerTop {
            width: 100%;
            height: 60px;
            border: 2px solid #3071A9;
            background-color: white;
            z-index: 2;
        }

        .center .centerTop input {
            width: 500px;
            height: 56px;
            margin-left: -3px;
            letter-spacing: 3px;
            font-size: 15px;
        }

        .center .centerTop .pic {
            float: right;
            width: 143px;
            height: 56px;
            /*border: 1px solid black;*/
            background-color: orangered;
            background: url("../images/yundan/spider_search_v4.png")64px -576px no-repeat #ff7800;
            cursor: pointer;
        }

        .center .centerTop .pic:hover {
            opacity: 0.6;
        }

        .center .centerFooter {
            width: 100%;
            height: 1150px;
            border: 1px solid black;
            margin-top: 8px;
        }
        #centerFooter{
            display: none;
        }
        .center .centerFooter .footerTop {
            width: 100%;
            height: 50px;
            border-bottom: 2px solid grey;
            line-height: 50px;
        }

        .center .centerFooter .footerTop .single-name {
            margin-left: 20px;
            font-size: 16px;
            color: gray;
        }

        .center .centerFooter .footerTop .fooP {
            border-right: 1px solid gray;
            margin-left: 8px;
        }

        .center .centerFooter .footerTop .fooA {
            background: url("../images/yundan/spider_search_v4.png") 0px -994px no-repeat;
            margin-left: 8px;
            color: gray;
        }

        .center .centerFooter .footerTop .fooA span {
            margin-left: 18px;
        }

        .center .centerFooter .footerTop .fooSpan {
            background: url("../images/yundan/spider_search_v4.png") 4px -872px no-repeat;
            margin-left: -2px;
            color: gray;
        }

        .center .centerFooter .footerTop .footX {
            display: inline;
            width: 20px;
            height: 20px;
            /*border: 1px solid black;*/
            line-height: 20px;
            float: right;
            margin-top: 13px;
            margin-right: 10px;
            border-radius: 50%;
            background-color: gainsboro;
        }

        .center .centerFooter .footerTop .footX :hover {
            background-color: blue;
            opacity: 0.7;
        }

        .center .centerFooter .footerTop .footX a {
            margin-left: 4px;
            font-size: 18px;
            color: white;
        }

        .center .centerFooter .query-box,
        .result-top {
            float: none;
        }

        .center .centerFooter .query-box {
            margin-bottom: 10px;
            position: relative;
            z-index: 3;
        }

        .center .centerFooter .query-box .result-top {
            width: 100%;
            height: 43px;
            background-color: #ffffff;
            border: 1px solid/*#a2bbda*/
            black;
            border-bottom: none;
        }

        .center .centerFooter .query-box .result-top .col1 {
            background: url("../images/yundan/spider_search_v4.png") 70px -900px no-repeat;
            width: 90px;
            text-align: center;
            color: #323232;
            cursor: pointer;
            padding-left: 12px;
            font-size: 16px;
        }

        .center .centerFooter .query-box .result-top span,
        .result-top a {
            display: inline-block;
            height: 43px;
            line-height: 43px;
            vertical-align: middle;
            font-size: 14px;
        }

        .center .centerFooter .query-box .result-top .col2 {
            width: 303px;
            text-align: left;
            font-size: 16px;
            color: #5a5a5a;
            padding-left: 50px;
        }

        .center .centerFooter .query-box .result-top span,
        .result-top a {
            display: inline-block;
            height: 43px;
            line-height: 43px;
            vertical-align: middle;
            font-size: 14px;
        }

        .center .centerFooter .query-box .result-info {
            width: 600px;
            float: left;
        }

        table {
            border-collapse: collapse;
            border-spacing: 0;
        }

        table {
            margin: 0;
            padding: 0;
        }

        tbody {
            display: table-row-group;
            vertical-align: middle;
            border-color: inherit;
        }

        tr {
            display: table-row;
            vertical-align: inherit;
            border-color: inherit;
        }

        .center .centerFooter .query-box .result-info .last td,
        .result-info .last td a {
            color: #ff7800;
            border-bottom: none;
        }

        .center .centerFooter .query-box .result-info .row1 {
            width: 105px;
            text-align: center;
            padding-left: 14px;
            padding-right: 0;
        }

        .center .centerFooter .query-box .result-info td {
            padding: 7px;
            color: #828282;
        }

        td {
            display: table-cell;
            vertical-align: inherit;
        }

        .day {
            display: block;
        }

        .time {
            font-size: 13px;
        }

        .result-info .last td,
        .result-info .last td a {
            color: #ff7800;
            border-bottom: none;
        }

        .result-info .status-check {
            background: url("../images/yundan/spider_search_v4.png") 10px -717px no-repeat;
        }

        .result-info .status {
            width: 30px;
            background: url("../images/yundan/spider_search_v4.png") 13px -764px no-repeat;
        }

        .result-info td {
            padding: 7px;
            color: #828282;
        }

        .status .col2 {
            /* position: relative; */
            z-index: -1;
        }

        .status .line1 {
            position: absolute;
            left: 6.4px;
            width: 0.57em;
            height: 5em;
            border-right: 1px solid #d2d2d2;
            top: -5px;
            z-index: -1;
        }
    </style>

</head>
<body>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="../img/woyaoxiadan/banner1.jpg" >
        </div>
        <div class="item">
            <img src="../img/woyaoxiadan/banner2.jpg" >
        </div>
        <div class="item">
            <img src="../img/woyaoxiadan/banner3.jpg" >
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<!--aboupg-->
<div class="center">
    <div class="centerTop">
        <img src="../images/yundan/long.jpg" width="150px" height="55px" />
        <input type="text" name="" placeholder="运单编号" id="inp"/>
        <div class="pic" id="pic"></div>
    </div>
    <div class="centerFooter" id="centerFooter">
        <div class="footerTop">
            <p class="footX">
                <a href="#" id="footA">×</a>
            </p>
            <span class="single-name">XX速递</span>
            <a class="fooP"></a>
            <a href="#" class="fooA"><span>官网</span></a>
            <span class="fooSpan">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;95554</span>
        </div>

        <div class="query-box">
            <div class="result-top">
                <span class="col1">时间</span>
                <span class="col2">地点和跟踪进度</span>
            </div>
            <table class="result-info" cellspacing="0">
                <tbody>
                <tr class="last">
                    <td class="row1"><span class="day">2019.06.27</span><span class="time">09:52</span>&nbsp;<span class="week">星期四</span></td>
                    <td class="status status-check">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="contex" t="">客户 签收人: 宁建鹏 已签收 感谢使用圆通速递，期待再次为您服务</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.27</span><span class="time">09:51</span>&nbsp;&nbsp;<span class="week">星期四</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【云南省文山自治州广南县公司】 派件人: 庞锦植 派件中 派件员电话15288695037</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.26</span><span class="time">20:34</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【云南省文山自治州广南县公司】 失败签收录入 王帮普</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.26</span><span class="time">14:17</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【云南省文山自治州广南县公司】 派件人: 王帮普 派件中 派件员电话19995868655</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.26</span><span class="time">14:02</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【云南省文山自治州广南县公司】 失败签收录入 庞锦植</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.26</span><span class="time">11:40</span>&nbsp;&nbsp;<span class="week">星期三</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【云南省文山自治州广南县公司】 派件人: 庞锦植 派件中 派件员电话15288695037</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.25</span><span class="time">18:58</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【云南省文山自治州广南县公司】 失败签收录入 庞锦植</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.25</span><span class="time">14:11</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【云南省文山自治州广南县公司】 派件人: 庞锦植 派件中 派件员电话15288695037</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.25</span><span class="time">14:09</span>&nbsp;&nbsp;<span class="week">星期二</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【云南省文山自治州广南县公司】 已收入</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.24</span><span class="time">13:19</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【昆明转运中心】 已发出 下一站 【云南省文山自治州广南县公司】</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.24</span><span class="time">13:16</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【昆明转运中心】 已收入</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.24</span><span class="time">13:10</span>&nbsp;&nbsp;<span class="week">星期一</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【昆明转运中心】 已收入</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.23</span><span class="time">03:27</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【金华转运中心】 已发出 下一站 【昆明转运中心】</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.23</span><span class="time">03:23</span>&nbsp;&nbsp;<span class="week">星期天</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【金华转运中心】 已收入</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.22</span><span class="time">23:11</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【临海转运中心】 已发出 下一站 【金华转运中心】</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.22</span><span class="time">23:02</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【临海转运中心】 已收入</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.22</span><span class="time">20:19</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【浙江省台州市路桥区】 已发出 下一站 【临海转运中心】</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.22</span><span class="time">20:17</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【浙江省台州市路桥区公司】 已打包</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.22</span><span class="time">20:11</span></td>
                    <td class="status">&nbsp;
                        <div class="col2"><span class="step"><span class="line1"></span><span class="line2"></span></span>
                        </div>
                    </td>
                    <td class="context">【浙江省台州市路桥区公司】 已收件</td>
                </tr>
                <tr>
                    <td class="row1"><span class="day">2019.06.22</span><span class="time">11:00</span>&nbsp;&nbsp;<span class="week">星期六</span></td>
                    <td class="status status-first">&nbsp;</td>
                    <td class="context">【浙江省台州市路桥区公司】 取件人: 陈荣荣 已收件</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<footer>
    <div class="container">
        <ul class="foot-nav clearfix">
            <li>
                <a href="../index/main.jsp">网站首页</a>
            </li>
            <li>
                <a href="#">关于我们</a>
            </li>
            <li>
                <a href="../woyaoxiadan/xiadan.jsp">在线下单</a>
            </li>
            <li>
                <a href="../yewufanwei/service.jsp">业务范围</a>
            </li>
            <li>
                <a href="#">新闻资讯</a>
            </li>
            <li>
                <a href="contact.jsp">联系我们</a>
            </li>
        </ul>
        <p class="cpr">
            Copyright © 2019 惠普交付中心第十组
        </p>
    </div>
</footer>
<script src="../js3/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../js3/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../js3/main.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript">
    var pic=document.querySelector("#pic");
    var footA=document.querySelector("#footA");
    var conterFooter=document.querySelector("#centerFooter");

    pic.onclick=function fn1(){
        conterFooter.style.display="block";
    }

    footA.onclick=function fn2(){
        conterFooter.style.display="none";
    }
</script>
</body>
</html>
