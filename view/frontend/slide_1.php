        <section class="bottom-a hidden-print">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="module title2">
                            <h3 class="module-title text-uppercase">Nhà cung cấp</h3>
                            <div class="module-content">
                                
                                    <div id="provider-slide">
                                        <?php foreach($slide_1 as $rows): ?>
                                        <div>
                                            <div class="uk-text-center" style="margin: 20px">
                                                <img class="uk-border-rounded" src="public/upload/slide_1/<?php echo $rows->img; ?>" width="154" alt="Greenham">                                     
                                            </div> 
                                        </div>
                                         <?php endforeach; ?> 
                                    </div>

                                <div class="uk-grid">
                                    <div class="uk-width-small-1-5 uk-push-2-5 uk-flex uk-flex-center">
                                        <a href="#" class="uk-slidenav uk-slidenav-previous slick-nav"
                                           data-cmd="slickPrev"></a>
                                        <a href="#" class="uk-slidenav uk-slidenav-next slick-nav"
                                           data-cmd="slickNext"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>