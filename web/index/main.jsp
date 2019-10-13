<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/guanggao/css/mian.css" />
    <link rel="stylesheet" href="../fonts/iconfont.css" />
    <script type="text/javascript" src="../js/main.js" ></script>

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

        function fan() {
                    var xmlHttp = createXMLHttpRequest();
                    xmlHttp.open("GET","/login?mothed=setSession",true);
                    xmlHttp.send();
                    xmlHttp.onreadystatechange = function () {
                        if (xmlHttp.readyState==4&xmlHttp.status==200){
                           location.href="main.jsp";
                        }
                    }
        }
    </script>


</head>
<body>
<!--顶部-->
<div id="top">
    <img src="../img/guangao/yun.jpg" width="100%" height="150px" />
    <div class="topPic">
    </div>
    <span>物流信息管理平台</span>
    <!--导航条-->
    <div class="topNav">
        <ul>
            <li>
                <a href="#">首页</a>
            </li>
            <li>
                <a href="/yewufanwei/service.jsp">业务范围</a>
            </li>
            <li>
                <a href="../woyaoxiadan/xiadan.jsp">我要寄件</a>
            </li>
            <li>
                <a href="../YongFeiSheiXiaoChaoXun/yunfei.jsp">运费时效查询</a>
            </li>
            <li>
                <a href="#">收寄范围查询</a>
            </li>
            <li>
                <a href="#">服务网点查询</a>
            </li>
            <li>
                <a href="../dingdanzhuizong/dingdanzhuizong.jsp">运单追踪</a>
            </li>
            <li>
                <a href="#">最新公告</a>
            </li>
            <li>
                <a href="../lianxiwomen/contact.jsp">联系我们</a>
            </li>
        </ul>
    </div>
</div>
<!--内容部分-->
<!--轮播图-->
<div id="body">
    <div class="bodyLeft" id="bodyLeft">
        <ul>
            <li><img src="../img/guangao/a1.jpg" alt="" /></li>
            <li><img src="../img/guangao/a2.jpg" alt="" /></li>
            <li><img src="../img/guangao/a3.jpg" alt="" /></li>
            <li><img src="../img/guangao/a4.jpg" alt="" /></li>
            <li><img src="../img/guangao/a5.jpg" alt="" /></li>
        </ul>
        <div class="sp">
            <span class="current">1</span>
            <span>2</span>
            <span>3</span>
            <span>4</span>
            <span>5</span>
        </div>
    </div>
    <!--返回注册页面-->
    <div class="bodyRight">
        <div class="bodyR">
            <i class="iconfont">&#xe60d;</i>&nbsp;
                <c:choose>
                    <c:when test="${empty sessionScope.ss}"><a href="login.jsp" style="font-size: 13px">快速登录或注册</a></c:when>
                    <c:otherwise><p style="width: 124px;display: contents;font-size: 13px;">${sessionScope.ss}</p></c:otherwise>
                </c:choose>
            <span id="sp" style="cursor:pointer;font-size: 13px" onclick="fan()">${sessionScope.xx}</span>
        </div>
    </div>
