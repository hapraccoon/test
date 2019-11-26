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
        <div class="row"><?php echo $column_left; ?>
          <?php if ($column_left && $column_right) { ?>
          <?php $class = 'col-sm-6'; ?>
          <?php } elseif ($column_left || $column_right) { ?>
          <?php $class = 'col-sm-9'; ?>
          <?php } else { ?>
          <?php $class = 'col-sm-12'; ?>
          <?php } ?>
          <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
            <h1><?php echo $heading_title; ?></h1>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
              <!-- <fieldset>
                <legend><?php echo $text_password; ?></legend> -->
              <br>
              <p>Введите новый пароль, который вы хотите использовать.</p>
              <br>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-password"><?php echo $entry_password; ?></label>
                <div class="col-sm-10">
                  <input type="password" name="password" value="<?php echo $password; ?>" id="input-password" class="form-control" />
                  <?php if ($error_password) { ?>
                  <div class="text-danger"><?php echo $error_password; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-confirm"><?php echo $entry_confirm; ?></label>
                <div class="col-sm-10">
                  <input type="password" name="confirm" value="<?php echo $confirm; ?>" id="input-confirm" class="form-control" />
                  <?php if ($error_confirm) { ?>
                  <div class="text-danger"><?php echo $error_confirm; ?></div>
                  <?php } ?>
                </div>
              </div>
              <!--   </fieldset> -->
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