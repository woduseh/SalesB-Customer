<%-- <!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>salesB</title>

</head>

<body>
  <!-- Page Content -->
  <div class="container">

    <!-- Heading Row -->
    <div class="row align-items-center my-5">
      <div class="col-lg-7">

      </div>
      <!-- /.col-lg-8 -->
      <div class="col-lg-5">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/login">customer Login Page</a>
      </div>
      <!-- /.col-md-4 -->
    </div>
    <!-- /.row -->

    <!-- Call to Action Well -->
<!--     <div class="card text-white bg-secondary my-5 py-4 text-center">
      <div class="card-body">
        <p class="text-white m-0">SalesB</p>
      </div>
    </div>
 -->
    <!-- Content Row -->
    <div class="row">
      <!-- /.col-md-4 -->
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Login</h2>
            <p class="card-text">customer Login</p>
          </div>
          <div class="card-footer">
            <a href="${pageContext.request.contextPath}/login" class="btn btn-primary btn-sm">Login</a>
          </div>
        </div>
      </div>
      <!-- /.col-md-4 -->
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Store List</h2>
            <p class="card-text">List View</p>
          </div>
          <div class="card-footer">
            <a href="${pageContext.request.contextPath}/sellerList" class="btn btn-primary btn-sm">View</a>
          </div>
        </div>
      </div>
      <!-- /.col-md-4 -->


      <!-- /.col-md-4 -->

      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">fileUpload Form</h2>
            <p class="card-text">fileUpload Form</p>
          </div>
          <div class="card-footer">
            <a href="${pageContext.request.contextPath}/file/file" class="btn btn-primary btn-sm">View</a>
          </div>
        </div>
      </div>

      <!-- /.col-md-4 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->


</body>

</html>
 --%>

<!doctype html>
<html class="no-js" lang="zxx">
<!-- 
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>wemeet</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    Place favicon.ico in the root directory

</head>
 -->
