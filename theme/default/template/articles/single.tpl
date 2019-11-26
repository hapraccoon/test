<?php echo $header; ?>

<main>
    <div id="breadcrumb">
        <div class="width">
            <ul>
                <?php foreach ($breadcrumbs as $key => $breadcrumb) { ?>
                <li>
                    <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                </li>
                <?php if ((count($breadcrumbs) - 1) > $key) { ?>
                <i class="fa fa-chevron-right"></i>
                <?php } ?>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="width">
        <div class="container">
            <div class="title-category"><h1><?php echo $heading_title; ?></h1></div>
            <div class="row"><?php echo $column_left; ?>
                <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
                <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-9'; ?>
                <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
                <?php } ?>
                <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                    <div class="blog-page">
                        <?php if ($image) { ?>
                        <div class="image">
                            <img src="<?php echo $image; ?>" alt="" title="" class="img-responsive" />
                        </div>
                        <?php } ?>
                        <?php echo $description; ?>
                        <div class="share-block">
                            <?php echo $blog_soc_code; ?>
                        </div>
                        <p class="text-date"><i class="fa fa-calendar"></i> <?php echo $date_added; ?></p>
                    </div>
                    <?php echo $content_bottom; ?>
                </div>
                <?php echo $column_right; ?></div>
        </div>
    </div>
</main>
<?php echo $footer; ?>