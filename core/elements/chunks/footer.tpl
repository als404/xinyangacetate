<footer id="footer" class="footer dark-background mt-auto">
	<div class="container footer-top">
		<div class="row gy-4">
			<div class="col-lg-5 col-md-6 footer-about">
				<a href="index.html" class="logo d-flex align-items-center">
				<span class="sitename">{$_modx->config.site_name}</span>
				</a>
				<div class="footer-contact pt-3">
					{if $_modx->config.company_name?}
						<p>{$_modx->config.company_name}</p>
					{/if}
					{if $_modx->config.address?}
						<p>{$_modx->config.address}{if $_modx->config.company_info?}<br>{$_modx->config.company_info}{/if}</p>
					{/if}
					{if $_modx->config.phone1?}
						<p class="mt-3"><strong>{'site.phone' | lexicon}:</strong> <span><a href="tel:+{$_modx->config.phone1 | tel}"
						>{$_modx->config.phone1}</a></span></p>
					{/if}
					{if $_modx->config.phone2?}
						<p class=""><strong>{'site.phone' | lexicon}:</strong> <span><a href="tel:+{$_modx->config.phone2 | tel}"
						>{$_modx->config.phone2}</a></span></p>
					{/if}
					{if $_modx->config.email?}
						<p><strong>{'site.email' | lexicon}:</strong> <span><a
						href="mailto:{$_modx->config.email}">{$_modx->config.email}</a></span>
						</p>
					{/if}
				</div>
				<div class="social-links d-flex mt-4">
					{if $_modx->config.social_whatsapp_group?}
					<a href="{$_modx->config.social_whatsapp_group}" target="_blank"><i class="bi-brands bi-telegram"></i></a>
					{/if}
					{if $_modx->config.social_telegram_group?}
					<a href="{$_modx->config.social_telegram_group}" target="_blank"><i class="bi-brands bi-whatsapp"></i></a>
					{/if}
					{if $_modx->config.social_instagram_group?}
					<a href="{$_modx->config.social_instagram_group}" target="_blank"><i class="bi-brands bi-instagram"></i></a>
					{/if}
					{if $_modx->config.social_facebook_group?}
					<a href="{$_modx->config.social_facebook_group}" target="_blank"><i class="bi-brands bi-facebook"></i></a>
					{/if}
				</div>
			</div>
	
			<div class="col-lg-2 col-md-3 footer-links">
				<h4>{'site.quicklinks' | lexicon}</h4>
				{set $quickLinks = $_modx->config.menu_bottom__start | split}
				<ul class="footer-list">
				{foreach $quickLinks as $link}
					<li>
						<a href="{$_modx->makeUrl($link)}">{$link | resource : 'pagetitle'}</a>
					</li>
				{/foreach}
				</ul>
			</div>

			<div class="col-lg-4 col-md-3 footer-links">
				<h4>{'site.supportcenter' | lexicon}</h4>
				{set $supportLinks = $_modx->config.menu_bottom__support | split}
				<ul class="footer-list">
				{foreach $supportLinks as $link}
					<li>
						<a href="{$_modx->makeUrl($link)}">{$link | resource : 'pagetitle'}</a>
					</li>
				{/foreach}
				</ul>
			</div>

		</div>
	</div>

	<div class="container copyright text-center mt-4">
		<p>© {'' | date :"Y"} {if $_modx->config.company_name?}<span class="px-1 sitename"
		>{$_modx->config.company_name}.</span>{/if} <span>{'site.copyright' | lexicon}</span></p>
	</div>

</footer>
<!-- Scroll Top -->
<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"
><i class="bi bi-arrow-up-short"></i></a>

<!-- Preloader -->
<div id="preloader"></div>