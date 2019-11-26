<?php echo $header; ?>
<main class="page cart">
  <div class="width">
    <h1><?php echo $heading_title; ?></h1>
    <div class="wrapper-with-shadows right-shadow">
      <div class="table-responsive">
        <div class="table">
          <div class="tr">
            <div class="th"></div>
            <div class="th title">Товар</div>
            <div class="th price">Цена</div>
            <div class="th count">Количество</div>
            <div class="th sum">Сумма</div>
            <div class="th"></div>
          </div>
          <?php foreach ($products as $product) { ?>
          <div class="tr" data-key="<?php echo $product['cart_id']; ?>">
            <div class="td img"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"></a></div>
            <div class="td"><?php echo $product['name']; ?></div>
            <div class="td price" data-price="<?php echo $product['price']; ?>"><?php echo $product['price']; ?></div>
            <div class="td quantity"><div class="amount" data-key="<?php echo $product['cart_id']; ?>"><div class="minus"></div><?php echo $product['quantity']; ?><div class="plus"></div></div></div>
            <div class="td price sum"><?php echo $product['total']; ?></div>
            <div class="td delete"><span title="<?php echo $button_remove; ?>"><img src="/image/system/cross.png"><?php echo $button_remove; ?></span></div>
          </div>
          <?php } ?>
        </div>
      </div>
    </div>
    <div class="total">
      <div class="button back" onClick="history.back()">Вернуться к покупкам</div>
      <div class="total-sum">
        <?php foreach ($totals as $total) { ?>
        <?php if ($total['code'] == 'sub_total') { ?>
        <div class="sum">Итого: <span><?php echo $total['text']; ?></span></div>
        <a href="<?php echo $checkout; ?>" class="button to-order">Оформить заказ</a>
        <?php } ?>
        <?php } ?>
      </div>
    </div>
  </div>
</main>
<?php echo $footer; ?>