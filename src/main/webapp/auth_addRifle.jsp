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

<sql:query var="rsRifles" dataSource="jdbc/codeigniter">
    select * from rifles;
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

            <c:choose>
                <c:when test="${pageContext.request.method=='POST'}">
                    <c:catch var="exception">
                        <sql:update dataSource="jdbc/codeigniter" var="updatedTable">
                            INSERT INTO rifles(rifleowner, description) VALUES (?, ?)
                            <sql:param value="${param.rifleowner}" />
                            <sql:param value="${param.description}" />
                        </sql:update>
                        <c:if test="${updatedTable>=1}">
                            <div align="center" class="myfade">
                                <font size="5" color='green'> Congratulations ! Data inserted successfully.</font>
                            </div>
                            <div align="center" class="myfade">
                                <br />Click <a href="${url}auth_addRifle.jsp">here</a> to add another reset.
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
                        <select name="rifleId" style="width:500px;">
                            <c:forEach var="row" items="${rsRifles.rows}">
                                <option value="${row.id}">${row.rifleowner} - ${row.description}</option>
                            </c:forEach>
                        </select><br /><br /><br />

                        Rifle Owner:<br /> <input type="text" name="rifleowner" size="15"><br />
                        Description:<br /> <input type="text" name="description" size="30"><br />
                        <br />

                        <input type="submit" value="Submit">
                    </form>
                </c:otherwise>
            </c:choose>

        </c:otherwise>
    </c:choose>

</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>