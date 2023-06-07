<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client/assets" var="url" />

<!-- footer -->
<footer id="aa-footer">
	<!-- footer bottom -->
	<div class="aa-footer-top">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-footer-top-area">
						<div class="row">
							<div class="col-md-4 col-sm-6">
								<div class="aa-footer-widget">
									<a href="${pageContext.request.contextPath}/homepage"><img
										src="${url}/images/logogababy.png" alt="logo img"
										width="185px"></a>
									<ul class="aa-footer-nav">

										<li><p
												style="color: #888; text-align: justify; width: 95%">Là
												nơi chuyên bán tất cả các mặt hàng về ăn uống chất
												lượng. Chúng tôi luôn đặt tiêu chí về chất lượng và uy tín
												lên hàng đầu.</p></li>
										<li><img
											src="${pageContext.request.contextPath}/view/client/assets/images/dadangky.png"
											alt="logo img" width="40%"></li>
									</ul>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="aa-footer-widget">
									<div class="aa-footer-widget">
										<h3>HỖ TRỢ KHÁCH HÀNG</h3>
										<ul class="aa-footer-nav">
											<li><a
												href="${pageContext.request.contextPath}/view/client/order">Hướng
													dẫn đặt hàng</a></li>
											<li><a
												href="${pageContext.request.contextPath}/view/client/payment">Hướng
													dẫn thanh toán</a></li>
											<li><a
												href="${pageContext.request.contextPath}/view/client/security">Đội
													ngũ nhà hàng</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="aa-footer-widget">
									<div class="aa-footer-widget">
										<h3>LIÊN HỆ</h3>
										<address>
											<p>102 Thanh Bình, Mỗ Lao, Hà Đông, Hà Nội</p>
											<p>
												<span class="fa fa-phone"></span>0352013796
											</p>
											<p>
												<span class="fa fa-envelope"></span>nhahang@gmail.com
											</p>
										</address>
										<div class="aa-footer-social">
											<a href="#"><span class="fab fa-facebook"></span></a> <a
												href="#"><span class="fab fa-youtube"></span></a> <a
												href="#"><span class="fab fa-instagram"></span></a> <a
												href="#"><span class="fab fa-skype"></span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer-bottom -->
	<div class="aa-footer-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-footer-bottom-area">
						<p>Copyright 2023 &copy NTL Team</p>
						<div class="aa-footer-payment">
							<span class="fab fa-cc-mastercard"></span> <span
								class="fab fa-cc-visa"></span> <span class="fab fa-paypal"></span>
							<span class="fab fa-cc-discover"></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- / footer -->

</body>
<jsp:include page="script.jsp" flush="true" />

</html>
