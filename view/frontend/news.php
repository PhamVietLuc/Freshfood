<section class="page-title"><div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12 title">
            <h2>Tin tức</h2>

            <ul class="breadcrumb"><li><a href="trang-chu">Trang chủ</a></li><li class="active">Tin tức</li>
</ul>        </div>
    </div>
</div>
</section>

<section class="main-body">
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-9">
        <div id="w0" class="blog" itemscope="" itemtype="http://schema.org/Blog">
<div class="items-row row-0 row clearfix" data-key="105">
              
<div class="col-sm-12">
      <?php foreach ($news as $rows): ?>
    <article class="item column-1" itemprop="blogPost" itemscope=""
             itemtype="http://schema.org/BlogPosting">
        <div class="entry-header has-post-format">
            <span class="post-format"><i class="uk-icon-thumb-tack"></i></span>
            <dl class="article-info">
                <dt class="article-info-term"></dt>
                <dd class="category-name">
                    <i class="uk-icon-folder-open-o"></i>
                    <span data-original-title="Tin tức" data-toggle="tooltip" itemprop="genre">Tin tức</span>                </dd>
                <dd class="published">
                    <i class="uk-icon-calendar-o"></i>
                    <time data-origin-title="Ngày xuất bản" itemprop="datePublished" data-toggle="tooltip" datetime="2018-05-14+0716:22:16">
                        <?php 
                        $i = time();
                        echo (date("Y-m-d",$i));
                         ?>
                    </time>                
                </dd>
                            </dl>
            <h2 itemprop="name">
                <a href="chi-tiet-tin-tuc/<?php echo $rows->pk_news_id; ?>" itemprop="url"><?php echo $rows->name; ?></a>            </h2>
        </div>
                    <p><img src="public/upload/news/<?php echo $rows->img; ?>"></p>
        
      <?php echo $rows->content; ?>
        <p class="readmore">
            <a class="btn btn-default" href="chi-tiet-tin-tuc/<?php echo $rows->pk_news_id; ?>" itemprop="url">Chi tiết ...</a>        </p>
    </article>
    <?php endforeach; ?>
    <!-- end item -->
</div><!-- end col-sm-* -->

</div>
</div>            
</div>
<div id="right" class="col-sm-3 col-md-3">              
<div class="module title1">
    <h3 class="module-title">Bài viết mới</h3>
    <div class="module-content">  
        <ul class="menu">
            <?php foreach ($news as $rows): ?>
            <li><a href="chi-tiet-tin-tuc/<?php echo $rows->pk_news_id; ?>"><?php echo $rows->name; ?></a></li>
        <?php endforeach; ?>
        </ul>
    </div>
</div>
</div>
        </div>
    </div>
</section>