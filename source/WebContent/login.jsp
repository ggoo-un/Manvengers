<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Login</title>
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
            /* 메뉴 수정 끝 */
            
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
                width: 68px;
                padding: 5px 10px;
            }
            
            a,
            li {
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
            
            .button_2 {
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
            
            * {
                box-sizing: border-box;
            }
            
            body {
                font-family: Helvetica;
                background: white;
                -webkit-font-smoothing: antialiased;
            }
            
            hgroup {
                text-align: center;
                margin-top: 4em;
            }
            
            h1,
            h3 {
                font-weight: 300;
            }
            
            h1 {
                color: #636363;
            }
            
            h3 {
                color: #4a89dc;
            }
            
            form {
                width: 380px;
                margin: 4em auto;
                padding: 3em 2em 2em 2em;
                background: #fafafa;
                border: 1px solid #ebebeb;
                box-shadow: rgba(0, 0, 0, 0.14902) 0px 1px 1px 0px, rgba(0, 0, 0, 0.09804) 0px 1px 2px 0px;
            }
            
            .group {
                position: relative;
                margin-bottom: 45px;
            }
            
            input {
                font-size: 18px;
                padding: 10px 10px 10px 5px;
                -webkit-appearance: none;
                display: block;
                background: #fafafa;
                color: #636363;
                width: 100%;
                border: none;
                border-radius: 0;
                border-bottom: 1px solid #757575;
            }
            
            input:focus {
                outline: none;
            }
            /* Label */
            
            label {
                color: #999;
                font-size: 18px;
                font-weight: normal;
                position: absolute;
                pointer-events: none;
                left: 5px;
                top: 10px;
                transition: all 0.2s ease;
            }
            /* active */
            
            input:focus~label,
            input.used~label {
                top: -20px;
                transform: scale(.75);
                left: -2px;
                /* font-size: 14px; */
                color: #4a89dc;
            }
            /* Underline */
            
            .bar {
                position: relative;
                display: block;
                width: 100%;
            }
            
            .bar:before,
            .bar:after {
                content: '';
                height: 2px;
                width: 0;
                bottom: 1px;
                position: absolute;
                background: #4a89dc;
                transition: all 0.2s ease;
            }
            
            .bar:before {
                left: 50%;
            }
            
            .bar:after {
                right: 50%;
            }
            /* active */
            
            input:focus~.bar:before,
            input:focus~.bar:after {
                width: 50%;
            }
            /* Highlight */
            
            .highlight {
                position: absolute;
                height: 60%;
                width: 100px;
                top: 25%;
                left: 0;
                pointer-events: none;
                opacity: 0.5;
            }
            /* active */
            
            input:focus~.highlight {
                animation: inputHighlighter 0.3s ease;
            }
            /* Animations */
            
            @keyframes inputHighlighter {
                from {
                    background: #4a89dc;
                }
                to {
                    width: 0;
                    background: transparent;
                }
            }
            /* Button */
            
            .button {
                position: relative;
                display: inline-block;
                padding: 12px 24px;
                margin: .3em 0 1em 0;
                width: 100%;
                vertical-align: middle;
                color: #fff;
                font-size: 16px;
                line-height: 20px;
                -webkit-font-smoothing: antialiased;
                text-align: center;
                letter-spacing: 1px;
                background: transparent;
                border: 0;
                border-bottom: 2px solid #3160B6;
                cursor: pointer;
                transition: all 0.15s ease;
            }
            
            .button:focus {
                outline: 0;
            }
            /* Button modifiers */
            
            .buttonBlue {
                background: #4a89dc;
                text-shadow: 1px 1px 0 rgba(39, 110, 204, .5);
            }
            
            .buttonBlue:hover {
                background: #357bd8;
            }
            /* Ripples container */
            
            .ripples {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                overflow: hidden;
                background: transparent;
            }
            /* Ripples circle */
            
            .ripplesCircle {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                opacity: 0;
                width: 0;
                height: 0;
                border-radius: 50%;
                background: rgba(255, 255, 255, 0.25);
            }
            
            .ripples.is-active .ripplesCircle {
                animation: ripples .4s ease-in;
            }
            /* Ripples animation */
            
            @keyframes ripples {
                0% {
                    opacity: 0;
                }
                25% {
                    opacity: 1;
                }
                100% {
                    width: 200%;
                    padding-bottom: 200%;
                    opacity: 0;
                }
            }
            
            footer {
                text-align: center;
            }
            
            footer p {
                color: #888;
                font-size: 13px;
                letter-spacing: .4px;
            }
            
            footer a {
                color: #4a89dc;
                text-decoration: none;
                transition: all .2s ease;
            }
            
            footer a:hover {
                color: #666;
                text-decoration: underline;
            }
            
            footer img {
                width: 80px;
                transition: all .2s ease;
            }
            
            footer img:hover {
                opacity: .83;
            }
            
            footer img:focus,
            footer a:focus {
                outline: none;
            }
            
            .log:hover {
                color: #4a89dc;
            }
            
            .btnNormal {
                width: 314px;
                height: 44px;
                border-style: solid;
                border-color: #777;
                border-width: 1px;
                font: 14px '맑은 고딕';
                display: block;
                padding: 13px 0 0 0;
            }
            
            .btnNormal:hover {
                color: #4a89dc;
            }
            
            a,
            li {
                font: 12px "Microsoft YaHei";
            }
            
            a {
                text-decoration: none;
                color: #333;
                padding: 0 10px;
            }
        </style>
    </head>


    <!-- 고정 -->

    <body style="margin:0;">

        <!-- 메뉴 -->
        <!-- 메뉴 -->
    <nav id="nav-1">
    <a class="link-1" >
			<% 
			String name = (String) session.getAttribute("name");
			if (name!=null) {
					out.print(name + " 님, 환영합니다  ");%></a>
					
			<a class="link-1" href="login.jsp">로그아웃 </a>
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
        <script>
        $(window, document, undefined).ready(function() {

            $('input').blur(function() {
                var $this = $(this);
                if ($this.val())
                    $this.addClass('used');
                else
                    $this.removeClass('used');
            });

            var $ripples = $('.ripples');

            $ripples.on('click.Ripples', function(e) {

                var $this = $(this);
                var $offset = $this.parent().offset();
                var $circle = $this.find('.ripplesCircle');

                var x = e.pageX - $offset.left;
                var y = e.pageY - $offset.top;

                $circle.css({
                    top: y + 'px',
                    left: x + 'px'
                });

                $this.addClass('is-active');

            });

            $ripples.on('animationend webkitAnimationEnd mozAnimationEnd oanimationend MSAnimationEnd', function(e) {
                $(this).removeClass('is-active');
            });

        });</script>
        <!-- 고정끝 -->
        <hgroup style="margin-top: 300px;">
            <h1>LOG IN</h1>
            <h3 style="font-size: 16px; color: #4a89dc">가입하신 아이디와 패스워드를 입력해주세요.</h3>
        </hgroup>
        <form style="margin-bottom: 120px;" name=login method=post action=loginDatabase.jsp>
            <div class="group">
                <input type="text" name="member_id"><span class="highlight"></span><span class="bar"></span>
                <label>ID</label>
            </div>
            <div class="group">
                <input type="password" name="member_pw"><span class="highlight"></span><span class="bar"></span>
                <label>PASSWORD</label>
            </div>

            <div align="center" style="margin-bottom: 49px;">
                <ul style="padding-left: 0px;margin: 0 0 6px 0">
                    <button type="submit" class="button buttonBlue" value="로그인">로그인
                            <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
                  </button>
                </ul>
                <ul style="padding: 0;margin: 0; ">
                    <li>
                        <div><a href="join.jsp " class="btnNormal ">회원가입하기</a></div>
                    </li>
                </ul>
            </div>
            <div align="center ">
                <a href="find.jsp " class="log">아이디/비밀번호찾기</a>
            </div>
        </form>
        <!-- 고정 정보들 -->
        <div style="background-color: rgba(239, 239, 239, 0.95);border: 1px solid #d4d3d3;height: 367px; margin: 0 auto;min-width: 1300px; margin-top:50px; ">

            <table style="width: 1300px;padding-top: 35px;margin: 0 auto; " border="0 ">
                <tr>
                    <td style="padding:0 30px; width: 433px; ">
                        <h2 style="letter-spacing: 2px; ">고객지원센터</h2>
                        <h3 style="font-size: 24px; margin-bottom: 13px; color: #666 ">1234-5678</h3>
                        <hr style="width:20px;height: 2px;float: left;background: black; margin:0; border: none;"><br><br>
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
                            <hr style="width:20px;height: 2px;float: left;background: black; margin:0; border: none;"><br>
                            <h2 style="letter-spacing: 2px; ">배송/반품지원센터</h2>
                            <a href="https://www.cjlogistics.com/ko/main " class="button_2">대한통운 택배</a>
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
    </body>

</html>