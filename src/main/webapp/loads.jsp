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

<c:catch var="makeTable">
    <sql:update var="createAllMyLoads" dataSource="jdbc/codeigniter">
        CREATE TABLE IF NOT EXISTS AllMyLoads (
        `id` INT NOT NULL AUTO_INCREMENT,
        `GroupSize` float DEFAULT NULL,
        `name` varchar(45) DEFAULT NULL,
        `ProjectileName` varchar(45) DEFAULT NULL,
        `BulletWeightGR` int(11) DEFAULT NULL,
        `diameter` varchar(45) NOT NULL DEFAULT '',
        `Powder` varchar(45) DEFAULT NULL,
        `GrainsUsed` float DEFAULT NULL,
        `EnergyFootLBS` int(11) DEFAULT NULL,
        `maxSpeed` int(11) DEFAULT NULL,
        `minSpeed` int(11) DEFAULT NULL,
        `avgSpeed` int(11) DEFAULT NULL,
        `StandardDeviation` int(11) DEFAULT NULL,
        `loadCount` int(11) DEFAULT NULL,
        `cycleFailureCount` int(11) DEFAULT NULL,
        `failureToFeedCount` int(11) DEFAULT NULL,
        `coal` float DEFAULT NULL,
        `avgGroup` float DEFAULT NULL,
        `barrelLenInches` int(11) DEFAULT NULL,
        PRIMARY KEY (`id`)
        ) 
        ENGINE=InnoDB DEFAULT CHARSET=latin1
    </sql:update>
</c:catch>

<c:catch var="notable">
    <sql:query var="rs" dataSource="jdbc/codeigniter">
        select name, barrelLenInches, GroupSize, ProjectileName, BulletWeightGR, Powder, GrainsUsed, avgSpeed, EnergyFootLBS from AllMyLoads
    </sql:query>
</c:catch>

<%
    String title = String.format("%s: Loads", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>

<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

    <div class="center fadein">
        <p>Print your load before you shoot it... <a href="extras/genericLabel.pdf">Generic Labels</a></p>


        <table width="85%" border="1" align="center">
            <tr>
                <th id="th">
                    <div align="center">Chamber</div>
                </th>
                <th id="th">
                    <div align="center">Barrel Length (Inches)</div>
                </th>
                <th id="th">
                    <div align="center">Grp Size</div>
                </th>
                <th id="th">
                    <div align="center">Proj. Name</div>
                </th>
                <th id="th">
                    <div align="center">gr</div>
                </th>
                <th id="th">
                    <div align="center">Powder</div>
                </th>
                <th id="th">
                    <div align="center">gr</div>
                </th>
                <th id="th">
                    <div align="center">FPS</div>
                </th>
                <th id="th">
                    <div align="center">FT-LB</div>
                </th>
            </tr>

        <% int rowNum = 0; %>
        <c:forEach var="row" items="${rs.rows}">
            <% if (rowNum % 2 == 0) {%>
            <tr>
                <td id="td-even">${row.name}</td>
                <td id="td-even">${row.barrelLenInches}</td>
                <td id="td-even">${row.GroupSize}</td>
                <td id="td-even">${row.ProjectileName}</td>
                <td id="td-even">${row.BulletWeightGR}</td>
                <td id="td-even">${row.Powder}</td>
                <td id="td-even">${row.GrainsUsed}</td>
                <td id="td-even">${row.avgSpeed}</td>
                <td id="td-even">${row.EnergyFootLBS}</td>
            </tr>
            <% } else {%>

            <tr>
                <td id="td-odd">${row.name}</td>
                <td id="td-odd">${row.barrelLenInches}</td>
                <td id="td-odd">${row.GroupSize}</td>
                <td id="td-odd">${row.ProjectileName}</td>
                <td id="td-odd">${row.BulletWeightGR}</td>
                <td id="td-odd">${row.Powder}</td>
                <td id="td-odd">${row.GrainsUsed}</td>
                <td id="td-odd">${row.avgSpeed}</td>
                <td id="td-odd">${row.EnergyFootLBS}</td>
            </tr>
            <% }
                /* close IF */
                rowNum++;
            %>
        </c:forEach>
    </table>

</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>