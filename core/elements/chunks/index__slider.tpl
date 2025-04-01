<section id="hero" class="hero section dark-background">

	<div id="hero-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">
		
		{set $slider = json_decode($_modx->resource.slider, true)}
		{include 'file:chunks/index__slider.slide.tpl'}

		<a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev">
			<span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
		</a>
		
		<a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next">
			<span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
		</a>
		
		<ol class="carousel-indicators"></ol>
	
	</div>

</section><!-- /Hero Section -->