<%@ page import="com.imooc.db.DBUtil" %>
<%@ page import="com.imooc.bean.Student" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: TangTian
  Date: 2018/7/23
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生成绩</title>
</head>
<body>
<table width="500" border="1" align="center">
    <tr>
        <td>学号</td>
        <td>姓名</td>
        <td>成绩</td>
    </tr>
    <%
        Map<String,Student> map = DBUtil.studentlist;
        for(String key:map.keySet()){
            Student stu = map.get(key);
    %>
    <tr>
        <td><%=stu.getId()%></td>
        <td><%=stu.getName()%></td>
        <td><%=stu.getScore()%></td>
    </tr>
    <%
        }
    %>


</table>
</body>
</html>
