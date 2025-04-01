{extends 'file:templates/base.tpl'}
{block 'content'}
	{include 'file:chunks/page_title.tpl'}
<!-- Catalog description Section -->
<section class="item__wrapper pb-4">
	<div class="container">
		<h1 class="mb-4">{$_modx->resource.pagetitle}</h1>
		{if $_modx->config.cultureKey != 'ru'}
			{set $imgPath = '/assets/img/'~ $_modx->resource.image}
		{else}
			{set $imgPath = $_modx->resource.image}
		{/if}
		
		{if $imgPath?}
		<div class="item__img float-sl-none float-md-end ">
			<img src="{$imgPath | pthumb : 'f=webp'}" alt="photo - {$_modx->resource.pagetitle}">
		</div>
		{/if}
		
	{if $_modx->resource.content?}
		<div class="item__desc">
		{$_modx->resource.content}
		</div>
	{/if}
		<div class="come-back">
			<button 
				onclick="window.history.go(-1); return false;"
				class="read-more"><i class="bi bi-arrow-left"></i>
				<span>{'site.back_link' | lexicon}</span>
			</button>
		</div>
	</div>
</section>
<!-- /Catalog description Section -->
{/block}