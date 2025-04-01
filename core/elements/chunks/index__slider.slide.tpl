{foreach $slider as $slide index=$index}
	{if $slide.published == '1'}
		{set $slidePath = $img_dir~'hero-carousel/'~$slide.image}
		<div class="carousel-item{if $index == 0 } active{/if}">
			<img src="{$slidePath | pthumb : 'f=webp'}" alt="slider {$index}">
			<div class="carousel-container">
			{if $slide.name?}
				<h2>{$slide.name}<br></h2>
			{/if}
			{if $slide.description?}
				<p>{$slide.description}</p>
			{/if}
			</div>
		</div><!-- End Carousel Item -->
	{/if}
{/foreach}