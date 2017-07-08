<%-- 
    Document   : home
    Created on : Jul 4, 2017, 1:42:06 PM
    Author     : svendavison
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.GregorianCalendar" %>
<%@ page import="java.sql.*" %>


<%
    String title = String.format("%s", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>

<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

    <div class="center">
        <p>

        <h1>Creating table 'sample' (with data)</h1>

    <%
        Connection connection = null;
        Statement statement = null;

        try {
            Class.forName("org.mariadb.jdbc.Driver");

            String url = request.getRequestURL().toString();
            if (url.contains(":8459/")) {
                connection = DriverManager.getConnection("jdbc:mariadb://localhost:3306/codeigniter?user=codeigniter&password=codeigniter");
            } else {
                connection = DriverManager.getConnection("jdbc:mariadb://IMRUdb:3306/codeigniter?user=codeigniter&password=codeigniter");
            }

            statement = connection.createStatement();
            String query = "CREATE TABLE sample (id INT NOT NULL AUTO_INCREMENT, fname VARCHAR(45) NULL, lname VARCHAR(45) NULL, PRIMARY KEY (id));";
            statement.executeUpdate(query);
            out.println("Table 'sample' create sucessfully.<br />\n\r");

            //We wont do any inserts if the create table command craps out...
            query = "insert into sample(fname, lname) values(\"Sven\", \"Davison\");";
            statement.executeUpdate(query);
            out.println("Sven added to database...<br />\n\r");

            query = "insert into sample(fname, lname) values(\"Frankie\", \"Davison\");";
            statement.executeUpdate(query);
            out.println("Frankie added to database...<br />\n\r");

            query = "insert into sample(fname, lname) values(\"Joey\", \"Davison\");";
            statement.executeUpdate(query);
            out.println("Joey added to database...<br />\n\r");
            //redirect... http://localhost:8459/IMRUnicorn/

        } catch (Exception e) {
            //out.println(String.format("Table probably already exists...."));
            out.println(String.format("What probably happned here is.. the database already exists and you tried to initalize it again."));
            //out.println(String.format("Error: %s", e.getMessage()));
        }

        out.println(String.format("\n\r<br />We're going to redirect you to the base page.... hold tight!<br />"));

        try {
            if (statement != null) {
                statement.close();
                connection.close();
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            out.println(e.getMessage());
            e.printStackTrace();
        }
    %>

</p>

</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>