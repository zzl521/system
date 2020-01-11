<%--
  Created by IntelliJ IDEA.
  User: Zzl
  Date: 2019/11/24
  Time: 0:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/main.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
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
<div class="site-nav-bg">
    <div class="site-nav w1200">
        <p class="sn-back-home">
            <i class="layui-icon layui-icon-home"></i>
            <a href="${pageContext.request.contextPath}/index.jsp">首页</a>
        </p>
        <div class="sn-quick-menu">
            <div class="login"><a href="${pageContext.request.contextPath}/index.jsp"><span id="login">请登录</span></a></div>
            <div class="sp-cart"><a href="#" onclick="LoginCart()">购物车</a></div>
        </div>
    </div>
</div>



<div class="header">
    <div class="headerLayout w1200">
        <div class="headerCon">
            <div class="mallSearch">
                <form action="" class="layui-form" novalidate>
                    <input type="text" name="title" required  lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">
                        <i class="layui-icon layui-icon-search"></i>
                    </button>
                    <input type="hidden" name="" value="">
                </form>
            </div>
        </div>
    </div>
</div>


<div class="content content-nav-base commodity-content">
    <div class="main-nav">
        <div class="inner-cont0">
            <div class="inner-cont1 w1200">
                <div class="inner-cont2">
                </div>
            </div>
        </div>
    </div>
    <div class="commod-cont-wrap">
        <div class="commod-cont w1200 layui-clear">
            <div class="left-nav">
                <div class="title">所有分类</div>
                <div class="list-box">
                    <dl>
                        <dt>计算机</dt>
                        <dd><a href="javascript:;">JAVA</a></dd>
                        <dd><a href="javascript:;">数据结构</a></dd>
                        <dd><a href="javascript:;">算法</a></dd>
                        <dd><a href="javascript:;">快速放弃到入坟</a></dd>
                    </dl>
                    <dl>
                        <dt>外语</dt>
                        <dd><a href="javascript:;">英语</a></dd>
                        <dd><a href="javascript:;">四六级</a></dd>
                        <dd><a href="javascript:;">雅思</a></dd>
                        <dd><a href="javascript:;">托福</a></dd>
                    </dl>
                    <dl>
                        <dt>少儿</dt>
                        <dd><a href="javascript:;">连环画</a></dd>
                        <dd><a href="javascript:;">三字经</a></dd>
                        <dd><a href="javascript:;">写字贴</a></dd>
                    </dl>
                    <dl>
                        <dt>艺术</dt>
                        <dd><a href="javascript:;">行为艺术</a></dd>
                        <dd><a href="javascript:;">人体艺术</a></dd>
                        <dd><a href="javascript:;">自然艺术</a></dd>
                    </dl>
                    <dl>
                        <dt>名著</dt>
                        <dd><a href="javascript:;">三国演义</a></dd>
                        <dd><a href="javascript:;">水浒传</a></dd>
                        <dd><a href="javascript:;">红楼梦</a></dd>
                    </dl>
                </div>
            </div>
            <div class="right-cont-wrap">
                <div class="right-cont">
                    <div class="sort layui-clear">
                        <a class="active" href="javascript:;" event = 'volume'>销量</a>
                        <a href="javascript:;" event = 'price'>价格</a>
                        <a href="javascript:;" event = 'newprod'>新品</a>
                        <a href="javascript:;" event = 'collection'>收藏</a>
                    </div>
                    <div class="prod-number">
                        <span>200个</span>
                    </div>
                    <div class="cont-list layui-clear" id="list-cont">
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[0].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[0].name}&numsp;&numsp;&numsp;&numsp;作者:${books[0].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[0].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[0].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[1].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[1].name}&numsp;&numsp;&numsp;&numsp;作者:${books[1].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[1].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[1].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[2].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[2].name}&numsp;&numsp;&numsp;&numsp;作者:${books[2].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[2].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[2].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[3].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[3].name}&numsp;&numsp;&numsp;&numsp;作者:${books[3].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[3].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[3].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[4].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[4].name}&numsp;&numsp;&numsp;&numsp;作者:${books[4].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[4].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[4].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[5].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[5].name}&numsp;&numsp;&numsp;&numsp;作者:${books[5].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[5].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[5].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[6].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[6].name}&numsp;&numsp;&numsp;&numsp;作者:${books[6].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[6].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[6].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[7].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[7].name}&numsp;&numsp;&numsp;&numsp;作者:${books[7].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[7].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[7].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[8].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[8].name}&numsp;&numsp;&numsp;&numsp;作者:${books[8].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[8].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[8].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[9].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[9].name}&numsp;&numsp;&numsp;&numsp;作者:${books[9].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[9].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[9].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[10].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[10].name}&numsp;&numsp;&numsp;&numsp;作者:${books[10].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[10].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[10].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[11].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[11].name}&numsp;&numsp;&numsp;&numsp;作者:${books[11].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[11].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[11].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[12].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[12].name}&numsp;&numsp;&numsp;&numsp;作者:${books[12].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[12].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[12].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[13].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[13].name}&numsp;&numsp;&numsp;&numsp;作者:${books[13].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[13].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[13].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="${pageContext.request.contextPath}/data/${books[14].picture}" width="100%" height="100%"></a>
                            </div>
                            <div class="text">
                                <p class="title">${books[14].name}&numsp;&numsp;&numsp;&numsp;作者:${books[14].writer}</p>
                                <p class="price">
                                    <span class="pri">价格:${books[14].price}</span>
                                    &numsp;&numsp;
                                    <span class="pri">出版社:${books[14].company}</span>
                                    <span class="nub">1266付款</span>
                                </p>

                            </div>
                        </div>
                    </div>
                    <!-- 模版引擎导入 -->
                    <!-- <script type="text/html" id="demo">
                      {{# layui.each(d.menu.milk.content,function(index,item){}}
                        <div class="item">
                          <div class="img">
                            <a href="javascript:;"><img src="{{item.img}}"></a>
                          </div>
                          <div class="text">
                            <p class="title"></p>
                            <p class="price">
                              <span class="pri">{{item.pri}}</span>
                              <span class="nub">{{item.nub}}</span>
                            </p>
                          </div>
                        </div>
                      {{# }); }}
                    </script> -->
                    <div id="demo0" style="text-align: center;"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

    layui.config({
        base: '../res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
    }).use(['mm','laypage','jquery'],function(){
        var laypage = layui.laypage,$ = layui.$,
            mm = layui.mm;
        laypage.render({
            elem: 'demo0'
            ,count: 100 //数据总数
        });


        // 模版引擎导入
        //  var html = demo.innerHTML;
        //  var listCont = document.getElementById('list-cont');
        //  // console.log(layui.router("#/about.html"))
        // mm.request({
        //     url: '../json/commodity.json',
        //     success : function(res){
        //       console.log(res)
        //       listCont.innerHTML = mm.renderHtml(html,res)
        //     },
        //     error: function(res){
        //       console.log(res);
        //     }
        //   })

        $('.sort a').on('click',function(){
            $(this).addClass('active').siblings().removeClass('active');
        })
        $('.list-box dt').on('click',function(){
            if($(this).attr('off')){
                $(this).removeClass('active').siblings('dd').show()
                $(this).attr('off','')
            }else{
                $(this).addClass('active').siblings('dd').hide()
                $(this).attr('off',true)
            }
        })

    });
</script>

<script type="text/javascript">
    if(${sessionScope.user!=null})
    {
        document.getElementById("login").innerHTML="欢迎您:"+${sessionScope.user.name};
    }
</script>
</body>
</html>