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
     Connection con2=null;
                                                        Statement st2=null;
                                                        ResultSet rs2=null;
                                                        String str2=null;
                                                        String sn1=(String)session.getAttribute("sn1");
                                                        System.out.println("edittttttttttttt"+sn1);
                                                        try{
                                                        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                                                        con2=DriverManager.getConnection("jdbc:odbc:veh");
                                                        st2=con2.createStatement();
                                                    
                                                        st2.executeUpdate("update booking set bid='"+request.getParameter("sid")+"',bookby='"+ request.getParameter("cname") +"',bdate='"+request.getParameter("ds")+"',vehiclename='"+request.getParameter("vn")+"',qty="+request.getParameter("qty")+" ,status='"+request.getParameter("st")+"' where slno="+sn1+"");
     
                                                        response.sendRedirect("booking.jsp");
                                                        }catch(Exception e){e.printStackTrace();}
     
     
     
     %>
    
    
    </body>
</html>
