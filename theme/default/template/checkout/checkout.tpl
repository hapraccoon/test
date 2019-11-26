<?php echo $header; ?>
<script type="text/javascript" src="http://goodlac/widget/widjet.js" id="ISDEKscript" ></script>
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
<main class="page order">
    <div class="width">
        <h1><?php echo $heading_title; ?></h1>
        <?php echo $content_top; ?>
</main>
<?php echo $footer; ?>