<%@page import="Project.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Project.FashionDatabase"%>
<%@page import="Project.Fashion"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<!-- 고정 -->
<script>
function over(obj) {
    obj.src = "image/title4.png"
}

function out(obj) {
    obj.src = "image/title3.png"
}

</script>
<link rel="stylesheet" type="text/css" href="menubar.css" />
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
/* 고정 style */
#menubar a:hover {
	color: #4a89dc;
	font-weight: bold;
}

#menubar_2 a:hover {
	font-weight: bold;
}

#menubar_2 a {
	color: white
}

.manu, .manu_2 {
	top: 0;
	width: 100%;
	min-width: 650px;
	height: 39px;
	position: fixed;
	z-index: 999;
	background: rgba(239, 239, 239, 0.95);
	font-size: 0.7em;
	border: 1px solid #d4d3d3;
}

#up:hover {
	position: relative;
	bottom: 3px;
	right: 3px;
	color: #333;
	font-weight: bold;
}

.ul1 {
	padding-left: 0px;
	margin-bottom: 11px;
}

.ul2 {
	margin-top: 4px;
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

a, li {
	font: 12px "Microsoft YaHei";
}

.notice_2 li {
	color: #777;
	list-style: none;
	font-size: 0.8em;
	height: 24px;
}

a {
	text-decoration: none;
	color: #333;
	padding: 0 10px;
}

h2, h3 {
	font: 15px "맑은 고딕";
	color: #666;
	margin: 8px 0;
}

.p2 {
	font: 12px "맑은 고딕";
	color: #666;
	line-height: 19px;
	margin: 0;
	font-weight: bold;
}

.top {
	position: fixed;
	left: 95%;
	top: 62%;
	bottom: 15px;
	z-index: 999;
	display: none;
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

#aaa a {
	padding: 0 80px;
}

#inp {
	letter-spacing: 1px;
	font-size: 12px;
	color: #353535;
	width: 30px;
	height: 16px;
	padding: 1px 4px 1px 4px;
	border-color: #d4d3d3;
	border-style: solid;
	border-width: 0px;
	border-bottom-width: 1px;
	outline: none;
}

#sele_1, #sele_2 {
	letter-spacing: 1px;
	font-size: 11px;
	color: #353535;
	padding: 1px 4px 1px 4px;
	border-color: #d4d3d3;
	border-width: 1px;
	border-style: solid;
	outline: none;
	letter-spacing: 0;
	width: 164px;
	height: 32px;
}

#inp:hover {
	border-color: #777;
}

.btnSubmit {
	background-color: #555;
	width: 178px;
	height: 26px;
	display: inline-block;
	color: white;
	font: 14px '맑은 고딕';
	padding: 9px 0 0 0;
	text-align: center;
}

.btnSubmit:hover {
	background: rgba(85, 85, 85, 0.838);
}

.btnNormal {
	display: inline-block;
	width: 176px;
	height: 25px;
	border-style: solid;
	border-color: #777;
	border-width: 1px;
	font: 14px '맑은 고딕';
	padding: 8px 0 0 0;
	text-align: center;
}

.input_value a {
	padding: 0 5px;
	font: 15px '맑은 고딕';
}

#add, #sub {
	/* 손가락 모양*/
	cursor: pointer;
	-moz-user-select: none;
	-webkit-user-select: none;
	user-select: none;
}
/* 문자 선택 금지 */
div {
	-moz-user-select: none;
	-webkit-user-select: none;
	user-select: none;
}

.review_table th {
	font: 12px "맑은 고딕";
	color: #353535;
	font-weight: bold;
}

.data td {
	font: 12px "맑은 고딕";
	color: #353535;
	text-align: center;
	padding-top: 15px;
	padding-bottom: 17px;
	border-bottom: 1px solid #ddd;
}

.order, .rebiew_table {
	margin: 0 auto;
	width: 1300px;
}
.item {
            color: white;
            font: 12px 'Microsoft YaHei';
            letter-spacing: 1px;
            font-weight: bold;
            padding: 7px 0;
            width: 100%;
        }
        #input_1,
        #input_2,
        #input_3,
        #input_4 {
            letter-spacing: 1px;
            font-size: 11px;
            color: #353535;
            width: 440px;
            height: 28px;
            padding: 1px 4px 1px 4px;
            border-color: #d4d3d3;
            border-width: 1px;
            border-style: solid;
            outline: none;
        }
