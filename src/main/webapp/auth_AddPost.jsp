<%-- 
    Document   : about
    Created on : Jul 4, 2017, 1:59:14 PM
    Author     : benspelledabc
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.GregorianCalendar" %>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<%
    String title = String.format("%s: About", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>
<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>



    <div class="center fadein redshadow">
        <p>
        <c:choose>
            <c:when test="${empty sessionScope['loginUser']}">
            You need to login to do this...
        </c:when>
        <c:otherwise>
            Hello <c:out value="${sessionScope['loginUser']}" />!
        </c:otherwise>
    </c:choose>

</p>
</div>


<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>