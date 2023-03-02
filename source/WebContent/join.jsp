<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        
        #menubar a:hover {
            color: rgb(134, 128, 128);
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
        
        .notice {
            color: #333;
            border: 1px solid #aaa;
            border-bottom: none;
            /*rgba(239, 239, 239, 0.95) */
            font-size: 12px;
            width: 48px;
            padding: 5px 10px;
        }
        
        a,
        li {
            font: 12px "Microsoft YaHei";
        }
        
        .notice_2 li {
            color: #777;
            list-style: none;
            height: 24px;
        }
        
        a {
            text-decoration: none;
            color: #333;
            padding: 0 10px;
        }
        
        h2,
        h3 {
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
        /* style 끝 */
        
        .titleArea strong {
            display: inline-block;
            margin: 0 auto;
            margin-top: 60px;
            margin-bottom: 30px;
            padding: 8px 5px;
            color: #353535;
            font-size: 14px "맑은 고딕";
            letter-spacing: 2px;
            border-bottom: 2px #ddd solid;
            text-transform: uppercase;
        }
        
        .user_data td {
            font: 11px "맑은 고딕";
            border: 1px solid #d4d3d3;
            height: 47px;
            padding-left: 28px;
        }
        
        #input_1,
        #input_2,
        #input_3,
        #input_4 {
            letter-spacing: 1px;
            font-size: 11px;
            color: #353535;
            width: 143px;
            height: 28px;
            padding: 1px 4px 1px 4px;
            border-color: #d4d3d3;
            border-width: 1px;
            border-style: solid;
            outline: none;
        }
        
        #input_2 {
            letter-spacing: 0;
            width: 280px;
            height: 32px;
        }
        
        #input_3 {
            letter-spacing: 0;
            width: 105px;
            height: 32px;
        }
        
        #input_4 {
            letter-spacing: 0;
            width: 60px;
        }
        
        .btnSubmit {
            background-color: #555;
            width: 330px;
            height: 34px;
            display: block;
            color: white;
            font: 14px '맑은 고딕';
            padding: 16px 0 0 0;
            margin-top: 57px;
            margin-bottom: 120px;
        }
        
        .btnSubmit:hover {
            background: rgba(85, 85, 85, 0.838);
        }
    </style>
    <title>회원가입</title>
</head>
<!-- 고정 -->