/* style 끝 */
</style>
</style>
<title></title>
</head>
<!-- 고정 -->

<body style="margin: 0;" onload="init()">
	<jsp:useBean id="Cart" class="Project.CartDatabase" scope="page" />
	<%
String id = request.getParameter("id");
String table = request.getParameter("table");
int idnum = Integer.parseInt(id);
FashionDatabase fashiondb = new FashionDatabase(); 
Fashion fashion = fashiondb.getlist(idnum, table);
StringTokenizer lcolor=new StringTokenizer(fashion.getColor(),",");
StringTokenizer lsize=new StringTokenizer(fashion.getSize(),",");
ArrayList<String> colorarr = new ArrayList<String>();
ArrayList<String> sizearr = new ArrayList<String>();

while(lcolor.hasMoreElements()){
	colorarr.add(lcolor.nextToken());
}
while(lsize.hasMoreElements()){
	sizearr.add(lsize.nextToken());
}
ArrayList<Comment> list = fashiondb.getComment(table, Integer.parseInt(id));

%>
	<!-- 메뉴 -->
	<nav id="nav-1">
		<%
	String name = (String) session.getAttribute("name");
    String userid = (String) session.getAttribute("id");
        if (name!=null) {%>
		<a class="link-1"><%=name%>님 환영합니다. </a> <a class="link-1"
			href="logout.jsp">로그아웃</a>
		<%} else{%>
		<a class="link-1" href="login.jsp">로그인</a>| <a class="link-1"
			href="join.jsp">회원가입</a>|
		<%}%>
		<a class="link-1" href="cart.jsp">장바구니 </a> <a class="link-1"
			href="order.jsp">주문조회 </a>
	</nav>
	<!-- 제목 -->
	<div align="center" style="padding: 50px 0 7px 0; height: 180px;">
		<a href="main.jsp"><img src="image/title3.png" width="300px"
			onmouseover="over(this)" onmouseout="out(this)"></a>
	</div>
	<!-- 메뉴2 -->

	<div id="nav" style="margin: -131px 0 244px 82px;">
		<ul class="nav-menu clearfix unstyled">
			<li><a href="main.jsp" class="three-d"> Home <span
					class="three-d-box"><span class="front">Home</span><span
						class="back">Home</span></span>
			</a></li>
			<li><a href="main.jsp" class="three-d"> 패션 <span
					class="three-d-box"><span class="front">패션</span><span
						class="back">패션</span></span>
			</a>
				<ul class="clearfix unstyled drop-menu">
					<li><a
						href="FashionProductList.jsp?table=fashion&category=TOP"
						class="three-d"> TOP <span class="three-d-box"><span
								class="front">TOP</span><span class="back">TOP</span></span>
					</a></li>
					<li><a
						href="FashionProductList.jsp?table=fashion&category=outer"
						class="three-d"> OUTER <span class="three-d-box"><span
								class="front">OUTER</span><span class="back">OUTER</span></span>
					</a></li>
					<li><a
						href="FashionProductList.jsp?table=fashion&category=BOTTOM"
						class="three-d"> BOTTOM <span class="three-d-box"><span
								class="front">BOTTOM</span><span class="back">BOTTOM</span></span>
					</a></li>
					<li><a
						href="FashionProductList.jsp?table=fashion&category=SHOE BAG"
						class="three-d"> SHOE & BAG <span class="three-d-box"><span
								class="front">SHOE & BAG</span><span class="back">SHOE &
									BAG</span></span>
					</a></li>
					<li><a
						href="FashionProductList.jsp?table=fashion&category=ACC"
						class="three-d"> ACC <span class="three-d-box"><span
								class="front">ACC</span><span class="back">ACC</span></span>
					</a></li>
					<li><a href="exfashion.html" class="three-d"> 체형별 코디 <span
							class="three-d-box"><span class="front">체형별 코디</span><span
								class="back">체형별 코디</span></span>
					</a></li>
				</ul></li>
			<li><a
				href="FashionProductList.jsp?table=cosmetics&category=SKIN"
				class="three-d"> 화장품 <span class="three-d-box"><span
						class="front">화장품</span><span class="back">화장품</span></span>
			</a>
				<ul class="clearfix unstyled drop-menu">
					<li><a href="MakeupProductList.jsp?cnt=4&category=건성피부"
						class="three-d"> 건성 피부 <span class="three-d-box"><span
								class="front">건성 피부</span><span class="back">건성 피부</span></span>
					</a></li>
					<li><a href="MakeupProductList.jsp?cnt=8&category=지성피부"
						class="three-d"> 지성 피부 <span class="three-d-box"><span
								class="front">지성 피부</span><span class="back">지성 피부</span></span>
					</a></li>
					<li><a href="MakeupProductList.jsp?cnt=12&category=복합성피부"
						class="three-d"> 복합성 피부 <span class="three-d-box"><span
								class="front">복합성 피부</span><span class="back">복합성 피부</span></span>
					</a></li>
					<li><a href="MakeupProductList.jsp?cnt=16&category=민감성피부"
						class="three-d"> 민감성 피부 <span class="three-d-box"><span
								class="front">민감성 피부</span><span class="back">민감성 피부</span></span>
					</a></li>
					<li><a href="MakeupProductList.jsp?cnt=20&category=피부 타입별 관리"
						class="three-d"> 피부 타입별 관리 <span class="three-d-box"><span
								class="front">피부 타입별 관리</span><span class="back">피부 타입별
									관리</span></span>
					</a></li>
				</ul></li>
			<li><a href="HealthProductList.jsp?cnt=0&category=헬스케어"
				class="three-d"> 헬스케어 <span class="three-d-box"><span
						class="front">헬스케어</span><span class="back">헬스케어</span></span>
			</a>
				<ul class="clearfix unstyled drop-menu">
					<li><a href="HealthProductList.jsp?cnt=0&category=마른 체형"
						class="three-d"> 마른 체형 <span class="three-d-box"><span
								class="front">마른 체형</span><span class="back">마른 체형</span></span>
					</a></li>
					<li><a href="HealthProductList.jsp?cnt=4&category=평균 체형"
						class="three-d"> 평균 체형 <span class="three-d-box"><span
								class="front">평균 체형</span><span class="back">평균 체형</span></span>
					</a></li>
					<li><a href="HealthProductList.jsp?cnt=8&category=살찐 체형"
						class="three-d"> 살찐 체형 <span class="three-d-box"><span
								class="front">살찐 체형</span><span class="back">살찐 체형</span></span>
					</a></li>
					<li><a href="HealthProductList.jsp?cnt=12&category=체형별 운동법"
						class="three-d"> 체형별 운동법 <span class="three-d-box"><span
								class="front">체형별 운동법</span><span class="back">체형별 운동법</span></span>
					</a></li>
				</ul></li>
			<li><a href="ProductList.jsp?table=electronic&category=Computer"
				class="three-d"> 전자기기 <span class="three-d-box"><span
						class="front">전자기기</span><span class="back">전자기기</span></span>
			</a>
				<ul class="clearfix unstyled drop-menu">
					<li><a
						href="ProductList.jsp?table=electronic&category=Computer"
						class="three-d"> 컴퓨터 <span class="three-d-box"><span
								class="front">컴퓨터</span><span class="back">컴퓨터</span></span>
					</a></li>
					<li><a href="ProductList.jsp?table=electronic&category=Camera"
						class="three-d"> 카메라 <span class="three-d-box"><span
								class="front">카메라</span><span class="back">카메라</span></span>
					</a></li>
					<li><a
						href="ProductList.jsp?table=electronic&category=Cellphone"
						class="three-d"> 휴대폰 <span class="three-d-box"><span
								class="front">휴대폰</span><span class="back">휴대폰</span></span>
					</a></li>
					<li><a
						href="ProductList.jsp?table=electronic&category=Console"
						class="three-d"> 게임기 <span class="three-d-box"><span
								class="front">게임기</span><span class="back">게임기</span></span>
					</a></li>
				</ul></li>
			<li><a href="ProductList.jsp?table=game&category=fps"
				class="three-d"> 게임 <span class="three-d-box"><span
						class="front">게임</span><span class="back">게임</span></span>
			</a>
				<ul class="clearfix unstyled drop-menu">
					<li><a href="ProductList.jsp?table=game&category=fps"
						class="three-d"> FPS <span class="three-d-box"><span
								class="front">FPS</span><span class="back">FPS</span></span>
					</a></li>
					<li><a href="ProductList.jsp?table=game&category=rpg"
						class="three-d"> RPG <span class="three-d-box"><span
								class="front">RPG</span><span class="back">RPG</span></span>
					</a></li>
					<li><a href="ProductList.jsp?table=game&category=aos"
						class="three-d"> AOS <span class="three-d-box"><span
								class="front">AOS</span><span class="back">AOS</span></span>
					</a></li>
				</ul></li>

			<li><a href="review.html" class="three-d active"> 리뷰 상품 <span
					class="three-d-box"><span class="front">리뷰 상품</span><span
						class="back">리뷰 상품</span></span>
			</a></li>
		</ul>
	</div>
	<!-- 메뉴 -->

	<script>
	var btn
    var sele1
    var sele2
    var add_1
    var sub_1
    var inp_1

    function init() {
        btn = document.getElementsByClassName("btnSubmit")
        sele1 = document.getElementById("sele_1")
        sele2 = document.getElementById("sele_2")
        btn.onclick = select;
        add_1 = document.getElementById("add");
        sub_1 = document.getElementById("sub");
        inp_1 = document.getElementById("inp");
        inp_2 = document.getElementById("inp");
        pir = document.getElementById("price")

        add_1.onclick = add1;
        sub_1.onclick = sub;
    }

    function select() {
    	var a1 = sele1.selectedIndex
        var a2 = sele2.selectedIndex
        var val1 = sele1.options[a1].value
        var val2 = sele2.options[a2].value
        	var id='<%=id%>';
        	var table='<%=table%>'
            var url2="addCart.jsp?id="+id+"&table="+table+"&inp_1="+inp_1.value+"&val1="+sele1.value+"&val2="+sele2.value;
            location.href=url2;
    }

    function add1() {
        inp_1.value = eval(inp_1.value + '+' + 1);
        price.innerHTML = 'KRW ' + eval(inp_1.value + '*' + 29000)

    }

    function sub() {
        if (inp_1.value == '1') {
            alert('최소 주문량은 1개 입니다.')
        } else {
            inp_1.value = eval(inp_1.value + '-' + 1);
            price.innerHTML = 'KRW ' + eval(inp_1.value + '*' + 29000)
        }
    }
