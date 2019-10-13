<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../css/woyaoxiadan/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/woyaoxiadan/main.css" />
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
<div class="sec aboutpg container">
    <div class="pg-nav col-sm-3">
        <div class="tit-ab">
            <p>联系我们</p>
        </div>
        <ul>
            <li><a href="#">联系我们</a></li>
            <li><a href="contact.html#message">在线留言</a></li>
        </ul>
        <div class="tit-ol">
            <p>在线下单</p>
        </div>
        <ul>
            <li><a href="../woyaoxiadan/xiadan.jsp">立即下单</a></li>
        </ul>
    </div>
    <div class="col-sm-9 introduce">
        <section class="title">
            <h1>
                联系我们
                <span>CONTACT US</span>
            </h1>
        </section>
        <div class="contact con-pad">
            <div class="address">
                <p>公司地址：天津市大学软件学院</p>
                <p>联系电话：0512-87818757</p>
                <p>联系邮箱：Cindy@kindjob.cn</p>
            </div>
            <div class="map">
                <iframe src="map.jsp"></iframe>
                <span>地图加载中...</span>
            </div>
            <div id="message" class="row">
                <p>在线留言</p>
                <form>
                    <div class="col-sm-6">
                        <p>姓名：</p>
                        <input type="text" placeholder="姓名" />
                    </div>
                    <div class="col-sm-6">
                        <p>联系电话：</p>
                        <input type="tel" placeholder="电话号码" />
                    </div>
                    <div class="col-xs-12">
                        <p>发送的消息：</p>
                        <textarea placeholder="消息"></textarea>
                        <input type="button" value="立即发送" />
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<footer>
    <div class="container">
        <ul class="foot-nav clearfix">
            <li><a href="../index/main.jsp">网站首页</a></li>
            <li><a href="#">关于我们</a></li>
            <li><a href="../woyaoxiadan/xiadan.jsp">在线下单</a></li>
            <li><a href="../yewufanwei/service.jsp">业务范围</a></li>
            <li><a href="#">新闻资讯</a></li>
            <li><a href="contact.jsp">联系我们</a></li>
        </ul>
        <p class="cpr">
            Copyright © 2019 惠普交付中心第十组
        </p>
    </div>
</footer>
<div class="fl">
    <ul>
        <li><a href="tel:15995656015">电话咨询</a></li>
        <li><a href="../index/main.jsp">网站首页</a></li>
        <li><a href="#">在线留言</a></li>
    </ul>
</div>
<script src="../js3/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../js3/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../js3/main.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
