<div class="banner">
    <h3><?php echo $heading_title; ?></h3>
    <div class="block">
        <div class="brend-block">
            <?php foreach ($manufacturers as $manufacturer) { ?>
                <figure>
                    <a href="<?php echo $manufacturer['href']; ?>">
                        <?php 
                            if (strlen($manufacturer['thumb']) > 0) { ?>
                                <img src="<?php echo $manufacturer['thumb']; ?>" alt="<?php echo $manufacturer['name']; ?>">
                         <?php } else  { echo $manufacturer['name']; } ?> 
                    </a>
                </figure>
            <?php } ?>
            <div class="more">
                <div><span>Показать всё</span><img src="/image/system/arrow-down.png" alt=""></div>
            </div>
        </div>
    </div>
</div>