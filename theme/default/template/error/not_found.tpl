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
    <p><?php echo $text_error; ?></p>
  </div>
	<div style="width: 0; height: 0; font-size: 0;">
	<script type="text/javascript">
		document.write('<img src="http://404.sabit.su/counter/?x=' + Math.random()
				+ "&s=167&u=" + escape(window.location.href || document.URL)
				+ "&r=" + escape(document.referrer)
				+ '" />'
		);
	</script>
	<noscript>
		<img src="http://404.sabit.su/counter/?s=167" />
	</noscript>
</div>
</main>
<?php echo $footer; ?>
