<%@ page import="java.util.Map" %>
<%@ page import="com.imooc.bean.Emp" %>
<%@ page import="com.imooc.db.DBUtil" %><%--
  Created by IntelliJ IDEA.
  User: TangTian
  Date: 2018/7/24
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Map <String ,Emp> map = DBUtil.map;
    Emp emp = map.get(request.getParameter("id"));
    emp.setName(request.getParameter("name"));
    emp.setEmail(request.getParameter("email"));
    emp.setWord(request.getParameter("word"));
    emp.setTelnum(request.getParameter("telnum"));
 %>
<h3 align="center">修改员工信息成功</h3>

</body>
</html>
