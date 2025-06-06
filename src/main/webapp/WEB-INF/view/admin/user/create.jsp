<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8" />
                    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                    <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                    <meta name="author" content="Hỏi Dân IT" />
                    <title>Create User - Hỏi Dân IT</title>
                    <link href="/css/styles.css" rel="stylesheet" />
                    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
                        crossorigin="anonymous"></script>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                    <script>
                        $(document).ready(() => {
                            const avatarFile = $("#avatarFile");
                            avatarFile.change(function (e) {
                                const imgURL = URL.createObjectURL(e.target.files[0]);
                                $("#avatarPreview").attr("src", imgURL);
                                $("#avatarPreview").css({ "display": "block" });
                            });
                        });
                    </script>

                </head>

                <body class="sb-nav-fixed">
                    <jsp:include page="../layout/header.jsp" />
                    <div id="layoutSidenav">
                        <jsp:include page="../layout/sidebar.jsp" />
                        <div id="layoutSidenav_content">
                            <main>
                                <h1 class="mt-4">Create User</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active"><a href="/admin/user">Users</a></li>
                                    <li class="breadcrumb-item active">Create User</li>
                                </ol>
                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <h3>Create a user</h3>
                                            <hr />
                                            <form:form method="post" action="/admin/user/create"
                                                modelAttribute="newUser" enctype="multipart/form-data">
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="mb-3">
                                                            <label class="form-label">Email:</label>
                                                            <c:set var="emailHasBindError">
                                                                <form:errors path="email" cssClass="invalid-feedback" />
                                                            </c:set>

                                                            <form:input type="email"
                                                                class="form-control ${not empty emailHasBindError ? 'is-invalid':''}"
                                                                path="email" />
                                                            ${emailHasBindError}
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="mb-3">
                                                            <label class="form-label">Password:</label>
                                                            <c:set var="passwordHasBindError">
                                                                <form:errors path="password"
                                                                    cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <form:input type="password"
                                                                class="form-control ${not empty passwordHasBindError ?'is-invalid':''}"
                                                                path="password" />
                                                            ${passwordHasBindError}
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="mb-3">
                                                            <label class="form-label">Phone number:</label>
                                                            <form:input type="text" class="form-control" path="phone" />
                                                        </div>
                                                    </div>
                                                    <div class="col">

                                                        <div class="mb-3">
                                                            <c:set var="nameHasBindError">
                                                                <form:errors path="fullName"
                                                                    cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label class="form-label">Full Name:</label>
                                                            <form:input type="text"
                                                                class="form-control ${not empty nameHasBindError ? 'is-invalid':''}"
                                                                path="fullName" />
                                                            ${nameHasBindError}
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Address:</label>
                                                    <form:input type="text" class="form-control" path="address" />
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="mb-3">
                                                            <label class="form-label" for="avatarFile">Avatar:</label>
                                                            <input class="form-control" type="file" id="avatarFile"
                                                                accept=" .png, .jpg, .jpeg" name="ngocAnhFile" />
                                                        </div>
                                                    </div>
                                                    <div class="col">

                                                        <div class="mb-3">
                                                            <label class="form-label">Role:</label>
                                                            <form:select class="form-select" path="role.name">
                                                                <form:option value="ADMIN">ADMIN</form:option>
                                                                <form:option value="USER">USER</form:option>
                                                            </form:select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <img style="max-height: 250px; display: none;"
                                                            alt="avatar preview" id="avatarPreview" />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <button type="submit" class="btn btn-primary">Create</button>
                                                    </div>
                                                </div>

                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </main>
                            <jsp:include page="../layout/footer.jsp" />
                        </div>
                    </div>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                        crossorigin="anonymous"></script>
                    <script src="/js/scripts.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                        crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                        crossorigin="anonymous"></script>
                </body>

                </html>