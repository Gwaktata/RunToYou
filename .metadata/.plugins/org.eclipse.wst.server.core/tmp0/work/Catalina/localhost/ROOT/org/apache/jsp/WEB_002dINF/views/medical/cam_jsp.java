/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.37
 * Generated at: 2022-04-09 02:30:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.medical;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cam_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1643079176937L));
    _jspx_dependants.put("jar:file:/D:/A_TeachingMaterial/7.LastProject/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/final_project/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<style>\r\n");
      out.write("\t.loding-center {\r\n");
      out.write("\t\twidth: 100%;\r\n");
      out.write("\t\tposition: relative;\r\n");
      out.write("\t\tz-index: 1;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\t.spinner-border {\r\n");
      out.write("\t\tdisplay: block;\r\n");
      out.write("\t\tposition: fixed;\r\n");
      out.write("\t\ttop: calc(50% - (58px / 2));\r\n");
      out.write("\t\tright: calc(50% - (58px / 2));\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<!-- <script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script> -->\r\n");
      out.write("<script>\r\n");
      out.write("\t$(document).ready(function () {\r\n");
      out.write("\t\t$('.spinner-border').hide();\r\n");
      out.write("\t\tif (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {\r\n");
      out.write("\t\t\tnavigator.mediaDevices.getUserMedia({ video: true }).then(function (stream) {\r\n");
      out.write("\t\t\t\tvar video = document.getElementById('video');\r\n");
      out.write("\t\t\t\tvideo.srcObject = stream;\r\n");
      out.write("\t\t\t\tvideo.play();\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tvar canvas = document.getElementById('canvas');\r\n");
      out.write("\t\tvar context = canvas.getContext('2d');\r\n");
      out.write("\t\tvar video = document.getElementById('video');\r\n");
      out.write("\r\n");
      out.write("\t\t$(\"#webcamBtn\").click(function () {\r\n");
      out.write("\t\t\tcontext.drawImage(video, 0, 0, 320, 240);\r\n");
      out.write("\t\t\t$('.spinner-border').show();\r\n");
      out.write("\t\t\t$.ajax({\r\n");
      out.write("\t\t\t\t'type': 'post'\r\n");
      out.write("\t\t\t\t, 'data': { \r\n");
      out.write("\t\t\t\t\t'base64img': canvas.toDataURL()\r\n");
      out.write("\t\t\t\t\t, 'empCd':  '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${loginUser.empCd}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\t, 'url': '/medical/insertCam'\r\n");
      out.write("\t\t\t\t, beforeSend: function (jqXHR, settings) {\r\n");
      out.write("\t\t\t\t\t/* ajax 사용시 헤더에 스프링시큐리티 토큰 설정 */\r\n");
      out.write("\t\t\t\t\tvar token = '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${_csrf.token}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'\r\n");
      out.write("\t\t\t\t\tvar header = '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${_csrf.headerName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'\r\n");
      out.write("\t\t\t\t\tjqXHR.setRequestHeader(header, token);\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t})\r\n");
      out.write("\t\t\t.done((data) => {\r\n");
      out.write("\t\t\t\tconsole.log('data');\r\n");
      out.write("\t\t\t\tconsole.log(data);\r\n");
      out.write("\t\t\t\talert(\"촬영하였습니다.\");\r\n");
      out.write("\t\t\t\t$('.spinner-border').hide();\r\n");
      out.write("\t\t\t})\r\n");
      out.write("\t\t\t.fail((data) => {\r\n");
      out.write("\t\t\t\tconsole.log('fail');\r\n");
      out.write("\t\t\t\tconsole.log(data);\r\n");
      out.write("\t\t\t\t$('.spinner-border').hide();\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\r\n");
      out.write("\t\t});\r\n");
      out.write("\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"loding-center\">\r\n");
      out.write("\t\t<div class=\"spinner-border\" role=\"status\">\r\n");
      out.write("\t\t\t<span class=\"sr-only\">Loading...</span>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<video id=\"video\" width=\"320\" height=\"240\" autoplay></video>\r\n");
      out.write("\t<button type=\"button\" class=\"btn btn-primary\" id=\"webcamBtn\">촬영하기</button>\r\n");
      out.write("\t<button type=\"button\" class=\"btn btn-primary\"\r\n");
      out.write("\t\tonclick=\"javascript:location.href='/medical/treat';\">진료페이지</button>\r\n");
      out.write("\t<div class=\"page-header\">\r\n");
      out.write("\t\t<h4>촬영결과</h4>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<canvas id=\"canvas\" width=\"320\" height=\"240\"></canvas>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
