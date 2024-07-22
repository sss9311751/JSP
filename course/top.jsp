<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>수강신청프로그램</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        table{
            margin: 0 auto;
            width: 50%;
        }
        table,td,th{
            border: 1px solid;
            text-align: center;
        }
        a{
            text-decoration: none;
        }
        .wrap{
            width: 1000px;
            height: 550px;
            margin: 0 auto;
        }
        .header{
            width: 1000px;
            height: 100px;
            background-color: #274c77;
        }
        .header h1{
            text-align: center;
            line-height: 100px;
            font-size: 50px;
            color: #fff;
        }
        .nav{
            width: 100%;
            height: 50px;
            background-color: #6096ba;
        }
        .nav a{
            padding: 20px;
            line-height: 50px;
            text-decoration: none;
            color: #fff;
        }
        .section{
            width: 1000px;
            height: 300px;
            background-color: #e7ecef;
        }
        .section > h2{
            text-align: center;
            padding-top: 30px;
        }
        .section > p{
            font-size: 20px;
            padding: 40px;
        }
        .footer{
            width: 1000px;
            height: 50px;
            background-color: #274c77;
        }
        .footer > p{
            color: #fff;
            text-align: center;
            padding-top: 15px;
        }
    </style>
</head>
<body>
    <div class="wrap">
        <div class="header">
            <h1>수강 신청 프로그램</h1>
        </div>
        <div class="nav">
            <a href="new.jsp"  >수강등록</a>
            <a href="list.jsp" >수강조회/수정</a>
            <a href="list2.jsp">수강과목조회</a>
            <a href="index.jsp">홈으로</a>
        </div>
        <div class="section">