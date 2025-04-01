<!-- Page Title -->
<div class="page-title light-background">
{set $templateId = $_modx->resource.template}


	<div class="container d-lg-flex justify-content-between align-items-center">
	{if $_modx->resource.template in list [6,7]} 
	{else}
		<h1 class="mb-2 mb-lg-0">{$_modx->resource.pagetitle}</h1>
	{/if}
	
		<nav class="breadcrumbs">
		
{'pdoCrumbs' | snippet : [
	'showCurrent' => 1,
	'showHidden' => 1,
	'showHome' => 1,
	'tplWrapper' => '@INLINE <ol class="breadcrumb" itemscope itemtype="http://schema.org/BreadcrumbList">{{+output}}</ol>',
	'tpl' => '@INLINE <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem"><a itemprop="item" href="{{+link}}"><span itemprop="name">{{+menutitle}}</span></a><meta itemprop="position" content="{{+idx}}" /></li>',
	'tplCurrent' => '@INLINE <li class="current" aria-current="page" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem"><meta itemprop="item" content="{{+link}}">{{+menutitle}}<meta itemprop="position" content="{{+idx}}" /></li>'
]}
		</nav>
	</div>
</div><!-- End Page Title -->