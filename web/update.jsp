<%--
  Created by IntelliJ IDEA.
  User: TangTian
  Date: 2018/7/23
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
      <h3>员工更新界面</h3>
      <h6 align="right" >登录账号：<%=session.getAttribute("id")%></h6>
      <hr>
      <form action="update_control.jsp">
          <table align="center" border="1" width="500px">
              <tr>
                  <td>ID</td>
                  <td><input type="text" readonly="readonly" name="id" value="<%=request.getParameter("id")%>"/> </td>
              </tr>
              <tr>
                  <td>名字</td>
                  <td><input type="text" name="name" value="<%=request.getParameter("name")%>"/> </td>
              </tr> <tr>
              <td>邮箱</td>
              <td><input type="text"  name="email"  value="<%=request.getParameter("email")%>"/> </td>
          </tr>
              <tr>
                  <td>备注</td>
                  <td><input type="text"  name="word"  value="<%=request.getParameter("word")%>"/> </td>
              </tr>
              <tr>
                  <td>电话号码</td>
                  <td><input type="text"  name="telnum"  value="<%=request.getParameter("telnum")%>"/> </td>
              </tr>
              <tr>
                  <td colspan="2"><input type="submit" value="修改"></td>
              </tr>
          </table>
      </form>

</body>
</html>
