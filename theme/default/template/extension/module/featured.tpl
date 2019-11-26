<div class="product-mod">
  <h3><?php echo $heading_title; ?></h3>
  <div class="best-products">
    <?php foreach ($products as $product) { ?>
    <div class="card">
      <?php if (isset($product['product_options'])) { ?>
      <?php foreach ($product['product_options'] as $product_option) { ?>
      <?php if ($product_option['name'] == 'Скидка') { ?>
      <div class="label">-<?php echo $product_option['value']; ?>%</div>
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
  $(document).ready(function(){
    $('.best-products').slick({
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
          breakpoint: 540,
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