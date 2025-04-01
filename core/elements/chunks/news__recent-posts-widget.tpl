<div class="post-item">
	{if $_modx->config.cultureKey != 'ru'}
		{set $imgPath = '/assets/img/'~ $id | resource:'image'}
	{else}
		{set $imgPath = $id | resource:'image'}
	{/if}
	<img src="{$imgPath | pthumb : 'h=80&w=80&zc=C&f=webp'}" alt="" class="flex-shrink-0">
	<div>
		<h4><a href="{$uri}">{$pagetitle}</a></h4>
		<time datetime="{$publishedon | date_format : '%Y-%M-%d'}"
		>{$publishedon | rus_months}</time>
	</div>
</div><!-- End recent post item-->