<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cập nhật - Nguyễn Phú Nam</title>
</head>
<body>
    <?php
    include("ketnoi-NguyenPhuNam-Project1.php");


        //Đọc dữ liệu cần sửa theo id
        if(isset($_GET["id"])){
            $kh_update_npn ="SELECT * FROM khach_hang WHERE MaKH ='" . $_GET["id"] . "'";
            $result_npn = $conn_npn->query($kh_update_npn);
            $row_npn = $result_npn->fetch_array();
        }

    ?>

    <header>
        <h1>Cập nhật - Nguyễn Phú Nam </h1>
    </header>
<form action="" method="post">
<div>
        <label> Mã </label>
        <input type="text" name="MaKH">
</div>
<div>
        <label> Họ và Tên </label>
        <input type="text" name="Ho_ten">
</div>
<div>
        <label> Tài khoản </label>
        <input type="text" name="Tai_khoan">
</div>
<div>
        <label> Mật khẩu </label>
        <input type="text" name="Mat_khau">
</div>
<div>
        <label> Địa chỉ </label>
        <input type="text" name="Dia_chi">
</div>
<div>
        <label> Điện thoại </label>
        <input type="text" name="Dien_thoai">
</div>
<div>
        <label> Email </label>
        <input type="text" name="Email">
</div>
<div>
        <label> Ngày sinh </label>
        <input type="date" name="Ngay_sinh">
</div>
<div>
        <label> Ngày cập nhật </label>
        <input type="date" name="Ngay_cap_nhat">
</div>
<div>
        <label> Giới tính </label>
        <input type="text" name="Gioi_tinh">
</div>
<div>
        <label> Tích điểm </label>
        <input type="text" name="Tich_diem">
</div>
<div>
        <label> Trạng thái </label>
        <input type="radio" value="1" name="Trang_thai" id="TT1"> 
        <label for="TT1">Đang hoạt động</label>
        <input type="radio" value="0" name="Trang_thai" id="TT2"> 
        <label for="TT2">Đang bị khóa</label>
</div>
    <input type="submit" value="Ghi lại" name="btn_npn">
    <div>
        <?php
    if(isset($error_npn)){
        echo $error_npn;
    }
    ?>
    </div>
        </form>
</body>
</html>