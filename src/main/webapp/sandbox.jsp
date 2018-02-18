<%-- 
    Document   : loads
    Created on : Jul 4, 2017, 1:59:14 PM
    Author     : svendavison
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%
    String title = String.format("%s: Sandbox", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>

<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

<div class="center fadein">
    <%
        File dir = new File("/usr/local/tomcat/webapps/IMRUnicorn/extras/");
        String[] files = dir.list();
        ArrayList<String> filteredFiles = new ArrayList();
        for (int i = 0; i < files.length; i++) {
            if (files[i].endsWith(".jpg") || files[i].endsWith("png")) {
                filteredFiles.add(String.format("/IMRUnicorn/extras/%s", files[i]));
                //out.println(String.format("/IMRUnicorn/extras/%s<br />", files[i]));
                //out.println(String.format("<img src='/IMRUnicorn/extras/%s' /><hr /><br /><br />", files[i]));
            }
        }

        pageContext.setAttribute("imagePaths", filteredFiles);
    %>

    <c:forEach var="imagePath" items="${imagePaths}">
        Path: ${imagePath} <br />
        <img src="${imagePath}" /><br /><br />
    </c:forEach>

</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>