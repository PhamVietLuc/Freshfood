<section class="top-a">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12">
                <div class="module title2">
                    <div class="module-content">
                        <div data-uk-scrollspy="{cls:'uk-animation-scale-up', delay:400}"
                             class="uk-grid uk-grid-width-medium-1-3 uk-scrollspy-init-inview uk-scrollspy-inview"
                             data-uk-grid-margin="">
                              <?php foreach($shoptop as $rows): ?>
                            <a href="tin-tuc">
                                <figure class="uk-overlay uk-border-rounded uk-overlay-hover block">
                                    <img width="600" height="400"
                                         src="public/upload/shoptop/<?php echo $rows->img; ?>"
                                         alt="<?php echo $rows->title_1; ?>" class="uk-border-rounded uk-overlay-scale block">
                                    <figcaption
                                            class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-ignore">
                                        <h6><?php echo $rows->title_1; ?></h6>
                                        <p><?php echo $rows->title_2; ?></p>
                                    </figcaption>
                                </figure>
                            </a>
                            <?php endforeach ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>