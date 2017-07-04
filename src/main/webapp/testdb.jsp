<%-- 
    Document   : testdb
    Created on : Jul 4, 2017, 2:18:08 PM
    Author     : svendavison
--%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<html>
    <head>
        <title>ThaiCreate.Com JSP Tutorial</title>
    </head>
    <body>

        <%
            Connection connect = null;
            Statement s = null;

            try {
                Class.forName("org.mariadb.jdbc.Driver");

                connect = DriverManager.getConnection("jdbc:mariadb://192.168.2.245/codeigniter"
                        + "?user=codeigniter&password=codeigniter");

                s = connect.createStatement();

                String sql = "SELECT * FROM chamber";

                ResultSet rec = s.executeQuery(sql);
        %>
        <table width="600" border="1">
            <tr>
                <th width="91"> <div align="center">name</div></th>
                <th width="98"> <div align="center">link name</div></th>
            </tr>	
            <%while ((rec != null) && (rec.next())) {%>
            <tr>
                <td><div align="center"><%=rec.getString("name")%></div></td>
                <td><%=rec.getString("linkName")%></td>
            </tr>
            <%}%>
        </table>      
        <%
            } catch (Exception e) {
                // TODO Auto-generated catch block
                out.println(e.getMessage());
                e.printStackTrace();
            }

            try {
                if (s != null) {
                    s.close();
                    connect.close();
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                out.println(e.getMessage());
                e.printStackTrace();
            }
        %>
    </body>
</html>