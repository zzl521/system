<%--
  Created by IntelliJ IDEA.
  User: Zzl
  Date: 2019/11/19
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>

<!DOCTYPE html>
<html lang="en">
<head>

    <title>Home</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!--// Meta tag Keywords -->
    <!-- css files -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- //css files -->
    <!-- online-fonts -->
    <link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&subset=latin-ext"
          rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Covered+By+Your+Grace" rel="stylesheet">
    <!-- //online-fonts -->

</head>
<body>
<script type="text/javascript">
    function LoginCart() {
        if(${sessionScope.user==null})
        {
            alert("请先登录您的账号！");
        }
        else
        {
            location.href="${pageContext.request.contextPath}/ShopCart/Cart.jsp";
        }
    }
</script>
<script id="zhichiload" src="http://www.sobot.com/chat/pc/pc.min.js?sysNum=0aa42eabf14848128bd3d6328103099e"></script>
<style type="text/css">
    font {
        margin-left: 12%;
    }
</style>
<div class="main-w3layouts" id="home">
    <!--top-bar-->

    <div class="top-search-bar">
        <font face="微软雅黑" size="6" color="white">智慧书城</font>
        <div class="header-top-nav">
            <ul>

                <li><a href="#" data-toggle="modal" data-target="#myModal3"><i class="fa fa-user"
                                                                                       aria-hidden="true">

                </i>
                       <span id="use" >登陆</span>

                </a></li>


                <li><a href="#" data-toggle="modal" data-target="#myModal4"><i class="fa fa-lock"
                                                                               aria-hidden="true"></i>注册</a></li>

                <li><a id="cart" href="#"  onclick="LoginCart()" data-target="modal"><i class="fa fa-shopping-cart"
                                                        aria-hidden="true"></i>我的购物车</a></li>

            </ul>
        </div>
    </div>
    <!-- Modal1 -->
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-info">
                <div class="modal-header">
                    <button type="button" class="close w3l" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4>Subscribe Now</h4>
                    <!--newsletter-->
                    <div class="newsletter">
                        <form action="#" method="post">
                            <input type="email" name="email" size="30" required=""
                                   placeholder="Please fill your email"/>
                            <input type="submit" value="Subscribe"/>
                        </form>
                    </div>
                    <!--//newsletter-->
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>

    <!-- //Modal1 -->

    <!-- Modal3 -->
    <div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <!-- Modal content-->
            <div class="modal-content news-w3l">
                <div class="modal-header">
                    <button type="button" class="close w3l" data-dismiss="modal">&times;</button>
                    <h4>登陆你的账号</h4>
                    <!--newsletter-->
                    <div class="login-main wthree">
                        <form action="Pass/getUser" method="post">
                            <input type="text" placeholder="用户名:" required="" name="name">
                            <input type="Password" placeholder="密码:" name="password">
                            <input type="submit" value="登陆">
                        </form>
                    </div>
                    <!--//newsletter-->
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <!-- //Modal3 -->

    <!-- Modal4 -->
    <div class="modal fade" id="myModal4" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <!-- Modal content-->
            <div class="modal-content news-w3l">
                <div class="modal-header">
                    <button type="button" class="close w3l" data-dismiss="modal">&times;</button>
                    <h4>用户注册</h4>
                    <div class="login-main wthree">
                        <form action="Pass/regUser" method="post">
                            <input type="text" placeholder="用户名" name="name">
                            <input type="password" placeholder="密码" name="password">
                            <input type="password" placeholder="确认密码" name="password">
                            <input type="text" placeholder="电话号码" name="phone">
                            <input type="email" placeholder="电子邮件" required="" name="email">
                            <input type="submit" value="确认注册">
                        </form>
                    </div>
                    <!--//newsletter-->
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <!-- //Modal4-->
    <div class="search">
        <form action="#" method="post">
            <input type="search" placeholder="Search Here..." required=""/>
            <input type="submit" value=" ">
        </form>
    </div>
    <div class="clearfix"></div>
    <!--//top-bar-->
    <!-- navigation -->
    <div class="top-nav">
        <nav class="navbar navbar-default">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div>
            <!-- navbar-header -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.html" class="hvr-underline-from-center active">主页</a></li>
                    <li><a href="#team" class="hvr-underline-from-center scroll">生活</a></li>
                    <li><a href="#services" class="hvr-underline-from-center scroll">文学</a></li>
                    <li><a href="#services" class="hvr-underline-from-center scroll">科技</a></li>
                    <li><a href="#contact" class="hvr-underline-from-center scroll">经营</a></li>
                    <li><a href="#contact" class="hvr-underline-from-center scroll">励志</a></li>
                    <li><a href="#contact" class="hvr-underline-from-center scroll">社科</a></li>
                    <li><a href="#contact" class="hvr-underline-from-center scroll">学术</a></li>
                    <li><a href="#services" class="hvr-underline-from-center scroll">考试</a></li>
                    <li><a href="#services" class="hvr-underline-from-center scroll">生活百科</a></li>
                    <li><a href="${pageContext.request.contextPath}/ShopCart/AllshoPing.jsp" class="hvr-underline-from-center"><span style="color: navajowhite;">全部商品目录</span></a>
                    </li>

                </ul>
            </div>
            <div class="clearfix"></div>
        </nav>
    </div>
    <!-- //navigation -->

    <div class="header">
        <!-- Slider -->
        <div class="slider">
            <div class="callbacks_container">
                <ul class="rslides" id="slider">
                    <li>

                        <div class="slider-info">
                            <p>欢迎进入智慧书城</p>
                            <h3><a href="index.html"><span>海量</span>精品图书</a></h3>
                            <h6>天下好书尽收眼底</h6>
                        </div>
                    </li>
                    <li>

                        <div class="slider-info">
                            <p>在线预览，即时资讯</p>
                            <h3><a href="index.html"><span>简约</span> 便捷随时看</a></h3>
                            <h6>倾心为您服务</h6>
                        </div>
                    </li>
                    <li>

                        <div class="slider-info">
                            <p>感谢您选择智慧书城</p>
                            <h3><a href="index.html"><span>信任</span> 是我们前进的动力</a></h3>
                            <h6>我们会努力做的更好</h6>
                        </div>
                    </li>


                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //Slider -->
    </div>