<body style="margin:0;">
<form name=insert method=post action=joinDatabase.jsp >
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
    <div align="center" style="padding: 50px 0 7px 0;height: 237px;">
        <a href="main.jsp"><img src="image/title3.png" width="334px" onmouseover="over(this)" onmouseout="out(this)"></a>
    </div>
    <!-- 메뉴2 -->
    <div id="nav" style="margin: -131px 0 244px 82px;">
		<ul class="nav-menu clearfix unstyled">
			<li><a href="main.html" class="three-d"> Home <span
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

			<li><a href="review.html" class="three-d"> 리뷰 상품 <span
					class="three-d-box"><span class="front">리뷰 상품</span><span
						class="back">리뷰 상품</span></span>
			</a></li>
		</ul>
	</div>
    <!-- 고정끝 -->
    <!-- 고정 -->
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

                if ($(window).scrollTop() > 270) $('.top').fadeIn('slow'); // 100 픽셀을 초과하여 스크롤 된 다음 표시

                else $('.top').fadeOut('slow'); // 100 픽셀 이하인 경우 숨김

            });

            $('.top a').click(function() { // 

                $('html, body').animate({
                    scrollTop: 0
                }, 'slow');

                return false;

            });
        });
    </script>
    <!-- 고정끝 -->

    <!-- main -->
    <div style="width: 1300px; margin:0 auto;">
        <p>
            <div align="center" class="titleArea" style="margin:0 auto;">
                <strong>register</strong>
            </div>
            <p style="font:13px '맑은 고딕';float: left;padding-left: 7px;"><strong>기본정보</strong></p>

            <p style="font:11px '맑은 고딕';float: right; "><img src="image/ico_required_blue.gif " alt="필수 ">필수입력사항</p>
        </p>
        <div>
            <table border="0" style="width: 1300px; margin-top:45px;" class="user_data">
                <colgroup>
                    <col style="width:150px;">
                    <col style="width:auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <td style="border-left: none;">아이디 <img src="image/ico_required_blue.gif " alt="필수"></td>
                        <td style="border-right: none;"><input type="text" name="userid" > 아이디를 입력해 주세요. (영문소문자/숫자, 4~16자)
                        </td>
                    </tr>
                    <tr>
                        <td style="border-left: none;">비밀번호 <img src="image/ico_required_blue.gif " alt="필수"></td>
                        <td style="border-right: none;">
                            <div class="eTooltip">
                                <input type="password" name="password" maxlength="16"> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-left: none;">비밀번호 확인 <img src="image/ico_required_blue.gif " alt="필수"></td>
                        <td style="border-right: none;"><input type="password" name="passwordcheck" autocomplete="off" maxlength="16"> </td>
                    </tr>
                    <tr class="">
                        <td style="border-left: none;">비밀번호 확인 질문 <img src="image/ico_required_blue.gif " alt="필수"></td>
                        <td style="border-right: none;"><select name="question">
            <option value="기억에 남는 추억의 장소는?">기억에 남는 추억의 장소는?</option>
            <option value="자신의 인생 좌우명은?">자신의 인생 좌우명은?</option>
            <option value="자신의 보물 제1호는?">자신의 보물 제1호는?</option>
            <option value="가장 기억에 남는 선생님 성함은?">가장 기억에 남는 선생님 성함은?</option>
            <option value="타인이 모르는 자신만의 신체비밀이 있다면?">타인이 모르는 자신만의 신체비밀이 있다면?</option>
            <option value="추억하고 싶은 날짜가 있다면?">추억하고 싶은 날짜가 있다면?</option>
            <option value="받았던 선물 중 기억에 남는 독특한 선물은?">받았던 선물 중 기억에 남는 독특한 선물은?</option>
            <option value="유년시절 가장 생각나는 친구 이름은?">유년시절 가장 생각나는 친구 이름은?</option>
            <option value="인상 깊게 읽은 책 이름은?">인상 깊게 읽은 책 이름은?</option>
            <option value="읽은 책 중에서 좋아하는 구절이 있다면?">읽은 책 중에서 좋아하는 구절이 있다면?</option>
            <option value="자신이 두번째로 존경하는 인물은?">자신이 두번째로 존경하는 인물은?</option>
            <option value="친구들에게 공개하지 않은 어릴 적 별명이 있다면?">친구들에게 공개하지 않은 어릴 적 별명이 있다면?</option>
            <option value="초등학교 때 기억에 남는 짝꿍 이름은?">초등학교 때 기억에 남는 짝꿍 이름은?</option>
            <option value="다시 태어나면 되고 싶은 것은?">다시 태어나면 되고 싶은 것은?</option>
            <option value="내가 좋아하는 캐릭터는?">내가 좋아하는 캐릭터는?</option>
            </select></td>
                    </tr>
                    <tr>
                        <td style="border-left: none;">비밀번호 확인 답변 <img src="image/ico_required_blue.gif " alt="필수"></td>
                        <td style="border-right: none;"><input type="text" name="ansquestion" style="width: 550px;"></td>
                    </tr>
                    <tr>
                        <td style="border-left: none;">이름 <img src="image/ico_required_blue.gif " alt="필수"></td>
                        <td style="border-right: none;">
                            <input type="text" name="name" maxlength="20">

                        </td>
                    </tr>
                    <tr class="">
                        <td style="border-left: none;">주소 <img src="image/ico_required_blue.gif " class="" alt="필수"></td>
                        <td style="border-right: none;">
                            <input type="text" name="addr1" style="margin-top: 7px;" maxlength="14"> <a href="#none" class="button" style="background: #f5f3f3">우편번호</a><br>
                            <input type="text" name="addr2" style="width: 290px;margin-top: 7px;"> 기본주소<br>
                            <input type="text" name="addr3" style="width: 290px;margin: 7px 0;"> 나머지주소 </td>
                    </tr>
                    <tr class="">
                        <td style="border-left: none;">일반전화 <img src="image/ico_required_blue.gif " class="displaynone" alt="필수"></td>
                        <td style="border-right: none;"><select name="hometel">
            <option value="02">02</option>
            <option value="031">031</option>
            <option value="032">032</option>
            <option value="033">033</option>
            <option value="041">041</option>
            <option value="042">042</option>
            <option value="043">043</option>
            <option value="044">044</option>
            <option value="051">051</option>
            <option value="052">052</option>
            <option value="053">053</option>
            <option value="054">054</option>
            <option value="055">055</option>
            <option value="061">061</option>
            <option value="062">062</option>
            <option value="063">063</option>
            <option value="064">064</option>
            <option value="0502">0502</option>
            <option value="0503">0503</option>
            <option value="0504">0504</option>
            <option value="0505">0505</option>
            <option value="0506">0506</option>
            <option value="0507">0507</option>
            <option value="070">070</option>
            <option value="010">010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="017">017</option>
            <option value="018">018</option>
            <option value="019">019</option>
            </select> - <input type="text" name="hometel2" maxlength="4"> - <input type="text" name="hometel3" maxlength="4"></td>
                    </tr>
                    <tr class="">
                        <td style="border-left: none;">휴대전화 <img src="image/ico_required_blue.gif " class=" " alt="필수 "></td>
                        <td style="border-right: none; "><select name="tel">
            <option value="010">010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="017">017</option>
            <option value="018">018</option>
            <option value="019">019</option>
            </select> - <input type="text" name="tel2" maxlength="4" value=""> - <input type="text" name="tel3" maxlength="4"></td>
                    </tr>
                    <tr>
                        <td style="border-left: none; ">이메일 <img src="image/ico_required_blue.gif " alt="필수 "></td>
                        <td><input type="text" name="email"> @ <input type="text" name="email2"> 
                        </td>
                    </tr>

                </tbody>
            </table>
            <div align="center"><input type="submit" class="btnSubmit" value="회원가입" style="height: 59px;padding-top: 0px;"></div>
        </div>
    </div>

    <!-- main 끝-->

    <!-- 고정 정보들 -->
    <div style="background-color: rgba(239, 239, 239, 0.95);border: 1px solid #d4d3d3;height: 367px; margin: 0 auto;min-width: 1300px; margin-top:50px; ">

        <table style="width: 1300px;padding-top: 35px;margin: 0 auto; " border="0 ">
            <tr>
                <td style="padding:0 30px; width: 433px; ">
                    <h2 style="letter-spacing: 2px; ">고객지원센터</h2>
                    <h3 style="font-size: 24px; margin-bottom: 13px; ">1234-5678</h3>
                    <hr style="width:20px;height: 2px;float: left;background: black; margin:0; border: none; "><br><br>
                    <h2>계좌안내</h2>
                    <p class="p2 ">입금계좌</p>
                    <p class="p2 ">한림은행 666 - 777 - 888888</p>
                    <p class="p2 ">예금주: 한림대학교</p>
                    <p class="p2 ">------------------------------------------</p>
                    <p class="p2 ">교환/반품전용 택배비계좌</p>
                    <p class="p2 ">한림은행 444444 - 55 - 66666</p>
                    <p class="p2 ">예금주: 한림대학교</p>
                </td>
                <td style="width: 433px; ">
                    <div style="height:276px;padding:13px ">
                        <h2 style="letter-spacing: 2px; ">화사정보</h2>
                        <p class="p2 ">화사 : 데일리 </p>
                        <p class="p2 ">대표 : 정군</p>
                        <p class="p2 ">사업자번호 : [0000-33-00000]</p>
                        <p class="p2 ">메일 : gooni0906@gmail.com</p>
                        <p class="p2 ">주소 : 한림대학길1 한림대학교 학생생활관</p>
                        <br>
                        <hr style="width:20px;height: 2px;float: left;background: black; margin:0; border: none; "><br>
                        <h2 style="letter-spacing: 2px; ">배송/반품지원센터</h2>
                        <a href="https://www.cjlogistics.com/ko/main " class="button ">대한통운 택배</a>
                    </div>
                </td>
                <td style="padding:0 30px;border-left:1px solid #d4d3d3; ">
                    <div style="height:268px;width: 360px; margin: 0 auto; ">
                        <div style="border-bottom: 1px solid #aaa; ">
                            <div class="notice ">공지사항</div>
                        </div>
                        <div>
                            <ul class="notice_2" style="padding:0;margin-top: 9px; ">
                                <li><a href="notice.html" style="margin: 0; padding:0; color:#777">· 추석연휴 휴무 안내</li>
                                    <li><a href="notice.html" style="margin: 0; padding:0; color:#777">· 입고 자연 안내</li>
                                    <li><a href="notice.html" style="margin: 0; padding:0; color:#777">· 8.15 휴무 안내</li>
                                    <li><a href="notice.html" style="margin: 0; padding:0; color:#777">· 세일 안내</li>
                                    <li><a href="notice.html" style="margin: 0; padding:0; color:#777">· 8월 여름 휴가안내</li>
                                    <li><a href="notice.html" style="margin: 0; padding:0; color:#777">· 교환,반품 방법</li>
                            </ul>
                        </div>
                    </div>
                </td>

            </tr>

        </table>

    </div>
    <!-- 고정정보 끝 -->
    </form>
</body>
