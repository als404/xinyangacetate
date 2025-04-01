{extends 'file:templates/base.tpl'}
{block 'content'}
	{include 'file:chunks/page_title.tpl'}
<div class="container">
	<div class="row">
		<div class="col-lg-8">
	<!-- News Posts Section -->
			<section id="news-posts" class="news-posts section">
				<div class="container">
					<div class="row gy-4">
			
					{'!pdoPage' | snippet : [
						'element' => 'pdoResources',
						'parents' => $_modx->resource.id,
						'depth' => 1,
						'includeTVs' => 'image',
						'tvPrefix' => 'tv.',
						'tpl' => '@FILE chunks/news__list_item.tpl',
						'limit' => 6,
						'pageLimit' => '7'
						'includeContent' => '1',
						'tplPageWrapper' => '@INLINE <div class="pagination section"><div class="container"><div class="d-flex justify-content-center"><ul>{$prev}{$pages}{$next}</ul></div></div></div>',
						'tplPage' => '@INLINE <li><a href="{$href}">{$pageNo}</a></li>',
						'tplPageActive' => '@INLINE <li class="active"><a href="{$href}">{$pageNo}</a></li>',
						'tplPagePrev' => '@INLINE <li><a href="{$href}" rel="prev"><i class="bi bi-chevron-left"></i></a></li>',
						'tplPageNext' => '@INLINE <li><a href="{$href}" rel="next"><i class="bi bi-chevron-right"></i></a></li>',
						'tplPageSkip' => '@INLINE <li>...</li>',
					]}
					
					</div><!-- End News posts list -->
				</div>
			</section><!-- /News Posts Section -->
 			{$_modx->getPlaceholder('page.nav')}
		</div>
		<div class="col-lg-4 sidebar">
			<div class="widgets-container">
			<!-- Recent Posts Widget -->
				<div class="recent-posts-widget widget-item">
					<h3 class="widget-title">{'site.news_widget_title' | lexicon}</h3>
					{'!pdoResources' | snippet : [
						'parents' => $_modx->resource.id,
						'depth' => 1,
						'includeTVs' => 'image',
						'tvPrefix' => 'tv.',
						'tpl' => '@FILE chunks/news__recent-posts-widget.tpl',
						'limit' => 4,
						'includeContent' => '1',
						'sortdir' => 'DESC'
					]}
				</div><!--/Recent Posts Widget -->
			</div>
		</div>
	</div>
</div><!-- /End News Section -->


{/block}