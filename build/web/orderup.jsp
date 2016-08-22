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

    <%Connection con=null;
                                                        Statement st=null;
                                                        ResultSet rs=null;
                                                        String str=null,str2=null;
                                                          String str1=null;
                                                          int qty=0;
                                                        try{
                                                        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                                                        con=DriverManager.getConnection("jdbc:odbc:veh");
                                                        st=con.createStatement();
    
    int sn=Integer.parseInt(request.getParameter("slno"));
    System.out.println(request.getParameter("ostatus"));
    
   str1=request.getParameter("vn1");
    int qty11=Integer.parseInt(request.getParameter("qty1"));
       rs=st.executeQuery("select qty from stock where vehiclename='"+str1+"'");
       while(rs.next()){
           qty=rs.getInt(1);
       
       
    }
    int qty111=qty11+qty;
    System.out.println("update stock set qty="+qty111+" where vehiclename='"+str1+"'");
    st.executeUpdate("update stock set qty="+qty111+" where vehiclename='"+str1+"'");
    str="update booking set orderst='"+request.getParameter("st")+"' where slno="+sn+" " ;
    st.executeUpdate(str);
    
    response.sendRedirect("order.jsp");
    }catch(Exception e){e.printStackTrace();}
    %>
    
    </body>
</html>
