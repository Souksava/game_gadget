<?php 
session_start();
if($_SESSION['ses_id'] != ''){

}
elseif($_SESSION['fb_access_token'] != ''){
   
}
else{
    echo"<meta http-equiv='refresh' content='1;URL=../Login/frmlogin.php'>";
}
require '../ConnectDB/connectDB.php';
date_default_timezone_set("Asia/Bangkok");
$datenow = time();
$Date = date("Y-m-d",$datenow);
$sqlshop = "select * from shop;";
$resultshop = mysqli_query($link,$sqlshop);
$rowshop = mysqli_fetch_array($resultshop,MYSQLI_ASSOC);
require '../Login/config.php';
?>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name='copyright' content=''>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Title Tag  -->
    <title><?php echo $rowshop['name']; ?></title>
	<!-- Favicon -->
	<link rel="icon" type="image/png" href="../backend/image/<?php echo $rowshop['img_title']; ?>">
	<!-- Web Font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
	
	<!-- StyleSheet -->
	
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="../css/bootstrap.css">
	<!-- Magnific Popup -->
    <link rel="stylesheet" href="../css/magnific-popup.min.css">
	<!-- Font Awesome -->
    <link rel="stylesheet" href="../css/font-awesome.css">
	<!-- Fancybox -->
	<link rel="stylesheet" href="../css/jquery.fancybox.min.css">
	<!-- Themify Icons -->
    <link rel="stylesheet" href="../css/themify-icons.css">
	<!-- Nice Select CSS -->
    <link rel="stylesheet" href="../css/niceselect.css">
	<!-- Animate CSS -->
    <link rel="stylesheet" href="../css/animate.css">
	<!-- Flex Slider CSS -->
    <link rel="stylesheet" href="../css/flex-slider.min.css">
	<!-- Owl Carousel -->
    <link rel="stylesheet" href="../css/owl-carousel.css">
	<!-- Slicknav -->
    <link rel="stylesheet" href="../css/slicknav.min.css">
	
	<!-- Eshop StyleSheet -->
	<link rel="stylesheet" href="../css/reset.css">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/style2.css">
    <link rel="stylesheet" href="../css/responsive.css">

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
</head>
<body class="js">
	
	<!-- Preloader -->
	<!-- <div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span>
				<span></span>
			</div>
		</div>
	</div> -->
	<!-- End Preloader -->
	<header class="header shop">
		<!-- Topbar -->
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-12 col-12">
						<!-- Top Left -->
						<div class="top-left">
							<ul class="list-main">
								<li><i class="ti-headphone-alt"></i><?php echo $rowshop['tel']; ?></li>
								<li><i class="ti-email"></i> <?php echo $rowshop['email']; ?></li>
							</ul>
						</div>
						<!--/ End Top Left -->
					</div>
					<div class="col-lg-6 col-md-12 col-12">
						<!-- Top Right -->
						<div class="right-content font14">
							<ul class="list-main">
                                    <?php 
                                        if(isset($_SESSION['fb_access_token']) != ''){
                                    ?>
                                        <li><i class="ti-user"></i> <a href="../Login/frmlogin.php">ບັນຊີຂອງຂ້ອຍ</a></li>
                                        <li><i class="ti-power-off"></i><a href="../Check/logout.php">ອອກຈາກລະບົບ</a></li>
                                    <?php 
                                        }
                                        elseif(isset($_SESSION['ses_id']) != ''){
                                    ?>
                                        <li><i class="ti-user"></i> <a href="../Login/frmlogin.php">ບັນຊີຂອງຂ້ອຍ</a></li>
                                        <li><i class="ti-power-off"></i><a href="../Check/logout.php">ອອກຈາກລະບົບ</a></li>
                                    <?php 
                                        }
                                        else {
                                    ?>
                                        <li><i class="ti-user"></i> <a href="../Login/register.php">ລົງທະບຽນ</a></li>
                                        <li><i class="ti-power-off"></i><a href="../Login/frmlogin.php">ເຂົ້າສູ່ລະບົບ</a></li>
                                    <?php
                                        }
                                    ?>
							</ul>
						</div>
						<!-- End Top Right -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Topbar -->
		<div class="middle-inner">
			<div class="container">
				<div class="row">
                    <div class="col-lg-2 col-md-2 col-12">
						<!-- Logo -->
                        <div class="logo">
							<a href="../index.php"><img src="http://backend.gamegadgetlao.com/image/<?php echo $rowshop['img_path']; ?>" alt="" width="60%"></a>
						</div>
						<!--/ End Logo -->
						<!-- Search Form -->
						<div class="search-top">
							<div class="top-search"><a href="#0"><i class="ti-search"></i></a></div>
							<!-- Search Form -->
							<div class="search-top">
								<form action="../Search/search.php" method="GET" id="formserach" class="search-form">
									<input type="text" placeholder="Product Name, Brand" name="id">
									<button type="submit"><i class="ti-search"></i></button>
								</form>
							</div>
							<!--/ End Search Form -->
						</div>
						<!--/ End Search Form -->
						<div class="mobile-nav"></div>
					</div>
					<div class="col-lg-8 col-md-7 col-12">
						<div class="search-bar-top">
							<div class="search-bar">
								<form action="../Search/search.php" method="GET" id="formserach">
									<input name="id" placeholder="Product Name, Brand" type="search">
									<button type="submit" class="btnn"><i class="ti-search"></i></button>
								</form>
							</div>
						</div>
					</div>
                    <div class="col-lg-2 col-md-3 col-12 font14">
					<?php 
                           if($_SESSION['ses_id'] != ''){
                               $cus_id2 = $_SESSION['cus_id'];
                        ?>
                            <div class="right-bar">    
                            <?php 
                                $sqlck = "select count(sell_id) as ck from sell where status='ສັ່ງຊື້ສຳເລັດ' and seen2='NOTSEEN' and cus_id='$cus_id2';";
                                $resultck = mysqli_query($link,$sqlck);
                                $rowck = mysqli_fetch_array($resultck, MYSQLI_ASSOC);
                            ?>
                                <div class="sinlge-bar shopping">
                                    <a href="order.php">
                                        <img src="../icon/bill.ico" alt="" style="width: 35px;height: 35px;">
                                        <label>ບິນສັ່ງຊື້ <span class="badge badge-warning"><?php echo $rowck['ck'];?></span></label>
                                    </a>
                                </div>
                            </div>
                        <?php 
                            }
                        ?>
                          <?php 
                            if(isset($_SESSION['fb_access_token']) != ''){
                            $token2 = $_SESSION['fb_access_token'];
                            try {
                                // Returns a `Facebook\FacebookResponse` object
                                $response = $fb->get('/me?fields=id,name,email', $token2);
                              } catch(Facebook\Exceptions\FacebookResponseException $e) {
                                echo 'Graph returned an error: ' . $e->getMessage();
                                exit;
                            } catch(Facebook\Exceptions\FacebookSDKException $e) {
                                echo 'Facebook SDK returned an error: ' . $e->getMessage();
                                exit;
                            }
                            $user2 = $response->getGraphUser();
                            $fb_id2 = $user2['id'];
                            $sqlcus_id2 = "select * from customers where fb_id='$fb_id2';";
                            $resultcus_id2 = mysqli_query($link,$sqlcus_id2);
                            $rowcus_id2 = mysqli_fetch_array($resultcus_id2,MYSQLI_ASSOC);
                            $cus_idfb2 = $rowcus_id2['cus_id'];
                        ?>
                            <div class="right-bar">    
                            <?php 
                                $sqlck = "select count(sell_id) as ck from sell where status='ສັ່ງຊື້ສຳເລັດ' and seen2='NOTSEEN' and cus_id='$cus_idfb2';";
                                $resultck = mysqli_query($link,$sqlck);
                                $rowck = mysqli_fetch_array($resultck, MYSQLI_ASSOC);
                            ?>
                                <div class="sinlge-bar shopping">
                                    <a href="order.php">
                                        <img src="../icon/bill.ico" alt="" style="width: 35px;height: 35px;">
                                        <label>ບິນສັ່ງຊື້ <span class="badge badge-warning"><?php echo $rowck['ck'];?></span></label>
                                    </a>
                                </div>
                            </div>
                        <?php 
                            }
                        ?>
					</div>
				</div>
			</div>
		</div>
		<!-- Header Inner -->
		<div class="header-inner">
			<div class="container font14">
				<div class="cat-nav-head">
					<div class="row">
						<div class="col-lg-9 col-12">
							<div class="menu-area">
								<!-- Main Menu -->
								<nav class="navbar navbar-expand-lg">
									<div class="navbar-collapse">	
										<div class="nav-inner">	
											<ul class="nav main-menu menu navbar-nav">
													<li><a href="../index.php">ໜ້າຫຼັກ</a></li>																		
													<li><a href="../Contact_us/contact_us.php">ຕິດຕໍ່ເຮົາ</a></li>
												</ul>
										</div>
									</div>
								</nav>
								<!--/ End Main Menu -->	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ End Header Inner -->
	</header><br>
    <!--/ End Header -->
    <?php 
        if($_SESSION['ses_id'] != ''){
			$cus_id = $_SESSION['cus_id'];
			$sell_id = $_GET['id'];
			$sqlseen = "update sell set seen2='SEEN' where sell_id='$sell_id' and cus_id='$cus_id';";
			$resultseen = mysqli_query($link,$sqlseen);
			$sqlsell = "select sell_id,cus_name,sell_date,sell_time,amount,s.status,status_cash,s.img_path,sell_type,cupon_key,cupon_price,place_deli,note,delivery,place_deli from sell s left join customers c on s.cus_id=c.cus_id where sell_id='$sell_id' and s.cus_id='$cus_id';";
            $resultsell = mysqli_query($link,$sqlsell);
            $rowsell = mysqli_fetch_array($resultsell,MYSQLI_ASSOC);
    ?>
    <div class="container font14">
		<div class="row">
            <div class="col-md-8 font12">
                <div class="row row-cols-1 row-cols-md-1">
                    <div class="col mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 align="center" class="card-title"></h5>
                                <p class="card-text">
                                    <div class="row">
                                        <div class="col-md-12" align="center">
                                            <h6>ລາຍການຊື້ສິນຄ້າ</h6><br>
                                        </div>
                                        <div class="col-md-12 ">
                                            <div>
                                                <label>ເລກທີບິນ: <?php echo $rowsell['sell_id']; ?><br>ວັນທີ: <?php echo $rowsell['sell_date']; ?><br>ເວລາ: <?php echo $rowsell['sell_time']; ?> </label><br>
                                            </div>
                                            <div class="table-responsive">
                                                <table class="table" style="width:800px;">
                                                    <tr>
                                                        <th style="width: 300px;" scope="col">ສິນຄ້າ</th>
                                                        <th scope="col">ຈຳນວນ</th>
                                                        <th scope="col">ລາຄາ</th>
                                                        <th scope="col">ລວມ</th>
                                                    </tr>
                                                    <?php
                                                        $sqllistfb = "select d.pro_id,pro_name,cate_name,cated_name,brand_name,unit_name,p.img_path,d.qty,d.price,p.price as pro_price,d.promotion,(d.promotion/p.price) * 100 as perzen,d.qty*d.price as total from selldetail d left join product p on d.pro_id=p.pro_id left join categorydetail i  on p.cated_id=i.cated_id left join category c on i.cate_id=c.cate_id left join brand b on p.brand_id=b.brand_id left join unit u on p.unit_id=u.unit_id left join sell s on d.sell_id=s.sell_id where s.sell_id='$sell_id' and s.cus_id='$cus_id' ;";
                                                        $resultlistfb = mysqli_query($link,$sqllistfb);               
                                                        while($rowlistfb = mysqli_fetch_array($resultlistfb,MYSQLI_ASSOC)){
                                                    ?>
                                                    <tr>
                                                        <td> <?php echo $rowlistfb['cate_name']; ?>  <?php echo $rowlistfb['brand_name']; ?>  <?php echo $rowlistfb['pro_name']; ?> <?php echo $rowlistfb['cated_name']; ?></td>
                                                        <td> 
                                                            <?php echo $rowlistfb['qty']; ?> <?php echo $rowlistfb['unit_name']; ?>
                                                        </td>
                                                        <td >
                                                            <?php echo number_format($rowlistfb['price'],2); ?>
                                                        </td>
                                                        <td >
                                                            <?php echo number_format($rowlistfb['total'],2); ?>
                                                        </td>
                                                    </tr>
                                                    <?php 
                                                    }
                                                    ?>
                                                </table>
                                            </div>
                                        </div>
                                        <hr size="3" align="center" width="100%">
                                        <div class="col-md-12 " align="right">
                                            ຍອມລວມ (ລວມພາສີມູນຄ່າເພີ່ມ)
                                        </div><br>
                                        <div class="col-md-12" align="right">
                                            <br><h4 style="color: #CE3131;"> <?php echo number_format($rowsell['amount'],2); ?> ກີບ</h4>
                                            <label style="color: #7E7C7C;font-size: 12px;">ຄູປ໋ອງສ່ວນລົດ: <?php echo number_format($rowsell['cupon_price'],2); ?> ກີຍ</label>                                        
                                        </div>
                                    </div>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="alert alert-success" role="alert">
                        <label>ຂໍ້ຄວາມຕອບກັບ: <?php echo $rowsell['note']; ?></label>
                    </div>
                    <div class="alert alert-secondary" role="alert">
                        <label>ລາຍລະອຽດການສົ່ງ: <?php echo $rowsell['place_deli']; ?></label>
                    </div>
                </div>
			</div>
            <div class="col-lg-3 font12">
                <div class="row row-cols-1 row-cols-md-1">
                    <div class="col mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 align="center" class="card-title">ມູນຄ່າຊ່ຳລະທັງໝົດ</h5>
                                <p class="card-text">
                                    <label>ຄ່າສົ່ງສິນຄ້າ: <?php echo number_format($rowsell['delivery'],2); ?> ກີບ</label>
                                    <hr size="3" align="center" width="100%">
                                    <?php 
                                        if($rowsell['img_path'] == "0"){
                                        ?>
                                            <a href="../icon/0.png"><img src="../icon/0.png" alt="" style="width: 100%;"></a>
                                         <?php
                                        }
                                        else{
                                        ?>
                                            <a href="http://backend.gamegadgetlao.com/image/<?php echo $rowsell['img_path'];?>"><img src="http://backend.gamegadgetlao.com/image/<?php echo $rowsell['img_path'];?>" alt="" style="width: 100%;"></a>
                                        <?php
                                             }
                                        ?>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php 
        }
    ?>
        <?php 
        if(isset($_SESSION['fb_access_token']) != ''){
            $token = $_SESSION['fb_access_token'];
            $sell_id = $_GET['id'];
            try {
                // Returns a `Facebook\FacebookResponse` object
                $response = $fb->get('/me?fields=id,name,email', $token);
              } catch(Facebook\Exceptions\FacebookResponseException $e) {
                echo 'Graph returned an error: ' . $e->getMessage();
                exit;
            } catch(Facebook\Exceptions\FacebookSDKException $e) {
                echo 'Facebook SDK returned an error: ' . $e->getMessage();
                exit;
            }
            $user = $response->getGraphUser();
            $fb_id = $user['id'];
            $sqlcus_id = "select * from customers where fb_id='$fb_id';";
            $resultcus_id = mysqli_query($link,$sqlcus_id);
            $rowcus_id = mysqli_fetch_array($resultcus_id,MYSQLI_ASSOC);
			$cus_idfb = $rowcus_id['cus_id'];
			$sqlseen = "update sell set seen2='SEEN' where sell_id='$sell_id' and cus_id='$cus_idfb';";
			$resultseen = mysqli_query($link,$sqlseen);
            $sqlsell = "select sell_id,cus_name,sell_date,sell_time,amount,s.status,status_cash,s.img_path,sell_type,cupon_key,cupon_price,place_deli,note,delivery,place_deli from sell s left join customers c on s.cus_id=c.cus_id where sell_id='$sell_id' and s.cus_id='$cus_idfb';";
            $resultsell = mysqli_query($link,$sqlsell);
            $rowsell = mysqli_fetch_array($resultsell,MYSQLI_ASSOC);
    ?>
    <div class="container font14">
        <div class="row">
            <div class="col-md-8 font12">
                <div class="row row-cols-1 row-cols-md-1">
                    <div class="col mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 align="center" class="card-title"></h5>
                                <p class="card-text">
                                    <div class="row">
                                        <div class="col-md-12" align="center">
                                            <h6>ລາຍການຊື້ສິນຄ້າ</h6><br>
                                        </div>
                                        <div class="col-md-12 ">
                                            <div>
                                                <label>ເລກທີບິນ: <?php echo $rowsell['sell_id']; ?><br>ວັນທີ: <?php echo $rowsell['sell_date']; ?><br>ເວລາ: <?php echo $rowsell['sell_time']; ?> </label><br>
                                            </div>
                                            <div class="table-responsive">
                                                <table class="table" style="width:800px;">
                                                    <tr>
                                                        <th style="width: 300px;" scope="col">ສິນຄ້າ</th>
                                                        <th scope="col">ຈຳນວນ</th>
                                                        <th scope="col">ລາຄາ</th>
                                                        <th scope="col">ລວມ</th>
                                                    </tr>
                                                    <?php
                                                        $sqllistfb = "select d.pro_id,pro_name,cate_name,cated_name,brand_name,unit_name,p.img_path,d.qty,d.price,p.price as pro_price,d.promotion,(d.promotion/p.price) * 100 as perzen,d.qty*d.price as total from selldetail d left join product p on d.pro_id=p.pro_id left join categorydetail i  on p.cated_id=i.cated_id left join category c on i.cate_id=c.cate_id left join brand b on p.brand_id=b.brand_id left join unit u on p.unit_id=u.unit_id left join sell s on d.sell_id=s.sell_id where s.sell_id='$sell_id' and s.cus_id='$cus_idfb' ;";
                                                        $resultlistfb = mysqli_query($link,$sqllistfb);               
                                                        while($rowlistfb = mysqli_fetch_array($resultlistfb,MYSQLI_ASSOC)){
                                                    ?>
                                                    <tr>
                                                        <td> <?php echo $rowlistfb['cate_name']; ?>  <?php echo $rowlistfb['brand_name']; ?>  <?php echo $rowlistfb['pro_name']; ?> <?php echo $rowlistfb['cated_name']; ?></td>
                                                        <td> 
                                                            <?php echo $rowlistfb['qty']; ?> <?php echo $rowlistfb['unit_name']; ?>
                                                        </td>
                                                        <td >
                                                            <?php echo number_format($rowlistfb['price'],2); ?>
                                                        </td>
                                                        <td >
                                                            <?php echo number_format($rowlistfb['total'],2); ?>
                                                        </td>
                                                    </tr>
                                                    <?php 
                                                    }
                                                    ?>
                                                </table>
                                            </div>
                                        </div>
                                        <hr size="3" align="center" width="100%">
                                        <div class="col-md-12 " align="right">
                                            ຍອມລວມ (ລວມພາສີມູນຄ່າເພີ່ມ)
                                        </div><br>
                                        <div class="col-md-12" align="right">
                                            <br><h4 style="color: #CE3131;"> <?php echo number_format($rowsell['amount'],2); ?> ກີບ</h4>
                                            <label style="color: #7E7C7C;font-size: 12px;">ຄູປ໋ອງສ່ວນລົດ: <?php echo number_format($rowsell['cupon_price'],2); ?> ກີຍ</label>                                        
                                        </div>
                                    </div>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="alert alert-success" role="alert">
                        <label>ຂໍ້ຄວາມຕອບກັບ: <?php echo $rowsell['note']; ?></label>
                    </div>
                    <div class="alert alert-secondary" role="alert">
                        <label>ລາຍລະອຽດການສົ່ງ: <?php echo $rowsell['place_deli']; ?></label>
                    </div>
                </div>
			</div>
            <div class="col-lg-3 font12">
                <div class="row row-cols-1 row-cols-md-1">
                    <div class="col mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 align="center" class="card-title">ມູນຄ່າຊ່ຳລະທັງໝົດ</h5>
                                <p class="card-text">
                                    <label>ຄ່າສົ່ງສິນຄ້າ: <?php echo number_format($rowsell['delivery'],2); ?> ກີບ</label>
                                    <hr size="3" align="center" width="100%">
                                    <?php 
                                        if($rowsell['img_path'] == "0"){
                                        ?>
                                            <a href="../icon/0.png"><img src="../icon/0.png" alt="" style="width: 100%;"></a>
                                         <?php
                                        }
                                        else{
                                        ?>
                                            <a href="http://backend.gamegadgetlao.com/image/<?php echo $rowsell['img_path'];?>"><img src="http://backend.gamegadgetlao.com/image/<?php echo $rowsell['img_path'];?>" alt="" style="width: 100%;"></a>
                                        <?php
                                             }
                                        ?>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php 
        }
    ?>
	<!-- End Shop Home List  -->
	<section class="shop-services section home">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-12">
					<!-- Start Single Service -->
					<div class="single-service">
						<i class="ti-rocket"></i>
						<h4>Free shiping</h4>
						<p>Orders over $100</p>
					</div>
					<!-- End Single Service -->
				</div>
				<div class="col-lg-3 col-md-6 col-12">
					<!-- Start Single Service -->
					<div class="single-service">
						<i class="ti-reload"></i>
						<h4>Free Return</h4>
						<p>Within 30 days returns</p>
					</div>
					<!-- End Single Service -->
				</div>
				<div class="col-lg-3 col-md-6 col-12">
					<!-- Start Single Service -->
					<div class="single-service">
						<i class="ti-lock"></i>
						<h4>Sucure Payment</h4>
						<p>100% secure payment</p>
					</div>
					<!-- End Single Service -->
				</div>
				<div class="col-lg-3 col-md-6 col-12">
					<!-- Start Single Service -->
					<div class="single-service">
						<i class="ti-tag"></i>
						<h4>Best Peice</h4>
						<p>Guaranteed price</p>
					</div>
					<!-- End Single Service -->
				</div>
			</div>
		</div>
	</section>
	<!-- End Shop Services Area -->

	<!-- Start Footer Area -->
	<footer class="footer">
		<!-- Footer Top -->
		<div class="footer-top section">
			<div class="container font14">
				<div class="row">
					<div class="col-lg-5 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer about">
							<div class="logo">
								<a href="../index.php"><img src="http://backend.gamegadgetlao.com/image/<?php echo $rowshop['img_path'] ?>" width="80px;" alt=""></a>
							</div>
							<p class="text">ສະຖານທີ່ຕັ້ງ: <?php echo $rowshop['address'] ?></p>
							<p class="call">ເບີໂທລະສັບຕິດຕໍ່: <span><a href="tel<?php echo $rowshop['tel'] ?>"><?php echo $rowshop['tel'] ?></a></span></p>
						</div>
						<!-- End Single Widget -->
					</div>
					<div class="col-lg-2 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer links">
							<h4>Information</h4>
							<ul>
			
								<li><a href="../Contact_us/contact_us.php">Contact Us</a></li>

							</ul>
						</div>
						<!-- End Single Widget -->
					</div>
					<div class="col-lg-3 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer social">
							<h4>Get In Tuch</h4>
							<!-- Single Widget -->
							<div class="contact">
								<ul>
									<li>Vientiane Capital Laos</li>
									<li><?php echo $rowshop['email']; ?></li>
									<li><?php echo $rowshop['tel']; ?></li>
								</ul>
							</div>
							<!-- End Single Widget -->
							<ul>
								<li><a href="#"><i class="ti-facebook"></i></a></li>
								<li><a href="#"><i class="ti-twitter"></i></a></li>
								<li><a href="#"><i class="ti-flickr"></i></a></li>
								<li><a href="#"><i class="ti-instagram"></i></a></li>
							</ul>
						</div>
						<!-- End Single Widget -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Footer Top -->
		<div class="copyright">
			<div class="container font14">
				<div class="inner">
					<div class="row">
						<div class="col-lg-6 col-12">
							<div class="left">
								<p>Copyright © 2020 Development -  All Rights Reserved.</p>
							</div>
						</div>
						
						<div class="col-lg-6 col-12">
							<div class="center">
							<?php 
								$sqlcredit = "select * from credit_card";
								$resultcredit = mysqli_query($link,$sqlcredit);
								while($rowcredit = mysqli_fetch_array($resultcredit,MYSQLI_ASSOC)){
							?>
								&nbsp;&nbsp;&nbsp; <img src="http://backend.gamegadgetlao.com/image/<?php echo $rowcredit['img_path'] ?>" width="30px;" alt="#">
							<?php 
                                }
                                if(isset($_GET['email'])=='not'){
                                    echo'<script type="text/javascript">
                                    swal("", "ກະລຸນາປ້ອນອີເມວ !!", "info");
                                    </script>';
                                   // echo"<meta http-equiv='refresh' content='1;URL=frmlogin.php'>";
                                }
                                if(isset($_GET['pass'])=='not'){
                                    echo'<script type="text/javascript">
                                    swal("", "ກະລຸນາປ້ອນລະຫັດຜ່ານ !!", "info");
                                    </script>';
                                }
                                if(isset($_GET['found'])=='true'){
                                    echo'<script type="text/javascript">
                                    swal("", "ອີ່ເມວ ຫຼື ລະຫັດຜ່ານບໍ່ຖືກຕ້ອງ ກະລຸນາລອງໃໝ່ອີກຄັ້ງ !!", "error");
                                    </script>';
                                }
								if(isset($_GET['savere'])=='truere'){
                                    echo'<script type="text/javascript">
                                    swal("", "ລົງທະບຽນສຳເລັດ !!", "success");
                                    </script>';
                                }
                                if(isset($_GET['save1'])=='false1'){
                                    echo'<script type="text/javascript">
                                    swal("", "ບໍ່ສາມາດສັ່ງຊື້ສິນຄ້າໄດ້ ກະລຸນາລອງໃໝ່ອີກຄັ້ງ !!", "error");
                                    </script>';
                                }
                                if(isset($_GET['save2'])=='false2'){
                                    echo'<script type="text/javascript">
                                    swal("", "ບໍ່ສາມາດສັ່ງຊື້ສິນຄ້າໄດ້ ກະລຸນາລອງໃໝ່ອີກຄັ້ງ !!", "error");
                                    </script>';
                                }
                                if(isset($_GET['savet'])=='true'){
                                    echo'<script type="text/javascript">
                                    swal("", "ສັ່ງຊື້ສິນຄ້າສຳເລັດ ກະລຸນາລໍຖ້າການຕອບຮັບການສັ່ງຊື້ສິນຄ້າຈາກພະນັກງານໃນໄວໆນີ້ !!", "success");
                                    </script>';
                                }

							?>
							</div>
						</div>
					</div>
				</div>
			</div>
        </div>
        <?php 
            if(isset($_GET['del'])){
                $detail_id = $_GET['del'];
                $sqldel = "delete from listselldetail where detail_id='$detail_id';";
                $resultdel = mysqli_query($link,$sqldel);
                echo"<script>";
                echo"window.location.href='basket.php';";
                echo"</script>";
            }
        ?>
	</footer>
	<!-- /End Footer Area -->
	<!-- Jquery -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/jquery-migrate-3.0.0.js"></script>
	<script src="../js/jquery-ui.min.js"></script>
	<!-- Popper JS -->
	<script src="../js/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- Color JS -->
	<script src="../js/colors.js"></script>
	<!-- Slicknav JS -->
	<script src="../js/slicknav.min.js"></script>
	<!-- Owl Carousel JS -->
	<script src="../js/owl-carousel.js"></script>
	<!-- Magnific Popup JS -->
	<script src="../js/magnific-popup.js"></script>
	<!-- Waypoints JS -->
	<script src="../js/waypoints.min.js"></script>
	<!-- Countdown JS -->
	<script src="../js/finalcountdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="../js/nicesellect.js"></script>
	<!-- Flex Slider JS -->
	<script src="../js/flex-slider.js"></script>
	<!-- ScrollUp JS -->
	<script src="../js/scrollup.js"></script>
	<!-- Onepage Nav JS -->
	<script src="../js/onepage-nav.min.js"></script>
	<!-- Easing JS -->
	<script src="../js/easing.js"></script>
	<!-- Active JS -->
    <script src="../js/active.js"></script>
</body>
</html>