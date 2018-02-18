<%-- 
    Document   : loads
    Created on : Jul 4, 2017, 1:59:14 PM
    Author     : svendavison
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rsAllMyLoads" dataSource="jdbc/codeigniter">
    select * from AllMyLoads;
</sql:query>

<sql:query var="rsRifles" dataSource="jdbc/codeigniter">
    select * from rifles;
</sql:query>


<sql:query var="rsScopeReset" dataSource="jdbc/codeigniter">
    select * from scoperesets;
</sql:query>



<%
    String title = String.format("%s: Add Reset", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>

<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>
 
    <div class="center fadein">
    <c:choose>
        <c:when test="${empty sessionScope['loginUser']}">
            You need to login to save resets. Sorry m8.
        </c:when>
        <c:otherwise>

            <form method="POST" action="doAddReset.jsp">
                Owner Name:<br />
                <select name="rifleId" style="width:500px;">
                    <c:forEach var="row" items="${rsRifles.rows}">
                        <option value="${row.id}">${row.rifleowner} - ${row.description}</option>
                    </c:forEach>
                </select><br />

                Select a load<br />
                <select name="loadId" style="width:500px;">
                    <c:forEach var="row" items="${rsAllMyLoads.rows}">
                        <option value="${row.id}">(${row.id}) ${row.name} - ${row.ProjectileName} [${row.GrainsUsed} of ${row.Powder}] @ ${row.avgSpeed} fps (${row.EnergyFootLBS} ft-lb)</option>
                    </c:forEach>
                </select><br /><br /> 


                Elevation Clicks:<br /> <input type="text" name="eClicks" size="3"><br />
                Windage Clicks:<br /> <input type="text" name="wClicks" size="3"><br />
                <br />

                <input type="submit" value="Submit">
            </form>
        </c:otherwise>
    </c:choose>

</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>