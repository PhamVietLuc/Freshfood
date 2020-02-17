<?php 
	class controller_product{
		public function __construct(){
			//lay bien action truyen tu url
			$action = isset($_GET["action"])?$_GET["action"]:"";
			switch($action){				
				case "edit":
					//chuc nang sua ban ghi
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham de thuc hien chuc nang edit
					$this->edit_product($id);
				break;
				case "do_edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham do_edit de update ban ghi
					$this->do_edit($id);
				break;
				case "add":
					//goi ham de thuc hien chuc nang edit
					$this->add_product();
				break;
				case "do_add":
					//goi ham do_add de add ban ghi
					$this->do_add();
				break;
				case "delete":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham delete product
					$this->delete($id);
				break;
				default:
					$this->list_product();
				break;
			}
		}
		public function list_product(){
			//-----
			//phan trang
			//quy dinh so ban ghi tren mot trang
			$record_per_page = 6;
			//tinh tong so ban ghi
			$total_record = model::num_rows("select pk_product_id from product");
			//tinh so trang
			$num_page = ceil($total_record/$record_per_page);
			//lay bien p truyen tu url (bien nay se chi trang hien tai)
			$p = isset($_GET["p"])&&$_GET["p"]>0 ? $_GET["p"]-1:0;
			//xac dinh lay tu ban ghi nao
			$from = $p*$record_per_page;
			//sql
			$data = model::list_all("select * from product order by pk_product_id desc limit $from,$record_per_page");
			//load view
			include "view/backend/product.php";
			//-----
		}
		//edit product
		public function edit_product($id){
			//tao bien form_action de dieu phoi thuoc tinh action cua the form
			$form_action = "admin.php?controller=product&action=do_edit&id=$id";
			//lay mot ban ghi tuong ung voi id truyen vao
			$record = model::get_a_record("select * from product where pk_product_id=$id");
			//load view
			include "view/backend/add_edit_product.php";
		}
		//add product
		public function add_product(){
			//tao bien form_action de dieu phoi thuoc tinh action cua the form
			$form_action = "admin.php?controller=product&action=do_add";
			//load view
			include "view/backend/add_edit_product.php";
		}
		//do_edit
		public function do_edit($id){
			$title_product = $_POST["title_product"];
			$price = $_POST["price"];
			$fk_list_product_id = $_POST["fk_list_product_id"];
			$short_description = $_POST["short_description"];
			$info_detail = $_POST["info_detail"];
			$c_count = $_POST["c_count"];
			$hot_product = isset($_POST["hot_product"])? 1:0;
			model::execute("update product set title_product='$title_product', price='$price', info_detail='$info_detail', short_description='$short_description', fk_list_product_id=$fk_list_product_id, hot_product=$hot_product where pk_product_id=$id");
			// nếu người dùng chọn file upload 
			if($_FILES["img_product"]["name"]!=""){
				//lấy tên file gán vào một biến
				$img_product = time().$_FILES["img_product"]["name"];
				move_uploaded_file($_FILES["img_product"]["tmp_name"], "public/upload/watch/$img_product");
				//update bản ghi
				model::execute("update product set img_product='$img_product' where pk_product_id=$id");
			}
			//quay tro lai controller product
			header("location:admin.php?controller=product");
		}
		//do_add
		public function do_add(){
			$title_product = $_POST["title_product"];
			$price = $_POST["price"];
			$fk_list_product_id = $_POST["fk_list_product_id"];
			$short_description = $_POST["short_description"];
			$info_detail = $_POST["info_detail"];
			$c_date = $_POST["info_detail"];
			$hot_product = isset($_POST["hot_product"])? 1:0;
			$img_product = "";
			if($_FILES["img_product"]["name"]!=""){
				//lấy tên file gán vào một biến
			$img_product = time().$_FILES["img_product"]["name"];
			move_uploaded_file($_FILES["img_product"]["tmp_name"], "public/upload/watch/$img_product");
			}
			model::execute("insert into product set title_product='$title_product', price='$price', short_description='$short_description', info_detail='$info_detail', fk_list_product_id=$fk_list_product_id,  hot_product=$hot_product, img_product='$img_product'");
			//quay tro lai product
			header("location:admin.php?controller=product");
		}	
		//delete product
		public function delete($id){
			model::execute("delete from product where pk_product_id=$id");
			//quay tro lai controller product
			header("location:admin.php?controller=product");
		}	
	}
	new controller_product();
 ?>