</div>
<!--行业显示-->
<div id="message">
    <img src="../img/guangao/case-shareBg.jpg" id="messageImg" class="messageImg" />
    <div class="content">
        <div class="contentTop">
            <h1 class="h">成功案例</h1><br />
            <span>每一时刻，都有无数的客户托付与期待被成功交付，我们与前瞻者同行，与成就者共成就</span>
        </div>
        <div class="contentBody">
            <div class="contentBody1">
                <div class="contentBody2">
                    <div class="contentQuan" id="contentQuan">
                        <a class="contentA" href="#">
                            <div class="pic">
                                <img src="../img/guangao/red-t-img-1.png" class="red" />
                                <!--<div class="whiteArr">-->
                                <img src="../img/guangao/white-t-img-1.png" class="white" />
                                <!--</div>-->
                            </div>
                            <p>电子行业</p>
                        </a>
                    </div>
                    <div class="contentQuan" id="contentQuan">
                        <a class="contentA" href="#">
                            <div class="pic">
                                <img src="../img/guangao/red-t-img-5.png" class="red" />
                                <div class="whiteArr">
                                    <img src="../img/guangao/white-t-img-5.png" class="white" />
                                </div>
                            </div>
                            <p>医疗行业</p>
                        </a>
                    </div>
                    <div class="contentQuan" id="contentQuan">
                        <a class="contentA" href="#">
                            <div class="pic">
                                <img src="../img/guangao/red-t-img-3.png" class="red" />
                                <div class="whiteArr">
                                    <img src="../img/guangao/white-t-img-3.png" class="white" />
                                </div>
                            </div>
                            <p>生鲜行业</p>
                        </a>
                    </div>
                    <div class="contentQuan" id="contentQuan">
                        <a class="contentA" href="#">
                            <div class="pic">
                                <img src="../img/guangao/red-t-img-4.png" class="red" />
                                <div class="whiteArr">
                                    <img src="../img/guangao/white-t-img-4.png" class="white" />
                                </div>
                            </div>
                            <p>快消行业</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--新闻资讯-->
<div id="content" class="news">
    <div class="newMessage">
        <div class="newMessageTop">
            <h2 class="h2">新闻资讯</h2>
            <span class="span">新闻资讯抢先知晓</span>
        </div>
        <div class="newMessageCenter">
            <div class="newCenter">
                <a href="#">
                    <img src="../img/guangao/-309x204.jpg" />
                    <div class="newCenterTop" id="newTop1">
                        <span>大数据"世界杯"即将上演——2018年赢在东莞全球...</span>
                        <p>
                            7月12日，由东莞市人民政府主办的"2018年赢在东莞全球.."
                            <b>[详情]</b>
                        </p>
                    </div>
                </a>
            </div>
        </div>
        <div class="newMessageCenter">
            <div class="newCenter">
                <a href="#">
                    <img src="../img/guangao/106211.png" />
                    <div class="newCenterTop" id="newTop2">
                        <span>顺丰海外仓首次开放参观，揭秘跨境物流核心实力</span>
                        <p>
                            近日，应顺丰速运的激情，20余名来自全国各地的跨境电商企业代...
                            <b>[详情]</b>
                        </p>
                    </div>
                </a>
            </div>
        </div>
        <div class="newMessageCenter">
            <div class="newCenter">
                <a href="#">
                    <img src="../img/guangao/David-309x204.jpg" />
                    <div class="newCenterTop" id="newTop3">
                        <span>连接世界的通道，顺丰强势布局海外仓</span>
                        <p>
                            顺丰将加入对海外仓的投入，不断为跨境物流提速，助力中国跨境电...
                            <b>[详情]</b>
                        </p>
                    </div>
                </a>
            </div>
        </div>
        <div class="newMessageCenter">
            <div class="newCenter">
                <a href="#">
                    <img src="../img/guangao/-309x204.jpg" />
                    <div class="newCenterTop">
                        <span></span>
                        <p>

                            <b>[详情]</b>
                        </p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>
<!--促销活动-->
<div id="shopMessage" class="shopMassage">
    <div class="shop">
        <div class="shopMassageTop">
            <h1>
                促销活动
            </h1>
            <span>第一时间分享，最新促销活动</span>
        </div>
        <a href="#" class="shopA">查看全部></a>
    </div>
