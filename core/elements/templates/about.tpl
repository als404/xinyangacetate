{extends 'file:templates/base.tpl'}
{block 'content'}
	{include 'file:chunks/page_title.tpl'}
<section id="about-2" class="about-2 section">
	<div class="container" data-aos="fade-up">
		<div class="row g-4 g-lg-5" data-aos="fade-up" data-aos-delay="200">
			<div class="col-lg-5">
				<div class="about-img">
					{if $_modx->config.cultureKey != 'ru'}
						{set $imgPath = '/assets/img/'~ $_modx->resource.image}
					{else}
						{set $imgPath = $_modx->resource.image}
					{/if}
					<img src="{$imgPath | pthumb : 'f=webp'}" class="img-fluid" alt="about">
				</div>
			</div>
			<div class="col-lg-7">
				<h3 class="pt-0 pt-lg-5">{$_modx->resource.longtitle}</h3>
			{$_modx->resource.content}
			</div>
		</div>
	</div>
</section><!-- /About 2 Section -->
{/block}