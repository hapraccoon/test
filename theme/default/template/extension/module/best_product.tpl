<a href="<?php echo $product['href']; ?>" class="card popular">
    <div class="btn"><?php echo $heading_title; ?></div>
    <figure>
        <img src="/image/<?php echo $product['thumb']; ?>" alt="">
    </figure>
    <div class="footer">
        <?php echo $product['name']; ?>
        <div class="price">
            <?php if (!$product['special']) { ?>
            <span><?php echo $product['price']; ?> ₽</span>
            <?php } else { ?>
            <span class="before"><?php echo $product['special']; ?> ₽</span>
            <span><?php echo $product['price']; ?> ₽</span>
            <?php } ?>
        </div>
    </div>
</a>
