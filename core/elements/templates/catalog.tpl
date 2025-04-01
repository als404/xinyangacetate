{extends 'file:templates/base.tpl'}
{block 'content'}
	{include 'file:chunks/page_title.tpl'}
	{if $_modx->resource.content?}
<!-- Catalog description Section -->
	<section class="catalog__description pb-0">
		<div class="container">
		{$_modx->resource.content}
		</div>
	</section>
<!-- /Catalog description Section -->
	{/if}
<!-- Catalog Section -->
<section id="catalog-list" class="catalog catalog__list-item section">
	<div class="container">
		<div class="row gy-4">
		{'!pdoPage' | snippet : [
			'element' => 'pdoResources',
			'parents' => $_modx->resource.id,
			'depth' => 1,
			'includeTVs' => 'image',
			'tvPrefix' => 'tv.',
			'tpl' => '@FILE chunks/catalog__list_item.tpl',
			'limit' => 12,
			'pageLimit' => '7'
			'includeContent' => '1',
			'tplPageWrapper' => '@INLINE <div class="pagination section"><div class="container"><ul class="d-flex justify-content-center">{$prev}{$pages}{$next}</ul></div></div>',
			'tplPage' => '@INLINE <li><a href="{$href}">{$pageNo}</a></li>',
			'tplPageActive' => '@INLINE <li class="active"><a href="{$href}">{$pageNo}</a></li>',
			'tplPagePrev' => '@INLINE <li><a href="{$href}" rel="prev"><i class="bi bi-chevron-left"></i></a></li>',
			'tplPageNext' => '@INLINE <li><a href="{$href}" rel="next"><i class="bi bi-chevron-right"></i></a></li>',
			'tplPageSkip' => '@INLINE <li>...</li>',
		]}
		</div>
	</div>
</section>
{$_modx->getPlaceholder('page.nav')}
{/block}