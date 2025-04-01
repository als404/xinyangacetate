<!-- About Section -->
<section id="about" class="about section">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
        <h2>{'site.about_title' | lexicon}</h2>
        <p>{$_modx->resource.about_title}<br></p>
    </div><!-- End Section Title -->

    <div class="container">

        <div class="row gy-4">

            <div class="col-lg-6 content" data-aos="fade-up" data-aos-delay="100">
                <p>
                    {$_modx->resource.about_block_left__title}
                </p>
                <ul>
                	{set $index_about = json_decode($_modx->resource.about_block_left__list, true)}
                	{foreach $index_about as $about}
                    <li><i class="bi bi-check2-circle"></i> <span>{$about.listItem}</span></li>
                  {/foreach}
                </ul>
            </div>

            <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
                {$_modx->resource.about_block_right__text}
                <a href="{$_modx->makeUrl($_modx->runSnippet('getBabelId', ['id'=>2, 'key'=>$_modx->config.cultureKey]))}" class="read-more"><span>{'site.about_btn' | lexicon}</span><i
                        class="bi bi-arrow-right"></i></a>
            </div>

        </div>

    </div>

</section><!-- /About Section -->