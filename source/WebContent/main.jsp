<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<script>
function over(obj) {
    obj.src = "image/title4.png"
}

function out(obj) {
    obj.src = "image/title3.png"
}
</script>


<style>
/* 수정 */
        
        @import url(https://fonts.googleapis.com/css?family=Raleway);
        body {
            margin: 0px;
        }
        
        nav {
            margin-top: 40px;
            padding: 24px;
            text-align: center;
            font-family: Raleway;
            box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
        }
        
        #nav-1 {
            background: #5175C0;
            margin-top: 0px;
        }
        
        .link-1 {
            transition: 0.3s ease;
            background: #5175C0;
            color: #ffffff;
            font-size: 17px;
            text-decoration: none;
            border-top: 4px solid #5175C0;
            border-bottom: 4px solid #5175C0;
            padding: 20px 0;
            margin: 0 20px;
        }
        
        .link-1:hover {
            border-top: 4px solid #ffffff;
            border-bottom: 4px solid #ffffff;
            padding: 6px 0;
        }
#menubar a:hover {
	color: #f24d4e;
	font-weight: bold;
}

#up:hover {
	position: relative;
	bottom: 3px;
	right: 3px;
	color: #333;
	font-weight: bold;
}

.manu {
	top: 0;
	width: 100%;
	min-width: 650px;
	height: 37px;
	position: fixed;
	z-index: 999;
	background: rgba(239, 239, 239, 0.95);
	font-size: 0.7em;
	border: 1px solid #d4d3d3;
}

.ul1 {
	padding-left: 0px;
	margin-bottom: 11px;
}

.ul2 {
	margin-top: 4px;
}

hr {
	background: #d4d3d3;
	border: none;
	height: 1px;
	width: 100%
}

a {
	text-decoration: none;
	color: #333;
	padding: 0 10px;
}

li {
	color: #777;
	list-style: none;
	font-size: 0.8em;
	height: 24px;
}

.table1, .t2 {
	text-align: center;
	width: 1224px;
	margin-top: 20px;
	background: #ddebef;
	padding-top: 30px;
	border: 1px solid #d4d3d3;
}

.t2 {
	border: none;
	height: 100px;
	margin-top: 9px;
}

.li_1 {
	padding: 0 40px;
	display: inline-block;
	width: 80px;
	margin: 0 2px;
	line-height: 30px;
	cursor: pointer;
	text-align: center;
	text-transform: capitalize;
	font-size: 13px;
}

a, li {
	font: 12px "Microsoft YaHei";
}

#p1 {
	font: 16px "Microsoft YaHei";
	color: #7b1818;
	letter-spacing: 3px;
	margin-bottom: 24px;
}

#p2 {
	font: 12px "맑은 고딕";
	color: #666;
	line-height: 19px;
	margin: 0;
	font-weight: bold;
}

h2, h3 {
	font: 15px "맑은 고딕";
	color: #666;
	margin: 8px 0;
}

.notice {
	color: #333;
	border: 1px solid #aaa;
	border-bottom: none;
	/*rgba(239, 239, 239, 0.95) */
	font-size: 12px;
	width: 48px;
	padding: 5px 10px;
}

.button {
	border-style: solid;
	border-width: 1px;
	background-color: buttonface;
	border-radius: 3px;
	padding: 2px 10px 2px 10px;
}

#search {
	font: 11px "맑은 고딕";
	background: none;
	border: none;
	width: 137px;
}

.img2 {
	width: 281px;
}

#imgnew {
	margin-top: 20px;
	width: 310px;
}

#newtd {
	width: 25%;
	font: 13px "맑은 고딕";
	padding-bottom: 24px;
}

#div1 {
	margin-top: 13px;
}

.weekly {
	background: #ddebef;
	margin: 0 auto;
	height: 498px;
	width: 1300px;
	margin-bottom: 50px;
}

.circle {
	display: inline-block;
	width: 9px;
	height: 9px;
	border-radius: 50%;
	margin: 10px 0;
}

#img1 {
	width: 1300px;
	overflow: hidden;
}

#hr1 {
	margin: 0;
}

#a2 {
	padding: 0px;
}

.text {
	color: white;
	font: 17px "맑은 고딕";
	display: none;
	width: 1300px;
	height: 208px;
	padding: 209px 0 0 0;
	margin: 0 auto;
	margin-top: 404px;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	background: rgba(0, 0, 0, 0.45);
	text-align: center;
}

.top {
	position: fixed;
	left: 95%;
	top: 62%;
	bottom: 15px;
	z-index: 999;
	display: none;
}

#aaa a {
	padding: 0 80px;
}

.item {
	color: white;
	font: 12px 'Microsoft YaHei';
	letter-spacing: 1px;
	font-weight: bold;
	padding: 7px 0;
	margin-top: 47px;
	width: 100%;
}

#layer_1, #layer_2, #layer_3, #layer_4, #layer_5 {
	display: none;
	position: absolute;
	width: 514px;
	height: 369px;
	border: 1px solid #ed1c24;
	border-left: 10px solid white;
	background-color: rgba(255, 255, 255, 0.842);
	font-size: 0;
	top: 0;
	bottom: 0;
	left: 137px;
	right: 0;
}

#kate li:hover {
	background-color: #3c191a82;
	color: white;
	font-weight: bold;
}

#subkate li:hover {
	background-color: rgba(236, 233, 45, 0.74);
}

#subkate li {
	width: 210px;
	height: 32px;
	padding: 17px 0 0 23px;
	font-size: 13px;
}
</style>
<!-- <link rel="stylesheet" href="style.css"> -->
<title>main</title>
</head>

