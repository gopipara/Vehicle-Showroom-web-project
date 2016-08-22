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
          
         ResultSet rs1=null;
         String str=null;
                         int qty=0;
                         String str2=null;
                         String sn=request.getParameter("sn")  ;  
                         System.out.println("hyperrrrrrrrrrrrrrr"+sn);
                     try{
                              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                              con=DriverManager.getConnection("jdbc:odbc:veh");
                              st=con.createStatement();
                              //if(sn!=null){
                                  //st.executeUpdate("delete * from booking where slno="+sn+"");
                                // response.sendRedirect("booking.jsp");
                              //}else{
                              str2="select qty from stock where vehiclename='"+request.getParameter("vn")+"' ";
                              rs=st.executeQuery(str2);
                              while(rs.next()){
                                qty=rs.getInt(1)  ;
                              }
                             
                              System.out.println("qqqqqqqqqqqqqqqqqqqq"+qty);
                              if(qty>0){
                                  int reqstk=Integer.parseInt(request.getParameter("qty"));
                                  int stk=qty-reqstk;
                                  st.executeUpdate("update stock set qty="+stk+" where vehiclename='"+request.getParameter("vn")+"'");
                                  
                              str="insert into sales(saleid,sdate,customername,cntno,vehiclename,price,status) values('"+request.getParameter("sid")+"','"+request.getParameter("ds")+"','"+request.getParameter("cname")+"','"+request.getParameter("cno")+"','"+request.getParameter("vn")+"',"+request.getParameter("Price")+","+request.getParameter("qty")+")";
                            System.out.println(str);
                                      st.executeUpdate(str);
                                      session.removeAttribute("err");
                                      
                              response.sendRedirect("sales.jsp");
                              }else{
                               String msg="Stock Not Available";
                                  session.setAttribute("err",msg);
                                  response.sendRedirect("sales.jsp");
                              }
                            }catch(Exception e){e.printStackTrace();}
    
    %>
    
    </body>
</html>
