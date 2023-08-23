<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $data['title'] ?></title>
    <link rel="stylesheet" href="http://localhost/Nienluancoso/public/css/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <header>
        <!-- <div class="navbar-fixed"> -->
        <nav class="nav-extended grey lighten-5">
            <div class="nav-wrapper container">
                <a href="/Nienluancoso/home/index" class="brand-logo">
                    <img class="img-logo" src="http://localhost/Nienluancoso/public/img/logo.png" alt="anh da loi">
                </a>
                <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="black-text material-icons">menu</i></a>
                <ul id="nav-mobile" class=" right hide-on-med-and-down">
                    <li class="<?php if ($data['title'] == 'Trang chủ') echo "active"; ?>"><a class="indigo-text text-darken-4" href="/Nienluancoso/home/index"><b>Trang chủ</b></a></li>
                    <li class="<?php if ($data['title'] == 'Khóa học') echo "active"; ?>"><a class="indigo-text text-darken-4" href="/Nienluancoso/home/coures"><b>Khóa học</b></a></li>
                    <li class="<?php if ($data['title'] == 'Lịch học') echo "active"; ?>"><a class="indigo-text text-darken-4" href="#"><b>Lịch học</b></a></li>
                    <li class="<?php if ($data['title'] == 'Liên hệ') echo "active"; ?>"><a class="indigo-text text-darken-4" href="#"><b>Liên hệ</b></a></li>
                </ul>
            </div>
        </nav>
        <ul class="sidenav grey lighten-5" id="mobile-demo">
            <li class="<?php if ($data['title'] == 'Trang chủ') echo "active"; ?>"><a href="/Nienluancoso/home/index">Trang chủ</a></li>
            <li class="<?php if ($data['title'] == 'Khóa học') echo "active"; ?>"><a href="#">Khóa học</a></li>
            <li class="<?php if ($data['title'] == 'Lịch học') echo "active"; ?>"><a href="#">Lịch học</a></li>
            <li class="<?php if ($data['title'] == 'Liên hệ') echo "active"; ?>"><a href="#">Liên hệ</a></li>
        </ul>
        <!-- </div> -->
    </header>
    <main class="container">
            <?php
            require_once("./mvc/views/{$data['layout']}.php")
            ?>
    </main>
    <footer class="page-footer grey lighten-5">
        <div class="container">
            <div class="row">
                <div class="col l6 s12 indigo-text">
                    <h5 class="center"><img src="http://localhost/Nienluancoso/public/img/logo.png" alt="loianh"></h5>
                    <p class="">Trung tâm Anh ngữ Cần Thơ - OCEAN luôn không ngừng phát triển và cố gắng mang lại những phương pháp học tập tối ưu nhất dành cho tất cả các học viên đến với trung tâm.</p>
                    <p class="">Địa chỉ: 208 Nguyễn Việt Hồng, P. An Phú, Q. Ninh Kiều, TP. Cần Thơ. ĐT: 0854 172 887</p>
                </div>
                <div class="footer-custom col l4 offset-l2 s12">
                    <h5 class="indigo-text text-darken-4"><b>Về OCEAN</b></h5>
                    <ul>
                        <li><a class="a-custom-header" href="/Nienluancoso/home/index">Trang chủ</a></li>
                        <li><a class="a-custom-header" href="#!">Khóa học</a></li>
                        <li><a class="a-custom-header" href="#!">Lịch học</a></li>
                        <li><a class="a-custom-header" href="#!">Liên hệ</a></li>
                    </ul>
                    <div class="row">
                        <a class="col" href="https://www.facebook.com/"><i class="fa-brands fa-facebook fa-xl" style="color: #0860f7;"></i></a>
                        <a class="col" href="https://www.instagram.com/"><i class="fa-brands fa-instagram fa-xl" style="color: #ff0505;"></i></a>
                        <a class="col" href="https://twitter.com/"><i class="fa-brands fa-twitter fa-xl" style="color: #327af5;"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container indigo-text">
                © 2014 Copyright OCEAN
                <div class="right row">
                    <div class="col indigo-text">English for future Achievers</div>
                    <div class="col indigo-text">Hotline: <a class="a-custom-header" href="tel://0854 172 887">0854 172 887</a> </div>
                    <div class="col">
                        <i class="fa-regular fa-envelope" style="color: #3f51b5;"></i>
                        <a class="a-custom-header" href="mailto: anhnguoceancantho@gmail.com">anhnguoceancantho@gmail.com</a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="http://localhost/Nienluancoso/public/javascript/main.js"></script>
</body>

</html>