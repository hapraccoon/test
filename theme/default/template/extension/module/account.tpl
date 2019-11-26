<ul class="menu">
    <?php if ($logged) { ?>
    <li><a href="<?php echo $account; ?>"><figure><img src="/image/system/man.png"></figure><?php echo $text_account; ?></a></li>
    <li><a href="<?php echo $order; ?>"><figure><img src="/image/system/history.png"></figure><?php echo $text_order; ?></a></li>
    <li><a href="<?php echo $logout; ?>"><figure><img src="/image/system/out.png"></figure><?php echo $text_logout; ?></a></li>
    <?php } ?>
</ul>