</script>
	</script>
	<div style="margin: 0 auto; width: 1300px; padding-top: 65px;">

		<div style="float: left;">
			<img src="<%out.print(fashion.getMain_img());%>" width="674px;">
		</div>
		<div>
			<div>

				<ul style="padding-left: 57%;">
					<hr
						style="margin: 0 0 25px 0; background: #333; border: none; height: 2px;">
					<li style="font-size: 20px; color: #333">
						<%out.print(fashion.getName());%>
					</li>
					<li style="font-size: 13px; color: #333; padding-top: 10px;"
						id="price">KRW <%out.print(fashion.getPrice());%></li>
					<hr
						style="margin: 20px 0 25px 0; background: #d4d3d3; border: none; height: 1px;">

					<li style="margin-bottom: 26px;" class="input_value"><input
						id="inp" value="1" type="text"> <a id="add">+</a> <a
						id="sub">-</a></li>
					<table border="0 " summary=" ">
						<tbody>
							<tr>
								<th
									style="color: #aaa; font: 15px 'Microsoft YaHei'; padding-right: 73px;">color</th>
								<td><select id="sele_1" option_style="select "
									required="true ">
										<%for(int i=0;i<colorarr.size();i++){%>
										<option value=<%=colorarr.get(i)%>><%=colorarr.get(i) %></option>
										<%}%>
								</select></td>
							</tr>
							<tr>
								<th
									style="color: #aaa; font: 15px 'Microsoft YaHei'; padding-right: 73px;">size</th>
								<td style="padding-top: 0px;"><select id="sele_2"
									option_style="select " required="true " style="margin-top: 5px">
										<%for(int i=0;i<sizearr.size();i++){%>
										<option value=<%=sizearr.get(i)%>><%=sizearr.get(i) %></option>
										<%}%>
								</select></td>
							</tr>
						</tbody>
					</table>
					<hr
						style="margin: 25px 0 25px 0; background: #333; border: none; height: 2px;">
				</ul>
			</div>
			<!-- 구매버튼 -->
			<div style="padding-left: 57%;margin-bottom:600px;">
				<div class="btnArea ">
					<a href="#" class="btnSubmit" style="margin-top: 15px;"
						onclick="select()">BUY</a> <a href="#" class="btnNormal"
						style="margin: 0 5px;" onclick="select()">ADD CART</a>
					</KRW>
					<a href="cart.jsp" class="btnNormal ">ADD WISH</a></span>
				</div>
				<div id="NaverChk_Button "></div>
			</div>
			<div align="center ">
				<div>
					<img src="<%out.print(fashion.getSub_img());%>">
				</div>
			</div>
		</div>
		<div class="order">
			<div>

				<p style="font: 14px '맑은 고딕'; padding-left: 7px; color: #353535">
					<strong>REVIEW</strong>
				</p>
			</div>

			<table border="0" class="review_table"
				style="margin: 0 auto; margin-bottom: 40px; margin-bottom: 150px;">

				<colgroup>
					<col style="width: 70px;">
					<col style="width: 900px">
					<col style="width: 120px;">
					<col style="width: 120px;">
					<col style="width: 80px;">
				</colgroup>
				<thead>
					<tr>
						<td colspan="5">
							<hr
								style="margin: 0; background: #d4d3d3; border: none; height: 2px;">
						</td>
					</tr>
					<tr>
						<th scope="col" style="padding: 15px 1px 15px 1px;">NO</th>
						<th scope="col">SUBJECT</th>
						<th scope="col">NAME</th>
						<th scope="col">DATE</th>

					</tr>
					<tr>
						<td colspan="5">
							<hr
								style="margin: 0; background: #d4d3d3; border: none; height: 2px;">
						</td>
					</tr>
				</thead>
				<br>
				<br>
				<tbody class="data">
					<%int i=0;
            for(i=0;i<list.size();i++){%>
					<tr>
						<td><%=list.size()-i%></td>
						<td><%=list.get(i).getTitle()%></td>
						<td><%=list.get(i).getName()%></td>
						<td>2<%=list.get(i).getRegistertime()%></td>
					</tr>
					<%}%>
				</tbody>
			</table>
			    <div align="center" style="background-color: #555;width: 107px;height: 29px; margin: 30px auto 0 auto;">
        <div class="item">댓글 작성</div>
    </div>
			<form align="center" name=insert method=post action=registerComment.jsp?id=<%=id%>&table=<%=table%>>
				<input id="input_1" style="margin-top: 32px;"" type="text" name="comment">
				<button style="height:23px; margin-left:27px" type="submit">등록</button>
			</form>
		</div>

		<!-- main over -->
		<div
		style="background-color: rgba(239, 239, 239, 0.95); border: 1px solid #d4d3d3; height: 367px; margin: 0 auto; min-width: 1300px; margin-top: 50px;">

		<table style="width: 1300px; padding-top: 35px; margin: 0 auto;"
			border="0 ">
			<tr>
				<td style="padding: 0 30px; width: 433px;">
					<h2 style="letter-spacing: 2px;">고객지원센터</h2>
					<h3 style="font-size: 24px; margin-bottom: 13px; color: #666">1234-5678</h3>
					<hr
						style="width: 20px; height: 2px; float: left; background: black; margin: 0; border: none;">
					<br>
				<br>
					<h2>계좌안내</h2>
					<p class="p2 ">입금계좌</p>
					<p class="p2 ">한림은행 666 - 777 - 888888</p>
					<p class="p2 ">예금주: 한림대학교</p>
					<p class="p2 ">------------------------------------------</p>
					<p class="p2 ">교환/반품전용 택배비계좌</p>
					<p class="p2 ">한림은행 444444 - 55 - 66666</p>
					<p class="p2 ">예금주: 한림대학교</p>
				</td>
				<td style="width: 433px;">
					<div style="height: 276px; padding: 13px">
						<h2 style="letter-spacing: 2px;">화사정보</h2>
						<p class="p2 ">화사 : 데일리</p>
						<p class="p2 ">대표 : 정군</p>
						<p class="p2 ">사업자번호 : [0000-33-00000]</p>
						<p class="p2 ">메일 : gooni0906@gmail.com</p>
						<p class="p2 ">주소 : 한림대학길1 한림대학교 학생생활관</p>
						<br>
						<hr
							style="width: 20px; height: 2px; float: left; background: black; margin: 0; border: none;">
						<br>
						<h2 style="letter-spacing: 2px;">배송/반품지원센터</h2>
						<a href="https://www.cjlogistics.com/ko/main " class="button_2">대한통운
							택배</a>
					</div>
				</td>
				<td style="padding: 0 30px; border-left: 1px solid #d4d3d3;">
					<div style="height: 268px; width: 360px; margin: 0 auto;">
						<div style="border-bottom: 1px solid #aaa;">
							<div class="notice ">공지사항</div>
						</div>
						<div>
							<ul class="notice_2" style="padding: 0; margin-top: 9px;">
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
	<!-- 고정정보 끝 -->
</body>

</html>

