<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%   
	String id = (String) session.getAttribute("id"); 
%>
<!-- 로그인이 되어있는지 체크 -->
<%@ include file="../member/login/memberSessionChk.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- 폰트 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- css연결 -->
    <link rel="stylesheet" href="../css/main.css">
    <%--  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"> --%>
     <link href="<%= request.getContextPath() %>../../css/main.css" rel="stylesheet">
    <title>MarketKurly</title>
</head>
<body>
<!-- 회원가입, 로그인, 게시판 메뉴 -->
    <div id="container">
        <div id="header">
            <div id="userMemu"> 
                <ul class="list_menu">
                 <!-- <li class="join"><a href="../member/join/joinForm.jsp">회원가입</a></li> -->             
                 <li class="wellcom"  ><a href="../member/myPage.jsp?id=<%=id %>" style="color:#5f0080"><%=id %> 님 환영합니다♡</a></li>
                 <li class="login"><a href="../member/login/memberLogout.jsp">로그아웃</a></li>
                 <li class="info"><a href="../board/boardList.jsp" class="info_list"> 고객센터</a>
                    <img src="../image/icon/ico_down_8x5.png" alt="dropicon" class="drop_icon"> 
                 <ul class="link_list">
                        <li><a href="../board/boardList.jsp">공지사항</a></li>
                        <li><a href="../board/boardList.jsp">자주하는 질문</a></li>
                        <li><a href="../board/boardList.jsp">1:1문의</a></li>
                        <li><a href="../board/boardList.jsp">상품제안</a></li>
                        <li><a href="../board/boardList.jsp">에코포장 피드백</a></li>
                    </ul>
                 </li>
                </ul>    
            </div>         
        </div>
<!-- 로고  -->
          <div id="headerLogo">
            <div class="mainlogo">
                 <h1 class="logo">
                    <a href="main_Login.jsp" class="link_main">
                        <span id="gnbLogoContainer"></span>
                        <img src="../image/logo/cat_logo_small.png" alt="마켓컬리 로고" class="market_logo">
                     </a>
                 </h1>
                    <a href="/shop/board/view.php?id=notice&no=64" onclick="ga('send','event','etc','main_gif_btn_click');" class="bnr_delivery">
                    <img src="../image/icon/delivery_200323.gif" alt="수도권, 충청 샛별배송, 그 외 지역 택배배송" class="bnr_delivery02">
                    </a>
            </div>
        </div>
<!-- 카테고리 메뉴 -->
        <div id="inner_gnb">
            <div class="gnb_main">
                <ul class="gnb">
                     <li class="menu1">
                         <a href="#none">
                             <span class="icon"><img src="" alt=""></span>
                             <img src="../image/icon/ico_gnb_all.png" alt="" class="ham_icon">
                             <span class="txt">전체 카테고리</span>
                         </a>
                    </li>
                     <li class="menu2" >
                         <a href="">
                             <span class="txt">신상품</span>
                        </a>
                    </li>
                    <li class="menu3">
                         <a href="">
                             <span class="txt">베스트</span>
                        </a>
                     </li>
                    <li class="menu4">
                        <a href="">
                            <span class="txt">알뜰쇼핑</span>
                         </a>
                     </li>
                    <li class="menu5">
                        <a href="">
                             <span class="txt">특가/혜택</span>
                        </a>
                     </li>
                </ul>
<!-- 서치 검색창-->
                    <div id="side_search">
                        <input type="text" name="search" required="required" class="input_search">
                        <input type="image" src="../image/icon/ico_search_x2.png" class="search_icon">
                       
                    </div>
<!-- 지도, 장바구니아이콘 -->
                     <div id="#side_img">
                        <a href=""><img src="../image/icon/MAP.png" alt="지도" class="map_icon"></a>
                        <a href=""><img src="../image/icon/cart２.png" alt="장바구니" class="cart_icon"></a> 
                    </div>
             </div>
        </div>

<!--header 끝  -->
<!--main_container 시작  -->
<div id="main_wrapper">
    <div id="b_slider-wrap">
        <ul id="slider">
           <li>
              <div>
                  <h3>메인배너</h3>
                  <span>배너 슬라이드</span>
              </div>                
<img src="../image/ect/pc_img_1602809211.jpg">
           </li>
           
           <li>
              <div>
                  <h3>메인배너</h3>
                  <span>배너 슬라이드</span>
              </div>
