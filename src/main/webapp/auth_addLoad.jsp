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

<c:catch>
    <sql:query var="rsAllMyLoads" dataSource="jdbc/codeigniter">
        select * from AllMyLoads;
    </sql:query>
</c:catch>

<%
    String title = String.format("%s: Add Load", ninja.sven.imrunicorn.Config.SITE_NAME);
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

            <c:choose>
                <c:when test="${pageContext.request.method=='POST'}">
                    <c:catch var="exception">
                        <sql:update dataSource="jdbc/codeigniter" var="updatedTable">
                            INSERT INTO AllMyLoads(name, ProjectileName, BulletWeightGR, Powder, GrainsUsed, avgSpeed, EnergyFootLBS) VALUES (?,?,?,?,?,?,?)
                            <sql:param value="${param.name}" />
                            <sql:param value="${param.projectileName}" />
                            <sql:param value="${param.bulletWeightGR}" />
                            <sql:param value="${param.powder}" />
                            <sql:param value="${param.grainsUsed}" />
                            <sql:param value="${param.avgSpeed}" />
                            <sql:param value="${param.energyFootLBS}" />
                        </sql:update>
                        <c:if test="${updatedTable>=1}">
                            <div align="center" class="myfade">
                                <font size="5" color='green'> Congratulations ! Data inserted successfully.</font>
                            </div>
                            <div align="center" class="myfade">
                                <br />Click <a href="${url}auth_addLoad.jsp">here</a> to add another load.
                            </div>

                        </c:if>
                    </c:catch>
                    <c:if test="${exception!=null}">
                        <c:out value="Unable to insert data in database." />
                    </c:if>
                </c:when>
                <c:otherwise>

                    <form method="POST">
                        Existing Entries:<br />
                        <select name="loadId" style="width:500px;">
                            <c:forEach var="row" items="${rsAllMyLoads.rows}">
                                <option value="${row.id}">(${row.id}) ${row.name} - ${row.ProjectileName} [${row.GrainsUsed} of ${row.Powder}] @ ${row.avgSpeed} fps (${row.EnergyFootLBS} ft-lb)</option>
                            </c:forEach>
                        </select><br /><br /> 
                        
                        Caliber Name:<br /> <input type="text" name="name" size="15" value=".223 Wylde"><br />
                        Projectile Name:<br /> <input type="text" name="projectileName" size="15" value="varmint grenade"><br />
                        BulletWeightGR:<br /> <input type="text" name="bulletWeightGR" size="15" value="50"><br />
                        GrainsUsed:<br /> <input type="text" name="grainsUsed" size="15" value="22"><br />
                        Powder:<br /> <input type="text" name="powder" size="15" value="IMR 3031"><br />
                        Average Speed:<br /> <input type="text" name="avgSpeed" size="15" value="100"><br />
                        Energy ft-lb:<br /> <input type="text" name="energyFootLBS" size="15" value="40"><br />
                        <br />

                        <input type="submit" value="Submit">
                    </form>
                </c:otherwise>
            </c:choose>

        </c:otherwise>
    </c:choose>

</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>