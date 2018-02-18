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

<sql:query var="rs" dataSource="jdbc/codeigniter">
    select * from ScopeResetInfo
</sql:query>

<%
    String title = String.format("%s: Scope Resets", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>

<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

    <div class="center fadein">
        <p>Bottom out turrets then click back the clicks. Future marked confirmation dates are to be treated as non-confirmed values.</p>


        <table width="95%" border="1" align="center">
            <tr>
                <th id="th">
                    <div align="center">Last Confirmed</div>
                </th>
                <th id="th">
                    <div align="center">Bullet Weight GR</div>
                </th>
                <th id="th">
                    <div align="center">Proj. Name</div>
                </th>
                <th id="th">
                    <div align="center">Avg Speed</div>
                </th>
                <th id="th">
                    <div align="center">Description</div>
                </th>
                <th id="th">
                    <div align="center">Elevation Clicks</div>
                </th>
                <th id="th">
                    <div align="center">Windage Clicks</div>
                </th>
                <th id="th">
                    <div align="center">Rifle Owner</div>
                </th>
                
                
            </tr>

        <% int rowNum = 0; %>
        <c:forEach var="row" items="${rs.rows}">
            <% if (rowNum % 2 == 0) {%>
            <tr>
                <td id="td-even">${row.lastconfirmed}</td>
                <td id="td-even">${row.BulletWeightGR}</td>
                <td id="td-even">${row.ProjectileName}</td>
                <td id="td-even">${row.avgSpeed}</td>
                <td id="td-even">${row.description}</td>
                <td id="td-even">${row.ElevationClicks}</td>
                <td id="td-even">${row.WindageClicks}</td>
                <td id="td-even">${row.rifleowner}</td>
            </tr>
            <% } else {%>

            <tr>
                <td id="td-odd">${row.lastconfirmed}</td>
                <td id="td-odd">${row.BulletWeightGR}</td>
                <td id="td-odd">${row.ProjectileName}</td>
                <td id="td-odd">${row.avgSpeed}</td>
                <td id="td-odd">${row.description}</td>
                <td id="td-odd">${row.ElevationClicks}</td>
                <td id="td-odd">${row.WindageClicks}</td>
                <td id="td-odd">${row.rifleowner}</td>
            </tr>
            <% }
                /* close IF */
                rowNum++;
            %>
        </c:forEach>
    </table>

</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>