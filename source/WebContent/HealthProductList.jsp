<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList, Project.FashionDatabase"%>
<%@page import="Project.Fashion"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <script src="title.js"></script>


    <style>
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
        
        .manu,
        .manu_2 {
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
        
        .table1,
        .t2 {
            text-align: center;
            width: 1224px;
            margin-top: 20px;
            background: #efe9dd;
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
        
        a,
        li {
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
        
        h2,
        h3 {
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
            background: #efe9dd;
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
            margin-top: 551px;
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
        
        .item {
            color: white;
            font: 12px 'Microsoft YaHei';
            letter-spacing: 1px;
            font-weight: bold;
            padding: 7px 0;
            width: 100%;
        }
        
        .page_change li {
            display: inline;
        }
        
        .page_change a {
            padding: 0 9px;
            font-size: 12px "맑은 고딕";
        }
    </style>
    <!-- <link rel="stylesheet" href="style.css"> -->
    <title>TOP</title>
</head>

<body style="margin:0;">
<jsp:useBean id="Cart" class="Project.CartDatabase" scope="page" />
<%
String bcnt = request.getParameter("cnt");
String category = request.getParameter("category");
int cnt=Integer.parseInt(bcnt);
FashionDatabase fashiondb = new FashionDatabase(); 
ArrayList<Fashion> list = fashiondb.getAlist("health", "chicken");
ArrayList<Fashion> list2 = fashiondb.getAlist("health", "salad");
ArrayList<Fashion> list3 = fashiondb.getAlist("cosmetics", "rice");
ArrayList<Fashion> list4 = fashiondb.getAlist("cosmetics", "diet");
%>
    <!-- 메뉴 -->
    <div class="manu">
        <div style=" max-width: 1300px;margin:0 auto;">
            <ul id="menubar" class="ul1" style="float: left;">
                <a href="login.html">로그인</a>|
                <a href="join.html">회원가입</a>|
                <a href="cart.html">장바구니</a>|
                <a href="order.html">주문조회</a>
            </ul>
            <ul class="ul2" style="float: right;">
                <table style="border-bottom: 1px solid #4a89dc;">
                    <tr>
                        <td><input id="search" value="" type="text" placeholder=" 찾기"></td>

                        <td>
                            <a style="padding: 0" href="#"><img src="image/search.png" width="17px"></a>
                        </td>
                    </tr>
                </table>

            </ul>
        </div>
    </div>
    <!-- 제목 -->
    <div align="center" style="padding: 50px 0 7px 0;height: 180px;">
        <a href="main.html"><img src="image/title.png" width="300px" onmouseover="over(this)" onmouseout="out(this)"></a>
    </div>
    <!-- 메뉴2 -->
    <div class="manu_2" style="position: static;background: #3585d8e6">
        <div align="center" style=" min-width: 1300px;margin:0 auto;">
            <div id="aaa" style="width: 1300px;">
                <ul id="menubar_2" class="ul1">
                    <a href="outer.html">패션 </a>
                    <a href="top.html">화장품 </a>
                    <a href="bottom.html">헬스케어 </a>
                    <a href="shoe.html">전자기기 </a>
                    <a href="acc.html">게임 </a>
                </ul>
            </div>
        </div>

    </div>

    <div align="center" class="titleArea" style="margin:0 auto;padding-bottom: 55px;border-bottom: 1px solid #d4d3d3;">
        <strong><%=category%></strong>
    </div>
    <div align="center" style="background-color: #555;width: 107px;height: 29px; margin: 30px auto 0 auto;">
        <div class="item">BEST ITEMS</div>
    </div>

    <!-- | 추천 | -->

    <div align="center" onmouseover="change()" onmouseout="turn()" style="margin-top: 33px;margin-bottom: 81px;">
        <a id="mainlink" href="top_1.html" style="width: 1300px;height:416px;padding: 0"><img id="img1" src="image/top_item_1.jpg" width="1300px">
            <div class="text" id="id_main">아페스 라운드 니트 ( 6color ) <br><br>KRW 35,000</div>
        </a>
    </div>

    <script>
        var img_1 = document.getElementById("img1")
        var a_1 = document.getElementById("mainlink")
        var div_1 = document.getElementById("id_main")
        var i = 1

        setInterval("timer()", 4000);
        //4초간격 바꿈
        function timer() {
            img_1.src = "image/top_item_" + i + ".jpg"
            a_1.href = "top_1.html"
            if (i == 1) {
                div_1.innerHTML = "아페스 라운드 니트 ( 6color ) <br><br>KRW 35,000</div>";
            }
            if (i == 2) { //3542
                div_1.innerHTML = "스왑 체크 셔츠 ( 2color ) <br><br>KRW 30,000</div>";
            }
            if (i == 3) {
                div_1.innerHTML = "온즈 린넨 스트라이프 티셔츠 ( 4color ) <br><br>KRW 28,000</div>";
            }

            i++
            if (i > 3) {
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

    <hr style="margin:0 auto;background: #d4d3d3;border: none;height: 1px; ">

    <div align="center" style="margin-bottom: 160px;margin-top: 60px;">
        <table style="width:1300px;text-align: center" border="0">
            <caption>
                <p id="p1" style="color: #333;"><strong>- NEW ARRIVAL -</strong></p>
            </caption>
            <tr>
                <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list.get(cnt+0).getId());%>&table=health"><img src="<%out.print(list.get(cnt+0).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list.get(cnt+0).getId());%>&table=health"><%out.print(list.get(cnt+0).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list.get(cnt+0).getPrice());%></div>
                    </div>
                </td>
                <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list.get(cnt+1).getId());%>&table=health"><img src="<%out.print(list.get(cnt+1).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list.get(cnt+1).getId());%>&table=health"><%out.print(list.get(cnt+1).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list.get(cnt+1).getPrice());%></div>
                    </div>
                </td>
                <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list.get(cnt+2).getId());%>&table=health"><img src="<%out.print(list.get(cnt+2).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list.get(cnt+2).getId());%>&table=health"><%out.print(list.get(cnt+2).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list.get(cnt+2).getPrice());%></div>
                    </div>
                </td>
               <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list.get(cnt+3).getId());%>&table=health"><img src="<%out.print(list.get(cnt+3).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list.get(cnt+3).getId());%>&table=health"><%out.print(list.get(cnt+3).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list.get(cnt+3).getPrice());%></div>
                    </div>
                </td>
            </tr>
            
            <tr>
                <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list2.get(cnt+0).getId());%>&table=health"><img src="<%out.print(list2.get(cnt+0).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list2.get(cnt+0).getId());%>&table=health"><%out.print(list2.get(cnt+0).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list2.get(cnt+0).getPrice());%></div>
                    </div>
                </td>
                <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list2.get(cnt+1).getId());%>&table=health"><img src="<%out.print(list2.get(cnt+1).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list2.get(cnt+1).getId());%>&table=health"><%out.print(list2.get(cnt+1).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list2.get(cnt+1).getPrice());%></div>
                    </div>
                </td>
                <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list2.get(cnt+2).getId());%>&table=health"><img src="<%out.print(list2.get(cnt+2).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list2.get(cnt+2).getId());%>&table=health"><%out.print(list2.get(cnt+2).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list2.get(cnt+2).getPrice());%></div>
                    </div>
                </td>
               <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list2.get(cnt+3).getId());%>&table=health"><img src="<%out.print(list2.get(cnt+3).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list2.get(cnt+3).getId());%>&table=health"><%out.print(list2.get(cnt+3).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list2.get(cnt+3).getPrice());%></div>
                    </div>
                </td>
            </tr>
            
            <tr>
                <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list3.get(cnt+0).getId());%>&table=health"><img src="<%out.print(list3.get(cnt+0).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list3.get(cnt+0).getId());%>&table=health"><%out.print(list3.get(cnt+0).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list3.get(cnt+0).getPrice());%></div>
                    </div>
                </td>
                <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list3.get(cnt+1).getId());%>&table=health"><img src="<%out.print(list3.get(cnt+1).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list3.get(cnt+1).getId());%>&table=health"><%out.print(list3.get(cnt+1).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list3.get(cnt+1).getPrice());%></div>
                    </div>
                </td>
                <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list3.get(cnt+2).getId());%>&table=health"><img src="<%out.print(list3.get(cnt+2).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list3.get(cnt+2).getId());%>&table=health"><%out.print(list3.get(cnt+2).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list3.get(cnt+2).getPrice());%></div>
                    </div>
                </td>
               <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list3.get(cnt+3).getId());%>&table=health"><img src="<%out.print(list3.get(cnt+3).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list3.get(cnt+3).getId());%>&table=health"><%out.print(list3.get(cnt+3).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list3.get(cnt+3).getPrice());%></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list4.get(cnt+0).getId());%>&table=health"><img src="<%out.print(list4.get(cnt+0).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list4.get(cnt+0).getId());%>&table=health"><%out.print(list4.get(cnt+0).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list4.get(cnt+0).getPrice());%></div>
                    </div>
                </td>
                <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list4.get(cnt+1).getId());%>&table=health"><img src="<%out.print(list4.get(cnt+1).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list4.get(cnt+1).getId());%>&table=health"><%out.print(list4.get(cnt+1).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list4.get(cnt+1).getPrice());%></div>
                    </div>
                </td>
                <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list4.get(cnt+2).getId());%>&table=health"><img src="<%out.print(list4.get(cnt+2).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list4.get(cnt+2).getId());%>&table=health"><%out.print(list4.get(cnt+2).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list4.get(cnt+2).getPrice());%></div>
                    </div>
                </td>
               <td id="newtd">
                    <a id="a2" href="Board.jsp?id=<%out.print(list4.get(cnt+3).getId());%>&table=health"><img src="<%out.print(list4.get(cnt+3).getMain_img());%>" id="imgnew"></a>
                    <div id="div1"><a href="Board.jsp?id=<%out.print(list4.get(cnt+3).getId());%>&table=health"><%out.print(list4.get(cnt+3).getName());%></a>
                        <div style="margin-top: 4px;"><%out.print(list4.get(cnt+3).getPrice());%></div>
                    </div>
                </td>
            </tr>

            </table>

        </div>

    </div>
    <!-- 고정 정보들 -->
    <div align="center" style="background-color: rgba(239, 239, 239, 0.95);border: 1px solid #d4d3d3;height: 367px; min-width: 1300px;">
        <table style="width: 1300px;padding-top: 35px" border="0">
            <tr>
                <td style="padding:0 30px; width: 433px;">
                    <h2 style="letter-spacing: 2px;">고객지원센터</h2>
                    <h3 style="font-size: 24px;  margin-bottom: 13px;">1234-5678</h3>
                    <hr style="width:20px;height: 2px;float: left;background: black; margin:0;"><br><br>
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
                    <div style="height:276px;padding:13px">
                        <h2 style="letter-spacing: 2px;">화사정보</h2>
                        <p id="p2">화사 : 데일리 </p>
                        <p id="p2">대표 : 정군</p>
                        <p id="p2">사업자번호 : [0000-33-00000]</p>
                        <p id="p2">메일 : gooni0906@gmail.com</p>
                        <p id="p2">주소 : 한림대학길1 한림대학교 학생생활관</p>
                        <br>
                        <hr style="width:20px;height: 2px;float: left;background: black; margin:0;"><br>
                        <h2 style="letter-spacing: 2px;">배송/반품지원센터</h2>
                        <a href="https://www.cjlogistics.com/ko/main" class="button">대한통운 택배</a>
                    </div>
                </td>
                <td style="padding:0 30px;border-left:1px solid #d4d3d3;">
                    <div style="height:268px;width: 360px; margin: 0 auto;">
                        <div style="border-bottom: 1px solid #aaa;">
                            <div class="notice">공지사항</div>
                        </div>
                        <div>
                            <ul style="padding:0;margin-top: 9px;">
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

</body>

</html>
