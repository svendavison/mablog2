<%-- 
    Document   : about
    Created on : Jul 4, 2017, 1:59:14 PM
    Author     : svendavison
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%
    String title = String.format("%s: About", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>
<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>


<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.PreparedStatement" %>


<div class="center fadein">
    <p>
        <c:choose>
            <c:when test="${empty sessionScope['loginUser']}">
                You need to login to make posts. Sorry m8.
            </c:when>
            <c:otherwise>
                Hello <c:out value="${sessionScope['loginUser']}" />! We're going to do a sql insert...


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


            <form action = "auth_doAddPost.jsp" method = "POST">
                Main Title:<input class="myreset" type = "text" name = "p_title" size="40" /><br />
                Short Desc :<input class="myreset" type = "text" name = "p_desc" size="40" /><br />
                Picture Path: 
                <select name="picPath" style="width:500px;">
                    <option selected value="">NO BANNER</option>
                    <c:forEach var="imagePath" items="${imagePaths}">
                        <option value="${imagePath}">${imagePath}</option>
                    </c:forEach>
                </select><br />

                Body:<br />
                <textarea class="myreset" name="p_body" rows="10" cols="120">&lt;p&gt;Don't forget the open/close paragraph tags!&lt;/p&gt;
                </textarea><br /><br />
                <input class="myreset" type = "submit" value = "Add Post" />
            </form>


        </c:otherwise>
    </c:choose>

</p>
</div>


<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>