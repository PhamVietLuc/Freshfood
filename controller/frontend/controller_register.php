<?php 
	class controller_register{
		public function __construct(){
			//----------
			if($_SERVER["REQUEST_METHOD"] == "POST"){
				$fullname = $_POST["fullname"];
				$email = $_POST["email"];
				$address = $_POST["address"];
				$phone_number = $_POST["phone_number"];
				$password = $_POST["password"];
				$password = md5($password);
				//insert thong tin vao csdl
				model::execute("insert into customer(fullname,email,address,phone_number,password) values('$fullname','$email','$address','$phone_number','$password')");
				//header("location:index.php?controller=register&act=success");
				echo "<script language='javascript'>location.href='index.php?controller=register&act=success';</script>";
			}
			//----------
			//load view
			include "view/frontend/view_register.php";
		}
	}
	new controller_register();
 ?>