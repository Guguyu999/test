<%--
  Created by IntelliJ IDEA.
  User: asua
  Date: 2021/1/2
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>展示宿舍所有信息界面</title>
        <link rel="stylesheet" type="text/css" href="css/Update.css"/>
    </head>
    <body class="body">
        <!--导航区域开始-->
        <div class="dao-area">
            <div class="user">
                <li class="message">
                    <a href="Room.jsp" target="_parent">返回</a>
                </li>
            </div>
        </div>
        <!--导航区域结束-->

        <!--显示区域开始-->
        <div class="show_border">
            <div class="left-container" style="margin-top: 66px;margin-left:200px;width: 416px">
                <table border="1" cellpadding="10" cellspacing="0" class="table" style="line-height: 20px">
                    <tr align="center" >
                        <td width="66">寝室号</td>
                        <td width="66">楼房号</td>
                        <td width="100">卫生评比</td>
                        <td width="166">设备报修</td>
                    </tr>
                    <c:forEach items="${Room}" var="r">
                        <tr align="center">
                            <td>${r.roomid}</td>
                            <td>${r.houseid}</td>
                            <td>${r.cleanlevel}</td>
                            <td>${r.repairs}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
        <!--展示区域结束-->
    </body>
</html>
