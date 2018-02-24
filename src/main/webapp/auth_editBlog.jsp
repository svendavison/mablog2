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
    String title = String.format("%s: List Blogs", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>

<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>




    <!-- create the table incase it's not there -->
<c:catch var="alreadyExists">
    <sql:update var="createBlogEntry" dataSource="jdbc/codeigniter">
        CREATE TABLE `codeigniter`.`blogEntry` (
        `id` INT NOT NULL AUTO_INCREMENT,
        `title` VARCHAR(45) NULL,
        `description` VARCHAR(245) NULL,
        `imgpath` VARCHAR(245) NULL DEFAULT "${url}extras/bridge.jpg",
        `imgpathalttext` VARCHAR(50) NULL,
        `body` text NULL DEFAULT "No body... oops!",
        `publishDate` DATETIME NULL DEFAULT NOW(),
        PRIMARY KEY (`id`))
    </sql:update> 
</c:catch>

<c:catch var="alreadyExists">
    <sql:query var="rs" dataSource="jdbc/codeigniter">
        select * from blogEntry where id = <%= request.getParameter("id")%>
    </sql:query>
</c:catch>

<div align="center" class="myfade">
    <div class="w3-row myfade" style="width:70%;">

        <c:choose>
            <c:when test="${empty sessionScope['loginUser']}">
                You need to login to edit and delete posts. Sorry m8.
            </c:when>
            <c:otherwise>
                <c:forEach var="row" items="${rs.rows}">
                    id:<br />${row.id}<br /><hr />
                    title:<br />${row.title}<br /><hr />
                    desc:<br />${row.description}<br /><hr />
                    imgPath:<br />${row.imgpath}<br /><hr />
                    body:<br />${row.bod}<br /><hr />
                    publishDate:<br />${row.publishDate}<br />
                </c:forEach>
            </c:otherwise>
        </c:choose>

    </div>
</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>