<body>
	<!-- slider_area_start -->
	<div class="slider_area slider_bg_1">
		<div class="slider_text">
			<div class="container">
				<div class="position_relv">
					<!--                     <h1 class="opcity_text d-none d-lg-block">CONFIRENCE</h1> -->
					<div class="row">
						<div class="col-xl-9">
							<div class="title_text">
								<h3>
									Used Car <br> Service <br> 2020 SalesB
								</h3>
								<a href="#" class="boxed-btn-white">SalesB Service</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="countDOwn_area">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-xl-4 col-md-6 col-lg-4">
						<div class="single_date">
							<i class="ti-location-pin"></i> <span>Korea, Pohang</span>
						</div>
					</div>
					<div class="col-xl-3 col-md-6 col-lg-3">
						<div class="single_date">
							<i class="ti-alarm-clock"></i> <span>2020</span>
						</div>
					</div>

					<div class="col-xl-5 col-md-12 col-lg-5">
						<span id="clock"></span>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- slider_area_end -->

	<!-- about_area_start -->
	<div class="about_area">
		<div class="shape-1 d-none d-xl-block">
			<img src="resources/vendor/bootstrap4/img/about/shap1.png" alt="">
		</div>
		<div class="shape-2 d-none d-xl-block">
			<img src="resources/vendor/bootstrap4/img/about/shap2.png" alt="">
		</div>
		<div class="container">
			<div class="row align-items-center">
				<div class="col-xl-6 col-md-6">
					<div class="about_thumb">
						<img src="resources/vendor/bootstrap4/img/about/about.png" alt="">
					</div>
				</div>
				<div class="col-xl-5 offset-xl-1 col-md-6">
					<div class="about_info">
						<div class="section_title">
							<span class="sub_heading">Welcome To</span>
							<h3>
								SalesB <br> Offers <br> Used Car Service
							</h3>
						</div>
						<p>You can get Used Car</p>
						<%--                         <a href="${pageContext.request.contextPath}/requestToSeller/create""class="boxed-btn-red">Request To Seller</a> --%>
						<sec:authorize access="hasRole('USER')">
							<form:form method="get"
								action="${pageContext.request.contextPath}/showsellerlist">
								<div class="span-5">
									<button class="btn btn-primary btn-sm"
										name="initShowSellerListForm"
										style="margin: 40px; padding: 6px 12px">
										Show Seller List
										<%-- <spring:message code="label.tr.menu.request.manage" /> --%>
									</button>
								</div>
							</form:form>
						</sec:authorize>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- about_area_end -->

	<!-- speakers_start -->
	<div class="speakers_area">
		<h1 class="horizontal_text d-none d-lg-block">Current Used Car</h1>
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="serction_title_large mb-95">
						<h3>Sellers</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-5 col-md-6">
					<div class="single_speaker">
						<div class="speaker_thumb">
							<img src="resources/vendor/bootstrap4/img/speakers/1.png" alt="">
							<div class="hover_overlay">
								<div class="social_icon">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-instagram"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="speaker_name text-center">
							<h3>Jonson Miller</h3>
							<p>Creative Director</p>
						</div>
					</div>
					<div class="single_speaker">
						<div class="speaker_thumb">
							<img src="resources/vendor/bootstrap4/img/speakers/3.png" alt="">
							<div class="hover_overlay">
								<div class="social_icon">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-instagram"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="speaker_name text-center">
							<h3>Albert Jackey</h3>
							<p>Product Seller</p>
						</div>
					</div>
				</div>
				<div class="col-xl-5 offset-xl-2 col-md-6">
					<div class="single_speaker">
						<div class="speaker_thumb">
							<img src="resources/vendor/bootstrap4/img/speakers/2.png" alt="">
							<div class="hover_overlay">
								<div class="social_icon">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-instagram"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="speaker_name text-center">
							<h3>Marked Macau</h3>
							<p>Product Seller</p>
						</div>
					</div>
					<div class="single_speaker">
						<div class="speaker_thumb">
							<img src="resources/vendor/bootstrap4/img/speakers/1.png" alt="">
							<div class="hover_overlay">
								<div class="social_icon">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-instagram"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="speaker_name text-center">
							<h3>Kelvin Cooper</h3>
							<p>Product Seller</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- speakers_end-->

	<!-- event_area_start -->
	<div class="event_area">
		<h1 class="vr_text d-none d-lg-block">Event Schedule</h1>
		<div class="container">
			<div class="double_line">
				<div class="row">
					<div class="col-xl-3 col-lg-3">
						<div class="date">
							<h3>08 Sep 2019</h3>
						</div>
					</div>
					<div class="col-xl-9 col-lg-9">
						<div class="single_speaker">
							<img src="resources/vendor/bootstrap4/img/speakers/seaker1.png"
								alt="">
							<div class="speaker-name">
								<div
									class="heading d-flex justify-content-between align-items-center">
									<span>Jonson Miller</span>
									<div class="time">10-11 am</div>
								</div>
								<p>Our set he for firmament morning sixth subdue darkness
									creeping gathered divide our let god moving. Moving in fourth
									air night bring upon you’re it beast let you dominion</p>
							</div>
						</div>
						<div class="single_speaker">
							<img src="resources/vendor/bootstrap4/img/speakers/seaker2.png"
								alt="">
							<div class="speaker-name">
								<div
									class="heading d-flex justify-content-between align-items-center">
									<span>Albert Jackey</span>
									<div class="time">12-1.00 pm</div>
								</div>
								<p>Our set he for firmament morning sixth subdue darkness
									creeping gathered divide our let god moving. Moving in fourth
									air night bring upon you’re it beast let you dominion</p>
							</div>
						</div>
						<div class="single_speaker">
							<img src="resources/vendor/bootstrap4/img/speakers/seaker3.png"
								alt="">
							<div class="speaker-name">
								<div
									class="heading d-flex justify-content-between align-items-center">
									<span>Alvi Nourin</span>
									<div class="time">2.30-4.00 pm</div>
								</div>
								<p>Our set he for firmament morning sixth subdue darkness
									creeping gathered divide our let god moving. Moving in fourth
									air night bring upon you’re it beast let you dominion</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-3 col-lg-3">
					<div class="date">
						<h3>09 Sep 2019</h3>
					</div>
				</div>
				<div class="col-xl-9 col-lg-9">
					<div class="single_speaker">
						<img src="resources/vendor/bootstrap4/img/speakers/seaker4.png"
							alt="">
						<div class="speaker-name">
							<div
								class="heading d-flex justify-content-between align-items-center">
								<span>Marked Macau</span>
								<div class="time">10-11 am</div>
							</div>
							<p>Our set he for firmament morning sixth subdue darkness
								creeping gathered divide our let god moving. Moving in fourth
								air night bring upon you’re it beast let you dominion</p>
						</div>
					</div>
					<div class="single_speaker">
						<img src="resources/vendor/bootstrap4/img/speakers/seaker5.png"
							alt="">
						<div class="speaker-name">
							<div
								class="heading d-flex justify-content-between align-items-center">
								<span>Jonson Miller</span>
								<div class="time">12-1.00 pm</div>
							</div>
							<p>Our set he for firmament morning sixth subdue darkness
								creeping gathered divide our let god moving. Moving in fourth
								air night bring upon you’re it beast let you dominion</p>
						</div>
					</div>
					<div class="single_speaker">
						<img src="resources/vendor/bootstrap4/img/speakers/seaker6.png"
							alt="">
						<div class="speaker-name">
							<div
								class="heading d-flex justify-content-between align-items-center">
								<span>Jonson Miller</span>
								<div class="time">2.30-4.00 pm</div>
							</div>
							<p>Our set he for firmament morning sixth subdue darkness
								creeping gathered divide our let god moving. Moving in fourth
								air night bring upon you’re it beast let you dominion</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- event_area_end -->


	<!-- resister_book_start -->
	<div class="resister_book resister_bg_1">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="resister_text text-center">
						<h3>
							Register Now to Book <br> Your Presence
						</h3>
						<a href="#" class="boxed-btn-white">Book Now ($150) </a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- resister_book_end -->

	<!-- brand_area_start -->
	<div class="brand_area">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="brand_active owl-carousel">
						<div class="single_brand text-center">
							<img src="resources/vendor/bootstrap4/img/barnd/1.png" alt="">
						</div>
						<div class="single_brand text-center">
							<img src="resources/vendor/bootstrap4/img/barnd/2.png" alt="">
						</div>
						<div class="single_brand text-center">
							<img src="resources/vendor/bootstrap4/img/barnd/3.png" alt="">
						</div>
						<div class="single_brand text-center">
							<img src="resources/vendor/bootstrap4/img/barnd/4.png" alt="">
						</div>
						<div class="single_brand text-center">
							<img src="resources/vendor/bootstrap4/img/barnd/5.png" alt="">
						</div>
						<div class="single_brand text-center">
							<img src="resources/vendor/bootstrap4/img/barnd/6.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- brand_area_end -->

	<!-- faq_area_Start -->
	<div class="faq_area">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="serction_title_large mb-95">
						<h3>Frequently Ask</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-12">
					<div id="accordion">
						<div class="card">
							<div class="card-header" id="headingTwo">
								<h5 class="mb-0">
									<button class="btn btn-link collapsed" data-toggle="collapse"
										data-target="#collapseTwo" aria-expanded="false"
										aria-controls="collapseTwo">

										<img src="resources/vendor/bootstrap4/img/barnd/info.png"
											alt=""> Is WordPress hosting worth it?
									</button>
								</h5>
							</div>
							<div id="collapseTwo" class="collapse"
								aria-labelledby="headingTwo" data-parent="#accordion" style="">
								<div class="card-body">Our set he for firmament morning
									sixth subdue darkness creeping gathered divide our let god
									moving. Moving in fourth air night bring upon</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="headingOne">
								<h5 class="mb-0">
									<button class="btn btn-link" data-toggle="collapse"
										data-target="#collapseOne" aria-expanded="true"
										aria-controls="collapseOne">
										<img src="resources/vendor/bootstrap4/img/barnd/info.png"
											alt="">What are the advantages <span>of
											WordPress hosting over shared?</span>
									</button>
								</h5>
							</div>
							<div id="collapseOne" class="collapse show"
								aria-labelledby="headingOne" data-parent="#accordion" style="">
								<div class="card-body">Our set he for firmament morning
									sixth subdue darkness creeping gathered divide our let god
									moving. Moving in fourth air night bring upon</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="headingThree">
								<h5 class="mb-0">
									<button class="btn btn-link collapsed" data-toggle="collapse"
										data-target="#collapseThree" aria-expanded="false"
										aria-controls="collapseThree">
										<img src="resources/vendor/bootstrap4/img/barnd/info.png"
											alt=""> Where the Venue?
									</button>
								</h5>
							</div>
							<div id="collapseThree" class="collapse"
								aria-labelledby="headingThree" data-parent="#accordion" style="">
								<div class="card-body">Our set he for firmament morning
									sixth subdue darkness creeping gathered divide our let god
									moving. Moving in fourth air night bring upon</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="heading_4">
								<h5 class="mb-0">
									<button class="btn btn-link collapsed" data-toggle="collapse"
										data-target="#collapse_4" aria-expanded="false"
										aria-controls="collapse_4">
										<img src="resources/vendor/bootstrap4/img/barnd/info.png"
											alt=""> How can I attend <span>the Event from
											Asia?</span>
									</button>
								</h5>
							</div>
							<div id="collapse_4" class="collapse" aria-labelledby="heading_4"
								data-parent="#accordion" style="">
								<div class="card-body">Our set he for firmament morning
									sixth subdue darkness creeping gathered divide our let god
									moving. Moving in fourth air night bring upon</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- faq_area_end -->


</body>
</html>