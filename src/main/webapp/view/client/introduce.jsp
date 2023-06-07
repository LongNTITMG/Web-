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
				<h2>Giới thiệu</h2>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/homepage">Trang
							chủ</a></li>
					<li style="color: #fff">Giới thiệu</li>
				</ol>
			</div>
		</div>
	</div>
</section>
<section id="aa-product-category">
	<div class="container">
		<div class="row">
			<div>
				<h1 style="text-align: center; color: red;">Nhà hàng</h1>
				<p>
					Chúng tôi hi vọng tất cả khách hàng sẽ được thưởng thức những món
					ăn tươi ngon, bổ dưỡng và an toàn nhất tại nhà hàng của chúng tôi <strong>Nhà
						Hàng </strong>.Với sứ mệnh trở thành một trong những nhà hàng hàng đầu tại
					Việt Nam mang tới khách hàng những món ăn tươi ngon nhất với mục
					đích là <strong>“Mang thương hiệu, uy tín tới khách hàng”</strong>.
					Với quy trình lựa chọn và kiểm soát nghiêm ngặt Nhà Hàng đã có
					những đầu bếp giỏi tài năng, tận tuỵ có tâm với từng món ăn đưa ra
					của nhà hàng, nhà hàng rất hân hạnh được phụ vụ khách hàng tận tâm
					nhất.
				</p>
				<img src="${url}/images/introduce_restaurant.jpg"
					alt="Thực phẩm sạch" /> <br /> <br>
				<p>
					Với triết lý trong kinh doanh là tuân thủ và đảm bảo được chất
					lượng tươi ngon nhất, nguồn gốc xuất xứ về sản phẩm rõ ràng.Chúng
					tôi cam kết không sử dụng chất bảo quản nào bị Bộ Y Tế cấm không
					được sử dụng và cam kết với quý khách hàng về toàn bộ những sản
					phẩm được phân phối qua hệ thống phân phối <strong>Nhà
						hàng </strong> đảm bảo an toàn nhất.
				</p>

				<strong>Dưới đây, chúng tôi xin điểm qua những món ăn của
					Nhà Hàng hiện đang được rất nhiều khách hàng khen ngon và ưa thích
					:</strong><br />
				<p>
					<strong>Gà tươi ngon, nguồn gốc rõ ràng: </strong> Những con gà
					được chắt lọc đảm bảo uy tín, thực phẩm sạch <strong>Nhà
						Hàng</strong> là nơi chế biến cho bạn những món ăn chất lượng từ những chú
					gà sạch tươi ngon nhất. Hệ thống vận hành của chúng tôi được thực
					hiện bởi những đầu bếp hàng đầu đảm bảo rằng các bạn sẽ thưởng thức
					được món ăn tươi nhất, an toàn và ngon miệng.
				</p>
				<p>
					<strong>Nộm salad: </strong> Với mục tiêu trở thành một thương hiệu
					được khách hàng tin tưởng và coi như một địa điểm ăn uống tin cậy
					đối với thực phẩm sạch, tươi ngon , <strong>Nhà Hàng </strong> đang
					trở nên hoàn thiện hơn để đem đến cho khách hàng không chỉ những
					món rau tươi, chất lượng hàng đầu trên thị trường mà kèm theo đó là
					những dịch vụ tiện ích thân thiện khác.
				</p>
				<br />
			</div>
		</div>
	</div>
</section>

<!--  footer-->
<jsp:include page="./footer/footer.jsp" flush="true" />
<!-- end footer-->
