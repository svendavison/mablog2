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
    <li class="active"><a href="${url}blogs.jsp" data-load="ajax">Blog</a></li>
    <li class="active"><a href="${url}loads.jsp" data-load="ajax">Loads</a></li>
    <li class="active"><a href="${url}contact.jsp" data-load="ajax">Contact</a></li>
    <li class="active"><a href="${url}about.jsp" data-load="ajax">About</a></li>
    <li> * </li>
<c:choose>
    <c:when test="${empty sessionScope['loginUser']}">
        <li class="active"><a href="${url}login.jsp" data-load="ajax">Login</a></li>
    </c:when>
    <c:otherwise>
        <li class="active"><a href="${url}auth_AddPost.jsp" data-load="ajax">Add Post</a></li>        
        <li class="active"><a href="${url}logout.jsp">Logout-><c:out value="${sessionScope['loginUser']}" /></a></li>
    </c:otherwise>
</c:choose>

  </ul>
</nav>

    
    </div>
  </div>
</div>
