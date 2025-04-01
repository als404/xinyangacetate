<!-- Catalog Section -->
<section id="catalog" class="catalog section dark-background">
<!-- Section Title -->
	<div class="container section-title" data-aos="fade-up">
		<h2>{'site.catalog_title' | lexicon}</h2>
		<p>{'site.catalog_subtitle' | lexicon}<br></p>
	</div><!-- End Section Title -->

	<div class="container">
		<div class="row gy-4">
		{set $catalogId = $_modx->runSnippet('getBabelId', ['id'=>3, 'key'=>$_modx->config.cultureKey])}
		{'!pdoResources' | snippet : [
			'element' => 'pdoResources',
			'parents' => $catalogId,
			'depth' => 1,
			'includeTVs' => 'image',
			'tvPrefix' => 'tv.',
			'tpl' => '@FILE chunks/catalog__list_item.tpl',
			'limit' => 4,
			'includeContent' => '1',
		]}
		</div>
	</div>
	<div class="container" data-aos="fade-up">
		<div class="mt-4">
			<a href="{$_modx->makeUrl($catalogId)}" class="btn-get-started">{'site.catalog_btn' | lexicon}</a>
		</div>
	</div><!-- End Section Title -->
</section><!-- /Catalog Section -->