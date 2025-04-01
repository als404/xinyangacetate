<header id="header" class="header d-flex align-items-center sticky-top">
	<div class="container-fluid container-xl d-flex align-items-center">
		{set $id = $_modx->resource.id}
		{if $id != $_modx->runSnippet('getBabelId', ['id'=>1, 'key'=>$_modx->config.cultureKey])}
		<a href="{$_modx->makeUrl($_modx->runSnippet('getBabelId', ['id'=>1, 'key'=>$_modx->config.cultureKey]))}" class="logo d-flex align-items-center me-auto">
			<!-- Uncomment the line below if you also wish to use an image logo -->
			<!-- <img src="img/logo.png" alt=""> -->
			<h1 class="sitename">xinyangacetate</h1>
		</a>
		{else}
		<div class="logo d-flex align-items-center me-auto">
			<h1 class="sitename">xinyangacetate</h1>
		</div>
		{/if}
				{set $id = $_modx->resource.id}

		<nav id="navmenu" class="navmenu">
			
				{'!pdomenu' | snippet : [
                'parents' => 0,
                'level' => 1,
                'tplOuter' => '@INLINE <ul itemscope itemtype="http://schema.org/SiteNavigationElement">{{+wrapper}}[[BabelLinks? &tpl=`tplBabellink` &showCurrent=`1` &includeUnlinked=`1` &ignoreSiteStatus=`1` &activeCls=`babel_active`]]</ul>',
                'tpl' => '@INLINE <li><a itemprop="url" href="{$link}" {{+attributes}}>{$menutitle}</a></li>{{+wrapper}}',
                'tplHere' => '@INLINE <li itemprop="url" class="active" {{+attributes}}>{$menutitle}</li>{{+wrapper}}'
        ]}
			<i class="mobile-nav-toggle d-lg-none bi bi-list"></i>
		</nav>
        
	</div>
</header>