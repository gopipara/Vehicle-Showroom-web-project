<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Car Company</title>
<link href="css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {color: #827d7d}
.style3 {color: #CCCCCC}
-->
</style>
</head>

<body>
    <form method="post" action="editbok.jsp">
        <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td valign="top" bgcolor="#000000"><table width="741" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td valign="top">
                                
                                <table width="741" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="12" valign="top">&nbsp;</td>
                                        <td colspan="3" valign="top">&nbsp;</td>
                                        <td width="12" valign="top">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="12" valign="top"><img src="images/index_06.gif" width="12" height="69" alt="" /></td>
                                        <td width="443" valign="top" style="background-image:url(images/index_08.gif);"><div style="padding-left:20px; padding-top:23px;"><a href="index.html"><img src="images/index_12.gif" alt="" width="189" height="24" border="0" /></a></div></td>
                                        <td width="203" align="right" valign="middle" style="background-image:url(images/index_08.gif);"><input name="textfield" type="text" style="height:20px;" value=" -- Site Search --" /></td>
                                        <td width="71" align="right" valign="middle" style="background-image:url(images/index_08.gif);"><input type="image" name="imageField" src="images/index_15.gif" style="border:0px;" /></td>
                                        <td width="12" valign="top"><img src="images/index_10.gif" width="12" height="69" alt="" /></td>
                                    </tr>
                                    <tr>
                                        <td height="15px" colspan="5" valign="top"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" valign="top"><table width="741" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="291" valign="top"><img src="images/index_22.gif" width="291" height="224" alt="" /></td>
                                                    <td width="247" valign="top"><img src="images/index_23.gif" width="247" height="224" alt="" /></td>
                                                    <td width="12" valign="top"><img src="images/index_24.gif" width="12" height="224" alt="" /></td>
                                                    <td width="158" valign="top" style="" class="menu">> <br />
                                                    
                                                    
                                                    <td width="33" valign="top"></td>
                                                </tr>
                                            </table>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="8px" colspan="5" valign="top"></td>
                                    </tr>
                                    
                                </table>
                                
                            </td>
                        </tr>
                        <tr>
                            <td valign="top"><table width="741" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        
                                    </tr>
                                    <tr>
                                        <td height="10px" colspan="5" valign="top"></td>
                                    </tr>
                                    
                                    
                                    
                                    <tr>
                                        <td colspan="5" valign="top" style="padding-bottom:12px;">
                                            
                                            
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" valign="top" style="padding-bottom:12px;">
                                             <a href="index.jsp">Home</a><br />
                                            <a href="sales.jsp">Add Sales</a> <br />
                                            <a href="booking.jsp">Add Booking</a><br />
                                             <a href="loginDealer.jsp">Logout</a><br />
                                            
                                        </td>
                                        <td>
                                            <font color="white">
                                                 <%
                                                 Connection con1=null;
          Statement st1=null;
         ResultSet rs1=null;
         String str1=null;
                                 String sn1=request.getParameter("sn");
                                           session.setAttribute("sn1",sn1);
                                           try{
                              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                              con1=DriverManager.getConnection("jdbc:odbc:veh");
                              st1=con1.createStatement();        
                                 rs1= st1.executeQuery("select bid,bdate,bookby,vehiclename,qty,status from booking where slno="+sn1+"");
                                  while(rs1.next()){
                                     
                                  
                              
                                    %>
                                                <table>
                                                    
                                                    <tr><td>Booking ID</td><td><input type="text" name="sid" value=<%=rs1.getString(1)%>></td></tr>
                                                    
                                                   
                                                    <tr><td>Date Of Booking</td><td><input type="text" name="ds" value="<%=rs1.getString(2)%>"></td></tr>
                                                    <tr><td>Booked By</td><td><input type="text" name="cname" value="<%=rs1.getString(3)%>"></td></tr>
                                                    <tr><td>Vehicle Name</td>
                                                        <td>
                                                            <select name="vn">
                                                                <%if(rs1.getString(4).equalsIgnoreCase("Alto")){%>
                                                                <option value="Alto" selected>Alto</option><%}else{%><option value="xylo" selected>xylo</option><%}%>
                                                        </select></td>
                                                    </tr>
                                                    <tr><td>Quantity</td><td><input type="text" name="qty" value="<%=rs1.getInt(5)%>"></td></tr>
                                                    <tr><td>Status Priority</td><td><select name="st">
                                                        <%if(rs1.getString(6).equalsIgnoreCase("Low")){%>
                                                        <option value="Low" selected>Low</option><%}else{%><option value="High" selected>High</option><%}%></select></td></tr>
                                                    <%}%>
                                                    <tr><td><input type="submit" value="Update"></td><td></td></tr>
                                                </table>
                                                 <% }catch(Exception e){e.printStackTrace();}%>
                                            </font>
                                        </td>
                                        <td>
                                            <font color="white">
                                                
                                                <table>
                                                    <tr>
                                                        <td>Slno</td><td>Booking ID</td><td>Booked by</td><td>Delete</td><td>Edit</td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        <%Connection con=null;
                                                        Statement st=null;
                                                        ResultSet rs=null;
                                                        String str=null;
                                                        
                                                        try{
                                                        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                                                        con=DriverManager.getConnection("jdbc:odbc:veh");
                                                        st=con.createStatement();
                                                        
                                                        rs=st.executeQuery("select slno,bid,bookby from booking");
                                                        while(rs.next()){
                                                        
                                                        String slno=rs.getString(1);
                                                        %>
                                                        <td><%=slno%></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td><td><a href="addbook.jsp?sn=<%=slno%>">Delete</a></td><td><a href="Ebook.jsp?sn=<%=slno%>">Edit</a></td>
                                                    </tr>
                                                    <% }
                                                    
                                                    
                                                    }catch(Exception e){e.printStackTrace();}%>
                                                </table>
                                            </font>
                                        </td>
                                        
                                        <td>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" valign="top" style="padding-bottom:12px;">
                                            
                                            
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" valign="top" style="padding-bottom:12px;">
                                            
                                            
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" valign="top" style="padding-bottom:12px;">
                                            
                                            
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" valign="top" style="padding-bottom:12px;">
                                            
                                            
                                            
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td colspan="5" valign="top" style="padding-bottom:12px;">
                                            
                                            
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" valign="top" style="padding-bottom:12px;">
                                            
                                            
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" valign="top" style="padding-bottom:12px;">
                                            
                                            
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" valign="top" style="padding-bottom:12px;">
                                            
                                            
                                            
                                        </td>
                                    </tr>
                                    
                            </table></td>
                        </tr>
                        <tr>
                            <td valign="top"><table width="741" border="0" cellpadding="0" cellspacing="0" style="background-image:url(images/index_74.gif);">
                                    <tr>
                                        <td height="74"><pre><a href="index.html">About Us     </a> | <a href="content.html">    New Cars</a>     | <a href="content.html">    Dealers    </a> | <a href="content.html">    Services</a>     |     <a href="contact.html">Contact Us</a><br /><span class="style3">Copyright &copy; 2002-2006 Company.com. All Rights Reserved.</span></pre></td>
                                    </tr>
                            </table></td>
                        </tr>
                </table></td>
            </tr>
    </table></form>
    
</body>
</html>
