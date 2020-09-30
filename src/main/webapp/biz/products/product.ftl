<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
<meta http-equiv="expires" content="0">
<meta name="viewport" id="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<title>Gana Biotech</title>
<meta name="description" content="Shanghai Gana Biotech Co., Ltd" />
<link href="css/dmaku.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/javascript" src="js/jquery-3.5.1.min.js"/>
<script language="JavaScript" type="text/javascript" src="js/theme_trust.js"/>
<script language="JavaScript" type="text/javascript" src="js/waterfall.min.js"/>
<style type="text/css">
        html,
        body {
            margin: 0;
            padding: 0;
        }
        .iw_poi_title {
            color: #CC5522;
            font-size: 14px;
            font-weight: bold;
            overflow: hidden;
            padding-right: 13px;
            white-space: nowrap
        }
        .iw_poi_content {
            font: 12px arial, sans-serif;
            overflow: visible;
            padding-top: 4px;
            white-space: -moz-pre-wrap;
            word-wrap: break-word
        }
    </style>
<script type="text/javascript" src="js/main.js"></script>
<script>
        jQuery(document).ready(function() {
            jQuery('#openSidebar').click(function() {
                jQuery('.wrapper').toggleClass('openNav');

            });
            jQuery('#menu a').click(function() {
                jQuery('.wrapper').removeClass('openNav');
            });
        });
    </script>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<style type="text/css">
        html,
        body,
        wrapper {
            height: 100%;
        }
    </style>
</head>
<!--/************************************************************
 *																*
 * 						      							*
 *                        							*
 *       		  努力创建完善、持续更新插件以及模板			*
 * 																*
**************************************************************-->
<body>
<div class="wrapper">
  <div class="sidebar">
    <div class="clearfix k1120">
      <div class="navBox" id="openSidebar"> <a href="javascript:void(0)" class="navOpen"></a> </div>
      <div id="menu">
        <ul class="clearfix">
          <li><a href="${rc.contextPath}/#home" class="nav_home current"><span>首页<br />
            <b>Home</b></span></a> </li>
          <li><a href="${rc.contextPath}/#home" class="nav_services"><span>我们的团队<br />
            <b>Our teams</b></span></a> </li>
          <li><a href="${rc.contextPath}/#home" class="nav_case"><span>产品中心<br />
            <b>Products</b></span></a> </li>
          <li><a href="${rc.contextPath}/#home" class="nav_about"><span>关于我们<br />
            <b>About us</b></span></a> </li>
          <!--<li><a href="${rc.contextPath}/#home" class="nav_news"><span>展会动态<br />
            <b>Event</b></span></a> </li>-->
          <li><a href="${rc.contextPath}/#home" class="nav_contact"><span>联系我们<br />
            <b>Contact us</b></span></a> </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="pageMain">
    <div id="header">
      <div class="k1120 clearfix"><a href="/#case" id="logo">logo</a> </div>
    </div>
    <div id="news" class="scrol-page">
        <div class="k1120">
            <h2 class="title"><span>${title}<br /><b>发布于：2014-12-06 18:17 　浏览：<script src="/#" type='text/javascript' language="javascript"></script></b></span></h2>
            <div class="viewMain">
                <div class="case k1120">
                    <div id="product_list" style="display: inline-block;">
                      <ul>
                           <li>
                                <h1>
                                    <a href="JavaScript:void(0);">
                                        <img src="images/preservatives.png">
                                    </a>
                                </h1>
                                 <h2>E 编码:<strong>E415</strong><br></h2>
                                 <h3>ccccc</h3>
                           </li>
                          <li>
                               <h1>
                                   <a href="JavaScript:void(0);">
                                       <img src="images/preservatives.png">
                                   </a>
                               </h1>
                             <h2>aaaa</h2>
                             <h3>ccccc</h3>
                          </li>
                        <li>
                             <h1>
                                 <a href="JavaScript:void(0);">
                                     <img src="images/preservatives.png">
                                 </a>
                             </h1>
                             <h2>ddddd</h2>
                             <h3>ffffff</h3>
                        </li>
                        <li>
                             <h1>
                                 <a href="JavaScript:void(0);">
                                     <img src="images/preservatives.png">
                                 </a>
                             </h1>
                             <h2>ddddd</h2>
                             <h3>ffffff</h3>
                        </li>
                      </ul>
<!--                        <h3 class="title">Product information is being updated</h3>-->
                    </div>
                <div class="paging">
                <a href='JavaScript:void(0);'>上一个</a>
                <a href='JavaScript:void(0);'>下一个</a>
                </div>
            </div>
        </div>
    </div>
    </div>
  </div>
  ﻿
  <div class="footer"> 沪ICP备19046342号-1 <br>
    Copyright © 2015.Company name All rights reserved.More Templates ShangHai Gana Biotech Co.,Ltd
</div>
<script language="JavaScript" type="text/javascript">
        var pageNum = 1;
        var pageSize = 8;
        $(document).ready(function(){
            //$("#product_list").empty();
            //loadPType(${id},1,pageSize);
            pageNum = pageNum + 2;
        });
        function loadPType(productTypeId,offset,size){
            $.ajax({
                //请求方式
                type : "GET",
                //请求的媒体类型
                contentType: "application/json;charset=UTF-8",
                //请求地址
                url : "${rc.contextPath}/product/list",
                //数据，json字符串
               data : {'productTypeId':productTypeId,'pageNum':offset,'pageSize':size},
                //请求成功
                success : function(reponse) {
                    console.log(reponse);
                    var data = reponse.list;
                    var sum = reponse.total;
                    var content = '';
                    for(var i = 0; i < size; i++){
                        if(isNull(data[i])){
                            break;
                        }
                        content='<li><div class="view-tenth"><img src="'+data[i].image+'"><a href="${rc.contextPath}/products?id='+data[i].id+'" class="mask" target="_self"><h2>'+data[i].title+'</h2><p>'+data[i].description+'</p></a></div></li>';
                        $("#product_type_list").append(content);
                    }
                     /*隐藏more*/
                    if ((offset * size) > sum) {
                        $("#more_btn").text('HIDE');
                        isHide =true;
                    }else{
                        $("#more_btn").text('MORE');
                        isHide = false;
                    }
                },
                //请求失败，包含具体的错误信息
                error : function(e){
                    console.log(e.status);
                    console.log(e.responseText);
                }
            });

        }
</script>
</body>
</html>
