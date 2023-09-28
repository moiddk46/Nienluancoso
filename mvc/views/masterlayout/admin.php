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
    <header class="col s4 indigo">
        <div class="container">
            <div class="center icon-admin">
                <a href=""><i class="large material-icons">account_circle</i></a>
            </div>
            <ul class="list">
                <li class="list-li"><a class="actived" href="">TRANG CHỦ</a></li>
                <li class="list-li"><a href="">HỌC VIÊN</a></li>
                <li class="list-li"><a href="">GIÁO VIÊN</a></li>
                <li class="list-li"><a href="">KHÓA HỌC</a></li>
                <li class="list-li"><a href="">LỊCH HỌC</a></li>
                <li class="list-li"><a href="">DOANH THU</a></li>
            </ul>
            <div class="logout-admin">
                <a class="waves-effect waves-light btn indigo dropdown-trigger" data-target="dropdown"><i class="material-icons">portrait</i></a>
                <ul id='dropdown' class='dropdown-content row'>
                            <li><a class="indigo-text" href="#!">Thông tin tài khoản</a></li>
                            <li><a class="indigo-text" href="#!">Xóa tài khoản</a></li>
                            <li><a class="indigo-text" href="/Nienluancoso/login/logout">Đăng xuất</a></li>
                        </ul>
              </div>
            </div>
    </header>
    <main class="col-s8">

    </main>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="http://localhost/Nienluancoso/public/javascript/main.js"></script>
</body>
</html>