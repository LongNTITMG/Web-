<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client/assets" var="url" />
<section id="aa-slider">
	<div class="aa-slider-area">
		<div id="sequence" class="seq">
			<div class="seq-screen">
				<ul class="seq-canvas">
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq src="${url}/images/slide_11.jpg" alt="Men slide img" />
						</div>
						<div class="seq-title">
							<span data-seq>Giảm giá lên đến 50%</span>
							<h2 data-seq>Những Loại Gà Bổ Dưỡng</h2>
							<p data-seq>Thực phẩm tại nhà hàng luôn luôn được tuyển
								chọn,và các mặt hàng luôn đảm bảo.</p>
							<a data-seq
								href="${pageContext.request.contextPath}/view/client/product"
								class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
						</div>
					</li>
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq src="${url}/images/slide_22.jpg"
								alt="Wristwatch slide img" />
						</div>
						<div class="seq-title">
							<span data-seq>Giảm giá lên đến 20%</span>
							<h2 data-seq>Salad Xanh Sạch</h2>
							<p data-seq>Rau củ quả được đảm bảo không thuốc hóa học , đảm
								bảo chất lương xanh sạch.</p>
							<a data-seq
								href="${pageContext.request.contextPath}/view/client/product"
								class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
						</div>
					</li>
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq src="${url}/images/slide_33.jpg"
								alt="Women Jeans slide img" />
						</div>
						<div class="seq-title">
							<span data-seq>Giảm giá lên đến 33%</span>
							<h2 data-seq>Súp Ngon Ngọt</h2>
							<p data-seq>Súp ngon hấp dẫn đảm bảo tính an toàn và chất
								lượng lên hàng đầu.</p>
							<a data-seq
								href="${pageContext.request.contextPath}/view/client/product"
								class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
						</div>
					</li>
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq src="${url}/images/slide_44.jpg"
								alt="Shoes slide img" />
						</div>
						<div class="seq-title">
							<span data-seq>Giảm giá lên đến 25%</span>
							<h2 data-seq>Gà nướng hấp dẫn</h2>
							<p data-seq>Món ăn bổ dưỡng tăng cường sức khoẻ cho mọi
								người.</p>
							<a data-seq
								href="${pageContext.request.contextPath}/view/client/product"
								class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
						</div>
					</li>
				</ul>
			</div>
			<!-- slider navigation btn -->
			<fieldset class="seq-nav" aria-controls="sequence"
				aria-label="Slider buttons">
				<a type="button" class="seq-prev" aria-label="Previous"><span
					class="fa fa-angle-left"></span></a> <a type="button" class="seq-next"
					aria-label="Next"><span class="fa fa-angle-right"></span></a>
			</fieldset>
		</div>
	</div>
</section>
