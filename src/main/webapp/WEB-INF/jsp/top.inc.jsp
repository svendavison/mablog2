<%-- 
    Document   : top.inc
    Created on : Jul 4, 2017, 1:56:24 PM
    Author     : svendavison
--%>
   <div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      </a>
      <header class="brand">maBlog v2</header>
          
      <nav class="nav-collapse">
  <ul class="nav">
    <li class="active"><a href="${url}" data-load="ajax">Home</a></li>
    <li><a href="${url}loads.jsp" data-load="ajax">Loads</a></li>
    <li><a href="${url}about.jsp" data-load="ajax">About</a></li>
    <li><a href="${url}contact.jsp" data-load="ajax">Contact</a></li>
    <li><a href="${url}help-me.jsp" data-load="ajax">Help Me</a></li>
  </ul>
</nav>

    
    </div>
  </div>
</div>