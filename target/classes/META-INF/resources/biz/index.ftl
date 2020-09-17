<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
    <meta http-equiv="expires" content="0">
    <meta name="viewport" id="viewport"
          content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
    <title>${companyInfo.shortName}</title>
    <meta name="description" content="Shanghai Gana Biotech Co., Ltd"/>
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
            <div class="navBox" id="openSidebar"><a href="javascript:void(0)" class="navOpen"></a></div>
            <div id="menu">
                <ul class="clearfix">
                    <li><a href="#home" class="nav_home current"><span>首页<br/>
            <b>Home</b></span></a></li>
                    <li><a href="#services" class="nav_services"><span>我们的团队<br/>
            <b>Our teams</b></span></a></li>
                    <li><a href="#case" class="nav_case"><span>产品中心<br/>
            <b>Products</b></span></a></li>
                    <li><a href="#about" class="nav_about"><span>关于我们<br/>
            <b>About us</b></span></a></li>
                    <!--<li><a href="#news" class="nav_news"><span>展会动态<br />
                      <b>Event</b></span></a> </li>-->
                    <li><a href="#contact" class="nav_contact"><span>联系我们<br/>
            <b>Contact us</b></span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="pageMain">
        <div id="header">
            <div class="k1120 clearfix"><a href="/" id="logo">logo</a></div>
        </div>
        <div id="home" class="scrol-page">
            <div class="banner">
                <div class="b_1">
                    <div class="k1120 clearfix">
                        <div class="b_pic">
                            <div class="mac"><img src="images/mac.png"/></div>
                        </div>
                        <div class="b_text">
                            <h1>${companyInfo.shortName}</h1>
                            <h4>Expert in food additives and ingredients</h4>
                            <p>10+ years experiences and know-how </p>
                            <p> 100% fastest response and timely shipment </p>
                            <p>Excellent after-sales Services</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner">
                <div class="b_2">
                    <div class="k1120 clearfix">
                        <h2>Focus on food additive products</h2>
                        <h1>Technology And Factory</h1>
                        <h5>Our factory has this advanced equipment and professional technical ability</h5>
                    </div>
                </div>
            </div>
        </div>
        <div id="services" class="scrol-page">
            <h2 class="title"><span>Our Teams</span></h2>
            <h5 class="infoText">We are a responsible, professional and efficient team</h5>
            <div class="servicesBox">
                <ul class="k1120 clearfix">
                    <li>
                        <div class="servicesBoxList">
                            <div class="servicesBoxIcon"><i class="servicesIcon_1"></i></div>
                            <h3>Product team</h3>
                            <p>integration of internal and external resources, cooperative research and development, to
                                ensure quality supply, and to provide professional solutions.</p>
                        </div>
                    </li>
                    <li>
                        <div class="servicesBoxList">
                            <div class="servicesBoxIcon"><i class="servicesIcon_2"></i></div>
                            <h3>Sales team</h3>
                            <p>to provide multi-lingual one-on-one service, such as English, French, Russian, Japanese
                                etc.; rapid response is a must, customer's request should be treated in 24 hours.</p>
                        </div>
                    </li>
                    <li>
                        <div class="servicesBoxList">
                            <div class="servicesBoxIcon"><i class="servicesIcon_3"></i></div>
                            <h3>Marketing and BI team</h3>
                            <p>as the company's emerging strength, in this new economic situation, this is an important
                                basis for the development of the company through a variety of marketing methods and
                                big-data analysis.</p>
                        </div>
                    </li>
                    <li>
                        <div class="servicesBoxList">
                            <div class="servicesBoxIcon"><i class="servicesIcon_4"></i></div>
                            <h3>Logistics team</h3>
                            <p>ten years of meticulous work experience, to ensure the timely completion of customers’
                                order and the arrival of the goods on time.</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="ad_1">
                <div class="ad_1Text">
                    Responsible&nbsp;&nbsp;·&nbsp;&nbsp;Professional&nbsp;&nbsp;·&nbsp;&nbsp;Efficient
                </div>
            </div>
        </div>
        <div id="case" class="scrol-page">
            <h2 class="title"><span>Our Products</span></h2>
            <h5 class="infoText">The Company and our products are certified with KOSHER, HALAL, ISO9001, ISO2200, and
                other international certification.</h5>
            <div class="case k1121">
                <div id="product_type_list" style="display: inline-block;">
                </div>
                <div class="tc moreBox"><a id="more_btn" href="JavaScript:void(0);" class="moreBtn">MORE</a></div>
            </div>
            <div class="ad_2">
                <h3><span>Gana Biotech · Your loyal partner</span></h3>
                <p>Full range of services · High quality products · Affordable prices</p>
            </div>
        </div>
        <div id="about" class="scrol-page">
            <h2 class="title"><span>About Us</span></h2>
            <div class="k1120">
                <div class="aboutBox">
                    <h4>${companyInfo.shortName}</h4>
                    ${companyInfo.profile}
            </div>
        </div>


        <!--
        <div id="news" class="scrol-page">
          <div class="k1120">
            <h2 class="title"><span>新闻动态</span></h2>
            <h5 class="infoText">您可以通过以下新闻与公司动态进一步了解我们。我们所签约的客户，无论他们的项目是大或者是小，我们都将提供100%的服务</h5>
            <div class="newsList">
              <ul class="clearfix">
                <li>
                  <div class="newsListBox">
                    <h4><a href="/news/28.html" target="_blank">多屏时代下的营销型网站</a></h4>
                    <p class="newsViewText">由以前集中在双屏(电视、电脑)到三屏(电视、电脑、平板电脑)、四屏(电视、电...</p>
                    <p class="newsViewFoot"><a href="/news/28.html" target="_blank" class="newsListView">查看详情</a> </p>
                  </div>
                </li>
                <li>
                  <div class="newsListBox">
                    <h4><a href="/news/27.html" target="_blank">网站推广细节在网站制作</a></h4>
                    <p class="newsViewText">品网视觉今天和和大家讨论SEO优化细节在网站制作时怎么体验。欢迎大家补充。...</p>
                    <p class="newsViewFoot"><a href="/news/27.html" target="_blank" class="newsListView">查看详情</a> </p>
                  </div>
                </li>
                <li>
                  <div class="newsListBox">
                    <h4><a href="/news/26.html" target="_blank">网站价格为啥差异那么大</a></h4>
                    <p class="newsViewText">先说一下网站的几个固定费用： 1. 域名，.com的域名均价在100元左右每年，其他...</p>
                    <p class="newsViewFoot"><a href="/news/26.html" target="_blank" class="newsListView">查看详情</a> </p>
                  </div>
                </li>
                <li>
                  <div class="newsListBox">
                    <h4><a href="/news/25.html" target="_blank">上海网络公司哪家好？</a></h4>
                    <p class="newsViewText">上海网络公司很多，有专门从事网站建设的，有网站优化排名做得比较好的，有...</p>
                    <p class="newsViewFoot"><a href="/news/25.html" target="_blank" class="newsListView">查看详情</a> </p>
                  </div>
                </li>
                <li>
                  <div class="newsListBox">
                    <h4><a href="/news/24.html" target="_blank">提高网站运行速度已势在</a></h4>
                    <p class="newsViewText">如果在四五年前，花费40、50秒等待一个网站慢慢打开，或许并不是难事。而现...</p>
                    <p class="newsViewFoot"><a href="/news/24.html" target="_blank" class="newsListView">查看详情</a> </p>
                  </div>
                </li>
                <li>
                  <div class="newsListBox">
                    <h4><a href="/news/23.html" target="_blank">推广效果不佳多半在于网</a></h4>
                    <p class="newsViewText">中小企业通过搜索引擎付费广告，推广自己的产品和服务，到底有没有效果？答...</p>
                    <p class="newsViewFoot"><a href="/news/23.html" target="_blank" class="newsListView">查看详情</a> </p>
                  </div>
                </li>
              </ul>
              <div class="tc moreBox"><a href="/news/" target="_blank" class="moreBtn">查看更多新闻</a> </div>
            </div>
          </div>
          <div class="ab_3">
            <h3>致力于提升客户品牌形象 , 实现客户商业目标</h3>
            <p class="moreBox"><a href="http://wpa.qq.com/msgrd?v=3&uin=XXX&site=qq&menu=yes" class="viewBtn">点击咨询</a> </p>
          </div>
        </div>
        -->


        <div id="contact" class="scrol-page">
            <h2 class="title"><span>Contact us</span></h2>
            <div class="infoText"> How much you trust us, how many surprises we will make. Contact us for more
                details！
            </div>
            <div class="contactBox">
                <div class="contactFoot" id="contact">
                    <div class="clearfix k1120">
                        <!--<dl>-->
                        <dt>Contact</dt>
                        <dd>
                            <p>Skype: ${companyInfo.skype!''}</p>
                            <p>Mobile：${companyInfo.mobile!''}</p>
                            <p>Email：${companyInfo.email!''}</p>
                            <p>Address：${companyInfo.address!''}</p>
                        </dd>
                        <!--</dl>-->
                    </div>
                </div>
                <div class="mapBox">
                    <div style="width:100%;" id="dituContent"></div>
                </div>
            </div>
            <div class="message">
                <div class="k1120 clearfix">
                    <div class="messageRow_1">
                        <div class="messageBox">
                            <h3>Tell us what you need</h3>
                            <h4>Fill in the demand online, we will answer your questions as soon as possible.</h4>
                            <p>Skype: ${companyInfo.skype!''}</p>
                            <p>Mobile：${companyInfo.mobile!''}</p>
                            <p>Email：${companyInfo.email!''}</p>
                            <p>Address：${companyInfo.address!''}</p>
                        </div>
                    </div>
                    <form action="/plus/diy.php" enctype="multipart/form-data" method="post">
                        <input type="hidden" name="action" value="post"/>
                        <input type="hidden" name="diyid" value="1"/>
                        <input type="hidden" name="do" value="2"/>
                        <div class="messageRow_2">
                            <div class="messageBox">
                                <div class="fromList">
                                    <input type="text" placeholder="Your name" value='' name="full_name"
                                           id="full_name"/>
                                </div>
                                <div class="fromList">
                                    <input type="text" placeholder="Skype" value='' name="skype" id="skype"/>
                                </div>
                                <div class="fromList">
                                    <input type="text" placeholder="Email" value='' name="email" id="email"/>
                                </div>
                                <div class="fromList">
                                    <input type="text" placeholder="Your company" value='' name="company" id="company"/>
                                </div>
                            </div>
                        </div>
                        <div class="messageRow_3">
                            <div class="messageBox">
                                <div class="fromList">
                                    <textarea placeholder="message..." value='' name="msg" id="msg"></textarea>
                                </div>
                                <input name="mytime" value="" type="hidden" id="mytime"/>
                                <script type="text/javascript">
                    window.onload = function(){
                    var nowDate = new Date();
                    var str = nowDate.getFullYear()+"-"+(nowDate.getMonth() + 1)+"-"+nowDate.getDate()+" "+nowDate.getHours()+":"+nowDate.getMinutes()+":"+nowDate.getSeconds();
                    document.getElementById("mytime").value=str;
                    }




                                </script>
                                <input type="hidden" name="dede_fields"
                                       value="full_name,text;mobile,text;email,text;company,text;msg,multitext;mytime,text"/>
                                <input type="hidden" name="dede_fieldshash" value="c971c82ee72551f4e9e131a5a98d85bc"/>
                                <input type="image" name="sumbit" src="images/btn.png"/>
                                <span class="fromListInfo">Contact information we will reply within 1 working day, information will be treated in confidence.</span>
                            </div>
                        </div>
                    </form>
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
        var pageSize = 3;
        var isHide = false;
        $(document).ready(function(){
            $("#product_type_list").empty();
            loadPType(1,6);
            pageNum = pageNum + 2;
        });
         $("#more_btn").click(function() {
             if(isHide){
                $("#product_type_list").empty();
                pageNum=3;
                loadPType(1,6);
             }else{
               loadPType(pageNum,pageSize);
               pageNum = pageNum + 1;
             }
             return false;
         });
        function loadPType(offset,size){
            $.ajax({
                //请求方式
                type : "GET",
                //请求的媒体类型
                contentType: "application/json;charset=UTF-8",
                //请求地址
                url : "${rc.contextPath}/productType/list",
                //数据，json字符串
               data : {'pageNum':offset,'pageSize':size},
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
                        content='<li><div class="view-tenth"><img src="'+data[i].image+'"><a href="${rc.contextPath}/products?productType='+data[i].name+'" class="mask" target="_self"><h2>'+data[i].title+'</h2><p>'+data[i].description+'</p></a></div></li>';
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
        function isNull(ele){
          if(typeof ele==='undefined'){//先判断类型
            return true;
          }else if(ele==null){
            return true;
          }else if(ele==''){
            return true;
          }
          return false;
        }
    </script>
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
        var markerArr = [{title:"${companyInfo.shortName}",content:"Address：Room 372, No. 3329-23, Zhongshan North Road, Putuo District, Shanghai<br/>Skype: live:penny_1411<br/>Mobile：+8613671682484<br/>Email：sales@ganabio.cn",point:"117.88886|31.606127",isOpen:1,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
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
