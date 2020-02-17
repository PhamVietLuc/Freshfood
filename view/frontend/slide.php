<div id="home_slider" class="uk-slider-section">
    <?php foreach ($slide as $rows): ?>
    <div>
        <div class="uk-grid">
            <div class="uk-width-medium-1-1">
                <img width="1920" height="700" alt="Shop Slide" src="public/upload/slide/<?php echo $rows->img; ?>"
                     style=" width: 100%; height: auto;">
            </div>           
        </div>
        <div class="uk-overlay-panel">
            <div class="uk-container uk-container-center uk-height-1-1 uk-width-1-1 uk-flex uk-flex-middle">
                <div class="uk-width-medium-3-6 uk-text-left">
                    <div class="wow fadeInLeft slider-text" data-wow-delay="0.7s">
                        <h3 class="lato85 lato56 uk-text-primary"><?php echo $rows->title_1; ?></h3>
                    </div>
                    <div class="wow fadeInLeft slider-text slider-text-2" data-wow-delay="1.2s">
                        <h1 class="lato85 lato56 uk-text-primary"><?php echo $rows->title_2; ?></h1>
                    </div>
                    <div class="wow fadeInUp  slider-text-3" data-wow-delay="1.7s">
                        <h1 class="lato85 lato56 uk-text-white"><?php echo $rows->title_3; ?></h1>
                    </div>
                    <div class="wow fadeInUp" data-wow-delay="2.5s">
                        <a class="text-uppercase btn btn-primary btn-lg shop-button"
                           href="ca-hoi-na-uy.html">Mua ngay</a>
                    </div>
                </div>
                 
            </div>
        </div>  
    </div>
    <?php endforeach; ?>
</div>