</div>
<!--main-content-->
<!-- services -->
<div class="services" id="services">
    <h3>热门种类书籍</h3>
    <div class="col-md-2 services-gd text-center" data-wow-delay=".5s">
        <div class="hi-icon-wrap hi-icon-effect-9 hi-icon-effect-9a">
            <a href="#" class="hi-icon"><img src="${pageContext.request.contextPath}/images/book.png" alt=" "/></a>
        </div>

        <h4>外语</h4>
        <p>English</p>
    </div>
    <div class="col-md-2 services-gd text-center" data-wow-delay=".5s">
        <div class="hi-icon-wrap hi-icon-effect-9 hi-icon-effect-9a">
            <a href="#" class="hi-icon"><img src="${pageContext.request.contextPath}/images/edu.png" alt=" "/></a>
        </div>
        <h4>少儿</h4>
        <p>Childs</p>
    </div>
    <div class="col-md-2 services-gd text-center" data-wow-delay=".5s">
        <div class="hi-icon-wrap hi-icon-effect-9 hi-icon-effect-9a">
            <a href="#" class="hi-icon"><img src="${pageContext.request.contextPath}/images/uni.png" alt=" "/></a>
        </div>
        <h4>计算机</h4>
        <p>Computer</p>
    </div>
    <div class="col-md-2 services-gd text-center" data-wow-delay=".5s">
        <div class="hi-icon-wrap hi-icon-effect-9 hi-icon-effect-9a">
            <a href="#" class="hi-icon"><img src="${pageContext.request.contextPath}/images/hourglass.png" alt=" "/></a>
        </div>
        <h4>艺术</h4>
        <p>Arts</p>
    </div>
    <div class="col-md-2 services-gd text-center" data-wow-delay=".5s">
        <div class="hi-icon-wrap hi-icon-effect-9 hi-icon-effect-9a">
            <a href="#" class="hi-icon"><img src="${pageContext.request.contextPath}/images/book2.png" alt=" "/></a>
        </div>
        <h4>原版</h4>
        <p>Orgin</p>
    </div>
    <div class="clearfix"></div>
</div>
<!-- //services -->


<!-- footer -->
<div class="footer" id="footer">
    <div class="container">
        <div class="col-md-4 agileinfo_footer_grid">
            <h4>关于本站</h4>
            <p>项目创建于2019/11/18<span>作用于代码功能演示</span></p>
        </div>
        <div class="col-md-4 agileinfo_footer_grid mid-w3l nav2">
            <h4>标签</h4>
            <ul>
                <li><a href="http://www.avceit.cn/" class="scroll" target="_blank">电院官网</a></li>
                <li><a href="http://ahdy.top/" target="_blank">个人主页</a></li>
                <li><a href="http://z.ahdy.top/" target="_blank">个人博客</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/login.jsp" target="_blank">后台管理</a></li>
                <li><a href="BaiduMap.html" target="_blank">附近线下书店</a></li>
                <li><a href="${pageContext.request.contextPath}/MessAge/MessageLogin.jsp" target="_blank">加盟商注册</a></li>



            </ul>
        </div>
        <div class="col-md-4 agileinfo_footer_grid">
            <h4>联系方式</h4>
            <ul>
                <li><span class="glyphicon glyphicon-home" aria-hidden="true"></span>安徽电子信息职业技术学院</li>
                <li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a
                        href="mailto:info@example.com">2503963481@qq.com</a></li>
                <li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>16655072520</li>
            </ul>
        </div>

        <div class="clearfix"></div>
        <div class="w3agile_footer_copy">
            <p>Copyright &copy; 2019.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/"
                                                                                        target="_blank" title="软件学院">软件学院</a>
                - Collect from <a href="http://www.cssmoban.com/" title="软件183">软件183</a></p>
        </div>
    </div>
</div>
<!-- //footer -->

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>


<script src="${pageContext.request.contextPath}/js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen">
<!--light-box-files -->
<script>
    $(function () {
        $('.gallery-grid a').Chocolat();
    });
</script>
<!-- required-js-files-->

<link href="css/owl.carousel.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/owl.carousel.js"></script>
<script>
    $(document).ready(function () {
        $("#owl-demo").owlCarousel({
            items: 1,
            lazyLoad: true,
            autoPlay: true,
            navigation: false,
            navigationText: false,
            pagination: true,
        });
    });
</script>
<!--//required-js-files-->

<script src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>
<script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            pager: false,
            nav: true,
            speed: 1000,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });
    });
</script>


<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->

<!-- bottom-top -->
<!-- smooth scrolling -->
<script type="text/javascript">
    $(document).ready(function () {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */
        $().UItoTop({easingType: 'easeOutQuart'});
    });
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!--// bottom-top -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-3.1.1.min.js"></script>
<script type="text/javascript" >
    <%--function userMessage() {--%>
    <%--    location.href="${pageContext.request.contextPath}/index.jsp";--%>
    <%--}--%>
   if(${sessionScope.user!=null})
   {
       document.getElementById("use").innerHTML="WelCome:"+${sessionScope.user.name};
        // document.getElementById("use").onclick=userMessage();

   }

</script>

</body>s
</html>
