{extends 'file:templates/base.tpl'}
{block 'content'}
	{include 'file:chunks/page_title.tpl'}
<!-- Contact Section -->
<section id="contact" class="contact section">

	<div class="container" data-aos="fade-up" data-aos-delay="100">
	
		<div class="mb-4" data-aos="fade-up" data-aos-delay="200">
				{include 'file:chunks/contacts__map_google.tpl'}
		</div><!-- End Google Maps -->
	
		<div class="row gy-4">
			<div class="col-md-6 col-lg-6 col-xl-5">
				<div class="info-item d-flex" data-aos="fade-up" data-aos-delay="300">
					<i class="bi bi-geo-alt flex-shrink-0"></i>
					<div>
						<h3>{'site.address' | lexicon}</h3>
					{if $_modx->config.address?}
						<p>{$_modx->config.address}</p>
					{/if}
					</div>
				</div><!-- End Info Item -->
				
				<div class="info-item d-flex" data-aos="fade-up" data-aos-delay="400">
					<i class="bi bi-telephone flex-shrink-0"></i>
					<div>
						<h3>{'site.phone' | lexicon}</h3>
					{if $_modx->config.phone1?}
						<p><a href="tel:+{$_modx->config.phone1 | tel}">{$_modx->config.phone1}</a></p>
					{/if}
					{if $_modx->config.phone2?}
						<p><a href="tel:+{$_modx->config.phone2 | tel}">{$_modx->config.phone2}</a></p>
					{/if}
					</div>
				</div><!-- End Info Item -->
				
				<div class="info-item d-flex" data-aos="fade-up" data-aos-delay="500">
					<i class="bi bi-envelope flex-shrink-0"></i>
					<div>
						<h3>{'site.email' | lexicon}</h3>
					{if $_modx->config.email?}
						<p><a href="mailto:{$_modx->config.email}">{$_modx->config.email}</a></p>
					{/if}
					</div>
				</div><!-- End Info Item -->
		
			</div>
			<div class="col-md-6 col-lg-6 col-xl-7">
			{include 'file:chunks/contacts__form.tpl'}
			</div><!-- End Contact Form -->
		
		</div>
	
	</div>

</section><!-- /Contact Section -->
{/block}