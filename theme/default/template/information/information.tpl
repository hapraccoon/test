<?php echo $header; ?>
<main>
    <div class="width">
        <div class="container">
            <div class="row"><?php echo $column_left; ?>
                <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
                <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-9'; ?>
                <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
                <?php } ?>
                <div id="content" class="<?php echo $class; ?> delivery"><?php echo $content_top; ?>
                    <h1><?php echo $heading_title; ?></h1>
                    <?php echo $description; ?><?php echo $content_bottom; ?></div>
                <?php echo $column_right; ?></div>
        </div>
    </div>
</main>
<?php echo $footer; ?>