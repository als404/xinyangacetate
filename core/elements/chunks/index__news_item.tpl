<div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
	<div class="news-post d-flex align-items-start">
		<div class="pic">
			{if $_modx->config.cultureKey != 'ru'}
				{set $imgPath = '/assets/img/'~ $id | resource:'image'}
			{else}
				{set $imgPath = $id | resource:'image'}
			{/if}
			<img src="{$imgPath| pthumb : 'w=150&h=150&zc=C&f=webp&q=80'}" class="img-fluid" alt="news photo">
		</div>
		<div class="news-info">
			<h4>{$pagetitle}</h4>
			<p>{$description}</p>
			<div class="news-link-more">
				<p>{$publishedon | rus_months}</p>
				<a href="{$uri}">{'site.read_more_link' | lexicon}...</a>
			</div>
		</div>
	</div>
</div><!-- End News item -->