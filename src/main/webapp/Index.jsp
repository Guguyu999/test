<%@ page import="jsu.com.bean.User" %><%--
  Created by IntelliJ IDEA.
  User: asua
  Date: 2020/12/29
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>学生宿舍管理系统主界面</title>
        <link rel="stylesheet" type="text/css" href="css/Index.css"/>
        <script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>

<%--        <%--%>
<%--            User user = (User) request.getAttribute("user");--%>
<%--        %>--%>

        <script>
            function validate() {
                var password = document.getElementById("password").value;

                //验证密码
                if(password == ''){
                    alert("密码不能为空！");
                    return false;
                }else if(password.length<6||password.length>12){
                    alert("密码要在6~12位之间！");
                    return false;
                }
                return true;
            }
        </script>
    </head>
        <body class="body">
        <!--导航区域开始-->
        <div class="dao-area">
            <div class="container">
                <ul class="menu">
                    <li class="message">
                        <a href="Room.jsp" target="_blank">宿舍管理</a>
                    </li>
                    <li class="message">
                        <a href="Find.jsp" target="_blank">信息查询</a>
                    </li>
                    <li class="message">
                        <a href="#" id="update">信息修改</a>
                        <script>
                            $(function () {
                                $('#update').click(function () {
                                    alert("请先对信息进行查询再对信息进行修改！！！")
                                });
                            })
                        </script>
                    </li>
                    <li class="message">
                        <a href="Record.jsp" target="_blank">出入登记</a>
                    </li>
                </ul>
            </div>
            <div class="user">
                <li class="message">
                    <a href="javascript:;">个人中心</a>
                </li>
            </div>
        </div>
        <!--导航区域结束-->

        <!--展示区域开始-->
        <div class="show_border">
            <form class="form" action="/Studentdorm/IndexServlet" method="post" onsubmit="return validate()">
                <table cellpadding="10" cellspacing="0" class="table">
                    <tr align="center">
                        <td>用户名:</td>
                        <td width="166px">
<%--                            <%=user.getUsername()%>--%>
                            ${user.username}
                        </td>
                    </tr>
                    <tr align="center">
                        <td>密码:</td>
                        <td>
                            <input type="password" name="password" id="password" placeholder="请输入要修改的密码" />
                        </td>
                    </tr>
                    <tr align="center">
                        <td>姓名:</td>
                        <td>
<%--                            <%=user.getRealname()%>--%>
                            ${user.realname}
                        </td>
                    </tr>
                    <tr align="center">
                        <td>性别:</td>
                        <td>
<%--                            <%=user.getSex()%>--%>
                            ${user.sex}
                        </td>
                    </tr>
                    <tr align="center">
                        <td>年龄:</td>
                        <td>
<%--                            <%=user.getAge()%>--%>
                            ${user.age}
                        </td>
                    </tr>
                </table>
                <div class="submit" style="width:60px;margin: 30px auto 0 auto;">
                    <input type="submit" value="修改密码" name=""/>
                </div>
            </form>
        </div>
    <!--展示区域结束-->
    </body>
</html>
