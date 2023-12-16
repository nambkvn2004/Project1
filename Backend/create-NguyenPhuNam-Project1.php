<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm mới - Nguyễn Phú Nam - Project1</title>
</head>
<body>
    <?php
        if(isset($_POST["btn_npn"])){
        include("ketnoi-NguyenPhuNam-Project1.php");
            $MaKH =$_POST["MaKH"];
            $Ho_ten =$_POST["Ho_ten"];
            $Tai_khoan =$_POST["Tai_khoan"];
            $Mat_khau =$_POST["Mat_khau"];
            $Dia_chi =$_POST["Dia_chi"];
            $Dien_thoai =$_POST["Dien_thoai"];
            $Email =$_POST["Email"];
            $Ngay_sinh =$_POST["Ngay_sinh"];
            $Ngay_cap_nhat =$_POST["Ngay_cap_nhat"];
            $Gioi_tinh =$_POST["Gioi_tinh"];
            $Tich_diem =$_POST["Tich_diem"];
            $Trang_thai =$_POST["Trang_thai"];
            $kh_npn = "INSERT INTO khach_hang(MaKH,Ho_ten,Tai_khoan,Mat_khau,Dia_chi,Dien_thoai,Email,Ngay_sinh,Ngay_cap_nhat,Gioi_tinh,Tich_diem,Trang_thai)";
            $kh_npn .= "VALUES('$MaKH','$Ho_ten','$Tai_khoan','$Mat_khau','$Dia_chi','$Dien_thoai','$Email','$Ngay_sinh','$Ngay_cap_nhat','$Gioi_tinh','$Tich_diem','$Trang_thai')";
            echo $kh_npn;
            die;
        }
?>
    <header>
        <h1>Thêm mới - Nguyễn Phú Nam - Project1</h1>
</header>
<form action="create-NguyenPhuNam-Project1.php" method="post">
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
        <input type="radio" value="1" name="Trang_thai" id="TT1> <label for="TT1">Đang hoạt động</label>
        <input type="radio" value="0" name="Trang_thai" id="TT2> <label for="TT2">Đang bị khóa</label>
</div>
    <input type="submit" value="Ghi lại" name="btn_npn">
        </form>
</body>
</html>