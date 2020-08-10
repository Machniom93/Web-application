<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="users/header.jsp"%>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    </div>

    <div class="row">
        <div class="card shadow mb-4" style="width: 100%">
            <div class="card-header py-3">
                <h4 class="m-0 font-weight-bold text-primary">Welcome in my first web application.</h4>
            </div>
            <div class="card-body" style="width: 100%">
                <a href="<c:url value="/users/list"/>"><h6 style="color: red">Click on this link to continue.</h6></a>
            </div>
        </div>
    </div>
</div>

<%@include file="users/footer.jsp"%>
