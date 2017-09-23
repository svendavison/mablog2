<%-- 
    Document   : about
    Created on : Jul 4, 2017, 1:59:14 PM
    Author     : svendavison
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String title = String.format("%s: About", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>
            <jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

 

            <div class="center fadein redshadow">
                <p id="p-center"><a href="https://twitter.com/svendavison" class="twitter-follow-button" data-show-count="false">Follow @svendavison</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></p>
                 
                 <p id="p-center">
                      <a class="twitter-timeline"  href="https://twitter.com/svendavison" data-widget-id="587791244543320064">Tweets by @svendavison</a>
                        <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
          
                 </p>
            </div>


            <jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>