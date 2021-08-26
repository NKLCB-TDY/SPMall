<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>가즈아아</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header/header.css">
	
</head>
<body>

	<div class="wrap">
		<header id="header">
			<div class="top">
				<h1>
					<a href="/"> <img src="" alt="메인로고" width="140px">
					</a>
				</h1>

				<ul class="toplink">
					<li><a href="/">회원가입<em>(<font
								style="color: #ff7d9e;">+ 500 백원</font>)
						</em></a></li>
					<li><a href="/">고객센터</a></li>
					<li><a href="">
							<div class="login-btn">
								<span>로그인</span>
							</div>
					</a></li>
					<li><a href="/">장바구니</a></li>
					<li><a href="/">고객센터</a></li>
				</ul>



				<div class="search">
					<form name="search" action="/shop/search.php" method="get"
						onsubmit="return searchCheck(this)">
						<fieldset>
							<div class="inform">
								<input type="hidden" name="searchOrder" value=""> <input
									type="text" title="검색어를 입력하세요" id="keyword" name="keyword"
									value="" autocomplete="off" class="ui-autocomplete-input">
								<button type="submit" class="btn-search">검색</button>
							</div>
						</fieldset>
					</form>
				</div>

				<ul class="mymenu">
					<!--
                    <li class="l1"><a href="/"><img
                                src="https://img.sonyunara.com/2020/asset/pc/img/common/header/my_icon1.png" alt="출첵"
                                class="icon"><strong>출첵</strong></a></li>
                    <li class="l2"><a href="/member/wish.php"><img
                                src="https://img.sonyunara.com/2020/asset/pc/img/common/header/my_icon2.png" alt="좋아요"
                                class="icon"><strong>좋아요</strong></a></li> -->

					<li class="l3" style="margin-left: 23px;"><a
						href="/member/cart.php"><img
							src="https://img.sonyunara.com/2020/asset/pc/img/common/header/my_icon3.png"
							alt="장바구니" class="icon"
							style="margin-left: -19px; margin-top: 0px;"><strong>장바구니</strong></a>
						<span>0</span></li>
					<li class="l4">
						<div class="table">
							<div class="wrap" style="top: -58px;">
								<div>
									<a href="/shop/search.php?searchOrder=&amp;keyword=크롭"
										target="_self"> <strong>1.</strong> 크롭
									</a>
								</div>
								<div>
									<a href="/shop/new.php" target="_self"> <strong>2.</strong>
										가을신상
									</a>
								</div>
								<div>
									<a href="/shop/search.php?searchOrder=1&amp;keyword=세트"
										target="_self"> <strong>3.</strong> SET
									</a>
								</div>
								<div>
									<a href="/shop/search.php?searchOrder=1&amp;keyword=오버핏"
										target="_self"> <strong>4.</strong> 오버핏
									</a>
								</div>
								<div>
									<a href="/shop/list.php?page=1&amp;cate=010403" target="_self">
										<strong>5.</strong> 후드집업
									</a>
								</div>
								<div>
									<a href="/shop/list.php?cate=0103" target="_self"> <strong>6.</strong>
										원피스
									</a>
								</div>
								<div>
									<a href="/shop/list.php?cate=010201" target="_self"> <strong>7.</strong>
										셔츠
									</a>
								</div>
								<div>
									<a href="/shop/search.php?searchOrder=2&amp;keyword=키작녀"
										target="_self"> <strong>8.</strong> 키작녀
									</a>
								</div>
								<div>
									<a href="/shop/list.php?cate=0105" target="_self"> <strong>9.</strong>
										트레이닝
									</a>
								</div>
								<div>
									<a href="/shop/search.php?searchOrder=&amp;keyword=슬랙스"
										target="_self"> <strong>10.</strong> 슬랙스
									</a>
								</div>
								<div>
									<a href="/shop/search.php?searchOrder=&amp;keyword=크롭"
										target="_self"> <strong>1.</strong> 크롭
									</a>
								</div>
							</div>
						</div>
						<button type="button">
							<i class="fa fa-caret-down"></i>
						</button>
						<div class="popular-search-ward" style="display: none;">
							<table>
								<caption>인기검색어</caption>
								<tbody>
									<tr class="rank">
										<td><strong>1.</strong><a
											href="/shop/search.php?searchOrder=&amp;keyword=크롭"
											target="_self">크롭</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>999</small>
										</td>
									</tr>
									<tr class="rank">
										<td><strong>2.</strong><a href="/shop/new.php"
											target="_self">가을신상</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>NEW</small>
										</td>
									</tr>
									<tr class="rank">
										<td><strong>3.</strong><a
											href="/shop/search.php?searchOrder=1&amp;keyword=세트"
											target="_self">SET</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>951</small>
										</td>
									</tr>
									<tr>
										<td><strong>4.</strong><a
											href="/shop/search.php?searchOrder=1&amp;keyword=오버핏"
											target="_self">오버핏</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>911</small>
										</td>
									</tr>
									<tr>
										<td><strong>5.</strong><a
											href="/shop/list.php?page=1&amp;cate=010403" target="_self">후드집업</a>
										</td>
										<td class="up"><small><i class="fa fa-caret-up"></i>급상승</small>
										</td>
									</tr>
									<tr>
										<td><strong>6.</strong><a href="/shop/list.php?cate=0103"
											target="_self">원피스</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>866</small>
										</td>
									</tr>
									<tr>
										<td><strong>7.</strong><a
											href="/shop/list.php?cate=010201" target="_self">셔츠</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>847</small>
										</td>
									</tr>
									<tr>
										<td><strong>8.</strong><a
											href="/shop/search.php?searchOrder=2&amp;keyword=키작녀"
											target="_self">키작녀</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>782</small>
										</td>
									</tr>
									<tr>
										<td><strong>9.</strong><a href="/shop/list.php?cate=0105"
											target="_self">트레이닝</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>755</small>
										</td>
									</tr>
									<tr>
										<td><strong>10.</strong><a
											href="/shop/search.php?searchOrder=&amp;keyword=슬랙스"
											target="_self">슬랙스</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>NEW</small>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</li>
				</ul>
				<!-- //mymenu -->
			</div>
			<!-- //top -->

			<nav id="gnb" class="bottom">
				<button type="button" class="btn-all" id="btnAll">
					<span>전체메뉴</span>
				</button>
				<div id="allMenu">
					<div class="box">
						<ul class="list import">
							<li><a href="/shop/new.php">신상</a></li>
							<li><a href="/shop/best.php">베스트</a></li>
							<li><a href="/shop/delivery.php">오늘출발</a></li>
							<li><a href="/shop/list.php?cate=3001">득템찬스</a></li>
						</ul>
						<div class="list-wrap">
							<h2>소호샵</h2>
							<ul>
								<li><a href="/shop/list.php?cate=0104">아우터</a></li>
								<li><a href="/shop/list.php?cate=0101">상의</a></li>
								<li><a href="/shop/list.php?cate=0102">셔츠/블라우스</a></li>
								<li><a href="/shop/list.php?cate=0105">트레이닝/홈웨어</a></li>
								<li><a href="/shop/list.php?cate=0407">베이직</a></li>
								<li><a href="/shop/list.php?cate=0103">원피스</a></li>
								<li><a href="/shop/list.php?cate=0202">스커트</a></li>
								<li><a href="/shop/list.php?cate=0201">팬츠/데님</a></li>
								<li><a href="/shop/list.php?cate=0601">가방</a></li>
								<li><a href="/shop/list.php?cate=0501">신발</a></li>
								<li><a href="/shop/list.php?cate=0701">악세사리</a></li>
								<li><a href="/shop/list.php?cate=0301">소나라벨</a></li>
							</ul>
						</div>
						<div class="list-wrap">
							<h2>커뮤니티</h2>
							<ul>
								<li><a href="/shop/list_promotion.php">기획전</a></li>
								<li><a href="/event/list.php">이벤트</a></li>
								<li><a href="/board/list.php?boardid=event_notice">이벤트
										당첨자발표</a></li>
								<li><a href="/board/list.php?boardid=event_after">이벤트
										당첨후기</a></li>
								<li><a href="/member/attend.php">출석체크</a></li>
								<li><a href="/review/review_index.php">소나후기</a></li>
								<li><a href="/review/review_muse.php">뮤즈후기</a></li>
							</ul>
						</div>
						<div class="list-wrap">
							<h2>마이페이지</h2>
							<ul>
								<li><a href="/member/order.php">주문배송</a></li>
								<li><a href="/member/cart.php">장바구니</a></li>
								<li><a href="/member/coupon.php">적립금/쿠폰</a></li>
								<li><a href="/member/order.php">교환/반품신청</a></li>
								<li><a href="/member/wish.php">좋아요</a></li>
							</ul>
						</div>
						<div class="list-wrap">
							<h2>고객센터</h2>
							<ul>
								<li><a href="/board/list.php?boardid=csnotice">공지사항</a></li>
								<li><a href="/cs/index.php">자주묻는 질문</a></li>
								<li><a href="/cs/inquiry.php">1:1문의하기</a></li>
								<li><a href="/member/search_id_pw.php">아이디/비번찾기</a></li>
								<li><a href="/member/login.php">비회원 주문조회</a></li>
								<li><a href="/cs/inquiry_no.php">비회원 문의</a></li>
							</ul>
						</div>
					</div>
					<!-- //box -->
				</div>
				<!-- //allMenu -->

				<ul class="menu">
					<li style="color: #9F3FF8;"><a href="/shop/best.php">베스트<span
							class="over" style="display: none; opacity: 1;">베스트</span></a></li>
					<li style="color: #FF416F;"><a href="/shop/new.php">신상<span
							class="over" style="display: none; opacity: 1;">신상</span></a></li>
					<li><a href="/shop/list.php?cate=0104">아우터<span
							class="over">아우터</span></a>
						<ul class="sub">
							<li><a href="/shop/list.php?cate=010401">가디건/조끼</a></li>
							<li><a href="/shop/list.php?cate=010403">야상/점퍼</a></li>
							<li><a href="/shop/list.php?cate=010404">자켓/코트</a></li>
							<li><a href="/shop/list.php?cate=010405">패딩</a></li>
							<li><a href="/shop/list.php?cate=010406">플리스</a></li>
						</ul></li>
					<li><a href="/shop/list.php?cate=0101">상의<span
							class="over">상의</span></a>
						<ul class="sub">
							<li><a href="/shop/list.php?cate=010102">긴팔티셔츠</a></li>
							<li><a href="/shop/list.php?cate=010104">맨투맨</a></li>
							<li><a href="/shop/list.php?cate=010103">후드</a></li>
							<li><a href="/shop/list.php?cate=010101">반팔/민소매티셔츠</a></li>
							<li><a href="/shop/list.php?cate=010105">니트</a></li>
						</ul></li>
					<li><a href="/shop/list.php?cate=0102">셔츠/블라우스<span
							class="over">셔츠/블라우스</span></a></li>
					<li><a href="/shop/list.php?cate=0105">트레이닝<span
							class="over">트레이닝</span></a></li>
					<li><a href="/shop/list.php?cate=0407">베이직<span
							class="over">베이직</span></a></li>
					<li><a href="/shop/list.php?cate=0103">원피스<span
							class="over">원피스</span></a></li>
					<li><a href="/shop/list.php?cate=0202">스커트<span
							class="over">스커트</span></a></li>
					<li><a href="/shop/list.php?cate=0201">팬츠<span
							class="over">팬츠</span></a>
						<ul class="sub">
							<li><a href="/shop/list.php?cate=020103">청바지</a></li>
							<li><a href="/shop/list.php?cate=020102">롱팬츠</a></li>
							<li><a href="/shop/list.php?cate=020104">면바지</a></li>
							<li><a href="/shop/list.php?cate=020106">슬랙스</a></li>
							<li><a href="/shop/list.php?cate=020105">레깅스</a></li>
							<li><a href="/shop/list.php?cate=020101">숏팬츠</a></li>
						</ul></li>
					<li><a href="/shop/list.php?cate=0601">가방<span
							class="over">가방</span></a>
						<ul class="sub">
							<li><a href="/shop/list.php?cate=060101">백팩/스쿨백</a></li>
							<li><a href="/shop/list.php?cate=060102">크로스/토트백</a></li>
						</ul></li>
					<li><a href="/shop/list.php?cate=0501">신발<span
							class="over">신발</span></a>
						<ul class="sub">
							<li><a href="/shop/list.php?cate=050101">운동화/단화</a></li>
							<li><a href="/shop/list.php?cate=050102">구두/워커</a></li>
							<li><a href="/shop/list.php?cate=050103">샌들/슬리퍼/장화</a></li>
						</ul></li>
					<li><a href="/shop/list.php?cate=0701">악세사리<span
							class="over">악세사리</span></a>
						<ul class="sub">
							<li><a href="/shop/list.php?cate=070101">주얼리</a></li>
							<li><a href="/shop/list.php?cate=070104">모자/벨트</a></li>
							<li><a href="/shop/list.php?cate=070105">양말/스타킹</a></li>
						</ul></li>
				</ul>
				<!-- //menu -->
				<ul class="cateogry">
					<!-- 				<li class="c6"><a href="/shop/list.php?cate=3101"><span>선오픈 10%</span></a><em>33</em></li> -->
					<!-- 				<li class="c1"><a href="/shop/new.php"><span>오늘신상</span></a><em>39</em></li> -->
					<!-- 				<li class="c2"><a href="/shop/best_new.php"><span>베스트</span></a></li> -->
					<li class="c3"><a href="/shop/delivery.php"></a></li>
				</ul>
			</nav>
			<!-- //bottom -->
		</header>
	</div>
</body>
</html>