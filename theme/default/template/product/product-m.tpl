
<?php echo $header; ?>

<main class="page product">
    <div id="breadcrumb">
        <div class="width">
            <ul>
                <?php foreach ($breadcrumbs as $key => $breadcrumb) { ?>
                <li>
                    <a href="<?php echo $breadcrumb['href']; ?>" ><?php echo $breadcrumb['text']; ?></a>
                </li>
                <?php if ((count($breadcrumbs) - 1) > $key) { ?>
                <i class="fa fa-chevron-right"></i>
                <?php } ?>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="product-description">
        <div class="width">
            <div class="slider">
                <div class="name"><?php echo $heading_title; ?></div>
                <div class="thumbnails">
                    <?php if ($images) { ?>
                    <div class="images">
                        <div class="image-additional">
                            <a class="thumbnail active fancybox" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" data-preview="<?php echo $thumb['img']; ?>" data-order="0" rel="gallery">
                                <img src="<?php echo $thumb['mini']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
                            </a>
                        </div>
                        <?php $i = 1; ?>
                        <?php foreach ($images as $image) { ?>
                        <div class="image-additional">
                            <a class="thumbnail fancybox" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" data-preview="<?php echo $image['preview']; ?>" rel="gallery">
                                <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
                            </a>
                        </div>
                        <?php $i++; } ?>
                    </div>
                    <?php } ?>
                    <?php if (!empty($thumb)) { ?>
                    <div class="thumb-block">
                        <a class="thumbnail fancybox" href="<?php echo $thumb['popup']; ?>" title="<?php echo $heading_title; ?>" rel="gallery" data-order="0">
                            <img src="<?php echo $thumb['img']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
                        </a>
                    </div>
                    <?php } ?>
                </div>
            </div>
            <div class="description">
                <h1><?php echo $heading_title; ?></h1>
                <div class="about-prod">
                    <span>Артикул: <?php echo $sku; ?></span>
                    <span class="in-stock"><img src="/image/system/in_stock.png" alt="есть в наличии"> <?php echo $stock; ?></span>
                </div>
                <div class="cart-block">
                    <?php if ($price) { ?>
                    <div class="price">
                        <?php if ($special) { ?>
                        <span class="before"><?php echo $price; ?></span>
                        <span><?php echo $special; ?></span>
                        <?php } else { ?>
                        <span><?php echo $price; ?></span>
                        <?php } ?>
                    </div>
                    <?php } ?>
                    <?php if ($store_quantity > 0) { ?>
                    <div class="amount" data-key="<?php echo $cart_id; ?>"><div class="minus"></div><?php echo !empty($quantity) ? $quantity : $minimum; ?><div class="plus"></div></div>
                    <div class="button add" id="button-cart" data-id="<?php echo $product_id; ?>" data-amount="<?php echo $minimum; ?>"><?php echo $text_cart; ?></div>
                    <?php } ?>
                </div>
                <div class="text">
                    <span>Описание: </span><br>
                    <?php echo $description; ?>
                </div>
            </div>
        </div>
    </div>
    <div class="width">
        <?php if (!empty($products)) { ?>
        <div class="product-mod">
            <h3><?php echo $text_related; ?></h3>
            <div class="related-products">
                <?php foreach ($products as $product) { ?>
                <div class="card">
                    <?php if (isset($product['product_options'])) { ?>
                    <?php foreach ($product['product_options'] as $product_option) { ?>
                    <?php if ($product_option['name'] == 'Новинка') { ?>
                    <?php if ($product_option['product_option_value'][0]['name'] == 'Да') { ?>
                    <div class="label new">New</div>
                    <?php } ?>
                    <?php } elseif ($product_option['name'] == 'Скидка') { ?>
                    <div class="label discount">-<?php echo $product_option['value']; ?>%</div>
                    <?php } ?>
                    <?php } ?>
                    <?php } ?>
                    <figure>
                        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"></a>
                    </figure>
                    <div class="footer">
                        <a href="<?php echo $product['href']; ?>" class="title"><?php echo $product['name']; ?></a>
                        <?php if ($product['price']) { ?>
                        <div class="price">
                            <?php if ($product['special']) { ?>
                            <span class="before"><?php echo $product['price']; ?></span>
                            <span><?php echo $product['special']; ?></span>
                            <?php } else { ?>
                            <span><?php echo $product['price']; ?></span>
                            <?php } ?>
                        </div>
                        <?php } ?>
                        <?php if ($product['quantity'] > 0) { ?>
                        <div class="button add" data-id="<?php echo $product['product_id']; ?>" data-amount="<?php echo $product['minimum']; ?>"><?php echo $text_cart; ?></div>
                        <?php } else { ?>
                        <span class="in-stock"><img src="/image/system/in_stock.png" alt="есть в наличии"> <?php echo $product['stock']; ?></span>
                        <?php } ?>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
        <script type="text/javascript">
            $(document).ready(function() {
                $('.related-products').slick({
                    dots: false,
                    infinite: true,
                    prevArrow: '<button type="button" class="slick-prev"></button>',
                    nextArrow: '<button type="button" class="slick-next"></button>',
                    speed: 300,
                    slidesToShow: 4,
                    slidesToScroll: 4,
                    responsive: [
                        {
                            breakpoint: 960,
                            settings: {
                                slidesToShow: 3,
                                slidesToScroll: 3
                            }
                        },
                        {
                            breakpoint: 720,
                            settings: {
                                slidesToShow: 2,
                                slidesToScroll: 2
                            }
                        },
                        {
                            breakpoint: 624,
                            settings: {
                                dots: true,
                                arrows: false,
                                slidesToShow: 1,
                                slidesToScroll: 1
                            }
                        }
                        // You can unslick at a given breakpoint now by adding:
                        // settings: "unslick"
                        // instead of a settings object
                    ]
                });
            });
        </script>
        <?php } ?>
        <?php echo $content_bottom; ?>
        <script type="text/javascript">
            $(document).ready(function () {
                $('.fancybox').fancybox({
                    loop: true,
                    animationEffect: 'fade',
                    transitionOut: 'fade',
                    transitionIn: 'fade',
                    afterClose: function () {
                        $('.thumbnails').find('.images .image-additional').each(function () {
                            $(this).find('.thumbnail').removeAttr('data-fancybox-group-rel').attr('rel', 'gallery').addClass('fancybox');
                        });
                    }
                });
            });
        </script>
    </div>
</main>

<?php echo $footer; ?>