<?php echo $header; ?>

<main class="page">
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
  <div class="width">
    <h1><?php echo $heading_title; ?></h1>
    <div class="category-block">
      <?php echo $column_left; ?>
      <div class="main-content">
        <div class="sort-view">
          <div class="sort">
            <span><?php echo $text_sort; ?></span>
            <?php if ($sorts['name-asc']['value'] == $sort . '-' . $order || $sorts['name-desc']['value']  == $sort . '-' . $order) { ?>
            <?php if ($sorts['name-asc']['value'] == $sort . '-' . $order) { ?>
            <a class="active" href="<?php echo $sorts['name-desc']['href']; ?>">По названию <img src="/image/system/sort-asc.png"></a>
            <?php } else { ?>
            <a class="active" href="<?php echo $sorts['name-asc']['href']; ?>">По названию <img src="/image/system/sort-desc.png"></a>
            <?php } ?>
            <?php } else { ?>
            <a href="<?php echo $sorts['name-asc']['href']; ?>">По названию</a>
            <?php } ?>

            <?php if ($sorts['price-asc']['value'] == $sort . '-' . $order || $sorts['price-desc']['value']  == $sort . '-' . $order) { ?>
            <?php if ($sorts['price-asc']['value'] == $sort . '-' . $order) { ?>
            <a class="active" href="<?php echo $sorts['price-desc']['href']; ?>">По цене <img src="/image/system/sort-asc.png"></a>
            <?php } else { ?>
            <a class="active" href="<?php echo $sorts['price-asc']['href']; ?>">По цене <img src="/image/system/sort-desc.png"></a>
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
                <span class="in-stock"><img src="/image/system/in_stock.png" alt="есть в наличии"> <?php echo $product['stock']; ?></span>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
          <div class="row">
            <div class="col-sm-6 text-left pagination"><?php echo $pagination; ?></div>
            <div class="col-sm-6 text-right"><?php echo $results; ?></div>
          </div>
          <div>
            <?php if (!$categories && !$products) { ?>
            <p><?php echo $text_empty; ?></p>
            <div class="buttons">
                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
            </div>
            <?php } ?>
            <?php echo $content_bottom; ?>
          </div>
        </div>
      </div>
    </div>
  </div>
</main>
<?php echo $footer; ?>
