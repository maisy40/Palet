<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Page</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/admin/admin.css">

<style>
    @media (max-width : 768px){
		.sidebar {
			position : static;
			height : auto;
		}
		
		.top-navbar {
			position : static;
		}
	}
</style>
</head>
<body style="overflow-x:hidden;">
<!-- <div class="container "> -->
    <nav class="navbar navbar-expand-md  navbar-light"> 
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#sidebar"
        		aria-controls="sidebar" aria-expanded="false"
							aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="sidebar">
            <div class="container-fluid">
                <div class="row">
                    <!-- sidebar 3grid open -->
                    <!-- sidebar class name for css, fixed-->
                    <div class="col-xl-2 col-lg-3 col-md-3 col-12 sidebar ml-auto fixed-top">
                        <!-- 최상단 로고 위치 텍스트/이미지 형태 -->
                        <a href="/" class="navbar-brand text-black text-center d-block mx-auto py-3 mb-4 bottom-border" ><img src="/images/Logo.svg"> </a> 
                        <!-- admin 계정정보 나타내는 모습 -->
                        <div class="bottom-border pb-3 text-center"> <!-- 중앙정렬 시킴-->
                            <img src="/images/sample.png" alt="" width="50" class="rounded-circle mr-3" > <!-- 이미지 라운드효과-->
                            <a href="#" class="text-black body1 py-2">ADMIN</a>
                        </div>
                        <!-- 하위 메뉴 구성 -->
                        <ul class="navbar-nav flex-column mt-4">
                            <li class="nav-item">
                                <a href="/admin/adminMain" class="nav-link text-black p-3 mb-2 sidebar-link"> <!-- 선택된 효과 -->
                                    <i class="bi bi-palette text-black "></i> Dashboard
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminMembers?cpage=1" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-people text-black fa-lg mr-3"></i> Members
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminExhibitions" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-easel text-black fa-lg mr-3"></i> Exhibitions
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminGoods" class="nav-link text-black p-3 mb-2 current">
                                    <i class="bi bi-gift text-black fa-lg mr-3"></i> Goods
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminProgram" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-columns-gap text-black fa-lg mr-3"></i> Programs
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminPayment?cpage=1" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-cash-coin text-black fa-lg mr-3"></i> Payment
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminCoupon?cpage=1" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-ticket-perforated text-black fa-lg mr-3"></i> Coupons
                                </a>
                            </li>
                            <!-- <li class="nav-item">
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-folder text-black fa-lg mr-3"></i> FNQ(QNA)
                                </a>
                            </li>                            
                            <li class="nav-item">
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-wrench-adjustable text-black fa-lg mr-3"></i> Settings
                                </a>
                            </li> -->

                        </ul>
                        
                    </div>
                    <!-- sidebar end -->

                    <!-- main navi 9 grid open -->
                    
                    <div class="col-xl-10 col-lg-9 bg-dark fixed-top py-2 top-navbar">
                        <div class="row align-items-center">
                            <div class="col-md-4">
                                <div class="text-align text-uppercase mb-0 text-white h3">Goods</div>
                            </div>
                            <div class="col-md-5">
                                <!-- <form action="">
                                    <div class="searchBox">
                                        <input type="text" class="searchInput" placeholder="Search">
                                        <button type="button" class="btn btn-light searchBtn">
                                            <i class="bi bi-search"></i>
                                        </button>
                                    </div>
                                </form> -->
                            </div>
                            <div class="col-md-3">
                                <ul class="navbar-nav">
                                    <!-- <li class="nav-item icon-parent">
                                        <a href="#" class="nav-link icon-bullet text-white">
                                            <i class="bi bi-house"></i>
                                        </a>
                                    </li>
                                    <li class="nav-item icon-parent">
                                        <a href="#" class="nav-link icon-bullet text-white">
                                            <i class="bi bi-bell"></i>
                                        </a>
                                    </li> -->
                                    <li class="nav-item icon-parent ml-md-auto">
                                        <a href="/" class="nav-link icon-bullet text-warning">
                                            <i class="bi bi-box-arrow-up-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- navibar close -->
    
    <!-- main contents -->
    
    <section>
        <div class="container-fluid">
            <div class="row">    
            	<div class="col-xl-10 col-lg-9 col-md-8 ml-auto" id="dashMain"> <!-- 추후CSS작업 시 바뀔이름 -->
            		<div class="row" style="margin-top: 5rem">
                		<div class="col-12 h3_1 px-5" style="text-align:left"> <img src="/images/minus.png"> Goods Detail </div>
                		<div class="col-12 body2 colortext_gray600 px-5" >  : '${gdto.g_name}' 상세 페이지 입니다. </div>
                	</div>   
            		<div class="row" style="margin-top: 1rem" id="roundboxParent">
                		<div class="col-12" id="roundbox">
                			<div class="row pt-3">
                				<div class="col-12">
                					<img type='button' class='leftbutton' src="/images/leftbutton.png">
                				</div>
							</div>                			
			            	<form action="/admin/adminGoodsUpdate" method="post">
			            	<div class="row pt-4 m-3 mb-4">
			            		<div class="col-12 d-none d-lg-block h3_1 m-auto" style="width:60%" >Information</div>
			            		<div class="col-12 d-lg-none h3_1 m-auto" style="width:85%" >Information</div>
			            			<div class="row">
			            				<div class="col-12 d-none d-lg-block body1 m-auto" style="width:60%" >- ${gdto.g_name }</div>
			            				<div class="col-12 d-lg-none body1 m-auto" style="width:85%" >- ${gdto.g_name }</div>
			            			</div>			            		
			            		<div class="col-12 d-none d-lg-block body2 m-auto memberBtns" style="width:60%; text-align:right" >
			            			<button class='btn0_1 color_yellow2' type="button" id='modifyMember' >수정</button>
