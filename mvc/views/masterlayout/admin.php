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

<body class="row">
    <header class="col s2 indigo" style="min-height: 1500px;">
        <div class="container">
            <div class="center icon-admin">
                <a href="/Nienluancoso/admin/index"><i class="large material-icons">account_circle</i></a>
            </div>
            <ul class="list">
                <li class="list-li"><a class=" white-text <?php if ($data['title'] == 'Trang chủ') echo "actived"; ?>" href="/Nienluancoso/admin/index">TRANG CHỦ</a></li>
                <li class="list-li"><a class="white-text <?php if ($data['title'] == 'Học viên') echo "actived"; ?>" href="/Nienluancoso/viewstudent/viewallstudent">HỌC VIÊN</a></li>
                <li class="list-li"><a class="white-text <?php if ($data['title'] == 'Giáo viên') echo "actived"; ?>" href="/Nienluancoso/viewteacher/viewallteacher">GIÁO VIÊN</a></li>
                <li class="list-li"><a class="white-text <?php if ($data['title'] == 'Khóa học') echo "actived"; ?>" href="/Nienluancoso/admin/couresadmin">KHÓA HỌC</a></li>
                <li class="list-li"><a class="white-text <?php if ($data['title'] == 'Lớp học') echo "actived"; ?>" href="/Nienluancoso/admin/classcoures">LỚP HỌC</a></li>
            </ul>
            <div class="logout-admin">
                <?php
                if (isset($_SESSION['username']) && ($_SESSION['phanquyen'] == 0)) {
                ?>
                    <a class="waves-effect waves-light btn indigo dropdown-trigger dropdown-custom" data-target="dropdown"><i class="material-icons">portrait</i></a>
                <?php
                } else {
                    header("loaction: http://localhost/Nienluancoso/login/index");
                }
                ?>
                <ul id='dropdown' class='dropdown-content row'>
                    <li><a class="indigo-text" href="/Nienluancoso/admin/viewinfor">Thông tin tài khoản</a></li>
                    <li><a class="indigo-text" href="/Nienluancoso/login/logout">Đăng xuất</a></li>
                </ul>
            </div>
        </div>
    </header>
    <main class="col s10">
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
</body>

</html>