<img src="../image/ect/pc_img_1620809262.jpg">
           </li>
           
           <li>
              <div>
                  <h3>메인배너</h3>
                  <span>배너 슬라이드</span>
              </div>
<img src="../image/ect/pc_img_1620808442.jpg">
           </li>
           
           <li>
              <div>
                  <h3>메인배너</h3>
                  <span>배너 슬라이드</span>
              </div>
<img src="../image/ect/pc_img_1620809262.jpg">
           </li>
           
           <li>
              <div>
                  <h3>메인배너</h3>
                  <span>배너 슬라이드</span>
              </div>
<img src="../image/ect/pc_img_1620352208.jpg">
           </li>

           <li>
            <div>
                <h3>메인배너</h3>
                <span>배너 슬라이드</span>
            </div>
<img src="../image/ect/pc_img_1621473283.jpg">
         </li>

         <li>
            <div>
                <h3>메인배너</h3>
                <span>배너 슬라이드</span>
            </div>
<img src="../image/ect/pc_img_1621409022.jpg">
         </li>
           
        </ul>
        
         <!--controls-->
        <div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
        <div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
        <!-- <div id="counter"></div> -->

        <!-- <div id="pagination-wrap"> (.... 아이콘?)-->
          <ul>
          </ul>
        </div>
     </div>
  </div>

<!-- 메인 배너 끝 -->

<!-- 메인 컨테이너 굿즈 시작 -->
  <!-- <div id="container-goods">   
      <div class="product_list">
          <div class="title_goods">
              <h3 class="name">
                  <span>이 상품 어때요?</span>
              </h3>
      <div id="goods">
        <div class="goods_list">
            <ul data-title="이 상품 어때요?" class="list-title" >
                <li><a class="thumb_googs"><img src="../image/goods/1527672401304l0.jpg" alt="상품 이미지" class="thumb"></a>
                <div class="info_goods">
                    <span class="name">
                        <a class="txt">[콜린스그린] 원데이 클렌즈(1일)</a>
                    </span>
                    <span class="price">
                        <span class="dc">26%</span>
                        "31,450원"
                        <span class="cost">42,500원</span>
                    </span>
                </div>
                </li>
            </ul>
        </div>
      </div>
    </div>
    </div> -->


  </div>





</div>
  


<!----------------------script ----------------------->

<script>
//current position
var pos = 0;
//number of slides
var totalSlides = $('#b_slider-wrap ul li').length;
//get the slide width
var sliderWidth = $('#b_slider-wrap').width();


$(document).ready(function(){
  /*****************
   BUILD THE SLIDER
  *****************/
  //set width to be 'x' times the number of slides
  $('#b_slider-wrap ul#slider').width(sliderWidth*totalSlides);
  
    //next slide  
  $('#next').click(function(){
    slideRight();
  });
  
  //previous slide
  $('#previous').click(function(){
    slideLeft();
  });
  
  
  
  /*************************
   //*> OPTIONAL SETTINGS
  ************************/
  //automatic slider
  var autoSlider = setInterval(slideRight, 3000);
  
  //for each slide 
  $.each($('#b_slider-wrap ul li'), function() { 

     //create a pagination
     var li = document.createElement('li');
     $('#pagination-wrap ul').append(li);    
  });
  
  //counter
  countSlides();
  
  //pagination
  pagination();
  
  //hide/show controls/btns when hover
  //pause automatic slide when hover
  $('#b_slider-wrap').hover(
    function(){ $(this).addClass('active'); clearInterval(autoSlider); }, 
    function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
  );
  
  

});//DOCUMENT READY
  


/***********
 SLIDE LEFT
************/
function slideLeft(){
  pos--;
  if(pos==-1){ pos = totalSlides-1; }
  $('#b_slider-wrap ul#slider').css('left', -(sliderWidth*pos));  
  
  //*> optional
  countSlides();
  pagination();
}


/************
 SLIDE RIGHT
*************/
function slideRight(){
  pos++;
  if(pos==totalSlides){ pos = 0; }
  $('#b_slider-wrap ul#slider').css('left', -(sliderWidth*pos)); 
  
  //*> optional 
  countSlides();
  pagination();
}



  
/************************
 //*> OPTIONAL SETTINGS -- 버튼 
************************/
function countSlides(){
  $('#counter').html(pos+1 + ' / ' + totalSlides);
}

function pagination(){
  $('#pagination-wrap ul li').removeClass('active');
  $('#pagination-wrap ul li:eq('+pos+')').addClass('active');
}

</script>



</body>
</html>