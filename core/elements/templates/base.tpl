<!DOCTYPE html>
<html lang="{$_modx->config.cultureKey}" prefix="og: http://ogp.me/ns#">
{$_modx->lexicon->load('xinyangacetate:default')}
{$_modx->lexicon->load('babel:translate')}
	{include 'file:chunks/head.tpl'}
{set $img_dir = 'assets/img/'}
	<body class="d-flex flex-column min-vh-100">
		{include 'file:chunks/header.tpl'}
		<main class="main">
			{block 'content'}{/block}
		</main>
		{include 'file:chunks/footer.tpl'}
		{include 'file:chunks/scripts.tpl'}
	</body>
</html>