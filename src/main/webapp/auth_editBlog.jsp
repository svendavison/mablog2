<%-- 
    Document   : help-me
    Created on : Jul 4, 2017, 1:42:06 PM
    Author     : svendavison
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
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


                <c:choose>
                    <c:when test="${pageContext.request.method=='POST'}">
                        <c:catch var="exception">
                            <sql:update dataSource="jdbc/codeigniter" var="updatedTable">
                                update blogEntry set 
                                title = "${param.p_title}", 
                                description = "${param.p_desc}",
                                imgpath = "${param.picPath}",
                                body = "${param.p_body}" 
                                where id = ${param.id}
                            </sql:update>
                            <c:if test="${updatedTable>=1}">
                                <div align="center" class="myfade">
                                    <font size="5" color='green'> Congratulations ! Data updated successfully.</font>
                                </div>
                            </c:if>
                        </c:catch>
                        <c:if test="${exception!=null}">
                            <c:out value="Unable to update data in database." />
                            <c:out value="${exception.message}" />
                        </c:if>

                    </c:when>
                    <c:otherwise>

                        <%
                            File dir = new File("/usr/local/tomcat/webapps/IMRUnicorn/extras/");
                            String[] files = dir.list();
                            ArrayList<String> filteredFiles = new ArrayList();
                            for (int i = 0; i < files.length; i++) {
                                if (files[i].endsWith(".jpg") || files[i].endsWith("png")) {
                                    filteredFiles.add(String.format("/IMRUnicorn/extras/%s", files[i]));
                                }
                            }
                            pageContext.setAttribute("imagePaths", filteredFiles);
                        %>

                        <c:forEach var="row" items="${rs.rows}">
                            <form action = "auth_editBlog.jsp" method = "POST">
                                <input class="myreset" type="hidden" name="id" value="<%= request.getParameter("id")%>" />
                                Main Title:<input class="myreset" type = "text" name = "p_title" size="40" value="${row.title}" /><br />
                                Short Desc :<input class="myreset" type = "text" name = "p_desc" size="40" value="${row.description}" /><br />
                                Picture Path: 
                                <select name="picPath" style="width:500px;">
                                    <option selected value="${row.imgpath}">${row.imgpath}</option>
                                    <option value="">NO BANNER</option>
                                    <c:forEach var="imagePath" items="${imagePaths}">
                                        <option value="${imagePath}">${imagePath}</option>
                                    </c:forEach>
                                </select><br />

                                Body:<br />
                                <textarea class="myreset" name="p_body" rows="10" cols="120">${row.body}</textarea><br /><br />
                                <input class="myreset" type = "submit" value = "Edit Post" />
                            </form>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </c:otherwise>
        </c:choose>

    </div>
</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>