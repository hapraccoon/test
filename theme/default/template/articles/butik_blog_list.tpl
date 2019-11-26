<?php echo $header; ?>
<div class="container">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
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
      <div class="blog-filter">
        <div class="row">
          <div class="col-md-7 col-sm-4 col-xs-12"></div>
          <div class="col-md-3 col-sm-5 col-xs-8">
            <div class="form-group input-group input-group-sm">
              <label class="input-group-addon hidden-xs" for="input-sort"><?php echo $text_sort; ?></label>
              <select id="input-sort" class="form-control" onchange="location = this.value;">
                <?php foreach ($sorts as $sorts) { ?>
                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="col-md-2 col-sm-3 col-xs-4">
            <div class="form-group input-group input-group-sm">
              <label class="input-group-addon" for="input-limit"><span class="hidden-xs"><?php echo $text_limit; ?></span></label>
              <select id="input-limit" class="form-control" onchange="location = this.value;">
                <?php foreach ($limits as $limits) { ?>
                <?php if ($limits['value'] == $limit) { ?>
                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
        </div>
      </div>
        <div class="row">
        <?php foreach ($blogs as $blog) { ?>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
            <div class="blog-thumb">
            <?php if($blog['thumb']){ ?>
            <div class="image">
                <a href="<?php echo $blog['href']; ?>"><img src="<?php echo $blog['thumb']; ?>" alt="<?php echo $blog['title']; ?>" title="<?php echo $blog['title']; ?>" class="img-responsive" /></a>
            </div>
            <?php } ?>
            <div class="blog-article">
                <h4><a class="name" href="<?php echo $blog['href']; ?>"><?php echo $blog['title']; ?></a></h4>
                <div class="description"><?php echo $blog['description']; ?></div>
                <div class="post-meta">
                    <a class="blog-preview-btn" href="<?php echo $blog['href']; ?>"><i class="fa fa-file-text"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_readmore; ?></span></a>
                    <span class="article-date"><i class="fa fa-calendar"></i> <?php echo date("d.m.Y",strtotime($blog['data_added']));?></span>
                </div>
            </div>
            </div>
        </div>
        <?php } ?>
        </div>
        <div class="row">
            <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
            <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
        <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>