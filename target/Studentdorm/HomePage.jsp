<%--
  Created by IntelliJ IDEA.
  User: asua
  Date: 2021/1/2
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>吉首大学---学生宿舍管理系统</title>
        <link rel="stylesheet" type="text/css" href="css/Homepage.css">
        <script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    </head>
    <body style="background-color: #C7E8F7;">
        <!--学生宿舍管理系统-->

        <!--顶部区域开始-->
        <div class="header-area">
            <div class="top_area">
                <!--LOGO-->
                <div class="top_logo">
                    <img src="image/logo.png" alt="吉首大学" />
                </div>
                <!--标题-->
                <div class="dorm">
                    <div class="dorm_contain">
                        <span>学生宿舍管理系统</span>
                    </div>
                </div>
                <!--登录注册-->
                <div class="header-logreg">
                    <ul class="list">
                        <li><a href="Login.jsp" target="_blank"><b>登录</b></a></li>
                        <li><a href="Register.jsp" target="_blank"><b>注册</b></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--顶部区域结束-->

        <!--导航区域开始-->
        <div class="dao-area">
            <div class="container">
                <ul class="menu">
                    <li class="message">
                        <a href="#" id="dianji1">宿舍管理</a>
                        <script>
                            $(function () {
                                $('#dianji1').click(function () {
                                    alert("请先进行登录！！！")
                                });
                            })
                        </script>
                    </li>
                    <li class="message">
                        <a href="#" id="dianji2">信息查询</a>
                        <script>
                            $(function () {
                                $('#dianji2').click(function () {
                                    alert("请先进行登录！！！")
                                });
                            })
                        </script>
                    </li>
                    <li class="message">
                        <a href="#" id="dianji3">信息修改</a>
                        <script>
                            $(function () {
                                $('#dianji3').click(function () {
                                    alert("请先进行登录！！！")
                                });
                            })
                        </script>
                    </li>
                    <li class="message">
                        <a href="#" id="dianji4">出入登记</a>
                    </li>
                    <script>
                        $(function () {
                            $('#dianji4').click(function () {
                                alert("请先进行登录！！！")
                            });
                        })
                    </script>
                </ul>
            </div>
        </div>
        <!--导航区域结束-->

        <!--轮播区域-->
        <div class="wrapBox">
            <div class="contain">
                <ul class="dotBox">
                    <li class="active">1</li>
                    <li>2</li>
                    <li>3</li>
                </ul>
            </div>
            <div>
                <ul class="showBox">
                    <li  class="show"><img src="image/轮播1.jpg"/></li>
                    <li><img src="image/轮播2.jpg"/></li>
                    <li><img src="image/轮播3.jpg"/></li>
                </ul>
            </div>
        </div>
        <!--轮播区域结束-->

        <!--尾部区域-->
        <div class="footer">
            <div class="footer_contain">
                <div class="fl">
                    <p><span>地址：中国·湖南·吉首 人民南路120号</span><span>邮编：416000</span></p>
                    <p>E-mail：jwc@mail.jsu.edu.cn </p>
                </div>
                <div class="fr">
                    <p>CopyRight ? 1958-2017 吉首大学教务处 版权所有 </p>
                    <p>教QS3-200505-000069</p>
                </div>
            </div>
        </div>
    </body>
    <script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/homepage.js" type="text/javascript" charset="UTF-8"></script>
</html>
