<?php echo $header; ?>
<main>
    <div class="container">
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
            <?php if ($success) { ?>
            <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
            <?php } ?>
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
                    <div class="row">
                        <div class="col-sm-6">
                    <!--        <div class="well">
                                <h2><?php echo $text_new_customer; ?></h2>
                                <p><strong><?php echo $text_register; ?></strong></p>
                                <p><?php echo $text_register_account; ?></p>
                                <a href="<?php echo $register; ?>"
                                   class="button btn-register "><?php echo $button_continue; ?></a></div> -->
                        </div>
                        <div class="col-sm-6">
                            <div class="well">
                                <h2><strong><?php echo $text_i_am_returning_customer; ?></strong></h2>
                                <!--p><?php echo $text_returning_customer; ?></p-->
                                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-login">
                                    <div class="form-group">
                                        <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                                        <input type="text" name="email" value="<?php echo $email; ?>"
                                               placeholder="<?php echo $entry_email; ?>" id="input-email"
                                               class="form-control input-email-register"/>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label"
                                               for="input-password"><?php echo $entry_password; ?></label>
                                        <input type="password" name="password" value="<?php echo $password; ?>"
                                               placeholder="<?php echo $entry_password; ?>" id="input-password"
                                               class="form-control input-pass-login"/>
                                        <br>
                                        <div class="register-link">
                                            <a href="<?php echo $forgotten; ?>" class="recovery"><?php echo $text_forgotten; ?></a>
                                            <a href="<?php echo $register; ?>" class="btn-register">Регистрация</a>
                                        </div>
                                    </div>
                                    <input type="submit" value="<?php echo $button_login; ?>" class="button btn-login"/>
                                    <?php if ($redirect) { ?>
                                    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>"/>
                                    <?php } ?>
                                </form>
                            </div>
                        </div>
                    </div>
                    <?php echo $content_bottom; ?></div>
                <?php echo $column_right; ?></div>
        </div>
    </div>
</main>
<?php echo $footer; ?>