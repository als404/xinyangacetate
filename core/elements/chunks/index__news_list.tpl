<!-- News Section -->
<section class="main-news section">

<!-- Section Title -->
	<div class="container section-title" data-aos="fade-up">
		<h2>{'site.news_title' | lexicon}</h2>
		<p>{'site.news_subtitle' | lexicon}</p>
	</div><!-- End Section Title -->

	<div class="container">
		<div class="row gy-4">
		{set $newsId = $_modx->runSnippet('getBabelId', ['id'=>4, 'key'=>$_modx->config.cultureKey])}
		{'!pdoResources' | snippet : [
			'element' => 'pdoResources',
			'parents' => $newsId,
			'depth' => 1,
			'includeTVs' => 'image',
			'tvPrefix' => 'tv.',
			'tpl' => '@FILE chunks/index__news_item.tpl',
			'limit' => 4,
			'includeContent' => '1',
		]}

		</div>
	</div>
</section><!-- /News Section -->