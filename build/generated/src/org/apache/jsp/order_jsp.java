package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class order_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    JspFactory _jspxFactory = null;
    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      _jspxFactory = JspFactory.getDefaultFactory();
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("<title>Car Company</title>\n");
      out.write("<link href=\"css.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write(".style1 {color: #827d7d}\n");
      out.write(".style3 {color: #CCCCCC}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<table width=\"780\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("  <tr>\n");
      out.write("    <td valign=\"top\" bgcolor=\"#000000\"><table width=\"741\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("      <tr>\n");
      out.write("        <td valign=\"top\">\n");
      out.write("\t\t\n");
      out.write("\t\t<table width=\"741\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("            <tr>\n");
      out.write("              <td width=\"12\" valign=\"top\">&nbsp;</td>\n");
      out.write("              <td colspan=\"3\" valign=\"top\">&nbsp;</td>\n");
      out.write("              <td width=\"12\" valign=\"top\">&nbsp;</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("              <td width=\"12\" valign=\"top\"><img src=\"images/index_06.gif\" width=\"12\" height=\"69\" alt=\"\" /></td>\n");
      out.write("              <td width=\"443\" valign=\"top\" style=\"background-image:url(images/index_08.gif);\"><div style=\"padding-left:20px; padding-top:23px;\"><a href=\"index.html\"><img src=\"images/index_12.gif\" alt=\"\" width=\"189\" height=\"24\" border=\"0\" /></a></div></td>\n");
      out.write("              <td width=\"203\" align=\"right\" valign=\"middle\" style=\"background-image:url(images/index_08.gif);\"><input name=\"textfield\" type=\"text\" style=\"height:20px;\" value=\" -- Site Search --\" /></td>\n");
      out.write("              <td width=\"71\" align=\"right\" valign=\"middle\" style=\"background-image:url(images/index_08.gif);\"><input type=\"image\" name=\"imageField\" src=\"images/index_15.gif\" style=\"border:0px;\" /></td>\n");
      out.write("              <td width=\"12\" valign=\"top\"><img src=\"images/index_10.gif\" width=\"12\" height=\"69\" alt=\"\" /></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("              <td height=\"15px\" colspan=\"5\" valign=\"top\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("              <td colspan=\"5\" valign=\"top\"><table width=\"741\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("                <tr>\n");
      out.write("                  <td width=\"291\" valign=\"top\"><img src=\"images/index_22.gif\" width=\"291\" height=\"224\" alt=\"\" /></td>\n");
      out.write("                  <td width=\"247\" valign=\"top\"><img src=\"images/index_23.gif\" width=\"247\" height=\"224\" alt=\"\" /></td>\n");
      out.write("                  <td width=\"12\" valign=\"top\"><img src=\"images/index_24.gif\" width=\"12\" height=\"224\" alt=\"\" /></td>\n");
      out.write("                  <td width=\"158\" valign=\"top\" style=\"\" class=\"menu\">> <br />\n");
      out.write("                               \n");
      out.write("                               \n");
      out.write("                  <td width=\"33\" valign=\"top\"></td>\n");
      out.write("                </tr>\n");
      out.write("              </table>\n");
      out.write("\t\t\t  \n");
      out.write("\t\t\t  </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("              <td height=\"8px\" colspan=\"5\" valign=\"top\"></td>\n");
      out.write("            </tr>\n");
      out.write("          \n");
      out.write("        </table>\n");
      out.write("\t\t\n");
      out.write("\t\t</td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td valign=\"top\"><table width=\"741\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("          <tr>\n");
      out.write("          \n");
      out.write("          </tr>\n");
      out.write("          <tr>\n");
      out.write("            <td height=\"10px\" colspan=\"5\" valign=\"top\"></td>\n");
      out.write("          </tr>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          <tr>\n");
      out.write("            <td colspan=\"5\" valign=\"top\" style=\"padding-bottom:12px;\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("              </td>\n");
      out.write("          </tr>\n");
      out.write("          <tr>\n");
      out.write("            <td colspan=\"5\" valign=\"top\" style=\"padding-bottom:12px;\">\n");
      out.write("                <font color=\"white\"> <table>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>slno</td><td>Booking ID</td><td>Booked By</td><td>Vehicle Name</td><td>Quantity</td><td>Update</td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                        
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
                        
      out.write("\n");
      out.write("                        <td>");
      out.print(sn);
      out.write("</td><td>");
      out.print(bid);
      out.write("</td><td>");
      out.print(bk);
      out.write("</td><td>");
      out.print(vn);
      out.write("</td><td>");
      out.print(qty);
      out.write("</td><td><a href=\"orderup.jsp?slno=");
      out.print(sn);
      out.write("&&st=Complete&&vn1=");
      out.print(vn);
      out.write("&&qty1=");
      out.print(qty);
      out.write("\">Update</a></td>\n");
      out.write("                        ");
}}catch(Exception e){}
      out.write("\n");
      out.write("                </table></font>\n");
      out.write("              </td>\n");
      out.write("          </tr>\n");
      out.write("          <tr>\n");
      out.write("            <td colspan=\"5\" valign=\"top\" style=\"padding-bottom:12px;\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("              </td>\n");
      out.write("          </tr>\n");
      out.write("          <tr>\n");
      out.write("            <td colspan=\"5\" valign=\"top\" style=\"padding-bottom:12px;\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("              </td>\n");
      out.write("          </tr>\n");
      out.write("          <tr>\n");
      out.write("            <td colspan=\"5\" valign=\"top\" style=\"padding-bottom:12px;\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("              </td>\n");
      out.write("          </tr>\n");
      out.write("          <tr>\n");
      out.write("            <td colspan=\"5\" valign=\"top\" style=\"padding-bottom:12px;\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("              </td>\n");
      out.write("          </tr>\n");
      out.write("          \n");
      out.write("          <tr>\n");
      out.write("            <td colspan=\"5\" valign=\"top\" style=\"padding-bottom:12px;\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("              </td>\n");
      out.write("          </tr>\n");
      out.write("          <tr>\n");
      out.write("            <td colspan=\"5\" valign=\"top\" style=\"padding-bottom:12px;\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("              </td>\n");
      out.write("          </tr>\n");
      out.write("          <tr>\n");
      out.write("            <td colspan=\"5\" valign=\"top\" style=\"padding-bottom:12px;\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("              </td>\n");
      out.write("          </tr>\n");
      out.write("          <tr>\n");
      out.write("            <td colspan=\"5\" valign=\"top\" style=\"padding-bottom:12px;\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("              </td>\n");
      out.write("          </tr>\n");
      out.write("          \n");
      out.write("        </table></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td valign=\"top\"><table width=\"741\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-image:url(images/index_74.gif);\">\n");
      out.write("          <tr>\n");
      out.write("            <td height=\"74\"><pre><a href=\"index.html\">About Us     </a> | <a href=\"content.html\">    New Cars</a>     | <a href=\"content.html\">    Dealers    </a> | <a href=\"content.html\">    Services</a>     |     <a href=\"contact.html\">Contact Us</a><br /><span class=\"style3\">Copyright &copy; 2002-2006 Company.com. All Rights Reserved.</span></pre></td>\n");
      out.write("          </tr>\n");
      out.write("        </table></td>\n");
      out.write("      </tr>\n");
      out.write("    </table></td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      if (_jspxFactory != null) _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
