package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginDealer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("<title>Vehicle Management System</title>\n");
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
      out.write("   <form method=\"post\" action=\"loginD.jsp\">\n");
      out.write("        <table width=\"780\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("            <tr>\n");
      out.write("                <td valign=\"top\" bgcolor=\"#000000\"><table width=\"741\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td valign=\"top\">\n");
      out.write("                                 \n");
      out.write("                                    <table width=\"741\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td width=\"12\" valign=\"top\">&nbsp;</td>\n");
      out.write("                                            <td colspan=\"3\" valign=\"top\">&nbsp;</td>\n");
      out.write("                                            <td width=\"12\" valign=\"top\">&nbsp;</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td width=\"12\" valign=\"top\"><img src=\"images/index_06.gif\" width=\"12\" height=\"69\" alt=\"\" /></td>\n");
      out.write("                                            <td width=\"443\" valign=\"top\" style=\"background-image:url(images/index_08.gif);\"><div style=\"padding-left:20px; padding-top:23px;\"><font size=\"5\">Vehicle Management System</font></div></td>\n");
      out.write("                                            <td width=\"203\" align=\"right\" valign=\"middle\" style=\"background-image:url(images/index_08.gif);\"></td>\n");
      out.write("                                            <td width=\"71\" align=\"right\" valign=\"middle\" style=\"background-image:url(images/index_08.gif);\"></td>\n");
      out.write("                                            <td width=\"12\" valign=\"top\"><img src=\"images/index_10.gif\" width=\"12\" height=\"69\" alt=\"\" /></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td height=\"15px\" colspan=\"5\" valign=\"top\"></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"5\" valign=\"top\"><table width=\"741\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td width=\"291\" valign=\"top\"><img src=\"images/index_22.gif\" width=\"291\" height=\"224\" alt=\"\" /></td>\n");
      out.write("                                                        <td width=\"247\" valign=\"top\"><img src=\"images/index_23.gif\" width=\"247\" height=\"224\" alt=\"\" /></td>\n");
      out.write("                                                        <td width=\"12\" valign=\"top\"><img src=\"images/index_24.gif\" width=\"12\" height=\"224\" alt=\"\" /></td>\n");
      out.write("                                                        <td width=\"158\" valign=\"top\" style=\"background-image:url(images/index_26.gif);\" class=\"menu\"><a href=\"\"></a> <br />\n");
      out.write("                                                            <a href=\"\"></a> <br />\n");
      out.write("                                                            <a href=\"\"></a><br />\n");
      out.write("                                                            <a href=\"\"> </a><br />\n");
      out.write("                                                            <a href=\"\"> </a><br />\n");
      out.write("                                                        <a href=\"\"></a></td>\n");
      out.write("                                                        <td width=\"33\" valign=\"top\"></td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                </table>\n");
      out.write("                                                \n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td height=\"8px\" colspan=\"5\" valign=\"top\"></td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        \n");
      out.write("                                    </table>\n");
      out.write("                               \n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td valign=\"top\"><table width=\"741\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td width=\"135\" height=\"80\" align=\"center\" bgcolor=\"#FFFFFF\" class=\"border1\"><a href=\"#\"><img src=\"images/index_39.gif\" alt=\"\" width=\"113\" height=\"49\" border=\"0\" /></a></td>\n");
      out.write("                                        <td width=\"152\" height=\"80\" align=\"center\" bgcolor=\"#FFFFFF\" class=\"border1\"><a href=\"#\"><img src=\"images/index_41.gif\" alt=\"\" width=\"120\" height=\"50\" border=\"0\" /></a></td>\n");
      out.write("                                        <td width=\"153\" height=\"80\" align=\"center\" bgcolor=\"#FFFFFF\" class=\"border1\"><a href=\"#\"><img src=\"images/index_33.gif\" alt=\"\" width=\"105\" height=\"50\" border=\"0\" /></a></td>\n");
      out.write("                                        <td width=\"151\" height=\"80\" align=\"center\" bgcolor=\"#FFFFFF\" class=\"border1\"><a href=\"#\"><img src=\"images/index_44.gif\" alt=\"\" width=\"123\" height=\"39\" border=\"0\" /></a></td>\n");
      out.write("                                        <td width=\"150\" height=\"80\" align=\"center\" bgcolor=\"#FFFFFF\"><a href=\"#\"><img src=\"images/index_36.gif\" alt=\"\" width=\"122\" height=\"50\" border=\"0\" /></a></td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td height=\"10px\" colspan=\"5\" valign=\"top\"></td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td colspan=\"5\" valign=\"top\" style=\"padding-bottom:12px;\"><table width=\"741\" border=\"0\" cellspacing=\"6\" cellpadding=\"0\">\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td width=\"245\" valign=\"top\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
      out.write("                                                            <tr>\n");
      out.write("                                                                <td class=\"border\"><table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n");
      out.write("                                                                        \n");
      out.write("                                                                        \n");
      out.write("                                                                        \n");
      out.write("                                                                        \n");
      out.write("                                                                        \n");
      out.write("                                                                        <tr>\n");
      out.write("                                                                            <td width=\"14%\" align=\"center\" valign=\"middle\"></td>\n");
      out.write("                                                                            <td width=\"86%\" valign=\"top\" class=\"text\" align=\"center\"><a href=\"#\"><strong>LOGIN</strong></a><strong> </strong></td>\n");
      out.write("                                                                        </tr>\n");
      out.write("                                                                </table></td>\n");
      out.write("                                                            </tr>\n");
      out.write("                                                            <tr>\n");
      out.write("                                                                <td height=\"10px\"></td>\n");
      out.write("                                                            </tr>\n");
      out.write("                                                            <tr>\n");
      out.write("                                                                <td bgcolor=\"313131\" class=\"border\"><table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"313131\">\n");
      out.write("                                                                        <tr>\n");
      out.write("                                                                            <td height=\"30\" colspan=\"2\" align=\"center\">User Id &nbsp;&nbsp;&nbsp;<input type=\"text\" name=\"userid\"></td>\n");
      out.write("                                                                        </tr>\n");
      out.write("                                                                        <tr>\n");
      out.write("                                                                            <td height=\"10\" colspan=\"2\" valign=\"top\" align=\"center\">Password  <input type=\"text\" name=\"pswd\"></td>\n");
      out.write("                                                                        </tr>\n");
      out.write("                                                                        <tr>\n");
      out.write("                                                                            <td colspan=\"2\"></td>\n");
      out.write("                                                                        </tr>\n");
      out.write("                                                                        <tr>\n");
      out.write("                                                                            <td height=\"25\" colspan=\"2\" valign=\"top\" class=\"text\" align=\"center\"><input type=\"submit\" name=\"Submit\" value=\"Submit\"></td>\n");
      out.write("                                                                        </tr>\n");
      out.write("                                                                        \n");
      out.write("                                                                </table></td>\n");
      out.write("                                                            </tr>\n");
      out.write("                                                    </table></td>\n");
      out.write("                                                    \n");
      out.write("                                                    \n");
      out.write("                                                </tr>\n");
      out.write("                                        </table></td>\n");
      out.write("                                    </tr>\n");
      out.write("                            </table></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr></tr><tr></tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td valign=\"top\"><table width=\"741\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-image:url(images/index_74.gif);\">\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td height=\"74\"><pre><a href=\"index.html\">About Us     </a> | <a href=\"content.html\">    New Cars</a>     | <a href=\"content.html\">    Dealers    </a> | <a href=\"content.html\">    Services</a>     |     <a href=\"contact.html\">Contact Us</a><br /><span class=\"style3\">Copyright &copy; 2002-2006 Company.com. All Rights Reserved.</span></pre></td>\n");
      out.write("                                    </tr>\n");
      out.write("                            </table></td>\n");
      out.write("                        </tr>\n");
      out.write("                </table></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </form>\n");
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
