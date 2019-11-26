<?php echo $header; ?>

<main class="page">
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
    <div class="width">
        <h1>Акции</h1>
        <div class="discount-block">
            <div class="discounts">
                <?php foreach ($blogs as $blog) { ?>
                <a href="<?php echo $blog['href']; ?>" class="item">
                    <div class="date-to">до <?php echo $blog['date_to']; ?></div>
                    <?php if($blog['thumb']){ ?>
                    <figure>
                        <img src="<?php echo $blog['thumb']; ?>" alt="<?php echo $blog['title']; ?>">
                    </figure>
                    <?php } ?>
                    <h2><?php echo $blog['title']; ?></h2>
                    <div class="description"><?php echo $blog['description']; ?></div>
                </a>
                <?php } ?>
            </div>
            <div class="pagination"><?php echo $pagination; ?></div>
        </div>
    </div>
</main>
<?php echo $footer; ?>