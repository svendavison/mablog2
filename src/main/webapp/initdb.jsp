<%-- 
    Document   : createdb
    Created on : Jul 7, 2017, 7:02:27 PM
    Author     : svendavison
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<html>
    <head>
        <title>Creating table 'sample'</title>

        <script>
            setTimeout(function () {
                window.location.href = "${url}";
            }, 2000);
        </script>
    </head>
    <body>
        <h1>Creating table 'sample' (with data)</h1>

        <%
            Connection connection = null;

            try {
                Class.forName("org.mariadb.jdbc.Driver");

                //connection = DriverManager.getConnection("jdbc:mariadb://IMRUdb:3306/codeigniter?user=codeigniter&password=codeigniter");
                connection = DriverManager.getConnection("jdbc:mariadb://localhost:3306/codeigniter?user=codeigniter&password=codeigniter");

                Statement statement = connection.createStatement();
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
        %>
    </body>
</html>