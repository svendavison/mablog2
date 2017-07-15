<%-- 
    Document   : home
    Created on : Jul 4, 2017, 1:42:06 PM
    Author     : benspelledabc
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.GregorianCalendar" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%
    String title = String.format("%s", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>

<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>


<div class="center fadein redshadow" id="twocol">

    <form action="loginAuthenticate.jsp">
        Username: <input type="text" name="username" /><br/> 
        Password: <input type="password" name="password" /><br/>
        <input type="submit" />
    </form>
    <font color="red">
        <c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}" />
        </c:if>
    </font>

</div>
<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>