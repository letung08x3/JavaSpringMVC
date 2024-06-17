<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Page</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js">

    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <%--    <link href="/css/demo.css" rel="stylesheet">--%>
</head>
<body>
<div class="container" style="margin-top: 50px">
    <div class="row">
        <div class="col">
        </div>
        <div class="col-6">
            <%--@elvariable id="newUser" type="letung.com.laptopshop.domain.User"--%>
            <form:form action ="/admin/user/create" method ="post" modelAttribute="newUser" >
                <h3>Create a user</h3>
                <hr>
                <div class="mb-3">
                    <label  class="form-label">Email address</label>
                    <form:input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter email" path="email"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <form:input type="password" class="form-control" placeholder="Enter password" path="password"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Phone Number</label>
                    <form:input type="text" class="form-control" placeholder="Enter phone number" path="phone"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Full Name</label>
                    <form:input type="text" class="form-control" placeholder="Enter full name" path="fullName"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Address</label>
                    <form:input type="text" class="form-control" placeholder="Enter address" path="address"/>
                </div>
                <button type="submit" class="btn btn-primary">Create</button>
            </form:form>
        </div>
        <div class="col">
        </div>
    </div>

</div>

</body>
</html>