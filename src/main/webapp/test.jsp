<%-- 
    Document   : test
    Created on : Jul 8, 2017, 5:40:51 PM
    Author     : sveni
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/codeigniter">
    select * from sample
</sql:query>

<html>
    <head>
        <title>DB Test</title>
    </head>
    <body>

        <h2>Results</h2>

        <c:forEach var="row" items="${rs.rows}">
            FName ${row.fname} lname ${row.lname}<br/>
        </c:forEach>

    </body>
</html>