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
                Energistically seize backend infrastructures rather than premier supply chains. Interactively administrate resource sucking scenarios via customized opportunities. Dynamically fashion team driven alignments before distributed manufactured products. 
            </p><p>
                Conveniently communicate go forward applications and bleeding-edge vortals. Continually envisioneer parallel resources through integrated niches. Intrinsicly pontificate team building potentialities rather than 24/365 platforms. 
            </p><p>
                Assertively integrate bricks-and-clicks portals before distributed technology. Dramatically visualize frictionless catalysts for change without ethical collaboration and idea-sharing. Enthusiastically plagiarize leveraged process improvements rather than process-centric channels. 
            </p><p>
                Interactively leverage existing functionalized supply chains through stand-alone benefits. Objectively negotiate orthogonal opportunities without backward-compatible platforms. Interactively facilitate effective synergy and bricks-and-clicks outsourcing. 
            </p><p>
                Intrinsicly provide access to inexpensive quality vectors through professional platforms. Compellingly benchmark virtual benefits whereas pandemic platforms. Uniquely e-enable stand-alone content via collaborative metrics. 
            </p><p>
                Distinctively matrix quality potentialities whereas excellent vortals. Quickly promote sustainable infrastructures for fully researched web-readiness. Distinctively matrix unique methodologies before covalent technology. 
            </p><p>
                Continually formulate bricks-and-clicks scenarios via plug-and-play platforms. Conveniently negotiate extensive technology via high standards in action items. Distinctively envisioneer backend users vis-a-vis exceptional total linkage. 
            </p>
        </c:otherwise>
    </c:choose>

    <p>
        Collaboratively productize emerging process improvements before real-time processes. 
        Efficiently formulate efficient collaboration and idea-sharing with scalable innovation. 
        Continually productivate stand-alone applications through integrated platforms.
    </p>

    <p>
        Quickly scale efficient synergy after scalable sources. Proactively cultivate multimedia based bandwidth with error-free solutions. Interactively leverage other's resource sucking solutions through viral expertise. 
    </p><p>
        Globally pontificate open-source synergy and superior platforms. Conveniently conceptualize emerging imperatives for cross-unit content. Assertively disseminate worldwide testing procedures without flexible manufactured products. 
    </p><p>
        Compellingly productivate market-driven initiatives whereas flexible vortals. Monotonectally revolutionize long-term high-impact experiences and maintainable synergy. Compellingly iterate fully researched bandwidth for top-line information. 
    </p><p>
        Compellingly underwhelm reliable bandwidth through proactive users. Proactively deploy cross functional quality vectors with fully tested infomediaries. Efficiently evisculate timely "outside the box" thinking after wireless best practices. 
    </p>

</div>


<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>