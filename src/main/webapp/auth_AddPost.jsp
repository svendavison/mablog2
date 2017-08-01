<%-- 
    Document   : about
    Created on : Jul 4, 2017, 1:59:14 PM
    Author     : benspelledabc
--%>

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


<div class="center fadein redshadow">
    <p>
        <c:choose>
            <c:when test="${empty sessionScope['loginUser']}">
                You need to login to make posts. Sorry m8.
            </c:when>
            <c:otherwise>
                Hello <c:out value="${sessionScope['loginUser']}" />! We're going to do a sql insert...


            <form action = "auth_doAddPost.jsp" method = "POST" target = "_blank">
                <input type = "text" name = "p_title" size="40" /> Title<br />
                <input type = "text" name = "p_desc" size="40" /> Description <br />
                Body:
                <textarea name="p_body" rows="10" cols="30">Enter a post... jackle.</textarea><br />
                <input type = "submit" value = "Add Post" />
            </form>


        </c:otherwise>
    </c:choose>

</p>
</div>


<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>