<?php echo $header; ?>
<main>
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
        <div class="container">
            <?php if ($error_warning) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
            <?php } ?>
            <div class="row"><?php echo $column_left; ?>
                <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
                <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-9'; ?>
                <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
                <?php } ?>
                <div id="content" class="<?php echo $class; ?> centered"><?php echo $content_top; ?>
                    <h1>Восстановление пароля</h1>
                    <p><?php echo $text_email; ?></p>
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data"
                          class="form-horizontal">
                <!--        <fieldset>
                            <legend><?php echo $text_your_email; ?></legend>

                        </fieldset>  -->
                        <div class="form-group required">
                            <!--label-- class="col-sm-2 control-label"
                                   for="input-email"><?php echo $entry_email; ?></label-->
                            <div class="col-sm-10">
                                <input type="text" name="email" value="<?php echo $email; ?>"
                                       placeholder="Электронная почта" id="input-email"
                                       class="form-control"/>
                            </div>
                        </div>
                        <div class="buttons clearfix pink-style">
                            <!--a href="<?php echo $back; ?>"
                               class="btn btn-default"><?php echo $button_back; ?></a-->
                            <input type="submit" value="<?php echo $button_continue; ?>" class="button btn-login"/>
                        </div>
                    </form>
                    <?php echo $content_bottom; ?></div>
                <?php echo $column_right; ?></div>
        </div>
    </div>
</main>
<?php echo $footer; ?>