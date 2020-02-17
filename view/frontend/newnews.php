<section class="position-a">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12">
                <div class="module title2">
                    <h3 class="module-title text-uppercase">Bài viết mới</h3>
                    <ul class="uk-grid" data-uk-grid-match>
                        <?php foreach($newnews as $rows): ?>
                            <li class="sprocket-strips-s-block uk-width-medium-1-3 uk-width-small-1-2 uk-width-xsmall-1-1">
                                <div class="sprocket-strips-s-item">
                                    <a class="strips-thumbnail"
                                    href="index.php?controller=detail_product&id=<?php echo $rows->pk_news_id; ?>">
                                    <img class="uk-border-rounded" src="" alt=""></a>
                                    <div class="strips-infos uk-float-left">
                                        <div class="date">21, Mar<div class="year">2019</div>
                                        </div>
                                    </div>  
                                    <div class="sprocket-strips-s-content">
                                        <h6 class="sprocket-strips-s-title">
                                            <a href="index.php?controller=detail_product&id=<?php echo $rows->pk_news_id; ?>"><?php echo $rows->name; ?></a></h6>
                                            <span class="sprocket-strips-s-text"> <?php echo $rows->content; ?></span>
                                        </div>
                                    </div>
                                </li> 
                            <?php endforeach; ?>                   
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>