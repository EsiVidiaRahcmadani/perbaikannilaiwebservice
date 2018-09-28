<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "data_mobil";
$con = mysqli_connect($server, $username, $password) or
die("<h1>Koneksi Mysqli Error : </h1>" . mysqli_connect_error());
mysqli_select_db($con, $database) or die("<h1>Koneksi Kedatabase Error : </h1>" . mysqli_error($con));
@$operasi = $_GET['operasi'];
Switch ($operasi) {
case "view":
$query_tampil_data_mobil = mysqli_query($con,"SELECT * FROM table_data_mobil") or die (mysqli_error($con));
$data_array = array();
while ($data = mysqli_fetch_assoc($query_tampil_data_mobil)) {
$data_array[]=$data;
}

echo json_encode($data_array);
break;
case "insert":
@$merk_mobil = $_GET['merk_mobil'];
@$warna = $_GET['warna'];
@$plat = $_GET['plat'];
@$tahun = $_GET['tahun'];
$query_insert_data = mysqli_query($con, "INSERT INTO table_data_mobil (merk_mobil,warna,plat,tahun) VALUES('$merk_mobil','$warna','$plat','$tahun')");
if ($query_insert_data) {
echo "Data Berhasil Disimpan";
}
else {
echo "Maaf Insert Ke Dalam Database Error" . mysqli_error($con);
}
break;

case "get_data_mobil_by_id":
@$id = $_GET['id'];
$query_tampil_data_mobil = mysqli_query($con, "SELECT * FROM table_data_mobil WHERE id='$id'") or die (mysqli_error($con));
$data_array = array();
$data_array = mysqli_fetch_assoc($query_tampil_data_mobil);
echo "[" . json_encode ($data_array) . "]";
break;

case "update":
@$merk_mobil = $_GET['merk_mobil'];
@$warna = $_GET['warna'];
@$plat = $_GET['plat'];
@$tahun = $_GET['tahun'];
@$id = $_GET['id'];
$query_update_data_mobil = mysqli_query($con, "UPDATE table_data_mobil SET merk_mobil='$merk_mobil', warna='$warna', plat='$plat', tahun='$tahun' WHERE id='$id'");
if ($query_update_data_mobil) {
echo "Update Data Berhasil";
}
else {
echo mysqli_error($con);
}
break;

case "delete":
@$id = $_GET['id'];
$query_delete_data_mobil = mysqli_query($con, "DELETE FROM table_data_mobil WHERE id='$id'");
if ($query_delete_data_mobil) {
echo "Data Berhasil Dihapus";
}
else {
echo mysqli_error($con);
}
break;
default:
break;
}
?>