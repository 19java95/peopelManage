<%--
  Created by IntelliJ IDEA.
  User: TangTian
  Date: 2018/7/22
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page  import="java.lang.System" %>
<%@page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%=config.getServletName()%>
<br>
<%=config.getInitParameter("age")%>

<h3 align="center">人员管理系统登录</h3>
<hr>
<form action="control.jsp">
    <table align="center">
        <tr>
            <td>
                账号：
            </td>
            <td><input type="text" name="id"/>
            </td>
        </tr>
        <tr>
            <td>
                密码：
            </td>
            <td>
                <input type="password" name="password"/>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit"  value="登录" align="center"/>
            </td>
        </tr>
    </table>
</form>
<%--<%
    List<String> list = new ArrayList<String>();
    list.add("JSP基础入门");

    list.add("Servlet视频详解");

    list.add("EL表达式初识");

    list.add("JSTL标签库初识");
    for(int i = 0;i<list.size();i++){
        String value=list.get(i);
        out.println("第"+(i+1)+"条:"+value+"<hr>");
    }
%>--%>
</body>
</html>
