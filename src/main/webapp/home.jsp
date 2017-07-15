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


                        <%
    String title = String.format("%s", ninja.sven.imrunicorn.Config.SITE_NAME);
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>

                            <jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>


                            <div class="center" id="twocol">
                                <p>This site gets built and updated hourly by <a href="https://jenkins.io/" target="_blank">Jenkins</a>.
                                    Check back from time to time, see what's changed. I may put an easter egg in the site
                                    and give rewards to the person that finds it! You'll know if it's a real easter egg...
                                </p>

                                <p>Lorem ipsum dolor sit amet, vitae imperdiet commodo class. Mattis lacus dolor sollicitudin
                                    lobortis rerum et, sed magna odio. Nec duis gravida pellentesque quis suscipit. Massa
                                    diam, enim ante quis, vel deleniti mauris fermentum fames imperdiet. Phasellus nunc integer
                                    nullam lectus dignissim lacus, nulla integer suspendisse, ac pede sem a in nulla montes,
                                    donec aenean gravida et, pulvinar sed lectus tellus. Integer netus delectus. Lacinia
                                    commodo, libero ac litora massa condimentum, ridiculus adipiscing vestibulum ab corrupti
                                    quis diam, morbi egestas ut ac nonummy. Quis molestie a sit. Gravida libero magna bibendum
                                    laoreet, ultricies nisl mauris, tellus rutrum ante interdum, dis potenti luctus ut adipiscing
                                    gravida. Integer amet neque nec tellus nec, lacus ac interdum nunc eu, quis nascetur
                                    vitae, proin scelerisque metus enim a enim eu, ducimus et quam quam.</p>
                                <p>
                                    Seamlessly utilize turnkey e-business for go forward "outside the box" thinking. Energistically scale global e-markets for
                                    holistic relationships. Rapidiously benchmark fully researched total linkage for ubiquitous
                                    e-commerce.
                                </p>
                                <p>
                                    Professionally optimize economically sound imperatives for technically sound deliverables. Objectively actualize flexible
                                    functionalities before standardized core competencies. Quickly empower future-proof human
                                    capital for top-line ideas.
                                </p>
                                <p>
                                    Professionally procrastinate client-centric ROI with standardized deliverables. Phosfluorescently disintermediate client-based
                                    technologies through team driven channels. Continually coordinate proactive best practices
                                    through stand-alone interfaces.
                                </p>
                                <p>
                                    Dramatically engage functionalized e-business for leveraged potentialities. Phosfluorescently harness innovative initiatives
                                    and vertical bandwidth. Progressively implement resource maximizing schemas with extensive
                                    vortals.
                                </p>
                                <p>
                                    Objectively redefine clicks-and-mortar materials through turnkey users. Appropriately impact multidisciplinary methods of
                                    empowerment after intermandated initiatives. Objectively foster resource sucking growth
                                    strategies without cross functional vortals.
                                </p>
                                <p>
                                    Efficiently orchestrate cooperative infomediaries rather than magnetic manufactured products.
                                </p>




                                <p>
                                    <img src="extras/bullElk.jpg" alt="bull elk" />
                                </p>
                                <p>
                                    Suscipit sit vitae sodales nulla sollicitudin lorem, dolor nulla elit iaculis ligula scelerisque. Duis mi nunc integer quam
                                    pharetra aliquam, dapibus bibendum odio suspendisse arcu libero, laoreet temporibus pretium,
                                    amet pellentesque dictum risus at et. Mauris eu ac suscipit aliquet ut, suspendisse metus
                                    eget, congue faucibus. Vestibulum suspendisse erat et, reprehenderit et vel quisque,
                                    ad sed hendrerit sollicitudin lorem, qui nam turpis. Vulputate nunc voluptas maiores
                                    dis, dolor tortor lacus interdum aliquam. Cras vehicula id adipiscing, dolor tincidunt
                                    nec. Interdum odio hac id tellus. Condimentum at et lorem arcu, nulla lectus a scelerisque,
                                    venenatis hendrerit nibh scelerisque, nec praesent neque congue eget. Interdum consectetuer
                                    mauris wisi elit vehicula, in tincidunt dui varius wisi eget elementum, vestibulum est
                                    suscipit vestibulum nam nulla, et vitae lobortis at gravida pellentesque nullam, non
                                    molestiae ipsum. Velit adipiscing sapien mauris imperdiet, arcu pede, bibendum vestibulum
                                    lacus nonummy ante turpis, dictum posuere turpis blandit posuere in. Vel luctus, pretium
                                    eu amet non odio risus, quis vel aliquam dui in, justo etiam quis gravida. Et molestie
                                    donec, nunc tellus mauris, odio ac vel class volutpat. Posuere vestibulum varius etiam
                                    libero, neque lacus lacus quis labore dictum sed, ultricies aliquam justo enim nibh,
                                    tempus id. Diam vivamus, libero tempor cursus montes scelerisque orci sollicitudin, amet
                                    mauris.
                                </p>
                            </div>


                            <jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>