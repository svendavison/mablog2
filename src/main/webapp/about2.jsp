<%-- 
    Document   : about
    Created on : Jul 5, 2017, 1:59:14 PM
    Author     : svendavison
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ninja.sven.imrunicorn.*, java.util.ArrayList" %>

<%
    String title = String.format("%s: About", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>
            <jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

 

            <div class="center fadein redshadow">
            <p>
                <%= FunUtils.makeItLower("FUN TIMES") %>
            </p>
            </div>


            <jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>