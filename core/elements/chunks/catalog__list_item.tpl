<div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
    <div class="catalog-item">
    	{if $_modx->config.cultureKey != 'ru'}
				{set $imgPath = '/assets/img/'~ $id | resource:'image'}
			{else}
				{set $imgPath = $id | resource:'image'}
			{/if}
        <div class="pic"><img src="{$imgPath | pthumb : 'f=webp'}" class="img-fluid" alt="{$pagetitle}"></div>
        <div class="title text-center">
            <a href="{$uri}" class="stretched-link">{$pagetitle}</a>
        </div>
    </div>
</div><!--/item-->