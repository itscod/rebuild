<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/index.css" rel="stylesheet" type="text/css">
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/zySearch.js"></script>
<script src="js/jquery.movebg.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap-hover-dropdown/2.2.1/bootstrap-hover-dropdown.js"></script>
<script type="text/javascript">
	$(function() {

		$('#slider').nivoSlider();
		$("#zySearch").zySearch({
			"width" : "400",
			"height" : "33",
			"parentClass" : "pageTitle",
			"callback" : function(keyword) {
				console.info("?");
				console.info(keyword);
			}
		});
		$(".nav").movebg({
			width : 120, /*滑块的大小*/
			extra : 40, /*额外反弹的距离*/
			speed : 300, /*滑块移动的速度*/
			rebound_speed : 400 /*滑块反弹的速度*/
		});

		$('#demo').carousel({
			interval : 3000, //自动播放4s

		});

	});
	function shown() {
		var li = document.getElementById("my");
		li.style.display = 'block' ;

	}
	function hiden() {
		var li = document.getElementById("my");
		li.style.display = 'none' ;
	}
</script>
	</head>
	<body>
<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 column">
				<div class="header_bottom_right">
					<!------ Slider ------------>
					<div class="slider">
						<div class="slider-wrapper theme-default">
							<div id="slider" class="nivoSlider">
								<img src="images/a.jpg" data-thumb="images/1.jpg" alt="" /> <img
									src="images/b.jpg" data-thumb="images/2.jpg" alt="" /> <img
									src="images/c.jpg" data-thumb="images/3.jpg" alt="" />
							</div>
						</div>
					</div>
					<!------End Slider ------------>
				</div>
			</div>
		</div>
	</div>




	<div class="container">
		<div class="row clearfix" style="background-color:#f3f2f0">
			<div class="col-md-12 column"
				style="font-size:20px;color:brown;font-weight:bold;">
				<br />【进口水果】 纵享异国口感，回味无穷<br />
				<br />
				<hr style="height:21px;border-top:2px solid green;" />
			</div>
		</div>
		<div class="row clearfix" style="background-color:#f3f2f0">
			<div class="col-md-3">
				<div class="thumbnail">
					<img alt="200x200" src="images/yingtao.jpg" />
					<div class="caption" style="text-align:center">
						<h3 style="text-align:center">美早樱桃</h3>
						<p>
							<span class="price0">热卖价 :</span> <span class="price1"
								style="color:green;font-size:17px;font-weight:bold;">￥109.00</span>
						</p>
						<p>
							<a class="btn btn-success" href="#">加入购物车</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="thumbnail">
					<img alt="200x200" src="images/cheng.jpg" />
					<div class="caption" style="text-align:center">
						<h3 style="text-align:center">埃及橙</h3>
						<p>
							<span class="price0">热卖价 :</span> <span class="price1"
								style="color:green;font-size:17px;font-weight:bold;">￥58.00</span>
						</p>
						<p>
							<a class="btn btn-success" href="#">加入购物车</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="thumbnail">
					<img alt="200x200" src="images/huolongguo.jpg" />
					<div class="caption" style="text-align:center">
						<h3 style="text-align:center">新鲜越南火龙果</h3>
						<p>
							<span class="price0">热卖价 :</span> <span class="price1"
								style="color:green;font-size:17px;font-weight:bold;">￥30.00</span>
						</p>
						<p>
							<a class="btn btn-success" href="#">加入购物车</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="thumbnail">
					<img alt="200x200" src="images/huolongguo.jpg" />
					<div class="caption" style="text-align:center">
						<h3 style="text-align:center">新奇士美国柑橘</h3>
						<p>
							<span class="price0">热卖价 :</span> <span class="price1"
								style="color:green;font-size:17px;font-weight:bold;">￥160.00</span>
						</p>
						<p>
							<a class="btn btn-success" href="#">加入购物车</a>
						</p>
					</div>
				</div>
			</div>
		</div>
			<div class="row clearfix" style="background-color:#f3f2f0">
			<div class="col-md-12 column"
				style="font-size:20px;color:brown;font-weight:bold;">
				<br />【国产水果】 应时而采，新鲜特供<br />
				<br />
				<hr style="height:21px;border-top:2px solid green;" />
			</div>
		</div>
		<div class="row clearfix" style="background-color:#f3f2f0">
			<div class="col-md-3">
				<div class="thumbnail">
					<img alt="200x200" src="images/yingtao.jpg" />
					<div class="caption" style="text-align:center">
						<h3 style="text-align:center">美早樱桃</h3>
						<p>
							<span class="price0">热卖价 :</span> <span class="price1"
								style="color:green;font-size:17px;font-weight:bold;">￥109.00</span>
						</p>
						<p>
							<a class="btn btn-success" href="#">加入购物车</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="thumbnail">
					<img alt="200x200" src="images/cheng.jpg" />
					<div class="caption" style="text-align:center">
						<h3 style="text-align:center">埃及橙</h3>
						<p>
							<span class="price0">热卖价 :</span> <span class="price1"
								style="color:green;font-size:17px;font-weight:bold;">￥58.00</span>
						</p>
						<p>
							<a class="btn btn-success" href="#">加入购物车</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="thumbnail">
					<img alt="200x200" src="images/huolongguo.jpg" />
					<div class="caption" style="text-align:center">
						<h3 style="text-align:center">新鲜越南火龙果</h3>
						<p>
							<span class="price0">热卖价 :</span> <span class="price1"
								style="color:green;font-size:17px;font-weight:bold;">￥30.00</span>
						</p>
						<p>
							<a class="btn btn-success" href="#">加入购物车</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="thumbnail">
					<img alt="200x200" src="images/huolongguo.jpg" />
					<div class="caption" style="text-align:center">
						<h3 style="text-align:center">新奇士美国柑橘</h3>
						<p>
							<span class="price0">热卖价 :</span> <span class="price1"
								style="color:green;font-size:17px;font-weight:bold;">￥160.00</span>
						</p>
						<p>
							<a class="btn btn-success" href="#">加入购物车</a>
						</p>
					</div>
				</div>
			</div>
		</div>
				<div class="row clearfix" style="background-color:#f3f2f0">
			<div class="col-md-3">
				<div class="thumbnail">
					<img alt="200x200" src="images/yingtao.jpg" />
					<div class="caption" style="text-align:center">
						<h3 style="text-align:center">美早樱桃</h3>
						<p>
							<span class="price0">热卖价 :</span> <span class="price1"
								style="color:green;font-size:17px;font-weight:bold;">￥109.00</span>
						</p>
						<p>
							<a class="btn btn-success" href="#">加入购物车</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="thumbnail">
					<img alt="200x200" src="images/cheng.jpg" />
					<div class="caption" style="text-align:center">
						<h3 style="text-align:center">埃及橙</h3>
						<p>
							<span class="price0">热卖价 :</span> <span class="price1"
								style="color:green;font-size:17px;font-weight:bold;">￥58.00</span>
						</p>
						<p>
							<a class="btn btn-success" href="#">加入购物车</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="thumbnail">
					<img alt="200x200" src="images/huolongguo.jpg" />
					<div class="caption" style="text-align:center">
						<h3 style="text-align:center">新鲜越南火龙果</h3>
						<p>
							<span class="price0">热卖价 :</span> <span class="price1"
								style="color:green;font-size:17px;font-weight:bold;">￥30.00</span>
						</p>
						<p>
							<a class="btn btn-success" href="#">加入购物车</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="thumbnail">
					<img alt="200x200" src="images/huolongguo.jpg" />
					<div class="caption" style="text-align:center">
						<h3 style="text-align:center">新奇士美国柑橘</h3>
						<p>
							<span class="price0">热卖价 :</span> <span class="price1"
								style="color:green;font-size:17px;font-weight:bold;">￥160.00</span>
						</p>
						<p>
							<a class="btn btn-success" href="#">加入购物车</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		</div>







	<div class="container-fluid">
		<div class="row-fluid row">
			<div class="col-md-12 column">
				<img alt="" src="images/bottom.png" />
			</div>
		</div>
	</div>
	

	</body>
</html>