<!-- 			            			<button class='btn0_1 color_red2' type="button" id='deleteMember' >삭제</button> -->
			            		</div>
			            		<div class="col-12 d-lg-none body2 m-auto memberBtns" style="width:85%; text-align:right" >
			            			<button class='btn0_2 color_yellow2' type="button" id='modifyMember2' >수정</button>
<!-- 			            			<button class='btn0_2 color_red2' type="button" id='deleteMember2' >삭제</button> -->
			            		</div>
			            	</div>
			            	<div class="row" >
			            		<div class="col-12 d-none d-lg-block h3_3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left">E_name </div>
			            		<div class="col-12 d-lg-none h3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left">E_name</div>
			            	</div>	
			           		<div class="row" style="text-align:center">
			           			<div class="col-12 d-none d-lg-block mt-3 body1" ><input type='text' value='${gdto.pe_name }' disabled style="width:50%; text-align:center"></div>
			           			<div class="col-12 d-lg-none mt-3 body1" ><input type='text' value='${gdto.pe_name }' disabled style="width:70%; text-align:center"></div>
			           			<input type='hidden' name='e_name' value='${gdto.pe_name }'>			           			
			           		</div>
			            	<div class="row">
			            		<div class="col-12 d-none d-lg-block h3_3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left">G_Name</div>
			            		<div class="col-12 d-lg-none h3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left">G_Name</div>
			            	</div>	
			           		<div class="row" style="text-align:center">
			           			<div class="col-12 d-none d-lg-block mt-3 body1 "><input type='text' name='g_name' value='${gdto.g_name }' class='edit' disabled style="width:50%; text-align:center" maxlength="8"></div>
			           			<div class="col-12 d-lg-none mt-3 body1 "><input type='text' name='g_name' value='${gdto.g_name }' class='editable' disabled style="width:70%; text-align:center" maxlength="8"></div>
			           			<input type="hidden" name="g_num" value="${gdto.g_num }">
			           			<input type="hidden" name="e_num" value="${gdto.e_num }">
			           		</div>
			            	<div class="row" >
			            		<div class="col-12 d-none d-lg-block h3_3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left">Stock </div>
			            		<div class="col-12 d-lg-none h3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left">Stock</div>
			            	</div>	
			           		<div class="row" style="text-align:center">
			           			<div class="col-12 d-none d-lg-block mt-3 body1" ><input type='text' name='g_stock' id="gstock1" class='edit' value='${gdto.g_stock }' disabled style="width:50%; text-align:center" maxlength="7"
			           			oninput="this.value = this.value.replace(/[^\d]/g, '').replace(/(\..*)\./g, '$1');"></div>
			           			<div class="col-12 d-lg-none mt-3 body1" ><input type='text' name='g_stock' id="gstock2" class='editable' value='${gdto.g_stock }' disabled style="width:70%; text-align:center" maxlength="7"
			           			oninput="this.value = this.value.replace(/[^\d]/g, '').replace(/(\..*)\./g, '$1');"></div>			           			
			           		</div>
			           		<div class="row">
			           			<div class="col-12 d-none d-lg-block h3_3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left">Price</div>
			           			<div class="col-12 d-lg-none h3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left">Price</div>
			           		</div>
			           		<div class="row" style="text-align:center">
			           			<div class="col-12 d-none d-lg-block mt-3 body1 "><input type='text' name='g_price' id="gprice1" class='edit' value='${gdto.g_price }' disabled style="width:50%; text-align:center" maxlength="10"
			           			oninput="this.value = this.value.replace(/[^\d]/g, '').replace(/(\..*)\./g, '$1');"></div>
			           			<div class="col-12 d-lg-none mt-3 body1 "><input type='text' name='g_price' id="gprice2 "class='editable' value='${gdto.g_price }' disabled style="width:70%; text-align:center" maxlength="10"
			           			oninput="this.value = this.value.replace(/[^\d]/g, '').replace(/(\..*)\./g, '$1');"></div>
			           		</div>
			           		<div class="row">
			           			<div class="col-12 d-none d-lg-block h3_3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left"> Option</div>
			           			<div class="col-12 d-lg-none h3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left"> Option</div>  
			           		</div>
			           		<div class="row" style="text-align:center">
			           			<div class="col-12 d-none d-lg-block mt-3 body1"><input type='text' value='${gdto.g_option }' disabled style="width:50%; text-align:center"></div>
			           			<div class="col-12 d-lg-none mt-3 body1"><input type='text' value='${gdto.g_option }' disabled style="width:70%; text-align:center"></div>
			           			<input type='hidden' name='g_option' value="${gdto.g_option }">
			           		</div> 			           		
			           		<div class="row">
			           			<div class="col-12 d-none d-lg-block h3_3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left">Total Sales </div>
			           			<div class="col-12 d-lg-none h3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left">Total Sales </div>
			           		</div>
			           		<div class="row" style="text-align:center">
			           			<div class="col-12 d-none d-lg-block mt-3 body1"><input type='text' value='${gdto.sales_count }' disabled style="width:50%; text-align:center"></div>
			           			<div class="col-12 d-lg-none mt-3 body1"><input type='text' value='${gdto.sales_count }' disabled style="width:70%; text-align:center"></div>
			           			<input type='hidden' name='sales_count' value="${gdto.sales_count }">
			           		</div>
			           		</form>		  
			           		
			           		<div class="row">
				           		<div class="col-12 p-3">
				                	<div class="">
				                	</div>	
				                </div>            	
			            	</div>
            			</div>
            		</div>
            	</div>
            </div>
        </div>
    </section>
	
	<section>
		<div class="container-fluid">
			<div class="row ml-auto" id="footerbox" style="margin-top: 8rem;">
	            <div class="col-xl-10 col-lg-9 col-md-8 ml-auto" id="footMain1">
	                <div class="row ml-auto">
	                    <div class="col-12 h3 " style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
	                    <div class="col-12 body2 " style = "color: #637381;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
	                    <div class="col-12 body2 " style = "color: #637381; margin-bottom: 3.75rem;">3호선 경복궁역 지하 1층 | contact@palet.com</div>
	
	                </div>
	            </div>
	        </div>
		</div>
	</section>

