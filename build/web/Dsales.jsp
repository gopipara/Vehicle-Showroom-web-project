<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
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
<%@ page import="java.sql.*" %>
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
                         String sn=request.getParameter("slno1");  
                         
                         
                     try{
                              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                              con=DriverManager.getConnection("jdbc:odbc:veh");
                              st=con.createStatement();
                              
                              
                              st.executeUpdate("delete * from sales where slno="+sn+"");
                              response.sendRedirect("addsales.jsp");
                            }catch(Exception e){e.printStackTrace();}
   %>
    
    </body>
</html>
