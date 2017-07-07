<%-- 
    Document   : createdb
    Created on : Jul 7, 2017, 7:02:27 PM
    Author     : svendavison
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<html>
    <head>
        <title>Creating a 'sample' (with data)</title>
    </head>
    <body>
        <h1>Creating a Table</h1>        <h1>Creating a Table</h1>

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

            } catch (Exception e) {
                //out.println(String.format("Table probably already exists...."));
                out.println(String.format("Error: %s", e.getMessage()));
            }
        %>
    </body>
</html>