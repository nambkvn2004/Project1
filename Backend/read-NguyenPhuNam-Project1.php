<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách khách hàng - Nguyễn Phú Nam</title>
</head>
<body>
    <?php
    include("ketnoi-NguyenPhuNam-Project1.php");
    $kh_npn = "SELECT * FROM khach_hang WHERE 1 =1";
    $result_npn = $conn_npn->query($kh_npn);
    ?>
    <?php
        if(isset($_GET["id"])){
            $kh_npn_delete = "DELETE FROM khach_hang WHERE MaKH ='" . $_GET["id"] . "'";
            //die($kh_npn_delete);
            if($conn_npn->query($kh_npn_delete)){
                header("Location:read-NguyenPhuNam-Project1.php");
            }
        }
        ?>
    <header>
        <h1> Danh sách khách hàng - Nguyễn Phú Nam  </h1>
</header>
<section>
    <a href="create-NguyenPhuNam-Project1.php">Thêm mới</a>
    <table border="1px" width="80%" align="center">
        <thead>
            <tr>
                <th>STT</th>
                <th>Mã</th>
                <th>Họ và Tên</th>
                <th>Tài khoản</th>
                <th>Mật khẩu</th>
                <th>Địa chỉ</th>
                <th>Điện thoại</th>
                <th>Email</th>
                <th>Ngày sinh</th>
                <th>Ngày cập nhật</th>
                <th>Giới tính</th>
                <th>Tích điểm</th>
                <th>Trạng thái</th>
</tr>
</thead>
<tbody>
    <?php
        //4
        $stt_npn=0;
        while($row_npn = $result_npn ->fetch_array()){
            $stt_npn ++;
        ?>
    <tr>
        <td><?php echo $stt_npn;?></td>
        <td><?php echo $row_npn["MaKH"];?></td>
        <td><?php echo $row_npn["Ho_ten"];?></td>
        <td><?php echo $row_npn["Tai_khoan"];?></td>
        <td><?php echo $row_npn["Mat_khau"];?></td>
        <td><?php echo $row_npn["Dia_chi"];?></td>
        <td><?php echo $row_npn["Dien_thoai"];?></td>
        <td><?php echo $row_npn["Email"];?></td>
        <td><?php echo $row_npn["Ngay_sinh"];?></td>
        <td><?php echo $row_npn["Ngay_cap_nhat"];?></td>
        <td><?php echo $row_npn["Gioi_tinh"];?></td>
        <td><?php echo $row_npn["Tich_diem"];?></td>
        <td><?php echo 
                $row_npn["Tich_diem"]==true?"Hiển thị":"Ẩn";
                //echo $row_npn["TRANGTHAI_2210900047"];
                ?></td>
                <td>
                    <a href="update-NguyenPhuNam-Project1.php?id=<?php echo $row_npn["MaKH"];?>">Sửa</a>

                    <a href="read-NguyenPhuNam-Project1.php?id=<?php echo $row_npn["MaKH"];?>">Xóa</a>
</tr>
<?php
        }
        ?>
</tbody>
</table>
</section>
</body>
</html>