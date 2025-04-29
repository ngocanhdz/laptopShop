<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                <meta name="author" content="Hỏi Dân IT" />
                <title>Create Product</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <script>
                    $(document).ready(() => {
                        const imageFile = $("#imageFile");
                        imageFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#imagePreview").attr("src", imgURL);
                            $("#imagePreview").css({ "display": "block" });
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
                            <h1 class="mt-4">Create Product</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                                <li class="breadcrumb-item active"><a href="/admin/product">Products</a></li>
                                <li class="breadcrumb-item active">Create Product</li>
                            </ol>
                            <div class="container mt-5">
                                <div class="row">
                                    <div class="col-md-6 col-12 mx-auto">
                                        <h3>Create product</h3>
                                        <hr />
                                        <form:form method="post" action="/admin/product/create"
                                            modelAttribute="newProduct" enctype="multipart/form-data">
                                            <div class="row">
                                                <div class="col">
                                                    <div class="mb-3">
                                                        <label class="form-label">Name:</label>
                                                        <form:input type="name" class="form-control" path="name" />

                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="mb-3">
                                                        <label class="form-label">Price:</label>
                                                        <form:input type="price" class="form-control" path="price" />
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Detail description:</label>
                                                <form:textarea type="text" class="form-control" path="detailDesc" />
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <div class="mb-3">
                                                        <label class="form-label">Short description:</label>
                                                        <form:input type="text" class="form-control" path="shortDesc" />
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="mb-3">
                                                        <label class="form-label">Quantity:</label>
                                                        <form:input type="number" class="form-control"
                                                            path="quantity" />
                                                    </div>
                                                </div>

                                            </div>


                                            <div class="row">
                                                <div class="col">
                                                    <div class="mb-3">
                                                        <label class="form-label">Factory:</label>
                                                        <form:select class="form-select" path="factory">
                                                            <form:option value="APPLE">Apple (Macbook)</form:option>
                                                            <form:option value="DELL">DELL</form:option>
                                                            <form:option value="ASUS">Asus</form:option>
                                                            <form:option value="Lenovo">Lenovo</form:option>
                                                            <form:option value="LG">LG</form:option>
                                                            <form:option value="ACER">Acer</form:option>
                                                            <form:option value="MSI">Msi</form:option>
                                                            <form:option value="HP">HP</form:option>
                                                        </form:select>
                                                    </div>
                                                </div>
                                                <div class="col">

                                                    <div class="mb-3">
                                                        <label class="form-label">Target:</label>
                                                        <form:select class="form-select" path="target">
                                                            <form:option value="GAMING">Gaming</form:option>
                                                            <form:option value="OFFICE">Office</form:option>
                                                        </form:select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label" for="imageFile">Image:</label>
                                                <input class="form-control" type="file" id="imageFile"
                                                    accept=" .png, .jpg, .jpeg" name="productFile" />
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <img style="max-height: 250px; display: none;" alt="image preview"
                                                        id="imagePreview" />
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