<script>
$("#modifyMember").on("click", ()=>{
	$(".edit").removeAttr("disabled");
	$("#modifyMember").css("display", "none");
	$("#deleteMember").css("display", "none");
	let ok = $("<button>");
	ok.text("수정완료");
	ok.attr("class","btn0_1 color_yellow2");
	ok.attr("type", "submit");
	
	let cancel = $("<button>");
	cancel.text("취소");
	cancel.attr("type","button");
	cancel.attr("class","btn0_1 colre_gray400");
	cancel.on("click", ()=>{
		location.reload();
	})
	
	$(".memberBtns").append(ok);
	$(".memberBtns").append(cancel);
	
});

$("#modifyMember2").on("click", ()=>{
	$(".editable").removeAttr("disabled");
	$("#modifyMember2").css("display", "none");
	$("#deleteMember2").css("display", "none");
	let ok = $("<button>");
	ok.text("수정완료");
	ok.attr("class","btn0_1 color_yellow2");
	ok.attr("type", "submit");
	
	let cancel = $("<button>");
	cancel.text("취소");
	cancel.attr("type","button");
	cancel.attr("class","btn0_1 colre_gray400");
	cancel.on("click", ()=>{
		location.reload();
	})
	
	$(".memberBtns").append(ok);
	$(".memberBtns").append(cancel);
	
});

	let price1val = $("#gprice1").val();
	
	$("#gprice1").on("change", ()=>{
		let text = $("#gprice1").val();
		if (text.length == 0){
			alert("내용을 입력해주세요.")
			$("#gprice1").val(price1val);
			$("#gprice1").focus();
			
		}
	})
	
	let price2val = $("#gprice2").val();
	
	$("#gprice2").on("change", ()=>{
		let text = $("#gprice2").val();
		if (text.length == 0){
			alert("내용을 입력해주세요.")
			$("#gprice2").val(price2val);
			$("#gprice2").focus();
			
		}
	})


	let stock1val = $("#gstock1").val();
	
	$("#gstock1").on("change", ()=>{
		let text = $("#gstock1").val();
		if (text.length == 0){
			alert("내용을 입력해주세요.")
			$("#gstock1").val(stock1val);
			$("#gstock1").focus();
			
		}
	})
	
	let stock2val = $("#gstock2").val();
	
	$("#gstock2").on("change", ()=>{
		let text = $("#gstock2").val();
		if (text.length == 0){
			alert("내용을 입력해주세요.")
			$("#gstock2").val(stock2val);
			$("#gstock2").focus();
			
		}
	})



$(".leftbutton").on("click", function() {

	location.href = "/admin/adminGoodsList?cpage=1";
})

    let cnt =0;
    $(".navbar-toggler").on("click",function(){
       cnt ++;
       if(cnt>1){
       $(".navbar-collapse").toggle();
       }
    })

    
</script>
    

</body>
</html>