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
    <form method="post" action="addbook.jsp">
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
                                        <td width="443" valign="top" style="background-image:url(images/index_08.gif);"><div style="padding-left:20px; padding-top:23px;"><font size="5">Vehicle Management System</font></div></td>
                                        <td width="203" align="right" valign="middle" style="background-image:url(images/index_08.gif);"></td>
                                        <td width="71" align="right" valign="middle" style="background-image:url(images/index_08.gif);"></td>
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
                                                <table border="1">
                                                    <%
                                                    Connection con1=null;
                                                        Statement st1=null;
                                                        ResultSet rs1=null;
                                                        String str1=null;
                                                        String bid=null;
                                                        try{
                                                            
                                                           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                                                        con1=DriverManager.getConnection("jdbc:odbc:veh");
                                                        st1=con1.createStatement();
                                                    
                                                        str1="select max(slno) from booking";
                                                        rs1=st1.executeQuery(str1);
                                                        while(rs1.next()){
                                                                    int cnt=rs1.getInt(1);
                                                                    
                                                                        bid="B"+cnt;
                                                                                                                                       
                                                                    
                                                    %>
                                                    <tr><td>Booking ID</td><td><input type="text" name="sid" value=<%=bid%>></td></tr>
                                                    
                                                    <%}}catch(Exception e){e.printStackTrace();}
                                                    
                                                    %>
                                                    <tr><td>Date Of Booking</td><td><input type="text" name="ds"></td></tr>
                                                    <tr><td>Booked By</td><td><input type="text" name="cname"></td></tr>
                                                    <tr><td>Vehicle Name</td>
                                                        <td>
                                                            <select name="vn"><option value="Alto">Alto</option><option value="xylo">xylo</option>
                                                        </select></td>
                                                    </tr>
                                                    <tr><td>Quantity</td><td><input type="text" name="qty"></td></tr>
                                                    <tr><td>Status Priority</td><td><select name="st"><option value="Low">Low</option><option value="High">High</option></select></td></tr>
                                                    <tr><td><input type="submit" value="Add"></td><td></td></tr>
                                                </table>
                                                
                                            </font>
                                        </td>
                                        <td>
                                            <font color="white">
                                                
                                                <table border="1">
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
