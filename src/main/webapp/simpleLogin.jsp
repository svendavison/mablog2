<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Login to our app</title>
        </head>

        <body>
            <h1>Please login</h1>

            <form action="loginAuthenticate.jsp">
                Username: <input type="text" name="username" /><br/> Password: <input type="password" name="password" /><br/>
                <input type="submit" />
            </form>
            <font color="red">
                <c:if test="${not empty param.errMsg}">
                    <c:out value="${param.errMsg}" />
                </c:if>
            </font>


            
        </body>

        </html>