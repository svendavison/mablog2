<%-- 
    Document   : header.inc
    Created on : Jul 4, 2017, 1:55:28 PM
    Author     : svendavison
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

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
        <link rel="stylesheet" href="${url}css/imrunicorn.css" />

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
