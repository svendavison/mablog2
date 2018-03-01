<%-- 
    Document   : home
    Created on : Jul 4, 2017, 1:42:06 PM
    Author     : svendavison
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.GregorianCalendar" %>



<%
    String title = String.format("%s: Privacy", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>
<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>


    <div class="center fadein" id="twocol">
        <p>I'm slowly rebuilding this in JSP with a database back-end instead of being so closely coupled
            to code-igniter. We'll see how easy it is to move things over.</p>


    </div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>