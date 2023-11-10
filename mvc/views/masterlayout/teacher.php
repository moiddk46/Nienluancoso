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
                <a href="/Nienluancoso/teacher/index" class="brand-logo">
                    <img class="img-logo" src="http://localhost/Nienluancoso/public/img/logo.png" alt="anh da loi">
                </a>
                <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="black-text material-icons">menu</i></a>
                <ul id="nav-mobile" class=" right hide-on-med-and-down">
                    <li class="<?php if ($data['title'] == 'Trang chủ') echo "active"; ?>"><a class="indigo-text text-darken-4" href="/Nienluancoso/teacher/index"><b>Trang chủ</b></a></li>
                    <li class="<?php if ($data['title'] == 'Khóa học') echo "active"; ?>"><a class="indigo-text text-darken-4" href="/Nienluancoso/coures/couresteacher"><b>Khóa học</b></a></li>
                    <li class="<?php if ($data['title'] == 'Lịch học') echo "active"; ?>"><a class="indigo-text text-darken-4" href="/Nienluancoso/schedule/couresscheduleteacher"><b>Lịch dạy</b></a></li>
                    <?php

                    if (isset($_SESSION['username']) && ($_SESSION['phanquyen'] == 1)) {
                    ?>
                        <li><a class="waves-effect waves-indigo btn indigo white-text dropdown-trigger" data-target="dropdown1">Xin chào! <?php echo $_SESSION['tengv']; ?></a></li>

                        <!-- Dropdown Structure -->
                        <ul id='dropdown1' class='dropdown-content row'>
                            <li><a class="indigo-text" href="/Nienluancoso/teacher/viewinfor">Thông tin tài khoản</a></li>
                            <li><a class="indigo-text" href="/Nienluancoso/login/logout">Đăng xuất</a></li>
                        </ul>
                    <?php
                    } else {
                    ?>
                        <li><a class="waves-effect waves-light btn indigo" href="/Nienluancoso/login/index"><i class="material-icons center">login</i></a></li>
                    <?php
                    }
                    ?>

                </ul>
            </div>
        </nav>
        <ul class="sidenav grey lighten-5" id="mobile-demo">
            <li class="<?php if ($data['title'] == 'Trang chủ') echo "active"; ?>"><a href="/Nienluancoso/teacher/index">Trang chủ</a></li>
            <li class="<?php if ($data['title'] == 'Khóa học') echo "active"; ?>"><a href="/Nienluancoso/coures/couresteacher">Khóa học</a></li>
            <li class="<?php if ($data['title'] == 'Lịch học') echo "active"; ?>"><a href="/Nienluancoso/schedule/couresscheduleteacher">Lịch dạy</a></li>
        </ul>
        <!-- </div> -->
    </header>
    <main class="container">
        <?php
        require_once("./mvc/views/{$data['layout']}.php")
        ?>
    </main>
    <script src="https://cdn.tiny.cloud/1/owrwd04tvdl9d7gqgh8u7ct8u4f6iw430zykyiv91cgdkytq/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        tinymce.init({
            selector: 'textarea',
            plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount',
            toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table | align lineheight | numlist bullist indent outdent | emoticons charmap | removeformat',
        });
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="http://localhost/Nienluancoso/public/javascript/main.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>

</body>

</html>