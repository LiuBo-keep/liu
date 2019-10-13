<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <p>在线下单</p>
        </div>
        <ul>
            <li><a href="xiadan.jsp">在线下单</a></li>
        </ul>
        <div class="tit-ol">
            <p>在线下单</p>
        </div>
        <ul>
            <li><a href="xiadan.jsp">立即下单</a></li>
        </ul>
        <div class="tit-co">
            <p>联系我们</p>
        </div>
        <ul>
            <li><a href="#">在线留言</a></li>
        </ul>
    </div>
    <div class="col-sm-9 introduce">
        <section class="title">
            <h1>
                在线下单
                <span>ORDER ONLINE</span>
            </h1>
        </section>
        <form method="post" action="/xiadan">
            <div class="onlinepg con-pad">
                <div>
                    <p>发货人信息</p>
                    <ul class="row">
                        <li class="col-sm-6 col-xs-12">
                            <p><i>*</i>发货人：</p>
                            <input type="text" name="jname"/>
                        </li>
                        <li class="col-sm-6 col-xs-12">
                            <p><i>*</i>手机</p>
                            <input type="text" name="jphonea"/>
                        </li>
                        <li class="col-sm-6 col-xs-12">
                            <p>固定电话</p>
                            <input type="text" name="jphoneb"/>
                        </li>
                        <li class="col-sm-6 col-xs-12">
                            <p><i>*</i>发货地址</p>
                            <input type="text" name="jregion"/>
                        </li>
                    </ul>
                </div>

                <div>
                    <p>收货人信息</p>
                    <ul class="row">
                        <li class="col-sm-6 col-xs-12">
                            <p><i>*</i>收货人：</p>
                            <input type="text" name="sname"/>
                        </li>
                        <li class="col-sm-6 col-xs-12">
                            <p><i>*</i>手机</p>
                            <input type="text" name="sphonea"/>
                        </li>
                        <li class="col-sm-6 col-xs-12">
                            <p>固定电话</p>
                            <input type="text" name="sphoneb"/>
                        </li>
                        <li class="col-sm-6 col-xs-12">
                            <p><i>*</i>发货地址</p>
                            <input type="text" name="sregion"/>
                        </li>
                    </ul>
                </div>
                <div>
                    <p>货物信息</p>
                    <ul class="row">
                        <li class="col-sm-6 col-xs-12">
                            <p><i>*</i>货物名称：</p>
                            <input type="text" name="hname"/>
                        </li>
                        <li class="col-sm-6 col-xs-12">
                            <p>报价申明（>100元）：</p>
                            <input type="text" name="hmoeny"/>
                        </li>
                        <li class="col-sm-6 col-xs-12">
                            <p>货物重量：</p>
                            <input type="text" name="hweight"/>
                        </li>
                        <li class="col-sm-6 col-xs-12">
                            <p>货物体积：</p>
                            <input type="text" name="bulk"/>
                        </li>
                        <li class="sm">
                            <p>注：我们的工作人员会在接货时重新称重，此估算仅供参考。</p>
                        </li>
                    </ul>
                </div>
                <div>
                    <p>备注信息</p>
                    <textarea name="remarks"></textarea>
                </div>
                <p class="mes">注：我们的工作人员在收到发货请求会主动联系，请注意接听电话。</p>
                <input type="hidden"  value="${sessionScope.ss}" id="xx"/>
                <input type="hidden" name="mothed" value="xiadan">
                <input type="submit" value="立即发送" onclick="xia()"/>
            </div>
        </form>
    </div>
</div>
</div>

<footer>
    <div class="container">
        <ul class="foot-nav clearfix">
            <li><a href="../index/main.jsp">网站首页</a></li>
            <li><a href="#">关于我们</a></li>
            <li><a href="xiadan.jsp">在线下单</a></li>
            <li><a href="/yewufanwei/service.jsp">业务范围</a></li>
            <li><a href="#">新闻资讯</a></li>
            <li><a href="/lianxiwomen/contact.jsp">联系我们</a></li>
        </ul>
        <p class="cpr">
            Copyright © 2019 惠普交付中心第十组
        </p>
    </div>
</footer>
<div class="fl">
    <ul>
        <li><a href="#">电话咨询</a></li>
        <li><a href="../index/main.jsp">网站首页</a></li>
        <li><a href="#">在线留言</a></li>
    </ul>
</div>

<script src="../js3/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../js3/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../js3/main.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript">
    function xia() {
        var text=document.getElementById("xx").value;
        if (text!=null&&text!=""){
            alert("已经下单成功");
        } else {
            event.preventDefault();
            alert("请去登录");
        }
    }
</script>
</body>
</html>
