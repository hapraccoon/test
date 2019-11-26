<div id="search">
  <button type="button"><img src="/image/system/incon_search.svg" alt=""></button>
  <input class="focus" type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>">
  <div class="live-search">
    <ul></ul>
  </div>
  <!--<input class="focus" type="text" name="search" value="<?php echo $live_search; ?>" placeholder="<?php echo $text_search; ?>">-->
</div>
<script type="text/javascript">
  $(document).on('keyup', '#search input', function () {
    var val = $(this).val();

    $.ajax({
      url: '/index.php?route=product/live_search',
      type: 'get',
      dataType: 'json',
      data: {
        filter_name: val
      },
      beforeSend: function() {
        var html = '<img src="/image/system/preloader.gif" alt="preloader" class="preloader">';
        $('#search .live-search ul').html(html);
        $('#search .live-search').show();
      },
      complete: function() {
      },
      success: function(json) {
        var html = '';

        if (typeof json.products != 'undefined') {
          for (var i = 0; typeof json.products[i] !== 'undefined'; i++) {
            html += '<li><a href="' + json.products[i].url + '" title="' + json.products[i].name + '">' +
                    '<div class="product-image"><img alt="' + json.products[i].name + '" src="' + json.products[i].image + '"></div>' +
                    '<div class="product-name">' + json.products[i].name + '<p>' + json.products[i].extra_info + '</p></div>' +
                    '<div class="product-price"><span class="special">' + json.products[i].special + '</span><span class="price">' + json.products[i].price + '</span><div>' +
                    '<span style="clear:both"></span>' +
                    '</a></li>'
          }
        }
        $('#search .live-search ul').html(html);
        $('#search .live-search').show();
      },
      error: function(xhr, ajaxOptions, thrownError) {
        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
      }
    });
  });
</script>
