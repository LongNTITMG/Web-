<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client/assets" var="url" />
<!-- Start header section -->
<jsp:include page="./header/mainHeader.jsp" flush="true" />

<section id="aa-catg-head-banner">
	<img
		src="${pageContext.request.contextPath}/view/client/assets/images/banner_product.jpg"
		alt="banner sản phẩm">
	<div class="aa-catg-head-banner-area">
		<div class="container">
			<div class="aa-catg-head-banner-content">
				<h2>Đội ngũ nhà hàng</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/homepage">Trang
							chủ</a></li>
					<li style="color: #fff">Đội ngũ nhà hàng</li>
				</ol>
			</div>
		</div>
	</div>
</section>
<section id="aa-product-category">
	<div class="container">
		<div class="row">
			<div>
				<h1 style="text-align: center; color: red;">Đội ngũ nhà hàng</h1>
				<strong>Cám ơn quý khách đã thưởng thức món ăn tại nhà hàng
					</strong><br>
				<br>
				<p>Nhà hàng chúng tôi luôn có đội ngũ chất lượng, nhân viên phục vụ và 
				đầu bếp đều được tuyển chọn 1 cách khắc khe nhất và đảm bảo chất lượng.</p>
				
				
				
				<section id="gtco-team" class="bg-white section-padding">
    <div class="container">
        <div class="section-content">
            <div class="heading-section text-center">
                <span class="subheading">
                    
                </span>
                <h2>
                    Our Team
                </h2>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="team-card mb-5">
                        <img class="img-fluid" src="${pageContext.request.contextPath}/view/client/assets/images/chef-1.jpg" alt="">
                        <div class="team-desc">
                            <h4 class="mb-0">Aaron Patel</h4>
                            <p class="mb-1">CEO</p>
                            <ul class="list-inline mb-0 team-social-links">
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-google-plus-g"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-card mb-5">
                        <img class="img-fluid" src="${pageContext.request.contextPath}/view/client/assets/images/chef-2.jpg" alt="">
                        <div class="team-desc">
                            <h4 class="mb-0">Daniel Tebas</h4>
                            <p class="mb-1">Chef</p>
                            <ul class="list-inline mb-0 team-social-links">
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-google-plus-g"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-card mb-5">
                        <img class="img-fluid" src="${pageContext.request.contextPath}/view/client/assets/images/chef-3.jpg" alt="">
                        <div class="team-desc">
                            <h4 class="mb-0">Jon Snow</h4>
                            <p class="mb-1">Chef</p>
                            <ul class="list-inline mb-0 team-social-links">
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-google-plus-g"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
				
			
				
			</div>
		</div>
	</div>
</section>

<!--  footer-->
<jsp:include page="./footer/footer.jsp" flush="true" />
<!-- end footer-->
