<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>����ƾ�</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header/header.css">
	
</head>
<body>

	<div class="wrap">
		<header id="header">
			<div class="top">
				<h1>
					<a href="/"> <img src="" alt="���ηΰ�" width="140px">
					</a>
				</h1>

				<ul class="toplink">
					<li><a href="/">ȸ������<em>(<font
								style="color: #ff7d9e;">+ 500 ���</font>)
						</em></a></li>
					<li><a href="/">������</a></li>
					<li><a href="">
							<div class="login-btn">
								<span>�α���</span>
							</div>
					</a></li>
					<li><a href="/">��ٱ���</a></li>
					<li><a href="/">������</a></li>
				</ul>



				<div class="search">
					<form name="search" action="/shop/search.php" method="get"
						onsubmit="return searchCheck(this)">
						<fieldset>
							<div class="inform">
								<input type="hidden" name="searchOrder" value=""> <input
									type="text" title="�˻�� �Է��ϼ���" id="keyword" name="keyword"
									value="" autocomplete="off" class="ui-autocomplete-input">
								<button type="submit" class="btn-search">�˻�</button>
							</div>
						</fieldset>
					</form>
				</div>

				<ul class="mymenu">
					<!--
                    <li class="l1"><a href="/"><img
                                src="https://img.sonyunara.com/2020/asset/pc/img/common/header/my_icon1.png" alt="��ý"
                                class="icon"><strong>��ý</strong></a></li>
                    <li class="l2"><a href="/member/wish.php"><img
                                src="https://img.sonyunara.com/2020/asset/pc/img/common/header/my_icon2.png" alt="���ƿ�"
                                class="icon"><strong>���ƿ�</strong></a></li> -->

					<li class="l3" style="margin-left: 23px;"><a
						href="/member/cart.php"><img
							src="https://img.sonyunara.com/2020/asset/pc/img/common/header/my_icon3.png"
							alt="��ٱ���" class="icon"
							style="margin-left: -19px; margin-top: 0px;"><strong>��ٱ���</strong></a>
						<span>0</span></li>
					<li class="l4">
						<div class="table">
							<div class="wrap" style="top: -58px;">
								<div>
									<a href="/shop/search.php?searchOrder=&amp;keyword=ũ��"
										target="_self"> <strong>1.</strong> ũ��
									</a>
								</div>
								<div>
									<a href="/shop/new.php" target="_self"> <strong>2.</strong>
										�����Ż�
									</a>
								</div>
								<div>
									<a href="/shop/search.php?searchOrder=1&amp;keyword=��Ʈ"
										target="_self"> <strong>3.</strong> SET
									</a>
								</div>
								<div>
									<a href="/shop/search.php?searchOrder=1&amp;keyword=������"
										target="_self"> <strong>4.</strong> ������
									</a>
								</div>
								<div>
									<a href="/shop/list.php?page=1&amp;cate=010403" target="_self">
										<strong>5.</strong> �ĵ�����
									</a>
								</div>
								<div>
									<a href="/shop/list.php?cate=0103" target="_self"> <strong>6.</strong>
										���ǽ�
									</a>
								</div>
								<div>
									<a href="/shop/list.php?cate=010201" target="_self"> <strong>7.</strong>
										����
									</a>
								</div>
								<div>
									<a href="/shop/search.php?searchOrder=2&amp;keyword=Ű�۳�"
										target="_self"> <strong>8.</strong> Ű�۳�
									</a>
								</div>
								<div>
									<a href="/shop/list.php?cate=0105" target="_self"> <strong>9.</strong>
										Ʈ���̴�
									</a>
								</div>
								<div>
									<a href="/shop/search.php?searchOrder=&amp;keyword=������"
										target="_self"> <strong>10.</strong> ������
									</a>
								</div>
								<div>
									<a href="/shop/search.php?searchOrder=&amp;keyword=ũ��"
										target="_self"> <strong>1.</strong> ũ��
									</a>
								</div>
							</div>
						</div>
						<button type="button">
							<i class="fa fa-caret-down"></i>
						</button>
						<div class="popular-search-ward" style="display: none;">
							<table>
								<caption>�α�˻���</caption>
								<tbody>
									<tr class="rank">
										<td><strong>1.</strong><a
											href="/shop/search.php?searchOrder=&amp;keyword=ũ��"
											target="_self">ũ��</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>999</small>
										</td>
									</tr>
									<tr class="rank">
										<td><strong>2.</strong><a href="/shop/new.php"
											target="_self">�����Ż�</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>NEW</small>
										</td>
									</tr>
									<tr class="rank">
										<td><strong>3.</strong><a
											href="/shop/search.php?searchOrder=1&amp;keyword=��Ʈ"
											target="_self">SET</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>951</small>
										</td>
									</tr>
									<tr>
										<td><strong>4.</strong><a
											href="/shop/search.php?searchOrder=1&amp;keyword=������"
											target="_self">������</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>911</small>
										</td>
									</tr>
									<tr>
										<td><strong>5.</strong><a
											href="/shop/list.php?page=1&amp;cate=010403" target="_self">�ĵ�����</a>
										</td>
										<td class="up"><small><i class="fa fa-caret-up"></i>�޻��</small>
										</td>
									</tr>
									<tr>
										<td><strong>6.</strong><a href="/shop/list.php?cate=0103"
											target="_self">���ǽ�</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>866</small>
										</td>
									</tr>
									<tr>
										<td><strong>7.</strong><a
											href="/shop/list.php?cate=010201" target="_self">����</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>847</small>
										</td>
									</tr>
									<tr>
										<td><strong>8.</strong><a
											href="/shop/search.php?searchOrder=2&amp;keyword=Ű�۳�"
											target="_self">Ű�۳�</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>782</small>
										</td>
									</tr>
									<tr>
										<td><strong>9.</strong><a href="/shop/list.php?cate=0105"
											target="_self">Ʈ���̴�</a></td>
										<td class="up"><small><i class="fa fa-caret-up"></i>755</small>
										</td>
									</tr>
									<tr>
										<td><strong>10.</strong><a
											href="/shop/search.php?searchOrder=&amp;keyword=������"
											target="_self">������</a></td>
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
					<span>��ü�޴�</span>
				</button>
				<div id="allMenu">
					<div class="box">
						<ul class="list import">
							<li><a href="/shop/new.php">�Ż�</a></li>
							<li><a href="/shop/best.php">����Ʈ</a></li>
							<li><a href="/shop/delivery.php">�������</a></li>
							<li><a href="/shop/list.php?cate=3001">��������</a></li>
						</ul>
						<div class="list-wrap">
							<h2>��ȣ��</h2>
							<ul>
								<li><a href="/shop/list.php?cate=0104">�ƿ���</a></li>
								<li><a href="/shop/list.php?cate=0101">����</a></li>
								<li><a href="/shop/list.php?cate=0102">����/���콺</a></li>
								<li><a href="/shop/list.php?cate=0105">Ʈ���̴�/Ȩ����</a></li>
								<li><a href="/shop/list.php?cate=0407">������</a></li>
								<li><a href="/shop/list.php?cate=0103">���ǽ�</a></li>
								<li><a href="/shop/list.php?cate=0202">��ĿƮ</a></li>
								<li><a href="/shop/list.php?cate=0201">����/����</a></li>
								<li><a href="/shop/list.php?cate=0601">����</a></li>
								<li><a href="/shop/list.php?cate=0501">�Ź�</a></li>
								<li><a href="/shop/list.php?cate=0701">�Ǽ��縮</a></li>
								<li><a href="/shop/list.php?cate=0301">�ҳ���</a></li>
							</ul>
						</div>
						<div class="list-wrap">
							<h2>Ŀ�´�Ƽ</h2>
							<ul>
								<li><a href="/shop/list_promotion.php">��ȹ��</a></li>
								<li><a href="/event/list.php">�̺�Ʈ</a></li>
								<li><a href="/board/list.php?boardid=event_notice">�̺�Ʈ
										��÷�ڹ�ǥ</a></li>
								<li><a href="/board/list.php?boardid=event_after">�̺�Ʈ
										��÷�ı�</a></li>
								<li><a href="/member/attend.php">�⼮üũ</a></li>
								<li><a href="/review/review_index.php">�ҳ��ı�</a></li>
								<li><a href="/review/review_muse.php">�����ı�</a></li>
							</ul>
						</div>
						<div class="list-wrap">
							<h2>����������</h2>
							<ul>
								<li><a href="/member/order.php">�ֹ����</a></li>
								<li><a href="/member/cart.php">��ٱ���</a></li>
								<li><a href="/member/coupon.php">������/����</a></li>
								<li><a href="/member/order.php">��ȯ/��ǰ��û</a></li>
								<li><a href="/member/wish.php">���ƿ�</a></li>
							</ul>
						</div>
						<div class="list-wrap">
							<h2>������</h2>
							<ul>
								<li><a href="/board/list.php?boardid=csnotice">��������</a></li>
								<li><a href="/cs/index.php">���ֹ��� ����</a></li>
								<li><a href="/cs/inquiry.php">1:1�����ϱ�</a></li>
								<li><a href="/member/search_id_pw.php">���̵�/���ã��</a></li>
								<li><a href="/member/login.php">��ȸ�� �ֹ���ȸ</a></li>
								<li><a href="/cs/inquiry_no.php">��ȸ�� ����</a></li>
							</ul>
						</div>
					</div>
					<!-- //box -->
				</div>
				<!-- //allMenu -->

				<ul class="menu">
					<li style="color: #9F3FF8;"><a href="/shop/best.php">����Ʈ<span
							class="over" style="display: none; opacity: 1;">����Ʈ</span></a></li>
					<li style="color: #FF416F;"><a href="/shop/new.php">�Ż�<span
							class="over" style="display: none; opacity: 1;">�Ż�</span></a></li>
					<li><a href="/shop/list.php?cate=0104">�ƿ���<span
							class="over">�ƿ���</span></a>
						<ul class="sub">
							<li><a href="/shop/list.php?cate=010401">�����/����</a></li>
							<li><a href="/shop/list.php?cate=010403">�߻�/����</a></li>
							<li><a href="/shop/list.php?cate=010404">����/��Ʈ</a></li>
							<li><a href="/shop/list.php?cate=010405">�е�</a></li>
							<li><a href="/shop/list.php?cate=010406">�ø���</a></li>
						</ul></li>
					<li><a href="/shop/list.php?cate=0101">����<span
							class="over">����</span></a>
						<ul class="sub">
							<li><a href="/shop/list.php?cate=010102">����Ƽ����</a></li>
							<li><a href="/shop/list.php?cate=010104">������</a></li>
							<li><a href="/shop/list.php?cate=010103">�ĵ�</a></li>
							<li><a href="/shop/list.php?cate=010101">����/�μҸ�Ƽ����</a></li>
							<li><a href="/shop/list.php?cate=010105">��Ʈ</a></li>
						</ul></li>
					<li><a href="/shop/list.php?cate=0102">����/���콺<span
							class="over">����/���콺</span></a></li>
					<li><a href="/shop/list.php?cate=0105">Ʈ���̴�<span
							class="over">Ʈ���̴�</span></a></li>
					<li><a href="/shop/list.php?cate=0407">������<span
							class="over">������</span></a></li>
					<li><a href="/shop/list.php?cate=0103">���ǽ�<span
							class="over">���ǽ�</span></a></li>
					<li><a href="/shop/list.php?cate=0202">��ĿƮ<span
							class="over">��ĿƮ</span></a></li>
					<li><a href="/shop/list.php?cate=0201">����<span
							class="over">����</span></a>
						<ul class="sub">
							<li><a href="/shop/list.php?cate=020103">û����</a></li>
							<li><a href="/shop/list.php?cate=020102">������</a></li>
							<li><a href="/shop/list.php?cate=020104">�����</a></li>
							<li><a href="/shop/list.php?cate=020106">������</a></li>
							<li><a href="/shop/list.php?cate=020105">���뽺</a></li>
							<li><a href="/shop/list.php?cate=020101">������</a></li>
						</ul></li>
					<li><a href="/shop/list.php?cate=0601">����<span
							class="over">����</span></a>
						<ul class="sub">
							<li><a href="/shop/list.php?cate=060101">����/�����</a></li>
							<li><a href="/shop/list.php?cate=060102">ũ�ν�/��Ʈ��</a></li>
						</ul></li>
					<li><a href="/shop/list.php?cate=0501">�Ź�<span
							class="over">�Ź�</span></a>
						<ul class="sub">
							<li><a href="/shop/list.php?cate=050101">�ȭ/��ȭ</a></li>
							<li><a href="/shop/list.php?cate=050102">����/��Ŀ</a></li>
							<li><a href="/shop/list.php?cate=050103">����/������/��ȭ</a></li>
						</ul></li>
					<li><a href="/shop/list.php?cate=0701">�Ǽ��縮<span
							class="over">�Ǽ��縮</span></a>
						<ul class="sub">
							<li><a href="/shop/list.php?cate=070101">�־�</a></li>
							<li><a href="/shop/list.php?cate=070104">����/��Ʈ</a></li>
							<li><a href="/shop/list.php?cate=070105">�縻/��Ÿŷ</a></li>
						</ul></li>
				</ul>
				<!-- //menu -->
				<ul class="cateogry">
					<!-- 				<li class="c6"><a href="/shop/list.php?cate=3101"><span>������ 10%</span></a><em>33</em></li> -->
					<!-- 				<li class="c1"><a href="/shop/new.php"><span>���ýŻ�</span></a><em>39</em></li> -->
					<!-- 				<li class="c2"><a href="/shop/best_new.php"><span>����Ʈ</span></a></li> -->
					<li class="c3"><a href="/shop/delivery.php"></a></li>
				</ul>
			</nav>
			<!-- //bottom -->
		</header>
	</div>
</body>
</html>