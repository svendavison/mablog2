<%-- 
    Document   : help-me
    Created on : Jul 4, 2017, 1:42:06 PM
    Author     : benspelledabc
--%>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@ page import="java.text.SimpleDateFormat" %>
            <%@ page import="java.util.Calendar" %>
                <%@ page import="java.util.Date" %>
                    <%@ page import="java.util.GregorianCalendar" %>



                        <%
    String title = String.format("%s: Blog Posts", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>

                            <jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>


                            <div align="center">
                                <div class="w3-row" style="width:70%;">
                                    <p>Blog activity is not live. It's the next feature to add!</p>


                                    <!-- Blog entry -->
                                    <div class="w3-card-4 w3-margin w3-white">
                                        <img src="${url}extras/bridge.jpg" alt="Norway" style="width:100%">
                                        <div class="w3-container">
                                            <h3><b>BLOG ENTRY 3</b></h3>
                                            <h5>Title description, <span class="w3-opacity">April 2, 2014</span></h5>
                                        </div>

                                        <div class="w3-container">
                                            <p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis
                                                nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan
                                                tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent
                                                tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus
                                                vitae, ultricies congue gravida diam non fringilla.</p>
                                            <div class="w3-row">
                                                <div class="w3-col m8 s12">
                                                    <p><button class="w3-button w3-padding-large w3-white w3-border"><b>READ MORE &raquo;</b></button></p>
                                                </div>
                                                <div class="w3-col m4 w3-hide-small">
                                                    <p><span class="w3-padding-large w3-right"><b>Comments &nbsp;</b> <span class="w3-badge">2</span></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END BLOG ENTRIES -->

                                    <!-- Blog entry -->
                                    <div class="w3-card-4 w3-margin w3-white">
                                        <div class="w3-container">
                                            <h3><b>BLOG ENTRY 2</b></h3>
                                            <h5>Title description, <span class="w3-opacity">April 2, 2014</span></h5>
                                        </div>

                                        <div class="w3-container">
                                            <p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis
                                                nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan
                                                tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent
                                                tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus
                                                vitae, ultricies congue gravida diam non fringilla.</p>
                                            <div class="w3-row">
                                                <div class="w3-col m8 s12">
                                                    <p><button class="w3-button w3-padding-large w3-white w3-border"><b>READ MORE &raquo;</b></button></p>
                                                </div>
                                                <div class="w3-col m4 w3-hide-small">
                                                    <p><span class="w3-padding-large w3-right"><b>Comments &nbsp;</b> <span class="w3-badge">2</span></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END BLOG ENTRIES -->

                                    <!-- Blog entry -->
                                    <div class="w3-card-4 w3-margin w3-white">
                                        <img src="${url}extras/bullElk.jpg" alt="Norway" style="width:100%">
                                        <div class="w3-container">
                                            <h3><b>BLOG ENTRY 1</b></h3>
                                            <h5>Title description, <span class="w3-opacity">April 2, 2014</span></h5>
                                        </div>

                                        <div class="w3-container">
                                            <p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis
                                                nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan
                                                tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent
                                                tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus
                                                vitae, ultricies congue gravida diam non fringilla.</p>
                                            <div class="w3-row">
                                                <div class="w3-col m8 s12">
                                                    <p><button class="w3-button w3-padding-large w3-white w3-border"><b>READ MORE &raquo;</b></button></p>
                                                </div>
                                                <div class="w3-col m4 w3-hide-small">
                                                    <p><span class="w3-padding-large w3-right"><b>Comments &nbsp;</b> <span class="w3-badge">2</span></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END BLOG ENTRIES -->


                                </div>
                            </div>

                            <jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>