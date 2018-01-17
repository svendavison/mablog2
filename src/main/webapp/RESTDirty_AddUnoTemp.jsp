<%-- 
    Document   : about
    Created on : Jul 4, 2017, 1:59:14 PM
    Author     : svendavison
--%>

<%
    String title = String.format("%s: Add Uno", ninja.sven.imrunicorn.Config.SITE_NAME);
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

    <sql:query var="rs" dataSource="jdbc/codeigniter">
        select * from tempLog order by timeStamp desc limit 1
    </sql:query>

    <c:forEach var="row" items="${rs.rows}">
        <p>UNO Reported [${row.timeStamp}] ${row.temperature}&#8457; (${row.humidity}% humidity).</p>
    </c:forEach>
   
    
    <c:if test="${not empty param.temp}">
        <c:if test="${not empty param.humi}">
            
            <sql:update var="addLog" dataSource="jdbc/codeigniter">
                INSERT INTO tempLog (temperature, humidity) VALUES (?, ?)
                <sql:param value="${param.temp}" />
                <sql:param value="${param.humi}" />
            </sql:update>
                
        </c:if>
    </c:if>



</div>


<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>