<?php 
	class controller_slide{
		public function __construct(){
			//lay bien action truyen tu url
			$action = isset($_GET["action"])?$_GET["action"]:"";
			switch($action){				
				case "edit":
					//chuc nang sua ban ghi
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham de thuc hien chuc nang edit
					$this->edit_slide($id);
				break;
				case "do_edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham do_edit de update ban ghi
					$this->do_edit($id);
				break;
				case "add":
					//goi ham de thuc hien chuc nang edit
					$this->add_slide();
				break;
				case "do_add":
					//goi ham do_add de add ban ghi
					$this->do_add();
				break;
				case "delete":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham delete slide
					$this->delete($id);
				break;
				default:
					$this->list_slide();
				break;
			}
		}
		public function list_slide(){
			//-----
			//phan trang
			//quy dinh so ban ghi tren mot trang
			$record_per_page = 6;
			//tinh tong so ban ghi
			$total_record = model::num_rows("select slide_id from slide");
			//tinh so trang
			$num_page = ceil($total_record/$record_per_page);
			//lay bien p truyen tu url (bien nay se chi trang hien tai)
			$p = isset($_GET["p"])&&$_GET["p"]>0 ? $_GET["p"]-1:0;
			//xac dinh lay tu ban ghi nao
			$from = $p*$record_per_page;
			//sql
			$data = model::list_all("select * from slide order by slide_id desc limit $from,$record_per_page");
			//load view
			include "view/backend/slide.php";
			//-----
		}
		//edit slide
		public function edit_slide($id){
			//tao bien form_action de dieu phoi thuoc tinh action cua the form
			$form_action = "admin.php?controller=slide&action=do_edit&id=$id";
			//lay mot ban ghi tuong ung voi id truyen vao
			$record = model::get_a_record("select * from slide where slide_id=$id");
			//load view
			include "view/backend/add_edit_slide.php";
		}
		//add slide
		public function add_slide(){
			//tao bien form_action de dieu phoi thuoc tinh action cua the form
			$form_action = "admin.php?controller=slide&action=do_add";
			//load view
			include "view/backend/add_edit_slide.php";
		}
		//do_edit
		public function do_edit($id){
			$title_1 = $_POST["title_1"];
			$title_2 = $_POST["title_2"];
			$title_3 = $_POST["title_3"];
			model::execute("update slide set title_1='$title_1', title_2='$title_2',  title_3='$title_3' where slide_id=$id");
			// nếu người dùng chọn file upload 
			if($_FILES["img"]["name"]!=""){
				//lấy tên file gán vào một biến
				$img = time().$_FILES["img"]["name"];
				move_uploaded_file($_FILES["img"]["tmp_name"], "public/upload/slide/$img");
				//update bản ghi
				model::execute("update slide set img='$img' where slide_id=$id");
			}
			//quay tro lai controller slide
			header("location:admin.php?controller=slide");
		}
		//do_add
		public function do_add(){
			$title_1 = $_POST["title_1"];
			$title_2 = $_POST["title_2"];
			$title_3 = $_POST["title_3"];
			$img = "";
			if($_FILES["img"]["name"]!=""){
				//lấy tên file gán vào một biến
			$img = time().$_FILES["img"]["name"];
			move_uploaded_file($_FILES["img"]["tmp_name"], "public/upload/slide/$img");
			}
			model::execute("insert into slide set title_1='$title_1', title_2='$title_2', title_3='$title_3', img='$img'");
			//quay tro lai slide
			header("location:admin.php?controller=slide");
		}	
		//delete slide
		public function delete($id){
			model::execute("delete from slide where slide_id=$id");
			//quay tro lai controller slide
			header("location:admin.php?controller=slide");
		}	
	}
	new controller_slide();
 ?>