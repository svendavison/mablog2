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
        select * from blogEntry order by id desc
    </sql:query>
</c:catch>

<div align="center" class="myfade">
    <div class="w3-row myfade" style="width:70%;">


        <c:choose>
            <c:when test="${empty sessionScope['loginUser']}">
                You need to login to edit and delete posts. Sorry m8.
            </c:when>
            <c:otherwise>
                <table width="85%" border="1" align="center">
                    <tr>
                        <td id="th">ID</td>
                        <td id="th">Title</td>
                        <td id="th">Publish Date</td>
                        <td id="th">Description</td>
                        <td id="th">Body</td>
                        <td id="th">Edit</td>
                        <td id="th">Delete</td>
                    </tr>

                    <% int rowNum = 0;%>
                    <c:forEach var="row" items="${rs.rows}">
                        <% rowNum++; %>
                        <c:set var = "bodyLenMax" value = "15"/>
                        <c:set var = "fullBody" value = "${row.body}"/>

                        <!-- Even Blog entry -->
                        <% if (rowNum % 2 == 0) {%>
                        <tr>
                            <td id="td-even">${row.id}</td>
                            <td id="td-even">${row.title}</td>
                            <td id="td-even">${row.publishDate}</td>
                            <td id="td-even">${row.description}</td>
                            <td id="td-even">${fn:substring(fullBody, 0, bodyLenMax)}</td>

                            <td id="td-even" style="text-align: center"><a href="auth_editBlog.jsp?id=${row.id}"><i class="far fa-edit" style="color:blue"></i></a></td>
                            <td id="td-even" style="text-align: center"><a href="auth_deleteBlog.jsp?id=${row.id}"><i class="far fa-trash-alt" style="color:blue"></i></a></td>
                        </tr>
                        <!-- END BLOG ENTRIES -->  
                        <% } else { %>
                        <tr>
                            <td id="td-odd">${row.id}</td>
                            <td id="td-odd">${row.title}</td>
                            <td id="td-odd">${row.publishDate}</td>
                            <td id="td-odd">${row.description}</td>
                            <td id="td-odd">${fn:substring(fullBody, 0, bodyLenMax)}</td>

                            <td id="td-odd" style="text-align: center"><a href="auth_editBlog.jsp?id=${row.id}"><i class="far fa-edit" style="color:blue"></i></a></td>
                            <td id="td-odd" style="text-align: center"><a href="auth_deleteBlog.jsp?id=${row.id}"><i class="far fa-trash-alt" style="color:blue"></i></a></td>
                        </tr>
                        <!-- END BLOG ENTRIES -->  
                        <% }%>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>

    </div>
</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>