<?php 
	class controller_login{
		public function __construct(){
			//---------
			//logout
			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch($act){
				case "logout":
					$_SESSION["customer_id"] = null;
					$_SESSION["email"] = null;
					echo "<script language='javascript'>location.href='trang-chu;</script>";
				break;
			}
			//---------
			if($_SERVER["REQUEST_METHOD"] == "POST"){
				$email = $_POST["email"];
				$password = $_POST["password"];
				$password = md5($password);
				//kiem tra thong tin trong csdl
				$arr = model::get_a_record("select customer_id,email,password from customer where email='$email'");
				if(isset($arr->email)){
					//kiem tra password
					if($password == $arr->password){
						//dang nhap thanh cong
						$_SESSION["customer_id"] = $arr->customer_id;
						$_SESSION["email"]= $email;
						echo "<script language='javascript'>location.href='trang-chu';</script>";
					}else{
						echo "<script language='javascript'>location.href='trang-chu?controller=login&act=fail';</script>";
					}
				}else{
					echo "<script language='javascript'>location.href='trang-chu?controller=login&act=fail';</script>";
				}
				echo "<script language='javascript'>location.href='trang-chu';</script>";
			}
			//---------
			//load view
			include "view/frontend/view_login.php";
		}
	}
	new controller_login();
 ?>