</div>
<!--底部-->
<div id="bottom" class="bottom">
    <div class="footer">
        <div class="footerContent">
            <img class="toTop" src="../img/guangao/Top.jpg" alt="" />
            <!--公司项目-->
            <div class="left cn">
                <table>
                    <tbody>
                    <tr>
                        <td>
                            <p class="title">
                                <a href="#">物流</a>
                            </p>
                            <ul class="list">
                                <li>
                                    <a href="#">快递服务</a>
                                </li>
                                <li>
                                    <a href="#">冷运服务</a>
                                </li>
                                <li>
                                    <a href="#">仓储服务</a>
                                </li>
                            </ul>
                        </td>
                        <td>
                            <p class="title">
                                <a href="#">金融</a>
                            </p>
                            <ul class="list">
                                <li>
                                    <a href="#">财富管理</a>
                                </li>
                                <li>
                                    <a href="#">资产管理</a>
                                </li>
                                <li>
                                    <a href="#">综合支付</a>
                                </li>
                            </ul>
                        </td>
                        <td>
                            <p class="title">
                                <a href="#">商业</a>
                            </p>
                            <ul class="list">
                                <li>
                                    <a href="#">优选网上商城</a>
                                </li>
                                <li>
                                    <a href="#">优选门店</a>
                                </li>
                                <li>
                                    <a href="#">&nbsp;</a>
                                </li>
                            </ul>
                        </td>
                        <td>
                            <p class="title" id="title4">
                                <a href="#">成功案例</a>
                            </p>
                            <ul class="list">
                                <li>
                                    <a href="#">电子行业</a>
                                </li>
                                <li>
                                    <a href="#">医疗行业</a>
                                </li>
                                <li>
                                    <a href="#">生鲜行业</a>
                                </li>
                                <li>
                                    <a href="#">快销行业</a>
                                </li>
                            </ul>
                        </td>
                        <td>
                            <p class="title" id="title5">
                                <a href="#">服务支持</a>
                            </p>
                            <ul class="list">
                                <li>
                                    <a href="#">我要寄件</a>
                                </li>
                                <li>
                                    <a href="../dingdanzhuizong/dingdanzhuizong.jsp">运单追踪</a>
                                </li>
                                <li>
                                    <a href="#">运费时效查询</a>
                                </li>
                                <li>
                                    <a href="#">收费范围查询</a>
                                </li>
                                <li>
                                    <a href="#">服务网点查询</a>
                                </li>
                                <li>
                                    <a href="#">收集标准查询</a>
                                </li>

                            </ul>
                        </td>
                        <td>
                            <p class="title" id="title6">
                                <a href="#">控股投资者关系</a>
                            </p>
                            <ul class="list">
                                <li>
                                    <a href="#">公司管理</a>
                                </li>
                                <li>
                                    <a href="#">公司公告</a>
                                </li>
                                <li>
                                    <a href="#">定期报告</a>
                                </li>
                                <li>
                                    <a href="#">投资者联络</a>
                                </li>
                                <li>
                                    <a href="#">投资者关系日历</a>
                                </li>
                            </ul>
                        </td>
                        <td>
                            <p class="title" id="title7">
                                <a href="#">关于我们</a>
                            </p>
                            <ul class="list">
                                <li>
                                    <a href="#">新闻资讯</a>
                                </li>
                                <li>
                                    <a href="#">服务公告</a>
                                </li>
                                <li>
                                    <a href="#">促销活动</a>
                                </li>
                                <li>
                                    <a href="#">会员权益</a>
                                </li>
                                <li>
                                    <a href="#">人才招聘</a>
                                </li>
                                <li>
                                    <a href="#">集团采购</a>
                                </li>
                            </ul>
                        </td>
                        <td>
                            <p class="title" id="title8">
                                <a href="#">联系我们</a>
                            </p>
                            <ul class="list">
                                <li>
                                    <a href="#">客服专线95338</a>
                                </li>
                                <li>
                                    <a href="#">客户服务热线</a>
                                </li>
                                <li>
                                    <a href="#">合作咨询</a>
                                </li>
                                <li>
                                    <a href="#">在线客服</a>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!--图标案例-->
            <div class="right cn">
                <p class="rightTitle">
                    <a href="#">马上联系我们</a>
                </p>
                <div class="share">
                    <a href="#" class="xinlang"></a>
                    <a href="#" class="winxing">
                        <div class="pop">
                            <img src="../img/guangao/sf-code-img.jpg" alt="" width="160px" height="160px" />
                            <span class="caret"></span>
                        </div>
                    </a>
                    <a href="#" class="online"></a>
                    <a href="#" class="app">
                        <div class="pop">
                            <img src="../img/guangao/sf-app-QRcode.png" width="160px" height="160px"/>
                            <span class="caret"></span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
