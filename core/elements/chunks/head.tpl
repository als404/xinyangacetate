<head>
	<base href="{$_modx->config.site_url}">
	<!-- Required meta tags -->
	<meta charset="{$_modx->config.modx_charset}">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title itemprop="headline">{$_modx->resource.seotitle ?: $_modx->resource.pagetitle}</title>

	<link rel="canonical" href="{$_modx->makeUrl($_modx->resource.id, '', '', 'full')}" />
	<meta name="author" content="{$_modx->user.fullname}">
	{if $_modx->config.cultureKey == 'ru'}
	<meta name="language" content="Russian">
	{else}
	<meta name="language" content="English">
	{/if}
	{if $_modx->resource.seodescription?}
	<meta name="description" content="{$_modx->resource.seodescription}">
	{/if}
	{if $_modx->resource.searchable?}
	<meta name="robots" content="index, follow">
	{else}
	<meta name="robots" content="noindex, nofollow">
	{/if}

	<meta property="og:url" content="{$_modx->makeUrl($_modx->resource.id, '', '', 'full')}">
	<meta property="og:type" content="website">
	<meta property="og:title"
		content="{$_modx->resource.longtitle ?: $_modx->resource.pagetitle} | {$_modx->config.site_name}">
	<meta property="og:image" content="{$_modx->config.site_url}{$_modx->resource.img}">
	<meta property="og:description" content="{$_modx->resource.description}">
	<meta property="og:site_name" content="{$_modx->config.site_name}">
	{if $_modx->config.cultureKey == 'ru'}
	<meta property="og:locale" content="ru_RU">
	{else}
	<meta property="og:locale" content="en_US">
	{/if}

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com" rel="preconnect">
	<link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
		rel="stylesheet">

	<!-- Vendor CSS Files -->
	<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	<link href="assets/vendor/aos/aos.css" rel="stylesheet">
	<link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

	<!-- Main CSS File -->
	<link href="assets/css/main.css" rel="stylesheet">
</head>