
            <?php if (isset($yandex_money_metrika_active) && $yandex_money_metrika_active){ ?>
                <?php echo $yandex_metrika; ?>
                <script type="text/javascript">
                    window.dataLayer = window.dataLayer || [];
                    function sendEcommerceAdd(id, quantity) {
                       $.ajax({
                            url: "<?= $yandex_money_product_info_url; ?>",
                            type: 'post',
                            data: 'id=' + id,
                            dataType: 'json',
                            success: function(json) {
                                json.quantity = quantity;
                                dataLayer.push({ecommerce: {add: {products: [json]}}});
                            }
                        });
                    }
                    $(window).on("load", function () {
                        var opencartCartAdd = cart.add;
                        cart.add = function (product_id, quantity) {
                            opencartCartAdd(product_id, quantity);
                            sendEcommerceAdd(product_id, typeof(quantity) !== 'undefined' ? parseInt(quantity) : 1);
                        };
                        $('#button-cart').on('click', function() {
                            sendEcommerceAdd($('#product input[name="product_id"]').val(), parseInt($('#product input[name="quantity"]').val()));
                        });
                    });
                </script>
            <?php } ?>
<footer>
  <div id="page-up"></div>
  <div class="width">
    <div class="site">
      <div class="about">
        <a class="logo" href="<?php echo $home; ?>">
          <img class="big-logo" src="<?php echo $logo; ?>" alt="logo">
        </a>
        <!--<div class="copyright">© 2016 Интернет-магазин<br>GoodLAC</div>-->
      </div>
      <div class="developer">
        <span>© GoodLac 2019</span>
      </div>
    </div>
    <div class="block catalog">
      <div class="title">Каталог</div>
      <?php if (!empty($categories_all)) { ?>
      <ul>
        <?php foreach ($categories_all as $cat) { ?>
        <li><a href="<?php echo $cat['href']; ?>"><?php echo $cat['name']; ?></a></li>
        <?php } ?>
      </ul>
      <?php } ?>
    </div>
    <div class="block info">
      <div class="title">Информация</div>
      <ul>
        <li><a href="/index.php?route=information/about">О нас</a></li>
        <li><a href="<?php echo $discount; ?>">Акции</a></li>
        <li><a href="/index.php?route=information/delivery">Доставка и оплата</a></li>
        <!--li><a href="">Оплата</a></li-->
        <li><a href="<?php echo $contact; ?>">Магазины</a></li>
        <!--<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>-->
      </ul>
    </div>
    <div class="block contacts">
      <div class="title">Контакты</div>
      <ul>
        <li class="phone"><?php echo $telephone; ?></li>
        <li class="mail"><?php echo $email; ?></li>
        <li class="mark"><?php echo $address; ?></li>
        <li class="soc">
          <a href="https://vk.com/goodlac"><img src="/image/system/vk.png" alt="vk"></a>
          <a href="https://www.instagram.com/goodlac.pro"><img src="/image/system/inst.png" alt="instagram"></a>
        </li>
      </ul>
    </div>
    <div class="about-hidden">
      <div class="developer">

        <span>© GoodLac 2019</span>

      </div>
      <!--<div class="copyright">© 2016 Интернет-магазин GoodLAC</div>-->
    </div>
  </div>
</footer>
</div>
<!--Стили-->
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="catalog/view/theme/default/stylesheet/SCSS/own.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap&subset=cyrillic-ext" rel="stylesheet">

<!--Скрипты-->
    <script src="/catalog/view/theme/default/lib/jquery-ui-1.12.0/jquery-ui.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/plugins/ScrollToPlugin.min.js" type="text/javascript"></script>
    <script src="/catalog/view/javascript/jquery/jquery.ui.touch-punch.js"></script>
    <script src="/catalog/view/javascript/maskedinput.js" type="text/javascript"></script>
    <script src="/catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/catalog/view/theme/default/lib/slick-1.8.0/slick.min.js"></script>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <script src="/catalog/view/javascript/script.js?v1.6" type="text/javascript"></script>
    <script src="catalog/view/theme/default/stylesheet/own.js" type="text/javascript"></script>

    <script>
        
    $(window).on("load", function() {

    var $landingWrapper = $(".insta_wrapper"),
        $landingInnerContent = $(".insta_content");

    // set initial container to half of .landing-inner-content width
    //TweenMax.set($landingWrapper, {scrollTo: {x: $landingInnerContent.width()/4}, ease: Power2.easeOut});
    
    // scroll left and right
    $landingInnerContent.on("mousemove touchmove", function(e) {
        if (e.clientX > $landingWrapper.width() / 2) {
        TweenMax.to($landingWrapper, 2, {
            scrollTo: {
            x: "+=175"
            },
            ease: Power2.easeOut
        });
        } else {
        TweenMax.to($landingWrapper, 2, {
            scrollTo: {
            x: "-=175"
            },
            ease: Power2.easeOut
        });
        }
    });

    });
    </script>
    
    
<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
(function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
(window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

ym(54930820, "init", {
clickmap:true,
trackLinks:true,
accurateTrackBounce:true,
webvisor:true,
ecommerce:"dataLayer"
});
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/54930820" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
<!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '390281988299639');
  fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=390281988299639&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->
</body>
</html>