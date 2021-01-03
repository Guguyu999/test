<%--
  Created by IntelliJ IDEA.
  User: asua
  Date: 2020/12/31
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>宿舍信息修改界面</title>
        <link rel="stylesheet" type="text/css" href="css/Record.css"/>
        <style>
            .show_border .contain .tips{
                margin-top: 10px;
                height: 66px;
                /*border: dashed 1px #000000;*/
                margin-left:0px;
                font-family: 幼圆;
                font-size: 10px;
                color: red;
                letter-spacing: 1px;
                line-height: 26px;
            }
        </style>

        <script>
            function validate() {
                var name = document.getElementById("name").value;
                var  message = document.getElementById("message").value;

                //所有信息都不能为空
                if (name==''){
                    alert("字段名不能为空！");
                    return false;
                }else if(!(name=="寝室号"||name=="楼房号"||name=="卫生等级"||name=="设备报修")){
                    alert("字段名错误！！字段名不许是：<<寝室号、楼房号、卫生等级、设备报修>>  这些其一！");
                    return false;
                }
                if (message==''){
                    alert("修改信息不能为空！");
                    return false;
                }
                return true;
            }
        </script>
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

        <!--展示区域开始-->
        <div class="show_border">
            <div class="contain" style=" width:266px;height: 266px;margin-top:126px">
                <form action="/Studentdorm/RoomRenewServlet?method=update" method="post" onsubmit="return validate()">
                    字&nbsp;段&nbsp;名：<input type="text" name="name" id="name" placeholder="请输入字段名" /><br />
                    修改信息：<input type="text" name="message" id="message" placeholder="请输入修改信息" /><br />
                    <div class="tips">
                        <span style="color:black;margin-left: 86px">字段名信息包括：</span><br />
                        &nbsp;&nbsp;&nbsp;<i>寝室号、楼房号、卫生等级、设备报修</i><br />
                    </div>
                    <div class="submit" style="margin-left: 116px">
                        <input type="submit" value="修改" name=""/>
                    </div>
                </form>
            </div>
        </div>
        <!--展示区域结束-->
    </body>
</html>
