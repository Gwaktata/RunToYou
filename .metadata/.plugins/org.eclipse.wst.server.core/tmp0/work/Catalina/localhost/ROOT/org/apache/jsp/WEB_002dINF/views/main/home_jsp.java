/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.37
 * Generated at: 2022-04-20 04:37:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.main;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/WEB-INF/lib/spring-security-taglibs-5.0.7.RELEASE.jar", Long.valueOf(1644822111181L));
    _jspx_dependants.put("jar:file:/D:/A_TeachingMaterial/7.LastProject/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/final_project/WEB-INF/lib/spring-security-taglibs-5.0.7.RELEASE.jar!/META-INF/security.tld", Long.valueOf(1532606274000L));
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

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess;

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
    _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess.release();
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
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write(".clock {\r\n");
      out.write("    color: #2daab8;\r\n");
      out.write("    font-size: 50px;\r\n");
      out.write("    letter-spacing: 3px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("$(function(){\r\n");
      out.write("\tshowTime();\r\n");
      out.write("\t\r\n");
      out.write("\tfunction showTime(){\r\n");
      out.write("\t    var date = new Date();\r\n");
      out.write("\t    var h = date.getHours(); // 0 - 23\r\n");
      out.write("\t    var m = date.getMinutes(); // 0 - 59\r\n");
      out.write("\t    var s = date.getSeconds(); // 0 - 59\r\n");
      out.write("\t    var session = \"AM\";\r\n");
      out.write("\t    \r\n");
      out.write("\t    if(h == 0){\r\n");
      out.write("\t        h = 12;\r\n");
      out.write("\t    }\r\n");
      out.write("\t    \r\n");
      out.write("\t    if(h > 12){\r\n");
      out.write("\t        h = h - 12;\r\n");
      out.write("\t        session = \"PM\";\r\n");
      out.write("\t    }\r\n");
      out.write("\t    \r\n");
      out.write("\t    h = (h < 10) ? \"0\" + h : h;\r\n");
      out.write("\t    m = (m < 10) ? \"0\" + m : m;\r\n");
      out.write("\t    s = (s < 10) ? \"0\" + s : s;\r\n");
      out.write("\t    \r\n");
      out.write("\t    var time = h + \":\" + m + \":\" + s + \" \" + session;\r\n");
      out.write("\t    document.getElementById(\"MyClockDisplay\").innerText = time;\r\n");
      out.write("\t    document.getElementById(\"MyClockDisplay\").textContent = time;\r\n");
      out.write("\t    \r\n");
      out.write("\t    setTimeout(showTime, 1000);\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t$.ajax({\r\n");
      out.write("\t\turl:\"/rsvToday\",\r\n");
      out.write("\t\tmethod: \"post\",\r\n");
      out.write("\t\tdata: {empCd:\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${loginUser.empCd}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"},\r\n");
      out.write("\t\tdataType:\"html\",\r\n");
      out.write("\t\ttraditional:\"true\",\r\n");
      out.write("\t\tbeforeSend: function (jqXHR, settings) {\r\n");
      out.write("\t\t\t/* ajax 사용시 헤더에 스프링시큐리티 토큰 설정 */\r\n");
      out.write("\t\t\tvar token = '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${_csrf.token}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'\r\n");
      out.write("\t\t\tvar header = '");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${_csrf.headerName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'\r\n");
      out.write("\t\t\tjqXHR.setRequestHeader(header, token);\r\n");
      out.write("\t\t},\r\n");
      out.write("\t\tsuccess: function(res) {\r\n");
      out.write("\t\t\tvar html = $(\"<div>\").html(res);\r\n");
      out.write("\t\t\tvar contents = html.find(\"div#ajaxData\").html();\r\n");
      out.write("\t\t\t$(\"#rsvToday\").html(contents);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t});\r\n");
      out.write("\t\r\n");
      out.write("})\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write(".main_content_iner{\r\n");
      out.write("\tbackground-image: url(\"/resources/upload/main.jpg\");\r\n");
      out.write("\tbackground-size: cover;\r\n");
      out.write("}\r\n");
      out.write(".timeBox{\r\n");
      out.write("\tdisplay: inline-block;\r\n");
      out.write("\tfloat: left;\r\n");
      out.write("\tmargin: 10px;\r\n");
      out.write("}\r\n");
      out.write(".nameBox{\r\n");
      out.write("\tdisplay: inline-block;\r\n");
      out.write("\tfloat: right;\r\n");
      out.write("\tmargin-top: 43px;\r\n");
      out.write("\tmargin-right: 20px;\r\n");
      out.write("}\r\n");
      out.write(".rsvToday{\r\n");
      out.write("\tdisplay: block;\r\n");
      out.write("\tclear: both;\r\n");
      out.write("\tfloat:right;\r\n");
      out.write("\tmargin: 15px;\r\n");
      out.write("\theight: 300px;\r\n");
      out.write("\toverflow: auto;\r\n");
      out.write("}\r\n");
      out.write("#tbl{\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("}\r\n");
      out.write("#tbl th, #tbl td{\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<!-- 본문 컨텐츠 시작 -->\r\n");
      out.write("<div class=\"main_content_iner\">\r\n");
      out.write("\t<div class=\"container-fluid p-0\">\r\n");
      out.write("\t\r\n");
      out.write("\t\t<div class=\"timeBox\">\r\n");
      out.write("\t\t\t<h2>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${serverTime}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</h2>\r\n");
      out.write("\t\t\t<div id=\"MyClockDisplay\" class=\"clock\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t");
      if (_jspx_meth_sec_005fauthorize_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t");
      if (_jspx_meth_sec_005fauthorize_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t");
      if (_jspx_meth_sec_005fauthorize_005f2(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\tconst ranNum = Math.random();\r\n");
      out.write("\r\n");
      out.write("\tif(ranNum < 0.2){\r\n");
      out.write("\t\t$(\"#randomText\").text(\"오늘도 환자를 위해 힘써주세요!\");\r\n");
      out.write("\t}else if(ranNum < 0.4){\r\n");
      out.write("\t\t$(\"#randomText\").text(\"당신을 존경합니다!\");\r\n");
      out.write("\t}else if(ranNum < 0.5){\r\n");
      out.write("\t\t$(\"#randomText\").text(\"의료진 여러분을 응원합니다!\");\r\n");
      out.write("\t}else if(ranNum < 0.6){\r\n");
      out.write("\t\t$(\"#randomText\").text(\"함께 이겨내요!\");\r\n");
      out.write("\t}else if(ranNum < 0.8){\r\n");
      out.write("\t\t$(\"#randomText\").text(\"환자 뒤엔 우리가 있다!\");\r\n");
      out.write("\t}else{\r\n");
      out.write("\t\t$(\"#randomText\").text(\"당신은 진정한 영웅입니다!\");\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
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

  private boolean _jspx_meth_sec_005fauthorize_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  sec:authorize
    org.springframework.security.taglibs.authz.JspAuthorizeTag _jspx_th_sec_005fauthorize_005f0 = (org.springframework.security.taglibs.authz.JspAuthorizeTag) _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess.get(org.springframework.security.taglibs.authz.JspAuthorizeTag.class);
    boolean _jspx_th_sec_005fauthorize_005f0_reused = false;
    try {
      _jspx_th_sec_005fauthorize_005f0.setPageContext(_jspx_page_context);
      _jspx_th_sec_005fauthorize_005f0.setParent(null);
      // /WEB-INF/views/main/home.jsp(107,2) name = access type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_sec_005fauthorize_005f0.setAccess("hasAnyRole(\"ROLE_DOCTOR\",\"ROLE_NURSE\",\"ROLE_ENGI\",\"ROLE_WONMU\")");
      int _jspx_eval_sec_005fauthorize_005f0 = _jspx_th_sec_005fauthorize_005f0.doStartTag();
      if (_jspx_eval_sec_005fauthorize_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        out.write("\r\n");
        out.write("\t\t<div class=\"nameBox\">\r\n");
        out.write("\t\t\t<h2 class=\"nameText\" align=\"right\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${loginUser.empNm}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
        out.write("님</h2>\r\n");
        out.write("\t\t\t<h3 class=\"nameText\" id=\"randomText\" align=\"right\"></h3>\r\n");
        out.write("\t\t</div>\r\n");
        out.write("\t\t");
      }
      if (_jspx_th_sec_005fauthorize_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess.reuse(_jspx_th_sec_005fauthorize_005f0);
      _jspx_th_sec_005fauthorize_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_sec_005fauthorize_005f0, _jsp_getInstanceManager(), _jspx_th_sec_005fauthorize_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_sec_005fauthorize_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  sec:authorize
    org.springframework.security.taglibs.authz.JspAuthorizeTag _jspx_th_sec_005fauthorize_005f1 = (org.springframework.security.taglibs.authz.JspAuthorizeTag) _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess.get(org.springframework.security.taglibs.authz.JspAuthorizeTag.class);
    boolean _jspx_th_sec_005fauthorize_005f1_reused = false;
    try {
      _jspx_th_sec_005fauthorize_005f1.setPageContext(_jspx_page_context);
      _jspx_th_sec_005fauthorize_005f1.setParent(null);
      // /WEB-INF/views/main/home.jsp(113,2) name = access type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_sec_005fauthorize_005f1.setAccess("hasRole(\"ROLE_ADMIN\")");
      int _jspx_eval_sec_005fauthorize_005f1 = _jspx_th_sec_005fauthorize_005f1.doStartTag();
      if (_jspx_eval_sec_005fauthorize_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        out.write("\r\n");
        out.write("\t\t<div class=\"nameBox\">\r\n");
        out.write("\t\t\t<h2 class=\"nameText\" align=\"right\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${loginUser.empNm}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
        out.write(" 모드</h2>\r\n");
        out.write("\t\t</div>\r\n");
        out.write("\t\t");
      }
      if (_jspx_th_sec_005fauthorize_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess.reuse(_jspx_th_sec_005fauthorize_005f1);
      _jspx_th_sec_005fauthorize_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_sec_005fauthorize_005f1, _jsp_getInstanceManager(), _jspx_th_sec_005fauthorize_005f1_reused);
    }
    return false;
  }

  private boolean _jspx_meth_sec_005fauthorize_005f2(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  sec:authorize
    org.springframework.security.taglibs.authz.JspAuthorizeTag _jspx_th_sec_005fauthorize_005f2 = (org.springframework.security.taglibs.authz.JspAuthorizeTag) _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess.get(org.springframework.security.taglibs.authz.JspAuthorizeTag.class);
    boolean _jspx_th_sec_005fauthorize_005f2_reused = false;
    try {
      _jspx_th_sec_005fauthorize_005f2.setPageContext(_jspx_page_context);
      _jspx_th_sec_005fauthorize_005f2.setParent(null);
      // /WEB-INF/views/main/home.jsp(118,2) name = access type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_sec_005fauthorize_005f2.setAccess("hasRole(\"ROLE_DOCTOR\")");
      int _jspx_eval_sec_005fauthorize_005f2 = _jspx_th_sec_005fauthorize_005f2.doStartTag();
      if (_jspx_eval_sec_005fauthorize_005f2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        out.write("\r\n");
        out.write("\t\t<div class=\"rsvToday\">\r\n");
        out.write("\t\t\t<h2>금일 예약 명단</h2>\r\n");
        out.write("\t\t\t<div id=\"rsvToday\">\r\n");
        out.write("\t\t\t\r\n");
        out.write("\t\t\t</div>\r\n");
        out.write("\t\t</div>\r\n");
        out.write("\t\t");
      }
      if (_jspx_th_sec_005fauthorize_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess.reuse(_jspx_th_sec_005fauthorize_005f2);
      _jspx_th_sec_005fauthorize_005f2_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_sec_005fauthorize_005f2, _jsp_getInstanceManager(), _jspx_th_sec_005fauthorize_005f2_reused);
    }
    return false;
  }
}