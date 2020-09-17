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
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/theme_trust.js"></script>
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
                    <div>
                      <img src="images/thickeners.png">
                      </div>
                  </div>
                <div class="paging">
                <a href='#'>上一个</a>
                <a href='#'>下一个</a>
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
<script type="text/javascript">

        //创建和初始化地图函数：
        function initMap() {
            createMap(); //创建地图
            setMapEvent(); //设置地图事件
            addMapControl(); //向地图添加控件
            addMarker(); //向地图中添加marker
        }

       //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(117.887822,31.605643);//定义一个中心点坐标
        map.centerAndZoom(point,18);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }

        //地图事件设置函数：
        function setMapEvent() {
            map.enableDragging(); //启用地图拖拽事件，默认启用(可不写)
            map.disableScrollWheelZoom(); //禁用地图滚轮放大缩小，默认禁用(可不写)
            map.disableDoubleClickZoom(); //禁用鼠标双击放大
            map.disableKeyboard(); //禁用键盘上下左右键移动地图，默认禁用(可不写)
        }

        //地图控件添加函数：
        function addMapControl() {}

        //标注点数组
        var markerArr = [{title:"Gana Biotech",content:"Address：Room 372, No. 3329-23, Zhongshan North Road, Putuo District, Shanghai<br/>Skype: live:penny_1411<br/>Q&nbsp;&nbsp;Email：sales@ganabio.cn",point:"117.88886|31.606127",isOpen:1,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
        //创建marker
        function addMarker() {
                for (var i = 0; i < markerArr.length; i++) {
                    var json = markerArr[i];
                    var p0 = json.point.split("|")[0];
                    var p1 = json.point.split("|")[1];
                    var point = new BMap.Point(p0, p1);
                    var iconImg = createIcon(json.icon);
                    var marker = new BMap.Marker(point, {
                        icon: iconImg
                    });
                    var iw = createInfoWindow(i);
                    var label = new BMap.Label(json.title, {
                        "offset": new BMap.Size(json.icon.lb - json.icon.x + 10, -20)
                    });
                    marker.setLabel(label);
                    map.addOverlay(marker);
                    label.setStyle({
                        borderColor: "#808080",
                        color: "#333",
                        cursor: "pointer"
                    });

                    (function() {
                        var index = i;
                        var _iw = createInfoWindow(i);
                        var _marker = marker;
                        _marker.addEventListener("click", function() {
                            this.openInfoWindow(_iw);
                        });
                        _iw.addEventListener("open", function() {
                            _marker.getLabel().hide();
                        })
                        _iw.addEventListener("close", function() {
                            _marker.getLabel().show();
                        })
                        label.addEventListener("click", function() {
                            _marker.openInfoWindow(_iw);
                        })
                        if (!!json.isOpen) {
                            label.hide();
                            _marker.openInfoWindow(_iw);
                        }
                    })()
                }
            }
            //创建InfoWindow
        function createInfoWindow(i) {
                var json = markerArr[i];
                var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>" + json.content + "</div>");
                return iw;
            }
            //创建一个Icon
        function createIcon(json) {
            var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w, json.h), {
                imageOffset: new BMap.Size(-json.l, -json.t),
                infoWindowOffset: new BMap.Size(json.lb + 5, 1),
                offset: new BMap.Size(json.x, json.h)
            })
            return icon;
        }

        initMap(); //创建和初始化地图
    </script>
</body>
</html>
