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


<!-- this use to be id="twocol" -->
    <div class="center fadein">
        <p>You're on the internet, nothing is private.</p>
    </div>
    <div class="center fadein">
        <p><img src="extras/anon.png"/></p>
    </div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>