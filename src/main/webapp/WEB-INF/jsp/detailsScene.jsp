<%-- 
    Document   : listeScenes
    Created on : 27 mars 2023, 14:00:23
    Author     : PC
--%>
<%@page import="mg.spring_mvc.model.Personnage"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mg.spring_mvc.model.Scene"%>
<%
    Scene s = (Scene) request.getAttribute("model");
    ArrayList<Personnage> liste = (ArrayList<Personnage>) request.getAttribute("listeActeurs");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with Creative Studio landing page.">
    <meta name="author" content="Devcrud">
    <title>Details Scene</title>

    <!-- font icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/theme/assets/vendors/themify-icons/css/themify-icons.css">

    <!-- Bootstrap + Creative Studio main styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/theme/assets/css/creative-studio.css">

</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">
    
    <!-- Page Navigation -->
    <nav class="navbar custom-navbar navbar-expand-lg navbar-dark" data-spy="affix" data-offset-top="20">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="${pageContext.request.contextPath}/resources/theme/assets/imgs/logo.png" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Creative studio Landing page">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#service">Service</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#portfolio">Portfolio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#team">Team</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#testimonial">Testimonial</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#blog">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-primary btn-sm ml-lg-3" href="components.html">Components</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Of Page Navigation -->


    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="contact-card">
                <div class="infos">
                    <h6 class="section-subtitle"></h6>
                    <h6 class="section-title mb-4">Scène n° <%out.print(s.getId()); %></h6>

                    <div class="item">
                        <i class="ti-location-pin"></i>
                        <div class="">
                            <h5>Nom</h5>
                            <p><%out.print(s.getNom()); %></p>
                        </div>                          
                    </div>
                    
                    <div class="item">
                        <i class="ti-email"></i>
                        <div class="mb-0">
                            <h5>Personnages</h5>
                            <%=liste.size() %>
                            <%for(int i=0;i<liste.size();i++) {%>
                            <p><%=liste.get(i).getNom() %></p>
                            <%}%>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section -->

    <section class="has-bg-img py-0">
        <div class="container">
            <div class="footer">
                <div class="footer-lists">
                    <ul class="list">
                        <li class="list-head">
                            <h6 class="font-weight-bold">ABOUT US</h6>
                        </li>
                        <li class="list-body">
                            <a href="#" class="logo">
                                <img src="${pageContext.request.contextPath}/resources/theme/assets/imgs/logo.png" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Creative studio Landing page">
                                <h6>Creative Studio</h6>
                            </a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae nobis fugit maxime deleniti minus optio accusamus, quam maiores explicabo sunt.</p> 
                            <p class="mt-3">
                                Copyright <script>document.write(new Date().getFullYear())</script> &copy; <a class="d-inline text-primary" href="http://www.devcrud.com">DevCRUD</a>
                            </p>                   
                        </li>
                    </ul>
                    <ul class="list">
                        <li class="list-head">
                            <h6 class="font-weight-bold">USEFUL LINKS</h6>
                        </li>
                        <li class="list-body">
                            <div class="row">
                                <div class="col">
                                    <a href="#about">About</a>
                                    <a href="#service">Service</a>
                                    <a href="#portfolio">Portfolio</a>
                                    <a href="#testmonail">Testimonial</a>
                                </div>
                                <div class="col">
                                    <a href="#team">Team</a>
                                    <a href="#blog">Blog</a>
                                    <a href="#">Faq</a>
                                    <a href="#">Privacy Policy</a>                  
                                </div>
                            </div>
                        </li>
                    </ul>
                    <ul class="list">
                        <li class="list-head">
                            <h6 class="font-weight-bold">CONTACT INFO</h6>
                        </li>
                        <li class="list-body">
                            <p>Contact us and we'll get back to you within 24 hours.</p>
                            <p><i class="ti-location-pin"></i> 12345 Fake ST NoWhere AB Country</p>
                            <p><i class="ti-email"></i>  info@website.com</p>
                            <div class="social-links">
                                <a href="javascript:void(0)" class="link"><i class="ti-facebook"></i></a>
                                <a href="javascript:void(0)" class="link"><i class="ti-twitter-alt"></i></a>
                                <a href="javascript:void(0)" class="link"><i class="ti-google"></i></a>
                                <a href="javascript:void(0)" class="link"><i class="ti-pinterest-alt"></i></a>
                                <a href="javascript:void(0)" class="link"><i class="ti-instagram"></i></a>
                                <a href="javascript:void(0)" class="link"><i class="ti-rss"></i></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>    
        </div>
    </section>

    <!-- core  -->
    <script src="${pageContext.request.contextPath}/resources/theme/assets/vendors/jquery/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/resources/theme/assets/vendors/bootstrap/bootstrap.bundle.js"></script>

    <!-- bootstrap affix -->
    <script src="${pageContext.request.contextPath}/resources/theme/assets/vendors/bootstrap/bootstrap.affix.js"></script>

    <!-- Creative Studio js -->
    <script src="${pageContext.request.contextPath}/resources/theme/assets/js/creative-studio.js"></script>

</body>
</html>

