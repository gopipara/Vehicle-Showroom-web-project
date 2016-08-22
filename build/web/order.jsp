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
                <font color="white"> <table border="1">
                        <tr>
                            <td>slno</td><td>Booking ID</td><td>Booked By</td><td>Vehicle Name</td><td>Quantity</td><td>Update</td>
                        </tr>
                        <%
                        
                        Connection con=null;
                        Statement st=null;
                        ResultSet rs=null;
                        String str=null;
                        
                        try{
                        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                        con=DriverManager.getConnection("jdbc:odbc:veh");
                        st=con.createStatement();
                        
                        rs=st.executeQuery("select slno,bid,bookby,vehiclename,qty from booking where orderst is NULL");
                        while(rs.next()){
                        String sn=rs.getString(1);
                        String bid=rs.getString(2);
                          String bk=rs.getString(3);
                            String vn=rs.getString(4);
                            int qty=rs.getInt(5);
                        %>
                        <tr> <td><%=sn%></td><td><%=bid%></td><td><%=bk%></td><td><%=vn%></td><td><%=qty%></td><td><a href="orderup.jsp?slno=<%=sn%>&&st=Complete&&vn1=<%=vn%>&&qty1=<%=qty%>">Update</a></td><%}%></tr>
                        <%}catch(Exception e){}%>
                </table></font>
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
</table>
</body>
</html>
