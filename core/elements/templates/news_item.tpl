{extends 'file:templates/base.tpl'}
{block 'content'}
	{include 'file:chunks/page_title.tpl'}
<div class="container">
	<div class="row">
		<div class="col-lg-8">
			<!-- news Details Section -->
			<section id="news-details" class="news-details section">
				<div class="container">
					<article class="article">
						<h2 class="title">{$_modx->resource.pagetitle}</h2>
					
						<div class="meta-top">
							<ul>
								<li class="d-flex align-items-center"><i class="bi bi-clock"></i><time
							datetime="{$publishedon | date_format : '%Y-%m-%d'}">{$publishedon | rus_months}</time></li>
							</ul>
						</div><!-- End meta top -->
					
						<div class="content">{$_modx->resource.content}</div>
						<!-- End post content -->
					</article>
					<div class="come-back">
						<button 
							onclick="window.history.go(-1); return false;"
							class="read-more"><i class="bi bi-arrow-left"></i>
							<span>{'site.back_link' | lexicon}</span>
						</button>
					</div>
				</div>
			</section><!-- /news Details Section -->
		</div>
		<div class="col-lg-4 sidebar">
			<div class="widgets-container">
			<!-- Recent Posts Widget -->
				<div class="recent-posts-widget widget-item">
					<h3 class="widget-title">{'site.news_widget_title' | lexicon}</h3>
					{set $newsId = $_modx->runSnippet('getBabelId', ['id'=>4, 'key'=>$_modx->config.cultureKey])}
					{'!pdoResources' | snippet : [
						'parents' => $newsId,
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
</div>
{/block}