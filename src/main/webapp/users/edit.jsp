<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="<c:url value="/users/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> User list</a>
    </div>
    <div class="row">
        <div class="card shadow mb-4" style="width: 100%">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">User editing</h6>
            </div>
            <div class="card-body" style="width: 10%">
                <form class="form-text" method="post">
                    <label>
                        User name
                        <input type="text" style="width: 1400%; margin-bottom: 10%; margin-top: 10%" class="form-control form-control-user" name="userName" placeholder="${user.userName}">
                    </label>
                    <label>
                        Email
                        <input type="email" style="width: 1400%; margin-bottom: 10%; margin-top: 10%" class="form-control form-control-user" name="email" placeholder="${user.email}">
                    </label>
                    <label>
                        Password
                        <input type="password" style="width: 1400%; margin-bottom: 10%; margin-top: 10%" class="form-control form-control-user" name="password" placeholder="User password">
                    </label>
                    <input type="hidden" name="id" value="${user.id}">
                    <button type="submit" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">Edit</button>
                </form>
            </div>
        </div>
    </div>
</div>

<%@include file="footer.jsp"%>
