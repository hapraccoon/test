<?php echo $header; ?>
<main>
  <div class="width">
    <div class="top">
      <?php echo $content_top; ?>
    </div>
    <div class="bottom">
      <?php echo $content_bottom; ?>
    </div>
    <!-- <div class="socials">
      <div class="tabs">
        <div data-type="vk" class="active">Мы в Вконтакте</div>
        <div data-type="inst">Мы в Инсте</div>
      </div>
  
      <div id="vk_groups" class="soc vk active"></div>
     
      <div class="line"></div>
      <div class="soc inst">
   
        <iframe src="//widget.stapico.ru/?q=goodlac_&s=115&w=3&h=3&b=0&flw_bg=EC4FA0&p=1.4&effect=2" allowtransparency="true" frameborder="0" scrolling="no" style="border:none;overflow:hidden;width:360px; height: 496px" ></iframe>
      </div>
    </div> -->
    
  </div>
  
</main>
<div class='insta_wrapper'>
    <div class='insta_content'>
        <div class='insta_box'>
            <ul id='insta_feeds'>

            </ul>
        </div>
        
    </div>
</div>
    
<script>
    
    var token = '862338611.1677ed0.4f429258d4464a04bd01cf9e7d43462b',
        num_photos = 20, // maximum 20
        container = document.getElementById('insta_feeds'), // it is our <ul id="rudr_instafeed">
        scrElement = document.createElement('script');
    window.onload = function (data) {
        for (x in data.data) {
            container.innerHTML += '<li class="insta_box-content"><img src="' + data.data[x].images.low_resolution.url + '"></li>';
        }
    }
    scrElement.setAttribute('src', 'https://api.instagram.com/v1/users/self/media/recent?access_token=' + token + '&count=' + num_photos + '&callback=onload');
    document.body.appendChild(scrElement);

</script>
<?php echo $footer; ?>