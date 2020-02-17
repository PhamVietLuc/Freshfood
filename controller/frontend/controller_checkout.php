<?php
class checkout
{
    public function __construct()
    {
        if (isset($_SESSION["cart"]) && isset($_SESSION["customer_id"]) && $_SESSION["customer_id"] != null && count($_SESSION["cart"]) > 0) {
            $customer_id = $_SESSION["customer_id"];
            $tonggia = 0;
            foreach ($_SESSION["cart"] as $product)
                $tonggia = $tonggia + $product["number"] * $product["price"];
            $order_id = model::execute("insert into order_customer set customer_id = $customer_id, time_buying = now(), cost = $tonggia");
        }
        else {
            echo "<script>location.href='index.php?controller=login';</script>";
        }
        echo '<pre>';
        echo $order_id;
        foreach($_SESSION["cart"] as $key => $value) {
            model::execute("insert into order_detail set order_id = $order_id, fk_product_id = " .$value["pk_product_id"]. ", order_number = " .$value["number"]);
        }
        $_SESSION["cart"] = array();
         echo "<script>location.href='index.php?controller=cart';</script>";
    }
}
new checkout();
?>
