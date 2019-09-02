<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
    <head>
        <title>关于作者</title>
        <base href="<%=basePath%>">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- HTTP 1.1 -->
        <meta http-equiv="pragma" content="no-cache">
        <!-- HTTP 1.0 -->
        <meta http-equiv="cache-control" content="no-cache">
        <!-- Prevent caching at the proxy server -->
        <meta http-equiv="expires" content="0">
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />
        <!-- jQuery -->
        <script type="text/javascript" src="static/jquery/jquery-1.12.4.min.js"></script>
        <!-- bootstrap -->
        <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
        <%--<script type="text/javascript" src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>--%>
        <!-- bootstrap validator -->
        <link href="static/bootstrapvalidator/css/bootstrapValidator.min.css" rel="stylesheet">
        <script type="text/javascript" src="static/bootstrapvalidator/js/bootstrapValidator.min.js"></script>

        <link rel="stylesheet" href="static/font-awesome-4.7.0/css/font-awesome.css">

        <link rel="stylesheet" href="static/css/me.css">

        <!-- UEditor -->
        <script type="text/javascript" src="static/ueditor/ueditor.config.js"></script>
        <script type="text/javascript" src="static/ueditor/ueditor.all.js"></script>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.css" >
        <link href="static/css/app.css?v=1" rel="stylesheet">
    </head>

<body>

<nav class="ui inverted attached segment m-padded-tb-mini m-shadow-small" >
    <div class="ui container">
        <div class="ui inverted stackable menu">
            <div id="article_list_container" class="ui inverted secondary  menu">
                <h2 class="ui teal header item">Blog</h2>
                <div class="ui inverted secondary  menu">
                    <a id="article_about_btn" href="jsp/articleList.jsp?userAccout=stu&type=add" class="m-item item m-mobile-hide"  target="_blank"><i class="teal pencil icon"></i>首页</a>
                    <a id="article_add_btn" href="jsp/articleDetail.jsp?userAccout=stu&type=add" class="m-item item m-mobile-hide"  target="_blank"><i class="teal home icon"></i>发布新博客</a>
                    <div class="right m-item item m-mobile-hide">
                        <div class="ui icon inverted transparent input m-margin-tb-tiny">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>



    <div  class="m-container m-padded-tb-big animated fadeIn">
        <div class="ui container">
            <div class="ui stackable grid">
                <div class="eleven wide column">
                    <div class="ui segment">
                        <img src="https://unsplash.it/800/600?image=367" alt="" class="ui rounded image">
                    </div>
                </div>
                <div class="five wide column">
                    <div class="ui top attached segment">
                        <div class="ui header">关于作者</div>
                    </div>
                    <div class="ui attached segment">
                        <p class="m-text">刘鑫琳</p>
                        <p class="m-text">热爱美食、旅行、编程，喜欢折腾，这里随时欢迎你的到来...</p>
                    </div>
                    <div class="ui attached segment">
                        <div class="ui orange basic left pointing label">美食</div>
                        <div class="ui orange basic left pointing label">旅行</div>
                        <div class="ui orange basic left pointing label">编程</div>
                        <div class="ui orange basic left pointing label">运动</div>
                    </div>
                    <div class="ui attached segment">
                        <div class="ui teal basic left pointing label">北方美食</div>
                        <div class="ui teal basic left pointing label">南方美食</div>
                        <div class="ui teal basic left pointing label">特色小吃</div>
                        <div class="ui teal basic left pointing label">经典饮品</div>
                    </div>
                    <div class="ui bottom attached segment">
                        <a href="#" class="ui qq circular icon button" data-content="1164685411" data-position="bottom center"><i class="qq icon"></i></a>
                    </div>

                    <div class="ui flowing popup transition hidden">
                        <img src="../static/images/wechat.jpg" alt="" class="ui rounded image" style="width: 110px">
                    </div>
                </div>
            </div>
        </div>
    </div>

<br>
<br>


<footer class="ui inverted vertical segment m-padded-tb-massive">
    <div class="ui center aligned container">
        <div class="ui inverted divided stackable grid">
            <div class="four wide column">
                <h4 class="ui inverted header m-text-thin m-text-spaced " >网站推荐</h4>
                <div class="ui inverted link list">
                    <br>
                    <p class="item m-text-thind">爱彼迎</p>
                    <a href="https://www.airbnb.cn/" class="item m-text-thin">https://www.airbnb.cn/</a>
                    <p class="item m-text-thin">booking</p>
                    <a href="https://www.booking.com/" class="item m-text-thin">https://www.booking.com/</a>
                </div>
            </div>
            <div class="four wide column">
                <div class="ui inverted link list">
                    <div class="item">
                        <br>
                        <br>
                        <img src="static/images/wechat.jpg" class="ui rounded image" alt="" style="width: 130px">
                        <h5>wechat</h5>
                    </div>
                </div>
            </div>
            <div class="three wide column">
                <br>
                <br>
                <h4 class="ui inverted header m-text-thin m-text-spaced ">联系我</h4>
                <div class="ui inverted link list">
                    <br>
                    <a href="#" class="item m-text-thin">Email：lxl7868@163.com</a>
                    <a href="#" class="item m-text-thin">QQ：1164685411</a>
                </div>
            </div>
            <div class="five wide column">
                <br>
                <br>
                <h4 class="ui inverted header m-text-thin m-text-spaced ">Blog</h4>
                <br>
                <p class="m-text-thin m-text-spaced m-opacity-tiny">这是我的个人博客、会分享关于美食、旅行、编程相关的任何内容，希望可以给来到这儿的人有所帮助...</p>
            </div>
        </div>
        <div class="ui inverted section divider"></div>
        <p class="m-text-thin m-text-spaced m-opacity-tiny">Copyright © 2019 - 2020 LXL Designed by LXL</p>
    </div>

</footer>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>

<script>
    $('.wechat').popup({
        popup : $('.wechat-qr'),
        position: 'bottom center'
    });
    $('.qq').popup();
</script>


</body>
</html>
