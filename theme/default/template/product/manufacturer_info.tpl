<?php echo $header; ?>
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
<main class="page">
    <div class="width">
        <h1><?php echo $heading_title; ?></h1>
        <div class="category-block">
            <aside class="left_column">
                <div class="filter">
                    <div class="item">
                        <div class="title">Цена</div>
                        <div class="cont active">
                            <div class="slide">
                                <div id="slider-range"></div>
                                <div class="default">
                                    <span id="def-min">250</span>
                                    <span id="def-max">1250</span>
                                </div>
                                <div class="result">
                                    <input type="text" id="min" name="lowprice"> — <input type="text" name="highprice" id="max">
                                </div>
                            </div>
                            <script type="text/javascript">
                                $(function() {
                                    $("#slider-range").slider({
                                        range: true,
                                        min: 80,
                                        max: 1250,
                                        values: [<?php echo !empty($lowprice) ? $lowprice : 80; ?>, <?php echo !empty($highprice) ? $highprice : 1250; ?>],
                                        slide: function(event, ui) {
                                            $("#min").val(ui.values[0]);
                                            $("#max").val(ui.values[1]);
                                        }
                                    });
                                    $("#min").val($("#slider-range").slider("values", 0));
                                    $("#max").val($("#slider-range").slider("values", 1));
                                    $("#def-min").text($("#slider-range").slider("option", "min"));
                                    $("#def-max").text($("#slider-range").slider("option", "max"));
                                } );
                            </script>
                        </div>
                    </div>
                    <!-- div class="item">
                        <div class="title">Цвет</div>
                        <div class="cont"></div>
                    </div -->
                    <button id="button-filter" type="button" class="button button-filter">Показать</button>
                </div>
                <script type="text/javascript">
                    console.log(window.location);
                    $('#button-filter').on('click', function() {
                        filter = [];

                        $('input[name^=\'filter\']:checked').each(function(element) {
                            filter.push(this.value);
                        });

                        var price = '';
                        if ($('input[name="lowprice"]').length > 0 && $('input[name="highprice"]').length > 0) {
                            price += '&lowprice=' + $('input[name="lowprice"]').val() + '&highprice=' + $('input[name="highprice"]').val();
                        }

                        location = '<?php echo $action; ?>&filter=' + filter.join(',') + price;
                    });
                </script>
            </aside>
            <div class="main-content">
                <div class="sort-view">
                    <div class="sort">
                        <span><?php echo $text_sort; ?></span>
                        <?php if ($sorts['name-asc']['value'] == $sort . '-' . $order || $sorts['name-desc']['value']  == $sort . '-' . $order) { ?>
                        <?php if ($sorts['name-asc']['value'] == $sort . '-' . $order) { ?>
                        <a class="active" href="<?php echo $sorts['name-desc']['href']; ?>">По названию <img src="/image/catalog/sort-asc.png"></a>
                        <?php } else { ?>
                        <a class="active" href="<?php echo $sorts['name-asc']['href']; ?>">По названию <img src="/image/catalog/sort-desc.png"></a>
                        <?php } ?>
                        <?php } else { ?>
                        <a href="<?php echo $sorts['name-asc']['href']; ?>">По названию</a>
                        <?php } ?>

                        <?php if ($sorts['price-asc']['value'] == $sort . '-' . $order || $sorts['price-desc']['value']  == $sort . '-' . $order) { ?>
                        <?php if ($sorts['price-asc']['value'] == $sort . '-' . $order) { ?>
                        <a class="active" href="<?php echo $sorts['price-desc']['href']; ?>">По цене <img src="/image/catalog/sort-asc.png"></a>
                        <?php } else { ?>
                        <a class="active" href="<?php echo $sorts['price-asc']['href']; ?>">По цене <img src="/image/catalog/sort-desc.png"></a>
                        <?php } ?>
                        <?php } else { ?>
                        <a href="<?php echo $sorts['price-asc']['href']; ?>">По цене</a>
                        <?php } ?>
                    </div>
                    <div class="view">
                        <div class="amount">
                            <span>Отображать:</span>
                            <?php foreach ($limits as $limits) { ?>
                            <a <?php echo $limits['value'] == $limit ? 'class="active"' : ''; ?> href="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></a>
                            <?php } ?>
                        </div>
                        <div class="orientation">
                            <?php foreach ($views as $item) { ?>
                            <a href="<?php echo $item['href']; ?>" class="<?php echo $item['value']; ?> <?php echo $item['value'] == $view ? 'active' : ''; ?>"></a>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="products <?php echo $view; ?>">
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
                            <span class="in-stock"><img src="/image/catalog/in_stock.png" alt="есть в наличии"> <?php echo $product['stock']; ?></span>
                            <?php } ?>
                        </div>
                    </div>
                    <?php } ?>
                    <div class="pagination"><?php echo $pagination; ?></div>
                </div>
            </div>
        </div>
    </div>
</main>
<?php echo $footer; ?>
