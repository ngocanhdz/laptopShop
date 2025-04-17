<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Update User</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <!-- <link href="/css/demo.css" rel="stylesheet"> -->
            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                            <div class="container">
                                <a class="navbar-brand" href="#">
                                    <i class="fas fa-calendar-alt me-2"></i>UniSchedule
                                </a>
                                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#navbarNav">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarNav">
                                    <ul class="navbar-nav me-auto">
                                        <li class="nav-item">
                                            <a class="nav-link active" href="#">Trang chủ</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">Tính năng</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">Hướng dẫn</a>
                                        </li>
                                    </ul>
                                    <div class="d-flex">
                                        <a href="#" class="btn btn-outline-light me-2">Đăng nhập</a>
                                        <a href="#" class="btn btn-light">Đăng ký</a>
                                    </div>
                                </div>
                            </div>
                        </nav>
                        <section class="bg-primary text-white py-5">
                            <div class="container">
                                <div class="row align-items-center">
                                    <div class="col-md-6">
                                        <h1 class="display-4 fw-bold mb-4">Quản lý thời khóa biểu đại học thông minh
                                        </h1>
                                        <p class="lead mb-4">Hệ thống tạo lịch tự động giúp giáo vụ tiết kiệm thời gian
                                            và sinh viên dễ dàng đăng ký học phần.</p>
                                        <div class="d-grid gap-2 d-md-flex justify-content-md-start">
                                            <a href="#" class="btn btn-light btn-lg px-4 me-md-2">Dùng thử ngay</a>
                                            <a href="#" class="btn btn-outline-light btn-lg px-4">Tìm hiểu thêm</a>
                                        </div>
                                    </div>
                                    <div class="col-md-6 d-none d-md-block">
                                        <img src="https://via.placeholder.com/600x400" alt="Schedule Illustration"
                                            class="img-fluid rounded">
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="py-5">
                            <div class="container">
                                <div class="text-center mb-5">
                                    <h2 class="fw-bold">Tính năng nổi bật</h2>
                                    <p class="lead text-muted">Những công cụ mạnh mẽ giúp quản lý thời khóa biểu hiệu
                                        quả</p>
                                </div>

                                <div class="row g-4">
                                    <div class="col-md-6 col-lg-3">
                                        <div class="card h-100 shadow-sm">
                                            <div class="card-body text-center">
                                                <i class="fas fa-magic fa-3x text-primary mb-3"></i>
                                                <h5 class="card-title">Tạo lịch tự động</h5>
                                                <p class="card-text">Sử dụng thuật toán di truyền để tạo thời khóa biểu
                                                    tối ưu chỉ trong vài phút.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <div class="card h-100 shadow-sm">
                                            <div class="card-body text-center">
                                                <i class="fas fa-users fa-3x text-primary mb-3"></i>
                                                <h5 class="card-title">Đăng ký lớp học</h5>
                                                <p class="card-text">Sinh viên dễ dàng đăng ký vào các lớp học phù hợp
                                                    với lịch trình cá nhân.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <div class="card h-100 shadow-sm">
                                            <div class="card-body text-center">
                                                <i class="fas fa-bell fa-3x text-primary mb-3"></i>
                                                <h5 class="card-title">Thông báo lịch học</h5>
                                                <p class="card-text">Nhận thông báo kịp thời về thay đổi lịch học, phòng
                                                    học và các sự kiện.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-3">
                                        <div class="card h-100 shadow-sm">
                                            <div class="card-body text-center">
                                                <i class="fas fa-chart-line fa-3x text-primary mb-3"></i>
                                                <h5 class="card-title">Báo cáo thống kê</h5>
                                                <p class="card-text">Xem báo cáo chi tiết về tình hình sử dụng phòng học
                                                    và đăng ký môn học.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="py-5 bg-light">
                            <div class="container">
                                <div class="text-center mb-5">
                                    <h2 class="fw-bold">Xem thời khóa biểu mẫu</h2>
                                    <p class="lead text-muted">Trải nghiệm giao diện thời khóa biểu trực quan và dễ sử
                                        dụng</p>
                                </div>

                                <div class="card shadow">
                                    <div class="card-header bg-primary text-white py-3">
                                        <h5 class="mb-0 text-center">Thời khóa biểu - Học kỳ 1 (2024-2025)</h5>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead class="table-light">
                                                    <tr>
                                                        <th width="100">Thời gian</th>
                                                        <th>Thứ 2</th>
                                                        <th>Thứ 3</th>
                                                        <th>Thứ 4</th>
                                                        <th>Thứ 5</th>
                                                        <th>Thứ 6</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="text-center">7:30 - 9:00</td>
                                                        <td class="bg-info bg-opacity-10">Toán cao cấp<br>P.A101</td>
                                                        <td></td>
                                                        <td class="bg-warning bg-opacity-10">Lập trình Java<br>P.B203
                                                        </td>
                                                        <td></td>
                                                        <td class="bg-success bg-opacity-10">Tiếng Anh<br>P.C305</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center">9:15 - 10:45</td>
                                                        <td></td>
                                                        <td class="bg-danger bg-opacity-10">Cơ sở dữ liệu<br>P.A205</td>
                                                        <td class="bg-warning bg-opacity-10">Lập trình Java<br>P.B203
                                                        </td>
                                                        <td class="bg-primary bg-opacity-10">Mạng máy tính<br>P.D102
                                                        </td>
                                                        <td></td>
                                                    </tr>
                                                    <!-- Thêm các hàng khác nếu cần -->
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="py-5 bg-primary text-white">
                            <div class="container text-center">
                                <h2 class="fw-bold mb-4">Bắt đầu sử dụng ngay hôm nay</h2>
                                <p class="lead mb-4">Hệ thống thời khóa biểu thông minh giúp tối ưu hóa thời gian và
                                    nguồn lực</p>
                                <a href="#" class="btn btn-light btn-lg px-5">Đăng ký miễn phí</a>
                            </div>
                        </section>
                        <footer class="bg-dark text-white py-4">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-4 mb-3 mb-md-0">
                                        <h5>UniSchedule</h5>
                                        <p class="text-muted">Hệ thống quản lý thời khóa biểu thông minh dành cho trường
                                            đại học.</p>
                                    </div>
                                    <div class="col-md-2 mb-3 mb-md-0">
                                        <h5>Liên kết</h5>
                                        <ul class="list-unstyled">
                                            <li><a href="#" class="text-decoration-none text-muted">Trang chủ</a></li>
                                            <li><a href="#" class="text-decoration-none text-muted">Tính năng</a></li>
                                            <li><a href="#" class="text-decoration-none text-muted">Hướng dẫn</a></li>
                                            <li><a href="#" class="text-decoration-none text-muted">Liên hệ</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-3 mb-3 mb-md-0">
                                        <h5>Liên hệ</h5>
                                        <ul class="list-unstyled text-muted">
                                            <li><i class="fas fa-envelope me-2"></i> support@unischedule.com</li>
                                            <li><i class="fas fa-phone me-2"></i> (084) 123 456 789</li>
                                            <li><i class="fas fa-map-marker-alt me-2"></i> 123 Đường ABC, Thành phố XYZ
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-3">
                                        <h5>Theo dõi chúng tôi</h5>
                                        <div class="d-flex gap-3 fs-4">
                                            <a href="#" class="text-muted"><i class="fab fa-facebook"></i></a>
                                            <a href="#" class="text-muted"><i class="fab fa-twitter"></i></a>
                                            <a href="#" class="text-muted"><i class="fab fa-linkedin"></i></a>
                                            <a href="#" class="text-muted"><i class="fab fa-github"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <hr class="my-4">
                                <div class="text-center text-muted">
                                    <small>&copy; 2025 UniSchedule. Tất cả các quyền được bảo lưu.</small>
                                </div>
                            </div>
                        </footer>

                    </div>
                </div>
            </body>

            </html>