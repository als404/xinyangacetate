<div class="col-lg-12">
	<article>
		
		<!-- <div class="post-img">
		<img src="$id | resource : 'image' | pthumb : 'f=webp'}" alt="" class="img-fluid">
		</div> -->

		<h2 class="title">
			<a href="{$uri}">{$pagetitle}</a>
		</h2>

		<div class="meta-top">
			<ul>
				<li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a
				href="{$uri}"><time
				datetime="{$publishedon | date_format : '%Y-%m-%d'}">{$publishedon | rus_months}</time></a></li>
			</ul>
		</div>

		<div class="content">
			<p>{$description}</p>
		
			<div class="read-more">
				<a href="{$uri}">{'site.read_more_link' | lexicon}</a>
			</div>
		</div>

	</article>
</div><!-- End post list item -->