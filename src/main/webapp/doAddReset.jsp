<%-- 
    Document   : help-me
    Created on : Jul 4, 2017, 1:42:06 PM
    Author     : svendavison
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
    String title = String.format("%s: Add Post", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>

<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

    <div align="center" class="myfade">RESTRICT ACCESS TO THIS PAGE</div>

    <div align="center" class="myfade">
        Adding reset for load id: ${param.loadId} under 
    ${param.ownerName} [E-Clicks: ${param.eClicks}] [W-Clicks: ${param.wClicks}]
</div>

<div align="center" class="myfade">
    Click <a href="${url}auth_addReset.jsp">here</a> to add another reset.
</div>

<c:choose>
    <c:when test="${empty sessionScope['loginUser']}">
        You need to login to save data. Sorry m8.
    </c:when>
    <c:otherwise>


        <c:if test="${pageContext.request.method=='POST'}">
            <c:catch var="exception">
                <sql:update dataSource="jdbc/codeigniter" var="updatedTable">
                    INSERT INTO scoperesets(clicksfrombottomelev,clicksfrombottomwind,rifleid,loadid) VALUES (?, ?, ?, ?)
                    <sql:param value="${param.eClicks}" />
                    <sql:param value="${param.wClicks}" />
                    <sql:param value="${param.rifleId}" />
                    <sql:param value="${param.loadId}" />
                </sql:update>
                <c:if test="${updatedTable>=1}">
                    <font size="5" color='green'> Congratulations ! Data inserted
                    successfully.</font>
                </c:if>
            </c:catch>
            <c:if test="${exception!=null}">
                <c:out value="Unable to insert data in database." />
            </c:if>
        </c:if>

    </c:otherwise>
</c:choose>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>