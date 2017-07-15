<%-- 
    Document   : top.inc
    Created on : Jul 4, 2017, 1:56:24 PM
    Author     : benspelledabc
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

   <div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      </a>
      <header class="brand">IMR Unicorns</header>
          
      <nav class="nav-collapse">
  <ul class="nav">
    <li class="active"><a href="${url}" data-load="ajax">Home</a></li>
    <li><a href="${url}loads.jsp" data-load="ajax">Loads</a></li>
    <li><a href="${url}contact.jsp" data-load="ajax">Contact</a></li>
    <li><a href="${url}about.jsp" data-load="ajax">About</a></li>

     
<c:if test="${empty sessionScope['loginUser']}">
    <li><a href="${url}login.jsp" data-load="ajax">Login</a></li>
</c:if>

<c:if test="${sessionScope['loginUser']}">
    <li><a href="${url}logout.jsp" data-load="ajax">Logout <c:out value="${sessionScope['loginUser']}" /></a></li>
</c:if>

  </ul>
</nav>

    
    </div>
  </div>
</div>