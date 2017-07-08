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
            Connection connection = null;
            Statement s = null;

            try {
                Class.forName("org.mariadb.jdbc.Driver");


            String url = request.getRequestURL().toString();
            if (url.contains(":8459/")) {
                connection = DriverManager.getConnection("jdbc:mariadb://localhost:3306/codeigniter?user=codeigniter&password=codeigniter");
            } else {
                connection = DriverManager.getConnection("jdbc:mariadb://IMRUdb:3306/codeigniter?user=codeigniter&password=codeigniter");
            }
            
                s = connection.createStatement();

                String sql = "select name as f1, ProjectileName as f2, BulletWeightGR as f3, Powder as f4, GrainsUsed as f5, avgSpeed as f6, EnergyFootLBS as f7 from AllMyLoads;";

                ResultSet rec = s.executeQuery(sql);
        %>
    <table width="85%" border="1" align="center">
        <tr>
            <th id="th"> <div align="center">Chamber</div></th>
            <th id="th"> <div align="center">Proj. Name</div></th>
            <th id="th"> <div align="center">gr</div></th>
            <th id="th"> <div align="center">Powder</div></th>
            <th id="th"> <div align="center">gr</div></th>
            <th id="th"> <div align="center">FPS</div></th>
            <th id="th"> <div align="center">FT-LB</div></th>

        </tr>	

        <% int rowNum = 0; %>

        <%while ((rec != null) && (rec.next())) {%>

        <% if (rowNum % 2 == 0) {%>
        <tr>
            <td id="td-even"><%=rec.getString("f1")%></td>
            <td id="td-even"><%=rec.getString("f2")%></td>
            <td id="td-even"><%=rec.getString("f3")%></td>
            <td id="td-even"><%=rec.getString("f4")%></td>
            <td id="td-even"><%=rec.getString("f5")%></td>
            <td id="td-even"><%=rec.getString("f6")%></td>
            <td id="td-even"><%=rec.getString("f7")%></td>
        </tr>
        <% } else {%>

        <tr>
            <td id="td-odd"><%=rec.getString("f1")%></td>
            <td id="td-odd"><%=rec.getString("f2")%></td>
            <td id="td-odd"><%=rec.getString("f3")%></td>
            <td id="td-odd"><%=rec.getString("f4")%></td>
            <td id="td-odd"><%=rec.getString("f5")%></td>
            <td id="td-odd"><%=rec.getString("f6")%></td>
            <td id="td-odd"><%=rec.getString("f7")%></td>
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
