<a id="cart" href="<?php echo $cart; ?>">
  <?php if ($count > 0) { ?>
  <span class="count"><?php echo $count; ?></span>
  <?php } ?>
  <span class="sum"><?php echo $sub_total; ?></span>
  <!--<span id="cart-total"><?php echo $text_items; ?></span>-->
</a>