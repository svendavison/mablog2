<%-- 
    Document   : home
    Created on : Jul 4, 2017, 1:42:06 PM
    Author     : benspelledabc
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.GregorianCalendar" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String title = String.format("%s", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>

<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>


    <div class="center fadein redshadow" id="twocol">

    <c:choose>
        <c:when test="${empty sessionScope['loginUser']}">
            <p>Enjoy your visit. This is really just a development site...</p>
            <p>This site gets built and updated hourly by <a href="https://jenkins.io/" target="_blank">Jenkins</a>.
                Check back from time to time, see what's changed. I may put an easter egg in the site
                and give rewards to the person that finds it! You'll know if it's a real easter egg...
            </p>
        </c:when>
        <c:otherwise>
            <p>Hello <c:out value="${sessionScope['loginUser']}" />!</p>

            <p>
                Professionally optimize economically sound imperatives for technically sound deliverables. Objectively actualize flexible
                functionalities before standardized core competencies. Quickly empower future-proof human
                capital for top-line ideas.
            </p>
        </c:otherwise>
    </c:choose>

    <p>
        <img src="extras/bullElk.jpg" alt="bull elk" />
    </p>

    <p>
        Collaboratively productize emerging process improvements before real-time processes. 
        Efficiently formulate efficient collaboration and idea-sharing with scalable innovation. 
        Continually productivate stand-alone applications through integrated platforms.
    </p>

</div>


<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>