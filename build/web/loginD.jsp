<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>
<%--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

   <%
       
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    String str=null;
    String u=request.getParameter("userid");
    String p=request.getParameter("pswd");
    System.out.println("rrrrrrrrrrrrrrrrrrrrrrrrrrrr"+p);
    try{
       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:veh");
st = con.createStatement();
    
    str="select name,password from userlog where name='"+u+"' and password='"+p+"'";
    System.out.println(str);
    rs=st.executeQuery(str);
    while(rs.next()){
        if(rs.getString(1).equalsIgnoreCase("d") && rs.getString(2).equalsIgnoreCase("ddd")){
        response.sendRedirect("index.jsp");
        }else
            response.sendRedirect("loginDealer.jsp");
    }
        
    }catch(Exception e){}
    
    
    
    %>
    
    </body>
</html>