<body style="margin: 0;" onload="init()">
	<%@ page import="java.util.ArrayList, Project.Fashion"%>
	<jsp:useBean id="fashion" class="Project.FashionDatabase" scope="page" />
	<%
	ArrayList<Fashion> list = fashion.getItem("fashion");
	ArrayList<Fashion> cosmetics = fashion.getItem("cosmetics");
	ArrayList<Fashion> electronic = fashion.getItem("electronic");
	ArrayList<Fashion> game = fashion.getItem("game");
	ArrayList<Fashion> health = fashion.getItem("health");
	%>
	<!-- 메뉴 -->
	
       
    <nav id="nav-1">
    <a class="link-1" >
			<% 
			String name = (String) session.getAttribute("name");
			if (name!=null) {
					out.print(name + " 님, 환영합니다  ");%></a>
					
			<a class="link-1" href="logout.jsp">로그아웃 </a>
			<%} else{%>
                <a class="link-1" href="login.jsp">로그인 </a>
                <a class="link-1" href="join.jsp">회원가입 </a>
                <%}%>
                <a class="link-1" href="cart.jsp">장바구니 </a>
            <a class="link-1" href="order.jsp">주문조회 </a>
          </nav>
    <!-- 제목 -->
    <div align="center" style="padding: 50px 0 7px 0; height: 180px;">
        <a href="main.jsp"><img src="image/title3.png" width="334px" onmouseover="over(this)" onmouseout="out(this)"></a>
    </div>
    <br>
    <!-- | 추천 | -->
    <!--
	<div align="center"
		style="background-color: #555; width: 107px; height: 29px; margin: 30px auto 0 auto;">
		<div class="item">BEST ITEMS</div>
	</div>

	<div align="center" onmouseover="change()" onmouseout="turn()"
		style="margin-top: 40px; margin-bottom: 80px;">
		<a id="mainlink" href="top_1.jsp"
			style="width: 1300px; height: 416px; padding: 0"><img id="img1"
			src="image/img1.jpg" width="1300px" style="margin-top: 12px;">
			<div class="text" id="id_main">
				애드 더블 수트 ( 4color ) <br> <br>KRW 80,000
			</div> </a>
	</div>
	-->
    <!-- | 수정 | -->

    <script>
        // <!-- | 10.30 수정 | -->
        var current = 0;
        var image = new Array("image/img1.jpg", "image/img2.jpg", "image/img6.jpg", "image/img7.jpg", "image/img8.jpg", "image/img9.jpg")
        setInterval("changeImage()", 2000);

        function changeImage() {
            var changejpg = document.getElementById("changeImg");
            if (current == 5) {
                current = 0;
            } else {
                current = current + 1;
            }
            changejpg.innerHTML = "<img src=\"" + image[current] + "\"style=\"display: inline-block; float: right;\"width=\"1154px\" height=\"370px\">"
        }


        function itmes_on(idName) {
            var layer_div = document.getElementById(idName);
            layer_div.style.display = "inline-block";
        }

        function itmes_out(idName) {
            var layer_div = document.getElementById(idName);
            layer_div.style.display = "none";
        }

        function itmes_change(n, className) {
            var imageTD = document.getElementsByClassName(className);

            for (var i = 0; i < imageTD.length; i++) {
                imageTD[i].style.display = "none";
            }

            switch (n) {
                case "1":
                    imageTD[0].style.display = "block";
                    break;
                case "2":
                    imageTD[1].style.display = "block";
                    break;
                case "3":
                    imageTD[2].style.display = "block";
                    break;
                case "4":
                    imageTD[3].style.display = "block";
                    break;
                case "5":
                    imageTD[4].style.display = "block";
                    break;
                default:
                    console.log("없음");
            }
        }
    </script>
    <div style="width: 1300px; height: 416px; margin: 0 auto; position: relative;">
        <div id="kate" style="width: 137px; height: 370px; display: inline-block; background-color:rgb(242, 78, 78);">
            <li onmouseover="itmes_on('layer_1')" onmouseout="itmes_out('layer_1')" style="width: 114px; height: 32px; border-top-width: 0px; padding: 17px 0 0 23px; font-size: 13px;color:white;margin-top: 20px;">패션</li>
            <li onmouseover="itmes_on('layer_2')" onmouseout="itmes_out('layer_2')" style="width: 114px; height: 32px; border-top-width: 0px; padding: 17px 0 0 23px;font-size: 13px;color:white">화장품</li>
            <li onmouseover="itmes_on('layer_3')" onmouseout="itmes_out('layer_3')" style="width: 114px; height: 32px; border-top-width: 0px; padding: 17px 0 0 23px;font-size: 13px;color:white">헬스케어</li>
            <li onmouseover="itmes_on('layer_4')" onmouseout="itmes_out('layer_4')" style="width: 114px; height: 32px; border-top-width: 0px; padding: 17px 0 0 23px;font-size: 13px;color:white">전자기기</li>
            <li onmouseover="itmes_on('layer_5')" onmouseout="itmes_out('layer_5')" style="width: 114px; height: 32px; border-top-width: 0px; padding: 17px 0 0 23px;font-size: 13px;color:white">게임</li>
        </div>
        <!--10.30일 수정-->

        <span id="changeImg"><img src="image/img1.jpg" style="display: inline-block; float: right;"
			width="1154px" height="370px"></span>
        <div id="layer_1" onmouseover="itmes_on('layer_1')" onmouseout="itmes_out('layer_1')">
            <table>
                <tr style="height: 370px;">
                    <td id="subkate">
                        <li onmouseover="itmes_change('1','layer1TD')" style="height: 32px; padding: 17px 0 0 23px;margin-top: -92px;"><a href="FashionProductList.jsp?table=fashion&category=TOP">TOP</a></li>
                        <li onmouseover="itmes_change('2','layer1TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="FashionProductList.jsp?table=fashion&category=OUTER">OUTER</a></li>
                        <li onmouseover="itmes_change('3','layer1TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="FashionProductList.jsp?table=fashion&category=BOTTOM">BOTTOM</a></li>
                        <li onmouseover="itmes_change('4','layer1TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="FashionProductList.jsp?table=fashion&category=SHOE BAG">SHOE BAG</a></li>
                        <li onmouseover="itmes_change('5','layer1TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="FashionProductList.jsp?table=fashion&category=ACC">ACC</a></li>
                    </td>
                    <td class="layer1TD" style="display: none;padding-left: 9px;">
                        <img src="image/top_1.jpg" width="110px" style="margin: 5px">
                        <img src="image/top_2.jpg" width="110px" style="margin:5px">
                        <img src="image/top_3.jpg" width="110px" style="margin: 5px">
                        <img src="image/top_4.jpg" width="110px" style="margin: 5px">
                        <img src="image/top_5.jpg" width="110px" style="margin: 5px"></td>
                    <td class="layer1TD" style="display: none;padding-left: 9px;"><img src="image/outer_1.jpg" width="110px" style="margin: 5px">
                        <img src="image/outer_2.jpg" width="110px" style="margin: 5px">
                        <img src="image/outer_3.jpg" width="110px" style="margin: 5px">
                        <img src="image/outer_4.jpg" width="110px" style="margin: 5px">
                        <img src="image/outer_5.jpg" width="110px" style="margin: 5px"></td>
                    <td class="layer1TD" style="display: none;padding-left: 9px;"><img src="image/bottom_1.jpg" width="110px" style="margin: 5px">
                        <img src="image/bottom_2.jpg" width="110px" style="margin: 5px">
                        <img src="image/bottom_3.jpg" width="110px" style="margin: 5px">
                        <img src="image/bottom_4.jpg" width="110px" style="margin: 5px">
                        <img src="image/bottom_5.jpg" width="110px" style="margin: 5px">
                    </td>
                    <td class="layer1TD" style="display: none;padding-left: 9px;"><img src="image/shoe_1.jpg" width="110px" style="margin:5px">
                        <img src="image/shoe_2.jpg" width="110px" style="margin:5px">
                        <img src="image/shoe_3.jpg" width="110px" style="margin:5px">
                        <img src="image/shoe_4.jpg" width="110px" style="margin:5px">
                        <img src="image/shoe_5.jpg" width="110px" style="margin:5px"></td>
                    <td class="layer1TD" style="display: none;padding-left: 9px;">
                        <img src="image/acc_1.jpg" width="110px" style="margin:5px">
                        <img src="image/acc_2.jpg" width="110px" style="margin:5px">
                        <img src="image/acc_3.jpg" width="110px" style="margin:5px">
                        <img src="image/acc_4.jpg" width="110px" style="margin:5px">
                        <img src="image/acc_5.jpg" width="110px" style="margin:5px"></td>
                </tr>
            </table>
        </div>
        <div id="layer_2" onmouseover="itmes_on('layer_2')" onmouseout="itmes_out('layer_2')">
            <table>
                <tr style="height: 370px;">
                    <td id="subkate">
                        <li onmouseover="itmes_change('1','layer2TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;margin-top: -92px"><a href="ProductList.jsp?table=cosmetics&category=Skin">스킨케어</a></li>
                        <li onmouseover="itmes_change('2','layer2TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="ProductList.jsp?table=cosmetics&category=Makeup">메이크업</a></li>
                        <li onmouseover="itmes_change('3','layer2TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="ProductList.jsp?table=cosmetics&category=Sun">선케어</a></li>
                        <li onmouseover="itmes_change('4','layer2TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="ProductList.jsp?table=cosmetics&category=Cleansing">클렌징</a></li>
                        <li onmouseover="itmes_change('5','layer2TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="ProductList.jsp?table=cosmetics&category=Perfum">향수</a></li>
                    </td>
                    <td class="layer2TD" style="display: none;padding-left: 9px;"><img src="image/skin_1.jpg" width="110px" style="margin:5px">
                        <img src="image/skin_2.jpg" width="110px" style="margin:5px">
                        <img src="image/skin_3.jpg" width="110px" style="margin:5px">
                        <img src="image/skin_4.jpg" width="110px" style="margin:5px">
                        <img src="image/skin_5.jpg" width="110px" style="margin:5px"></td>
                    <td class="layer2TD" style="display: none;padding-left: 9px;"><img src="image/make_1.jpg" width="110px" style="margin:5px">
                        <img src="image/make_2.jpg" width="110px" style="margin:5px">
                        <img src="image/make_3.jpg" width="110px" style="margin:5px">
                        <img src="image/make_4.jpg" width="72px" style="margin: 5px"></td>
                    <td class="layer2TD" style="display: none;padding-left: 9px;"><img src="image/sun_1.jpg" width="110px" style="margin:5px">
                        <img src="image/sun_2.jpg" width="110px" style="margin:5px">
                        <img src="image/sun_3.jpg" width="110px" style="margin:5px">
                        <img src="image/sun_4.jpg" width="110px" style="margin:5px">
                        <img src="image/sun_5.jpg" width="110px" style="margin:5px">
                    </td>
                    <td class="layer2TD" style="display: none;padding-left: 9px;"><img src="image/clean_1.jpg" width="110px" style="margin:5px">
                        <img src="image/clean_2.jpg" width="110px" style="margin:5px">
                        <img src="image/clean_3.jpg" width="110px" style="margin:5px">
                        <img src="image/clean_4.jpg" width="110px" style="margin:5px">
                        <img src="image/clean_5.jpg" width="110px" style="margin:5px"></td>
                    <td class="layer2TD" style="display: none;padding-left: 9px;"><img src="image/per_1.jpg" width="110px" style="margin:5px">
                        <img src="image/per_2.jpg" width="110px" style="margin:5px">
                        <img src="image/per_3.jpg" width="110px" style="margin:5px">
                        <img src="image/per_4.jpg" width="110px" style="margin:5px">
                        <img src="image/per_5.jpg" width="110px" style="margin:5px"></td>
                </tr>
            </table>
        </div>
        <div id="layer_3" onmouseover="itmes_on('layer_3')" onmouseout="itmes_out('layer_3')">
            <table>
                <tr style="height: 370px;">
                    <td id="subkate">
                        <li onmouseover="itmes_change('1','layer3TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;margin-top: -140px"><a href="ProductList.jsp?table=health&category=Chicken">닭가슴살</a></li>
                        <li onmouseover="itmes_change('2','layer3TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="ProductList.jsp?table=health&category=Salad">샐러드</a></li>
                        <li onmouseover="itmes_change('3','layer3TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="ProductList.jsp?table=health&category=Fried Rice">볶음밥</a></li>
                        <li onmouseover="itmes_change('4','layer3TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="ProductList.jsp?table=health&category=Diet">다이어트/간식</a></li>
                    </td>
                    <td class="layer3TD" style="display: none;padding-left: 9px;"><img src="image/chincken_1.jpg" width="110px" style="margin: 5px">
                        <img src="image/chincken_2.jpg" width="110px" style="margin:5px">
                        <img src="image/chincken_3.jpg" width="110px" style="margin: 5px">
                        <img src="image/chincken_4.jpg" width="110px" style="margin: 5px">
                        <img src="image/chincken_5.jpg" width="110px" style="margin: 5px"></td>
                    <td class="layer3TD" style="display: none;padding-left: 9px;"><img src="image/salad_1.jpg" width="110px" style="margin: 5px">
                        <img src="image/salad_2.jpg" width="110px" style="margin: 5px">
                        <img src="image/salad_3.jpg" width="110px" style="margin: 5px">
                        <img src="image/salad_4.jpg" width="110px" style="margin: 5px">
                        <img src="image/salad_5.jpg" width="110px" style="margin: 5px"></td>
                    <td class="layer3TD" style="display: none;padding-left: 9px;"><img src="image/rice_1.jpg" width="110px" style="margin:5px">
                        <img src="image/rice_2.jpg" width="110px" style="margin:5px">
                        <img src="image/rice_3.jpg" width="110px" style="margin:5px">
                        <img src="image/rice_4.jpg" width="110px" style="margin:5px">
                        <img src="image/rice_5.jpg" width="110px" style="margin:5px">
                    </td>
                    <td class="layer3TD" style="display: none;padding-left: 9px;"><img src="image/diet_1.jpg" width="110px" style="margin:5px">
                        <img src="image/diet_2.jpg" width="110px" style="margin:5px">
                        <img src="image/diet_3.jpg" width="110px" style="margin:5px">
                        <img src="image/diet_4.jpg" width="110px" style="margin:5px">
                        <img src="image/diet_5.jpg" width="110px" style="margin:5px"></td>
                </tr>
            </table>
        </div>
        <div id="layer_4" onmouseover="itmes_on('layer_4')" onmouseout="itmes_out('layer_4')">
            <table>
                <tr style="height: 370px;">
                    <td id="subkate">
                        <li onmouseover="itmes_change('1','layer4TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;margin-top: -140px"><a href="ProductList.jsp?table=electronic&category=Computer">컴퓨터</a></li>
                        <li onmouseover="itmes_change('2','layer4TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="ProductList.jsp?table=electronic&category=Camera">카메라</a></li>
                        <li onmouseover="itmes_change('3','layer4TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="ProductList.jsp?table=electronic&category=CellPhone">휴대폰</a></li>
                        <li onmouseover="itmes_change('4','layer4TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="ProductList.jsp?table=electronic&category=Console">게임기</a></li>
                    </td>
                    <td class="layer4TD" style="display: none;padding-left: 9px;"><img src="image/com_1.jpg" width="110px" style="margin: 5px">
                        <img src="image/com_2.jpg" width="110px" style="margin:5px">
                        <img src="image/com_3.jpg" width="110px" style="margin: 5px">
                        <img src="image/com_4.jpg" width="110px" style="margin: 5px">
                        <img src="image/com_5.jpg" width="110px" style="margin: 5px"></td>
                    <td class="layer4TD" style="display: none;padding-left: 9px;"><img src="image/camera_1.jpg" width="110px" style="margin: 5px">
                        <img src="image/camera_2.jpg" width="110px" style="margin: 5px">
                        <img src="image/camera_3.jpg" width="110px" style="margin: 5px">
                        <img src="image/camera_4.jpg" width="110px" style="margin: 5px">
                        <img src="image/camera_5.jpg" width="110px" style="margin: 5px"></td>
                    <td class="layer4TD" style="display: none;padding-left: 9px;"><img src="image/phone_1.jpg" width="110px" style="margin:5px">
                        <img src="image/phone_2.jpg" width="110px" style="margin:5px">
                        <img src="image/phone_3.jpg" width="110px" style="margin:5px">
                        <img src="image/phone_4.jpg" width="110px" style="margin:5px">
                        <img src="image/phone_5.jpg" width="110px" style="margin:5px">
                    </td>
                    <td class="layer4TD" style="display: none;padding-left: 9px;"><img src="image/game_1.jpg" width="110px" style="margin:5px">
                        <img src="image/game_2.jpg" width="110px" style="margin:5px">
                        <img src="image/game_3.jpg" width="110px" style="margin:5px">
                        <img src="image/game_4.jpg" width="110px" style="margin:5px">
                        <img src="image/game_5.jpg" width="110px" style="margin:5px"></td>
                </tr>
            </table>
        </div>
        <div id="layer_5" onmouseover="itmes_on('layer_5')" onmouseout="itmes_out('layer_5')">
            <table>
                <tr style="height: 370px;">
                    <td id="subkate">
                        <li onmouseover="itmes_change('1','layer5TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;margin-top: -168px"><a href="ProductList.jsp?table=game&category=FPS">FPS</a></li>
                        <li onmouseover="itmes_change('2','layer5TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="ProductList.jsp?table=game&category=RPG">RPG</a></li>
                        <li onmouseover="itmes_change('3','layer5TD')" style="height: 32px; padding: 17px 0 0 23px;font-size: 13px;"><a href="ProductList.jsp?table=game&category=AOS">AOS</a></li>
                    </td>
                    <td class="layer5TD" style="display: none;padding-left: 9px;"><img src="image/fps_1.jpg" width="110px" style="margin: 5px">
                        <img src="image/fps_2.jpg" width="110px" style="margin:5px">
                        <img src="image/fps_3.jpg" width="110px" style="margin: 5px">
                        <img src="image/fps_4.jpg" width="110px" style="margin: 5px">
                        <img src="image/fps_5.jpg" width="110px" style="margin: 5px"></td>
                    <td class="layer5TD" style="display: none;padding-left: 9px;"><img src="image/rpg_1.jpg" width="110px" style="margin:5px">
                        <img src="image/rpg_2.jpg" width="110px" style="margin:5px">
                        <img src="image/rpg_3.jpg" width="110px" style="margin:5px">
                        <img src="image/rpg_4.jpg" width="110px" style="margin:5px">
                        <img src="image/rpg_5.jpg" width="110px" style="margin:5px">
                    </td>
                    <td class="layer5TD" style="display: none;padding-left: 9px;"><img src="image/aos_1.jpg" width="110px" style="margin:5px">
                        <img src="image/aos_2.jpg" width="110px" style="margin:5px">
                        <img src="image/aos_3.jpg" width="110px" style="margin:5px">
                        <img src="image/aos_4.jpg" width="110px" style="margin:5px">
                        <img src="image/aos_5.jpg" width="110px" style="margin:5px"></td>
                </tr>
            </table>
        </div>
    </div>
    <br>
    <!-- | 수정끝 | -->


    <script>
        var img_1 = document.getElementById("img1")
        var a_1 = document.getElementById("mainlink")
        var div_1 = document.getElementById("id_main")
        var i = 1

        // setInterval("timer()", 2000);
        //4초간격 바꿈
        function timer() {
            img_1.src = "image/img" + i + ".jpg"
            a_1.href = "FashionProductList.jsp?table=fashion&category=TOP"
            if (i == 1) {
                div_1.innerHTML = "애드 더블 수트 ( 4color ) <br><br>KRW 80,000</div>";
            }
            if (i == 2) { //3542
                div_1.innerHTML = "넬리 카라 가디건 ( 4color ) <br><br>KRW 43,000</div>";
            }
            if (i == 3) {
                div_1.innerHTML = "애리조나 맨투맨 ( 3color ) <br><br>KRW 29,000</div>";
            }
            if (i == 4) {
                div_1.innerHTML = "스테이트 헤비 맨투맨 ( 3olor ) <br><br>KRW 33,000 </div>";
            }
            if (i == 5) {
                div_1.innerHTML = "오버핏 체크  ( 3color ) <br><br>KRW 28,000</div>";
            }

            i++
            if (i > 5) {
                i = 1
            }
        }
        //마우스리스너 배경 
        function change() {

            document.getElementById("id_main").style.display = "none";

            document.getElementById("id_main").style.display = "block";
        }

        function turn() {
            document.getElementById("id_main").style.display = "none";
        }
    </script>
    <!-- 마우스 이동 이미지 변경 -->
    <script>
        var img_2
        var j
        var z = 1
        var c = 1
        var timerID = null

        var top_files = ["image/top_1.jpg", "image/bottom_2.jpg",
            "image/outer_3.jpg", "image/acc_4.jpg"
        ]
        var bottom_files = ["image/skin_1.jpg", "image/make_2.jpg",
            "image/sun_3.jpg", "image/clean_4.jpg"
        ]
        var outer_files = ["image/chincken_1.jpg", "image/salad_2.jpg",
            "image/rice_3.jpg", "image/diet_4.jpg"
        ]
        var autumn_files = ["image/com_5.jpg", "image/phone_5.jpg",
            "image/game_5.jpg", "image/camera_1.jpg"
        ]

        function init() {
            img_2 = document.getElementsByClassName("img2");
            li = document.getElementsByClassName("li_1");

            li[0].onmouseover = top_over;
            li[0].onmouseout = out_1;
            li[1].onmouseover = bottom_over;
            li[1].onmouseout = out_1;
            li[2].onmouseover = outer_over;
            li[2].onmouseout = out_1;
            li[3].onmouseover = autumn_over;
            li[3].onmouseout = out_1;
            timerID = setInterval("timer2()", 1000);

            font_style(c - 1)
        }

        function font_style(c) {
            for (var x = 0; x < 4; x++) {
                li[x].style.color = "#777";
                li[x].style.fontWeight = 'normal';
            }
            li[c].style.color = "#000";
            li[c].style.fontWeight = 'bold';
        }

        function out_1() {
            timerID = setInterval("timer2()", 1000);

        }

        function top_over() {
            for (j = 0; j < top_files.length; j++) {
                img_2[j].src = top_files[j];
            }
            c = 1;
            font_style(c - 1)
            clearTimeout(timerID);
        }

        function bottom_over() {
            for (j = 0; j < bottom_files.length; j++) {
                img_2[j].src = bottom_files[j];
            }
            c = 2;
            font_style(c - 1)
            clearTimeout(timerID);
        }

        function outer_over() {
            for (j = 0; j < outer_files.length; j++) {
                img_2[j].src = outer_files[j];

            }
            c = 3;
            font_style(c - 1)
            clearTimeout(timerID);
        }

        function autumn_over() {
            for (j = 0; j < autumn_files.length; j++) {
                img_2[j].src = autumn_files[j];
            }
            c = 4;
            font_style(c - 1)
            clearTimeout(timerID);
        }

        function timer2() {
            if (c == 1) {
                for (j = 0; j < top_files.length; j++) {
                    img_2[j].src = top_files[j];
                }
                font_style(c - 1)

            }
            if (c == 2) { //3542
                for (j = 0; j < bottom_files.length; j++) {
                    img_2[j].src = bottom_files[j];
                }
                font_style(c - 1)
            }
            if (c == 3) {
                for (j = 0; j < outer_files.length; j++) {
                    img_2[j].src = outer_files[j];
                }
                font_style(c - 1)
            }
            if (c == 4) {
                for (j = 0; j < autumn_files.length; j++) {
                    img_2[j].src = autumn_files[j];
                }
                font_style(c - 1)
            }

            c++
            if (c > 4) {
                c = 1
            }
        }
    </script>
    <div class="top">
        <div>
            <a href="#"><img src="image/page.png" width=72px></a>
        </div>

    </div>

    <script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.js"></script>

    <script>
        $(document).ready(function() {

            $(window).scroll(function() {

                if ($(window).scrollTop() > 270)
                    $('.top').fadeIn('slow'); // 100 픽셀을 초과하여 스크롤 된 다음 표시

                else
                    $('.top').fadeOut('slow'); // 100 픽셀 이하인 경우 숨김

            });

            $('.top a').click(function() { 

                $('html, body').animate({
                    scrollTop: 0
                }, 'slow');

                return false;

            });
        });
    </script>

    <div align="center" class="weekly">
        <div class="t2">
            <p id="p1">
                <strong>WEEKLY PRODUCT</strong>
            </p>
            <li id="up" class="li_1">패션</li>
            <li id="up" class="li_1">화장품</li>
            <li id="up" class="li_1">헬스케어</li>
            <li id="up" class="li_1">전자기기</li>
        </div>

        <table class="table1" style="margin-top: 0; padding: 20px;" border="0">
            <tr>
                <td style="padding-top: 5px;">
                    <a href="FashionProductList.jsp?table=fashion&category=TOP"><img class="img2" src="image/top_1.jpg"></a>
                </td>
                <td>
                    <a href="FashionProductList.jsp?table=fashion&category=TOP"><img class="img2" src="image/bottom_2.jpg"></a>
                </td>
                <td>
                    <a href="FashionProductList.jsp?table=fashion&category=TOP"><img class="img2" src="image/outer_3.jpg"></a>
                </td>
                <td>
                    <a href="FashionProductList.jsp?table=fashion&category=TOP"><img class="img2" src="image/acc_4.jpg"></a>
                </td>

            </tr>
        </table>
    </div>

    <div align="center" style="margin-bottom: 160px;">
        <table style="width: 1300px; text-align: center" border="0">
            <caption>
                <p id="p1" style="color: #333;">
                    <strong>- NEW ARRIVAL -</strong>
                </p>
            </caption>
           <tr><td> <div  style="background-color: #555;width: 107px;height: 29px; margin: 30px auto 0 auto;">
        <div class="item">패션</div>
    </div></td><td></td><td></td></tr>
            <tr>
                <td id="newtd">
                    <a id="a2" href="FashionBoard.jsp?id=<%out.print(list.get(0).getId());%>&table=fashion">
				<img src="<%out.print(list.get(0).getMain_img());%>" id="imgnew">
				</a>
				<div id="div1">
					<a
						href="FashionBoard.jsp?id=<%out.print(list.get(0).getId());%>&table=fashion">
						<%out.print(list.get(0).getName());%>
					</a>
					<div style="margin-top: 4px;">
						<%out.print(list.get(0).getPrice());%>
					</div>
				</div>
				<div align="center">
					<div class="circle" style="background-color: #9d968c;"></div>
					<div class="circle" style="background-color: #e0cfbb;"></div>
					<div class="circle" style="background-color: #154579;"></div>
				</div>
				</td>
				<td id="newtd"><a id="a2"
					href="FashionBoard.jsp?id=<%out.print(list.get(1).getId());%>&table=fashion"><img
						src="<%out.print(list.get(1).getMain_img());%>" id="imgnew"></a>

					<div id="div1">
						<ahref ="FashionBoard.jsp?id=<%out.print(list.get(1).getId());%>
							&table=fashion"> <%out.print(list.get(1).getName());%></a>
						<div style="margin-top: 4px;">
							<%out.print(list.get(1).getPrice());%>
						</div>
					</div>
					<div align="center">
						<div class="circle" style="background-color: #a49787;"></div>
						<div class="circle" style="background-color: #000;"></div>
					</div>
				<td id="newtd"><a
					href="FashionBoard.jsp?id=<%out.print(list.get(2).getId());%>&table=fashion"
					style="padding: 0"><img
						src="<%out.print(list.get(2).getMain_img());%>" id="imgnew"></a>

					<div id="div1">
						<a
							href="FashionBoard.jsp?id=<%out.print(list.get(2).getId());%>&table=fashion">
							<%out.print(list.get(2).getName());%>
						</a>
						<div style="margin-top: 4px;">
							<%out.print(list.get(2).getPrice());%>
						</div>
					</div>
					<div align="center">
						<div class="circle" style="background-color: #587087;"></div>
						<div class="circle" style="background-color: #1d2833;"></div>
					</div></td>

				<td id="newtd"><a
					href="FashionBoard.jsp?id=<%out.print(list.get(3).getId());%>&table=fashion"
					style="padding: 0"><img
						src="<%out.print(list.get(3).getMain_img());%>" id="imgnew"></a>
					<div id="div1">
						<a
							href="FashionBoard.jsp?id=<%out.print(list.get(3).getId());%>&table=fashion">
							<%out.print(list.get(3).getName());%>
						</a>
						<div style="margin-top: 4px;">
							<%out.print(list.get(3).getPrice());%>
						</div>
					</div>
					<div align="center">
						<div class="circle" style="background-color: #9d968c;"></div>
						<div class="circle" style="background-color: #e0cfbb;"></div>
						<div class="circle" style="background-color: #312b2d;"></div>
					</div></td>

				</tr>
				<tr><td> <div  style="background-color: #555;width: 107px;height: 29px; margin: 30px auto 0 auto;">
        <div class="item">화장품</div>
    </div></td><td></td><td></td></tr>
				<tr>
					<td id="newtd"><a href="Board.jsp?id=<%out.print(cosmetics.get(0).getId());%>&table=cosmetics" style="padding: 0"> <img
							src="<%out.print(cosmetics.get(0).getMain_img());%>" id="imgnew"></a>
						<div id="div1">
							<a href="Board.jsp?id=<%out.print(cosmetics.get(0).getId());%>&table=cosmetics" style="padding: 0"><%out.print(cosmetics.get(0).getName());%>
							</a>
							<div style="margin-top: 4px;"><%out.print(cosmetics.get(0).getPrice());%></div>
						</div>
						<div align="center"></div></td>
					<td id="newtd"><a href="Board.jsp?id=<%out.print(cosmetics.get(1).getId());%>&table=cosmetics" style="padding: 0"><img
							src="<%out.print(cosmetics.get(1).getMain_img());%>" id="imgnew"></a>
						<div id="div1">
							<a href="Board.jsp?id=<%out.print(cosmetics.get(1).getId());%>&table=cosmetics" style="padding: 0"><%out.print(cosmetics.get(1).getName());%></a>
							<div style="margin-top: 4px;"><%out.print(cosmetics.get(1).getPrice());%></div>
						</div>
						<div align="center"></div></td>

					<td id="newtd"><a href="Board.jsp?id=<%out.print(cosmetics.get(2).getId());%>&table=cosmetics" style="padding: 0"><img
							src="<%out.print(cosmetics.get(2).getMain_img());%>" id="imgnew"></a>

						<div id="div1">
							<a href="Board.jsp?id=<%out.print(cosmetics.get(2).getId());%>&table=cosmetics" style="padding: 0"><%out.print(cosmetics.get(2).getName());%></a>
							<div style="margin-top: 4px;"><%out.print(cosmetics.get(2).getPrice());%></div>
						</div>
						<div align="center"></div></td>
					<td id="newtd"><a href="Board.jsp?id=<%out.print(cosmetics.get(3).getId());%>&table=cosmetics" style="padding: 0"><img
							src="<%out.print(cosmetics.get(3).getMain_img());%>" id="imgnew"></a>

						<div id="div1">
							<a href="Board.jsp?id=<%out.print(cosmetics.get(3).getId());%>&table=cosmetics" style="padding: 0"><%out.print(cosmetics.get(3).getName());%></a>
							<div style="margin-top: 4px;"><%out.print(cosmetics.get(3).getPrice());%></div>
						</div>
						<div align="center"></div></td>
				</tr>
				<tr><td> <div  style="background-color: #555;width: 107px;height: 29px; margin: 30px auto 0 auto;">
        <div class="item">헬스케어</div>
    </div></td><td></td><td></td></tr>
				<tr>
					</td>
					<td id="newtd"><a href="Board.jsp?id=<%out.print(health.get(0).getId());%>&table=health" style="padding: 0"><img
							src="<%out.print(health.get(0).getMain_img());%>" id="imgnew"></a>
						<div id="div1">
							<a href="Board.jsp?id=<%out.print(health.get(0).getId());%>&table=health" style="padding: 0"><%out.print(health.get(0).getName());%></a>
							<div style="margin-top: 4px;"><%out.print(health.get(0).getPrice());%></div>
						</div>
						<div align="center"></div></td>
					<td id="newtd"><a href="Board.jsp?id=<%out.print(health.get(1).getId());%>&table=health" style="padding: 0"><img
							src="<%out.print(health.get(1).getMain_img());%>" id="imgnew"></a>
						<div id="div1">
							<a href="Board.jsp?id=<%out.print(health.get(1).getId());%>&table=health" style="padding: 0"><%out.print(health.get(1).getName());%></a>
							<div style="margin-top: 4px;"><%out.print(health.get(1).getPrice());%></div>
						</div>
						<div align="center"></div></td>

					<td id="newtd"><a href="Board.jsp?id=<%out.print(health.get(2).getId());%>&table=health" style="padding: 0"><img
							src="<%out.print(health.get(2).getMain_img());%>" id="imgnew"></a>

						<div id="div1"></div><a href="Board.jsp?id=<%out.print(health.get(2).getId());%>&table=health" style="padding: 0"><%out.print(health.get(2).getName());%></a>
						<div style="margin-top: 4px;"><%out.print(health.get(2).getPrice());%></div>

						<div align="center"></div></td>

					<td id="newtd"><a href="Board.jsp?id=<%out.print(health.get(3).getId());%>&table=health" style="padding: 0"><img
							src="<%out.print(health.get(3).getMain_img());%>" id="imgnew"></a>

						<div id="div1">
							<a href="Board.jsp?id=<%out.print(health.get(3).getId());%>&table=health" style="padding: 0"><%out.print(health.get(3).getName());%></a>
							<div style="margin-top: 4px;"><%out.print(health.get(3).getPrice());%></div>
						</div>
						<div align="center"></div></td>
				</tr>
				<tr><td> <div  style="background-color: #555;width: 107px;height: 29px; margin: 30px auto 0 auto;">
        <div class="item">전자기기</div>
    </div></td><td></td><td></td></tr>
				<tr>
					<td id="newtd"><a href="Board.jsp?id=<%out.print(electronic.get(0).getId());%>&table=electronic" style="padding: 0"><img
							src="<%out.print(electronic.get(0).getMain_img());%>" id="imgnew"></a>

						<div id="div1">
							<a href="Board.jsp?id=<%out.print(electronic.get(0).getId());%>&table=electronic" style="padding: 0"><%out.print(electronic.get(0).getName());%></a>
							<div style="margin-top: 4px;"><%out.print(electronic.get(0).getPrice());%></div>
						</div>
						<div align="center"></div></td>

					<td id="newtd"><a href="Board.jsp?id=<%out.print(electronic.get(1).getId());%>&table=electronic" style="padding: 0"><img
							src="<%out.print(electronic.get(1).getMain_img());%>" id="imgnew"></a>
						<div id="div1">
							<a href="Board.jsp?id=<%out.print(electronic.get(1).getId());%>&table=electronic" style="padding: 0"><%out.print(electronic.get(1).getName());%></a>
							<div style="margin-top: 4px;"><%out.print(electronic.get(1).getPrice());%></div>
						</div>
						<div align="center"></div></td>
					<td id="newtd"><a href="Board.jsp?id=<%out.print(electronic.get(2).getId());%>&table=electronic" style="padding: 0"><img
							src="<%out.print(electronic.get(2).getMain_img());%>" id="imgnew"></a>

						<div id="div1">
							<a href="Board.jsp?id=<%out.print(electronic.get(2).getId());%>&table=electronic" style="padding: 0"><%out.print(electronic.get(2).getName());%></a>
							<div style="margin-top: 4px;"><%out.print(health.get(2).getPrice());%></div>
						</div>
						<div align="center"></div></td>
					<td id="newtd"><a href="Board.jsp?id=<%out.print(electronic.get(3).getId());%>&table=electronic" style="padding: 0"><img
							src="<%out.print(electronic.get(3).getMain_img());%>" id="imgnew"></a>

						<div id="div1">
							<a href="Board.jsp?id=<%out.print(electronic.get(3).getId());%>&table=electronic" style="padding: 0"><%out.print(electronic.get(3).getName());%></a>
							<div style="margin-top: 4px;"><%out.print(health.get(3).getPrice());%></div>
						</div>
						<div align="center">
							<div class="circle" style="background-color: #dbdee2;"></div>
							<div class="circle" style="background-color: #000;"></div>

						</div></td>
				</tr>
				<tr><td> <div  style="background-color: #555;width: 107px;height: 29px; margin: 30px auto 0 auto;">
        <div class="item">게임</div>
    </div></td><td></td><td></td></tr>
				<tr>
					<td id="newtd"><a href="Board.jsp?id=<%out.print(game.get(0).getId());%>&table=game" style="padding: 0"><img
							src="<%out.print(game.get(0).getMain_img());%>" id="imgnew"></a>

						<div id="div1">
							<a href="Board.jsp?id=<%out.print(game.get(0).getId());%>&table=game" style="padding: 0"><%out.print(game.get(0).getName());%></a>
							<div style="margin-top: 4px;"><%out.print(game.get(0).getPrice());%></div>
						</div>
						<div align="center"></div></td>

					<td id="newtd"><a href="Board.jsp?id=<%out.print(game.get(1).getId());%>&table=game" style="padding: 0"><img
							src="<%out.print(game.get(1).getMain_img());%>" id="imgnew"></a>
						<div id="div1">
							<a href="Board.jsp?id=<%out.print(game.get(1).getId());%>&table=game" style="padding: 0"><%out.print(game.get(1).getName());%></a>
							<div style="margin-top: 4px;"><%out.print(game.get(1).getPrice());%></div>
						</div>
						<div align="center"></div></td>
					<td id="newtd"><a href="Board.jsp?id=<%out.print(game.get(2).getId());%>&table=game" style="padding: 0"><img
							src="<%out.print(game.get(2).getMain_img());%>" id="imgnew"></a>

						<div id="div1">
							<a href="Board.jsp?id=<%out.print(game.get(2).getId());%>&table=game" style="padding: 0"><%out.print(game.get(2).getName());%></a>
							<div style="margin-top: 4px;"><%out.print(game.get(2).getPrice());%></div>
						</div>
						<div align="center"></div></td>
					<td id="newtd"><a href="Board.jsp?id=<%out.print(game.get(3).getId());%>&table=game" style="padding: 0"><img
							src="<%out.print(game.get(3).getMain_img());%>" id="imgnew"></a>

						<div id="div1">
							<a href="Board.jsp?id=<%out.print(game.get(3).getId());%>&table=game" style="padding: 0"><%out.print(game.get(3).getName());%> </a>
							<div style="margin-top: 4px;"><%out.print(game.get(3).getPrice());%></div>
						</div>
						<div align="center">
							<div class="circle" style="background-color: #dbdee2;"></div>
							<div class="circle" style="background-color: #000;"></div>

						</div></td>
				</tr>
				</table>
		</div>
		<!-- 고정 정보들 -->
		<div align="center"
			style="background-color: rgba(239, 239, 239, 0.95); border: 1px solid #d4d3d3; height: 367px; min-width: 1300px;">
			<table style="width: 1300px; padding-top: 35px" border="0">
				<tr>
					<td style="padding: 0 30px; width: 433px;">
						<h2 style="letter-spacing: 2px;">고객지원센터</h2>
						<h3 style="font-size: 24px; margin-bottom: 13px;">1234-5678</h3>
						<hr
							style="width: 20px; height: 2px; float: left; background: black; margin: 0;">
						<br> <br>
						<h2>계좌안내</h2>
						<p id="p2">입금계좌</p>
						<p id="p2">한림은행 666 - 777 - 888888</p>
						<p id="p2">예금주: 한림대학교</p>
						<p id="p2">------------------------------------------</p>
						<p id="p2">교환/반품전용 택배비계좌</p>
						<p id="p2">한림은행 444444 - 55 - 66666</p>
						<p id="p2">예금주: 한림대학교</p>
					</td>
					<td style="width: 433px;">
						<div style="height: 276px; padding: 13px">
							<h2 style="letter-spacing: 2px;">화사정보</h2>
							<p id="p2">화사 : 데일리</p>
							<p id="p2">대표 : 슈퍼 웹</p>
							<p id="p2">사업자번호 : [0000-33-00000]</p>
							<p id="p2">메일 : gooni0906@gmail.com</p>
							<p id="p2">주소 : 한림대학길1 한림대학교 학생생활관</p>
							<br>
							<hr
								style="width: 20px; height: 2px; float: left; background: black; margin: 0;">
							<br>
							<h2 style="letter-spacing: 2px;">배송/반품지원센터</h2>
							<a href="https://www.cjlogistics.com/ko/main" class="button">대한통운
								택배</a>
						</div>
					</td>
					<td style="padding: 0 30px; border-left: 1px solid #d4d3d3;">
						<div style="height: 268px; width: 360px; margin: 0 auto;">
							<div style="border-bottom: 1px solid #aaa;">
								<div class="notice">공지사항</div>
							</div>
							<div>
								<ul style="padding: 0; margin-top: 9px;">
									<li><a href="notice.html"
										style="margin: 0; padding: 0; color: #777">· 추석연휴 휴무 안내</li>
									<li><a href="notice.html"
										style="margin: 0; padding: 0; color: #777">· 입고 자연 안내</li>
									<li><a href="notice.html"
										style="margin: 0; padding: 0; color: #777">· 8.15 휴무 안내</li>
									<li><a href="notice.html"
										style="margin: 0; padding: 0; color: #777">· 세일 안내</li>
									<li><a href="notice.html"
										style="margin: 0; padding: 0; color: #777">· 8월 여름 휴가안내</li>
									<li><a href="notice.html"
										style="margin: 0; padding: 0; color: #777">· 교환,반품 방법</li>
								</ul>
							</div>
						</div>
					</td>

				</tr>

			</table>
		</div>
</body>

</html>
