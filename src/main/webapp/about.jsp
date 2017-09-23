<%-- 
    Document   : about
    Created on : Jul 4, 2017, 1:59:14 PM
    Author     : svendavison
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String title = String.format("%s: About", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>
            <jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

 

            <div class="center fadein redshadow">
                <p id="p-center">
                    I decided it had been a while since I made a java (JSP) based website. With this in mind, I set forth to convert the site
                    that was previously done in PHP using the 'CodeIgniter' framework.
                </p>
                
                <p id="p-center"><a href="/IMRUnicorn/extras/resume.docx"><img src="/IMRUnicorn/extras/resume-1_2.png" /></a></p>
                <p id="p-center"><a href="/IMRUnicorn/extras/resume.docx"><img src="/IMRUnicorn/extras/resume-2_2.png" /></a></p>
                <p>&nbsp;</p>
                <p id="p-center">Click the resume screen shot above or <a href="/IMRUnicorn/extras/resume.docx">this link</a> to download my resume.</p>
                
            </div>


            <jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>