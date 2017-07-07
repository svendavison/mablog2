<%-- 
    Document   : loads
    Created on : Jul 4, 2017, 1:59:14 PM
    Author     : svendavison
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%
    String title = String.format("%s: Loads", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>
<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

    <div class="center">
        <p>Print your load before you shoot it... <a href="extras/genericLabel.pdf">Generic Labels</a></p> 

        <!-- MariaDB data -->
        <p>
        <%
            Connection connect = null;
            Statement s = null;

            try {
                Class.forName("org.mariadb.jdbc.Driver");

                //connect = DriverManager.getConnection("jdbc:mariadb://IMRUdb:3306/codeigniter?user=codeigniter&password=codeigniter");
                connect = DriverManager.getConnection("jdbc:mariadb://localhost:3306/codeigniter?user=codeigniter&password=codeigniter");

                s = connect.createStatement();

                String sql = "select fname as f1, lname as f2 from sample;";

                ResultSet rec = s.executeQuery(sql);
        %>
    <table width="85%" border="1" align="center">
        <tr>
            <th id="th"> <div align="center">First Name</div></th>
            <th id="th"> <div align="center">Last Name</div></th>

        </tr>	

        <% int rowNum = 0; %>

        <%while ((rec != null) && (rec.next())) {%>

        <% if (rowNum % 2 == 0) {%>
        <tr>
            <td id="td-even"><%=rec.getString("f1")%></td>
            <td id="td-even"><%=rec.getString("f2")%></td>
        </tr>
        <% } else {%>

        <tr>
            <td id="td-odd"><%=rec.getString("f1")%></td>
            <td id="td-odd"><%=rec.getString("f2")%></td>
        </tr>
        <% }
            rowNum++;
        %>


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

</p>





</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>
