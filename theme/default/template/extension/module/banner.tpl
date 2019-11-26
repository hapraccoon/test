<div class="banner">
    <h3><?php echo $name; ?></h3>
    <div class="block">
        <div class="brend-block">
            <?php foreach ($banners as $banner) { ?>
            <figure><a href="<?php echo $banner['link'] . $banner['banner_id']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"></a></figure>
            <?php } ?>
            <div class="more">
                <div><span>Показать всё</span><img src="/image/system/arrow-down.png" alt=""></div>
            </div>
        </div>
    </div>
</div>