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
<p>
    I'll be moving the SQL stuff over to JSP format soon but I want to clean up the database a bit first.
</p>
        <%
            Connection connect = null;
            Statement s = null;

            try {
                Class.forName("org.mariadb.jdbc.Driver");

                connect = DriverManager.getConnection("jdbc:mariadb://localhost/codeigniter"
                        + "?user=codeigniter&password=codeigniter");

                s = connect.createStatement();

                String sql = "SELECT * FROM chamber";

                ResultSet rec = s.executeQuery(sql);
        %>
        <table width="95%" border="1" align="center">
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
            
        </div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>
