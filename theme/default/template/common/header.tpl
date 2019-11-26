<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>

<link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="icon" href="http://goodlac.pro/favicon-16x16.png" type="image/png">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<meta name="yandex-verification" content="7343a08058d05fed" />
<meta name="google-site-verification" content="noR2xO1j8DjZTVhgj8Qs6U1fRwl31na7pL6r9YiXWYo" />
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />

    <?php foreach ($styles as $style) { ?>
    <link href="/<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
    <?php } ?>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    <link rel="stylesheet" type="text/css" href="/catalog/view/theme/default/lib/slick-1.8.0/slick.css"/>
    <link rel="stylesheet" type="text/css" href="/catalog/view/theme/default/lib/jquery-ui-1.12.0/jquery-ui.min.css"/>
    <link href="/catalog/view/theme/default/stylesheet/style.css?v0.43" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
    <?php foreach ($scripts as $script) { ?>
    <script src="/<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
    <!-- Google Tag Manager -->
      <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
      new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
      j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
      'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
      })(window,document,'script','dataLayer','GTM-NQRFVGL');</script>
      <!-- End Google Tag Manager -->
    </head>
    <body>
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NQRFVGL"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    <div class="content-wrapper">
      <div class="header-fix">
        <header>
          <div class="width">
            <div class="mobile_top-wrapper">
                <div class="hamburger_mobile">
                    <div class="line1"></div>
                    <div class="line2"></div>
                    <div class="line3"></div>
                </div>
                <a class="logo" href="<?php echo $home; ?>">
                    <img class="small-logo" src="/image/system/logo.svg" alt="logo">
                </a>
                <div class="mobile_cart">
                    <img class="small-logo" src="/image/system/icon_cart.svg" alt="logo">
                </div>
            </div>
            <div class="hide_mobile-menu">
                <?php echo $search; ?>
                <div class="title title_mobile">
                    <span class="close">Закрыть</span>
                    <span>Меню</span>
                </div>
                <div class="block menu-catalog catalog">
                 <div class="title">Каталог</div>
                    <?php if (!empty($categories_all)) { ?>
                    <ul>
                        <?php foreach ($categories_all as $cat) { ?>
                        <li><a href="<?php echo $cat['href']; ?>"><?php echo $cat['name']; ?></a></li>
                        <?php } ?>
                    </ul>
                <?php } ?>
                </div>
                <div class="my_div">
                  <div class="about_mobile"><a href="/index.php?route=information/about">О Компании</a></div>
                  <div class="discount_mobile"><a href="<?php echo $discount; ?>">Акции</a></div>
                  <div class="delivery_mobile"><a href="/index.php?route=information/delivery">Доставка и оплата</a></div>
                  <div class="magazines_mobile"><a href="<?php echo $contact; ?>">Магазины</a></div>
                  <div class="block contacts">
                      <div class="title">Контакты</div>
                          <ul>
                              <li class="phone"><?php echo $telephone; ?></li>
                              <li class="mail"><?php echo $email; ?></li>
                              <li class="mark"><?php echo $address; ?></li>
                              <li class="soc">
                              <a href="https://vk.com/goodlac"><img src="/image/system/icon_social_vk.svg" alt="vk"></a>
                              <a href="https://www.instagram.com/goodlac.pro"><img src="/image/system/icon_social_insta.svg" alt="instagram"></a>
                              </li>
                          </ul>   
                          <div class="call_us">
                              <a href="tel:<?php echo $telephone; ?>"><img src="/image/system/icon_phone.svg" alt="phone"></a>
                          </div>
                      </div>
                </div>
            </div>

            <div class="navigation">
              <nav>
                <ul>
                <li><a href="/index.php?route=information/about">О нас</a></li>
                  <li><a href="<?php echo $discount; ?>">Акции</a></li>
                  <li><a href="/index.php?route=information/delivery">Доставка и оплата</a></li>
                  <!--li><a href="">Оплата</a></li-->
                  <li><a href="<?php echo $contact; ?>">Магазины</a></li>
                </ul>
              </nav>
              <div class="social">
                <a target="_blank" href="https://vk.com/goodlac"><img src="/image/system/vk.png" alt="vk"></a>
                <a target="_blank" href="https://www.instagram.com/goodlac.pro/"><img src="/image/system/inst.png" alt="instagram"></a>
              </div>
            </div>
            <div class="header-main">
              <div class="menu-small">
                <div class="hamburger"><img src="/image/system/hamburger-pink.png" alt=""></div>
                <div class="menu">
                  <div class="title">
                    <span class="close"></span>
                    <span>Меню</span>
                  </div>
                  <nav>
                    <ul>
                      <li class="sub"><a><span class="close"></span>Все товары</a>
                        <?php if (!empty($categories_all)) { ?>
                          <ul class="sub-menu">
                            <?php foreach ($categories_all as $cat) { ?>
                              <li>
                                <a href="<?php echo $cat['href']; ?>"><?php echo $cat['name']; ?></a>
                              </li>
                            <?php } ?>
                          </ul>
                        <?php } ?>
                      </li>
                      <li><a href="/index.php?route=information/about">О нас</a></li>
                      <li><a href="<?php echo $discount; ?>">Акции</a></li>
                      <li><a href="/index.php?route=information/delivery">Доставка и оплата</a></li>
                      <!--li><a href="">Оплата</a></li-->
                      <li><a href="<?php echo $contact; ?>">Магазины</a></li>
                    </ul>
                  </nav>
                  <div class="info-block">
                    <span class="phone"><?php echo $telephone; ?></span><br>
                    <span class="email"><?php echo $email; ?></span>
                  </div>
                  <div class="social">
                    <a target="_blank" href="https://vk.com/goodlac"><img src="/image/system/vk.png" alt="vk"></a>
                    <a target="_blank" href="https://www.instagram.com/goodlac_"><img src="/image/system/inst.png" alt="instagram"></a>
                  </div>
                </div>
              </div>
              <a class="logo" href="<?php echo $home; ?>">
                <img class="big-logo" src="/image/system/logo.svg" alt="logo">
                <img class="small-logo" src="/image/system/logo.svg" alt="logo">
              </a>
              <?php echo $search; ?>
              <div class="info-block">
                <span class="phone"><?php echo $telephone; ?></span>
                <span class="email"><?php echo $email; ?></span>
              </div>
              <ul>
                <li><a class="office" href="<?php echo $account; ?>"><i class="fa fa-user"></i><span><?php echo $user_email; ?></span></a></li>
                <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
                <li><?php echo $cart; ?></li>
            </div>
          </div>
          <div class="categories">
            <div class="width">
              <ul>
                <li class="all-products"><a>Все товары</a>
                  <?php if (!empty($categories_all)) { ?>
                  <ul class="sub-menu">
                    <?php foreach ($categories_all as $cat) { ?>
                    <?php if (!empty($cat['children'])) { ?>
                    <li class="sub"><a href="<?php echo $cat['href']; ?>"><?php echo $cat['name']; ?><img src="/image/system/arrow-menu.png"></a>
                      <?php } else { ?>
                    <li><a href="<?php echo $cat['href']; ?>"><?php echo $cat['name']; ?></a>
                      <?php } ?>
                      <?php if (!empty($cat['children'])) { ?>
                      <ul class="sub-menu">
                        <?php foreach ($cat['children'] as $c) { ?>
                        <?php if (!empty($c['children'])) { ?>
                        <li class="sub"><a href="<?php echo $c['href']; ?>"><?php echo $c['name']; ?><img src="/image/system/arrow-menu.png"></a>
                          <ul class="sub-menu">
                            <?php foreach ($c['children'] as $item) { ?>
                            <li><a href="<?php echo $item['href']; ?>"><?php echo $item['name']; ?></a></li>
                            <?php } ?>
                          </ul>
                        </li>
                        <?php } else { ?>
                        <li><a href="<?php echo $c['href']; ?>"><?php echo $c['name']; ?></a></li>
                        <?php } ?>
                        <?php } ?>
                      </ul>
                      <?php } ?>
                    </li>
                    <?php } ?>
                  </ul>
                  <?php } ?>
                </li>
                <?php foreach ($categories as $category) { ?>
                <li><a <?php echo $category['hidden_resize'] ? 'class="resize-hidden"' : ''; ?> href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                  <?php if (!empty($category['children'])) { ?>
                  <ul class="sub-menu">
                    <?php foreach ($category['children'] as $c) { ?>
                    <?php if (!empty($c['children'])) { ?>
                    <li class="sub"><a href="<?php echo $c['href']; ?>"><?php echo $c['name']; ?><img src="/image/system/arrow-menu.png"></a>
                      <ul class="sub-menu">
                        <?php foreach ($c['children'] as $item) { ?>
                        <li><a href="<?php echo $item['href']; ?>"><?php echo $item['name']; ?></a></li>
                        <?php } ?>
                      </ul>
                    </li>
                    <?php } else { ?>
                    <li><a href="<?php echo $c['href']; ?>"><?php echo $c['name']; ?></a></li>
                    <?php } ?>
                    <?php } ?>
                  </ul>
                  <?php } ?>
                </li>
                <?php } ?>
              </ul>
            </div>
          </div>
        </header>
      </div>
