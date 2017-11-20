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
    select * from palmInfo
</sql:query>

<%
    String title = String.format("%s: Ray's Address Book", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>

<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

    <div class="center fadein">
        <p>This is Ray's old contact list...</p>


        <table width="85%" border="1" align="center">
            <tr>
                <th id="th">
                    <div align="center">Last Name</div>
                </th>
                <th id="th">
                    <div align="center">First Name</div>
                </th>
                <th id="th">
                    <div align="center">title 1</div>
                </th>
                <th id="th">
                    <div align="center">title 2</div>
                </th>
                <th id="th">
                    <div align="center">contact 1</div>
                </th>
                <th id="th">
                    <div align="center">contact 2</div>
                </th>
                <th id="th">
                    <div align="center">contact 3</div>
                </th>
                <th id="th">
                    <div align="center">contact 4</div>
                </th>
                <th id="th">
                    <div align="center">E-Mail</div>
                </th>
                <th id="th">
                    <div align="center">Street</div>
                </th>
                <th id="th">
                    <div align="center">City</div>
                </th>
                <th id="th">
                    <div align="center">State</div>
                </th>
                <th id="th">
                    <div align="center">Zip</div>
                </th>
                <th id="th">
                    <div align="center">UNKNOWN</div>
                </th>
                <th id="th">
                    <div align="center">Note 1</div>
                </th>
                <th id="th">
                    <div align="center">Note 2</div>
                </th>
                <th id="th">
                    <div align="center">Note 3</div>
                </th>
                <th id="th">
                    <div align="center">Note 4</div>
                </th>
                <th id="th">
                    <div align="center">Note 5</div>
                </th>
                <th id="th">
                    <div align="center">A Number</div>
                </th>
            </tr>

        <% int rowNum = 0; %>
        <c:forEach var="row" items="${rs.rows}">
            <% if (rowNum % 2 == 0) {%>
            <tr>
                <td id="td-even">${row.stname}</td>
                <td id="td-even">${row.firstname}</td>
                <td id="td-even">${row.title1}</td>
                <td id="td-even">${row.title2}</td>
                <td id="td-even">${row.contact1}</td>
                <td id="td-even">${row.contact2}</td>
                <td id="td-even">${row.contact3}</td>
                <td id="td-even">${row.contact4}</td>
                <td id="td-even">${row.contact5}</td>
                <td id="td-even">${row.contact6}</td>
                <td id="td-even">${row.city}</td>
                <td id="td-even">${row.state}</td>
                <td id="td-even">${row.zip}</td>
                <td id="td-even">${row.wtfsauce}</td>
                <td id="td-even">${row.note1}</td>
                <td id="td-even">${row.note2}</td>
                <td id="td-even">${row.note3}</td>
                <td id="td-even">${row.note4}</td>
                <td id="td-even">${row.note5}</td>
                <td id="td-even">${row.anumber}</td>
            </tr>
            <% } else {%>
            <tr>
                <td id="td-odd">${row.stname}</td>
                <td id="td-odd">${row.firstname}</td>
                <td id="td-odd">${row.title1}</td>
                <td id="td-odd">${row.title2}</td>
                <td id="td-odd">${row.contact1}</td>
                <td id="td-odd">${row.contact2}</td>
                <td id="td-odd">${row.contact3}</td>
                <td id="td-odd">${row.contact4}</td>
                <td id="td-odd">${row.contact5}</td>
                <td id="td-odd">${row.contact6}</td>
                <td id="td-odd">${row.city}</td>
                <td id="td-odd">${row.state}</td>
                <td id="td-odd">${row.zip}</td>
                <td id="td-odd">${row.wtfsauce}</td>
                <td id="td-odd">${row.note1}</td>
                <td id="td-odd">${row.note2}</td>
                <td id="td-odd">${row.note3}</td>
                <td id="td-odd">${row.note4}</td>
                <td id="td-odd">${row.note5}</td>
                <td id="td-odd">${row.anumber}</td>
            </tr>
            <% }
                /* close IF */
                rowNum++;
            %>
        </c:forEach>
    </table>

</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>