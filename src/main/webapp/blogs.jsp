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
    String title = String.format("%s: Blog Posts", ninja.sven.imrunicorn.Config.SITE_NAME);
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
        select * from blogEntry order by id desc limit 15
    </sql:query>
</c:catch>

<div align="center" class="myfade">
    <div class="w3-row myfade" style="width:70%;">

        <c:forEach var="row" items="${rs.rows}">
            <!-- Blog entry -->
            <div class="w3-card-4 w3-margin w3-white">
                <img src="${row.imgpath}" alt="${row.imgpathalttext}" style="width:100%">
                <div class="w3-container">
                    <h3><b>${row.title}</b></h3>
                    <h5>${row.description} -- <span class="w3-opacity">${row.publishDate}</span></h5>
                </div>

                <div class="w3-container">

                    <c:set var = "bodyLenMax" value = "500"/>
                    <c:set var = "fullBody" value = "${row.body}"/>
                    <c:set var = "subBody" value = "${fn:substring(fullBody, 0, bodyLenMax)}" />

                    <p>${subBody} </p>
                    <div class="w3-row">
                        <div class="w3-col m8 s12">
                            <c:set var = "fullBody" value = "${row.body}"/>
                            <c:choose>
                                <c:when test="${fn:length(fullBody) > bodyLenMax}">
                                    <p><button class="w3-button w3-padding-large w3-white w3-border" onclick="window.location.href = '${url}blog-read.jsp?id=${row.id}'"><b>READ MORE &raquo;</b></button></p>
                                </c:when>
                                <c:otherwise>
                                    <p>&nbsp;</p>
                                </c:otherwise>    
                            </c:choose>

                        </div>

                        <div class="w3-col m4 w3-hide-small">
                            <p><span class="w3-padding-large w3-right">

                                    <a href="auth_editBlog.jsp?id=${row.id}">Edit</a>
                                    <a href="auth_deleteBlog.jsp?id=${row.id}">Delete</a>
                                    <b>Comments &nbsp;</b> <span class="w3-badge">&lt;disabled&gt;</span>
                                </span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END BLOG ENTRIES -->
        </c:forEach>

    </div>
</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>