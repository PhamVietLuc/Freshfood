<?php  if(isset($record->name)): ?>
<section class="page-title"><div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12 title">
            <h2>CHI TIẾT TIN</h2>

    </div>
</div>
</section>
<section class="main-body">
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-9">
                <div class="blog" itemscope="" itemtype="http://schema.org/Blog">
                    <div class="row clearfix">
                        <div class="col-sm-12">
                            <article itemtype="http://schema.org/Article" itemscope="" class="item-page">
                                <meta content="en-GB" itemprop="inLanguage">
                                <div>
                                    <dl class="article-info">
                                        <dt class="article-info-term"></dt>
                                        <dd class="category-name">
                                            <i class="uk-icon-folder-open-o"></i>
                                            <span data-original-title="Cơ hội việc làm" data-toggle="tooltip" itemprop="genre">Cơ hội việc làm</span>                                        </dd>
                                        <dd class="published">
                                            <i class="uk-icon-calendar-o"></i>
                                            <time data-origin-title="Ngày xuất bản" itemprop="datePublished" data-toggle="tooltip" datetime="2018-05-22+0713:58:59"><?php 
                        $i = time();
                        echo (date("Y-m-d",$i));
                         ?></time>                                        </dd>
                                                                            </dl>
                                    <h2 itemprop="name"><?php echo $record->name; ?></h2>
                                </div>
                                <div itemprop="articleBody">
                                    <p><img src="public/upload/news/<?php echo $record->img; ?>" alt="<?php echo $record->name; ?>"></p>
                                    <p>&nbsp;</p></div>


                            </article>
                            <!-- end item -->

                            <div class="fb-comments" data-href="http://freshfoods.vn/bac-ninh-tuyen-nhan-nhan-vien-kinh-doanh.html" data-numposts="5" data-width="100%"></div>
                                <?php echo $record->description; ?>
                        </div><!-- end col-sm-* -->
                    </div><!-- end row -->
                </div>
            </div>
            <div id="right" class="col-sm-3 col-md-3">
                
<div class="module title1">
    <h3 class="module-title">Bài viết mới</h3>
    <div class="module-content">
        
        <ul class="menu">
                           <?php
                           $id = isset($_GET["id"]) && is_numeric($_GET["id"])?$_GET["id"]:0;
            $news = model::list_all("select * from news order by pk_news_id=$id desc limit 0,8");
                            foreach ($news as $rows): ?>
            <li><a href="index.php?controller=news_detail&id=<?php echo $rows->pk_news_id; ?>"><?php echo $rows->name; ?></a></li>
        <?php endforeach; ?>
                    </ul>
    </div>
</div>

<div class="module title1">
    <h3 class="module-title">Liên hệ phân phối</h3>
    <div class="module-content">
        <a href="site/contact.html"><img title="Farmer Review" src="images/contact-freshfoods.png"
                                                         alt="Liên hệ phân phối sản phẩm"></a>
    </div>
</div>            </div>
        </div>
    </div>
</section>
<?php endif; ?>   