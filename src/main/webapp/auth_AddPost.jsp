<%-- 
    Document   : about
    Created on : Jul 4, 2017, 1:59:14 PM
    Author     : benspelledabc
--%>

<%
    String title = String.format("%s: About", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>
<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>



    <div class="center fadein redshadow">
        <p>
        <c:choose>
            <c:when test="${empty sessionScope['loginUser']}">
            You need to login to make posts. Sorry m8.
        </c:when>
        <c:otherwise>
            Hello <c:out value="${sessionScope['loginUser']}" />!
        </c:otherwise>
    </c:choose>

</p>
</div>


<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>