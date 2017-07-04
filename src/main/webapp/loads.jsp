<%-- 
    Document   : loads
    Created on : Jul 4, 2017, 1:59:14 PM
    Author     : svendavison
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%
    String title = String.format("%s: Loads", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>
<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

    <div class="center">
        <p>Print your load before you shoot it... <a href="extras/genericLabel.pdf">Generic Labels</a></p> 
        <p>
            I'll be moving the SQL stuff over to JSP format soon but I want to clean up the database a bit first.
        </p>
        
        
        
        
        
        
        
        
    </div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>
