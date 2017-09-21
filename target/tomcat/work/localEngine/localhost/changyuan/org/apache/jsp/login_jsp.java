package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n\r\n");

	String path = request.getContextPath();

      out.write("\r\n<!DOCTYPE html>\r\n<html lang=\"en\">\r\n\r\n<head>\r\n<title></title>\r\n<meta charset=\"UTF-8\" />\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n<link rel=\"stylesheet\" href=\"static/login/bootstrap.min.css\" />\r\n<link rel=\"stylesheet\" href=\"static/login/css/camera.css\" />\r\n<link rel=\"stylesheet\" href=\"static/login/bootstrap-responsive.min.css\" />\r\n<link rel=\"stylesheet\" href=\"static/login/matrix-login.css\" />\r\n<link href=\"static/login/font-awesome.css\" rel=\"stylesheet\" />\r\n<script type=\"text/javascript\" src=\"static/js/jquery-1.5.1.min.js\"></script>\r\n</head>\r\n<body>\r\n\t<div\r\n\t\tstyle=\"width:100%;text-align: center;margin: 0 auto;position: absolute;\">\r\n\t\t<div id=\"loginbox\">\r\n\t\t\t<form action=\"\" method=\"post\" name=\"loginForm\"\r\n\t\t\t\tid=\"loginForm\">\r\n\t\t\t\t<div class=\"control-group normal_text\">\r\n\t\t\t\t\t<h3>\r\n\t\t\t\t\t\tChanghaiHospital\r\n\t\t\t\t\t</h3>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"control-group\">\r\n\t\t\t\t\t<div class=\"controls\">\r\n\t\t\t\t\t\t<div class=\"main_input_box\">\r\n\t\t\t\t\t\t\t<span>\r\n\t\t\t\t\t\t\t<i></i>\r\n\t\t\t\t\t\t\t</span><input type=\"text\" name=\"login_name\" id=\"login_name\" value=\"\" placeholder=\"请输入用户名\" />\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"control-group\">\r\n\t\t\t\t\t<div class=\"controls\">\r\n\t\t\t\t\t\t<div class=\"main_input_box\">\r\n\t\t\t\t\t\t\t<span>\r\n\t\t\t\t\t\t\t<i></i>\r\n\t\t\t\t\t\t\t</span><input type=\"password\" name=\"password\" id=\"password\" placeholder=\"请输入密码\" value=\"\" />\r\n\t\t\t\t\t\t</div>\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t\t<div class=\"form-actions\">\r\n\t\t\t\t\t<div style=\"width:86%;padding-left:8%;\">\r\n\t\t\t\t\t\t<span\r\n\t\t\t\t\t\t\tclass=\"pull-right\"><a onclick=\"login();\"\r\n\t\t\t\t\t\t\tclass=\"flip-link btn btn-info\" id=\"to-recover\">登录</a>\r\n\t\t\t\t\t\t</span>\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</div>\r\n\t\t\t</form>\r\n\r\n\t\t\t<div class=\"controls\">\r\n\t\t\t\t<div class=\"main_input_box\">\r\n\t\t\t\t\t<font color=\"white\"><span id=\"nameerr\">Copyright</span></font>\r\n\t\t\t\t</div>\r\n\t\t\t</div>\r\n\t\t</div>\r\n\t</div>\r\n\r\n\t<script type=\"text/javascript\">\r\n\tfunction login() {\r\n\t\tvar loginName = $('#loginname').value;\r\n\t\tvar password = $('#').value;\r\n\t\t//alert(loginType);\r\n\t\tif (loginName == \"\") {\r\n\t\t\talert(\"请输入用户名！\");\r\n\t\t\tloginForm.login_name.focus();\r\n\t\t\treturn;\r\n\t\t} else if (password == \"\") {\r\n\t\t\talert(\"请输入密码！\");\r\n");
      out.write("\t\t\tloginForm.password.focus();\r\n\t\t\treturn;\r\n\t\t} else {\r\n\t\t\tloginForm.action = \"j_spring_security_check\";\r\n\t\t\tloginForm.submit();\r\n\t\t}\r\n\t}\r\n\t</script>\r\n\r\n\t<script src=\"static/js/bootstrap.min.js\"></script>\r\n\t<script src=\"static/js/jquery-1.7.2.js\"></script>\r\n</body>\r\n\r\n</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
