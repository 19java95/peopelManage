<%--
  Created by IntelliJ IDEA.
  User: TangTian
  Date: 2018/7/23
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.lang.String" %>
<%@ page import="com.imooc.bean.Emp" %>
<%@ page import="com.imooc.db.DBUtil" %>
<%@ page import="java.util.Map" %>
<%@ page errorPage="errorPage.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3 align="center">这是一个登录页面的处理程序</h3>
<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    Emp emp = new Emp(id,null,password,null,null,null);
    Map<String,Emp> map = DBUtil.map;
   boolean flag = DBUtil.selectEmpByIpAndPassword(emp);
    if (flag == true){
        session.setAttribute("id",id);
        Object o =application.getAttribute("count");
        if(o == null){
            application.setAttribute("count",1);
        }else {
            int count = Integer.parseInt(o.toString());
            application.setAttribute("count",count+1);
        }
%>

       <h3 align="center">欢迎来到人事管理系统的首页</h3>
     <hr/>
       <h5 align="right" >访问量：<%=application.getAttribute("count")%></h5>

       <h5 align="right">当前的账户：<%=session.getAttribute("id")%></h5>
       <table align="center" border="1" width="800px">
           <tr>
               <td>
                   ID
               </td>
               <td>
                   姓名
               </td>
               <td>
                   邮箱
               </td>
               <td>
                   备注
               </td>
               <td>
                   电话号码
               </td>
               <td>
                   修改
               </td>
           </tr>
           <%
               for (String key :map.keySet()){
                   Emp e = map.get(key);
            %>
           <tr>
               <td>
                   <%=e.getId()%>
               </td>
               <td>
                   <%=e.getName()%>
               </td>
               <td>
                   <%=e.getEmail()%>
               </td>
               <td>
                   <%=e.getWord()%>
               </td>
               <td>
                   <%=e.getTelnum()%>
               </td>
               <td>
                   <a href="update.jsp?id=<%=e.getId()%>&name=<%=e.getName()%>&email=<%=e.getEmail()%>&word=<%=e.getWord()%>&telnum=<%=e.getTelnum()%>">修改</a>
               </td>
           </tr>
           <%
               }
           %>
       </table>

<%
    }else {
        throw new Exception("账号和密码错误啊");
    }
%>
</body>
</html>
