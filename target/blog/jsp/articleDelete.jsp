<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>删除</title>
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
    <script type="text/javascript" src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link href="static/css/app.css?v=1" rel="stylesheet">
    <link rel="stylesheet" href="static/css/me.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.css">
</head>
<body>

<nav class="ui inverted attached segment m-padded-tb-mini m-shadow-small" >
    <div class="ui container">
        <div class="ui inverted stackable menu">
            <div id="article_list_container" class="ui inverted secondary  menu">
                <h2 class="ui teal header item">Blog</h2>
                <div class="ui inverted secondary  menu">
                    <a id="article_delete_btn" href="javascript:void(0);" class="m-item item m-mobile-hide"  target="_blank"><i class="teal trash icon"></i>删除文章</a>
                    <a id="article_add_btn" href="jsp/articleList.jsp?userAccout=stu&type=add" class="m-item item m-mobile-hide"  target="_blank"><i class="teal home icon"></i>首页</a>
                    <a id="article_about_btn" href="jsp/authorAbout.jsp?userAccout=stu&type=add"class="m-item item m-mobile-hide"  target="_blank"><i class="teal pencil icon"></i>关于作者</a>
                    <div class="right m-item item m-mobile-hide">
                        <div class="ui icon inverted transparent input m-margin-tb-tiny">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>


<%--<div class="container">--%>
    <%--<div id="article_list_container">--%>
        <%--<div class="btn-group" role="group">--%>
            <%--<a id="article_delete_btn" href="javascript:void(0);" class="btn btn-default" role="button">删除文章</a>--%>
            <%--<a id="article_add_btn" href="jsp/articleList.jsp?userAccout=stu&type=add" class="btn btn-default" role="button"><i class="teal home icon"></i>首页</a>--%>
            <%--<a id="article_about_btn" href="jsp/authorAbout.jsp?userAccout=stu&type=add"class="btn btn-default" role="button"><i class="teal pencil icon"></i>关于作者</a>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

    <div  class="m-container m-padded-tb-big">
        <div id="article_list_div"></div>
        <div class="modal fade" id="delete_confirm" tabindex="-1" role="dialog"
             aria-labelledby="delete_confirm_label">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                                aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                        <h4 class="modal-title" id="delete_confirm_label">操作提示</h4>
                    </div>

                    <div class="modal-body">
                        <label>确认要删除选中的数据吗？</label>
                    </div>

                    <div class="modal-footer">
                        <button type="button" id="article_delete_submit" class="btn btn-primary"
                                data-dismiss="modal">
                            <span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>确认
                        </button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>取消
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </div>


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

</body>

<script type="text/javascript">

    var devToken = '<%=request.getParameter("devToken")%>';
    var devUri = "";
    if (typeof devToken === 'string'  &&  devToken.length  >  0){
        devUri = "devToken="+devToken;
    }

    // 点击文章列表中的数据：当前行选中，其他行取消选中
    function chooseArticle(id){
        $('.article_check').each(function(index){
            // 这里的this是html dom对象，直接使用.属性取值
            // 使用jquery对象为$(this)，获取chechbox的状态用$(this).prop("checked")或者$(this).is(":checked")
            if(id == this.value){
                if(!this.checked){
                    this.checked = true;
                }
            }else{
                this.checked = false;
            }
        });
        resetArticleBtns();
    }
    // 初始化及重置按钮组状态
    function resetArticleBtns(){

        // 获取当前选中的文章并集中到数组
        var checked = new Array();
        $('.article_check:checked').each(function(){
            checked.push($(this).val());
        });
        checked = checked || new Array();

        // 未选中时不可操作删除按钮，其他情况可以删除
        if(checked.length==0){
            $("#article_delete_btn").addClass("disabled");
        }else{
            $("#article_delete_btn").removeClass("disabled");
        }

        // 只选中一条文章才能修改
        if(checked.length==1){
            $("#article_update_btn").removeClass("disabled");
        }else{
            $("#article_update_btn").addClass("disabled");
        }
    }
    $(function(){
        if (devUri.length  >  0){
            var addUri = $("#article_add_btn").attr("href");
            $("#article_add_btn").attr("href", addUri+"&"+devUri);
        }
        // 获取文章列表数据
        $.get('articleList?id=1', function(json) {
            if(json.success){
                var data = json.data;
                var contents = "";
                for(var i in data){
                    contents += '<div id="article_div'+data[i].id+'" class="input-group">';
                    contents += 	'<span class="input-group-addon">';
                    contents += 		'<input class="article_check" type="checkbox" value="'
                        +data[i].id+'" onclick="resetArticleBtns()">';
                    contents += 	'</span>';
                    contents += 	'<a href="javascript:void(0);" onclick="chooseArticle('+data[i].id+')" class="list-group-item">';
                    contents += 		data[i].title;
                    contents += 	'</a>';
                    contents += '</div>';
                }
                $('#article_list_div').html(contents);
                resetArticleBtns();
            }else{
                alert("文章列表获取失败："+json.message);
            }
        });

        // 修改文章：新开窗口
        $("#article_update_btn").click(function(){
            var id = $('.article_check:checked:first-child').val();
            var uri = "jsp/articleDetail.jsp?type=update&id="+id;
            if(devUri.length>0){
                uri += "&"+devUri;
            }
            window.open(uri);
        });

        // 点击删除文章按钮：弹出确认框
        $("#article_delete_btn").click(function(){
            $('#delete_confirm').modal();
        });

        // 删除文章：在弹出窗确认后调用删除接口
        $("#article_delete_submit").click(function(){
            var checked = new Array();
            $('.article_check:checked').each(function(){
                checked.push($(this).val());
            });
            $.get("articleDelete?ids="+checked.join(",")+"&"+devUri, function(json){
                if(json.success){
                    for(var i in checked){
                        $("#article_div"+checked[i]).remove();
                    }
                }else{
                    var message = "删除文章失败："+json.message;
                    if(devUri.length>0){
                        message += "\n";
                        message += json.stackTrace;
                    }
                    alert(message);
                }
            });
        });


    });


</script>
</html>
