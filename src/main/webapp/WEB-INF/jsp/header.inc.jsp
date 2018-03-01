<%-- 
    Document   : header.inc
    Created on : Jul 4, 2017, 1:55:28 PM
    Author     : svendavison
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="java.sql.Statement" %>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.GregorianCalendar" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<html>
    <head>
        <meta charset="utf-8" />
        <title>${pageTitle} - ${siteName}</title>
        <meta name="description" content="${metaDescription}" />
        <meta name="keywords" content="${metaKeywords}" />
        <meta name="author" content="Sven Davison" />

        <link rel="stylesheet" href="${url}css/bootstrap.css" />
        <link rel="stylesheet" href="${url}css/bootstrap-responsive.css" />
        <link rel="stylesheet" href="${url}css/common.css" />
        <link rel="stylesheet" href="${url}css/ajph.css" />
        <link rel="stylesheet" href="${url}css/tipsy.css" />
        <link rel="stylesheet" href="${url}css/sitemap.css" />
        <link rel="stylesheet" href="${url}css/w3.css" />
        
        <link rel="shortcut icon" href="${url}favicon.ico" />
        
        <!-- font awesome -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

    </head>
    <body>

        <jsp:include page="/WEB-INF/jsp/top.inc.jsp"></jsp:include>
            <div class="container">
                <hgroup>

                <% if (request.getAttribute("pageHeading") != null) { %>
                <h1 class="hero-unit">${pageHeading}</h1>
                <% } %>

            </hgroup>

            <div id="ajph">
                <div id="sub_ajph">
