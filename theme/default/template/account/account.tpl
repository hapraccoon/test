<?php echo $header; ?>

<main class="page account">
    <!--div-- id="breadcrumb">
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
    </div-->
    <div class="width">
        <?php echo $column_left; ?>

        <div class="accaunt-block">
            <h1>Мои данные</h1>

            <form action="<?php echo $action; ?>" method="post" id="profile-data">

                <div class="form-group <?php echo $error_email ? 'has-error': ''; ?>">
                    <label class="control-label" for="input-email">Электронная почта</label>
                    <input type="text" name="email" value="<?php echo $email; ?>" placeholder="" id="input-email" class="form-control">
                    <?php if ($error_email) { ?>
                    <div class="text-danger"><?php echo $error_email; ?></div>
                    <?php } ?>
                </div>

                <div class="form-group <?php echo $error_firstname ? 'has-error': ''; ?>">
                    <label class="control-label" for="input-firstname">Имя</label>
                    <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="" id="input-firstname" class="form-control">
                    <?php if ($error_firstname) { ?>
                    <div class="text-danger"><?php echo $error_firstname; ?></div>
                    <?php } ?>
                </div>

                <div class="form-group <?php echo $error_lastname ? 'has-error': ''; ?>">
                    <label class="control-label" for="input-lastname">Фамилия</label>
                    <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="" id="input-lastname" class="form-control">
                    <?php if ($error_lastname) { ?>
                    <div class="text-danger"><?php echo $error_lastname; ?></div>
                    <?php } ?>
                </div>

                <div class="form-group <?php echo $error_telephone ? 'has-error': ''; ?>">
                    <label class="control-label" for="input-telephone">Телефон</label>
                    <input type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="" id="input-telephone" class="form-control phone-mask">
                    <?php if ($error_telephone) { ?>
                    <div class="text-danger"><?php echo $error_telephone; ?></div>
                    <?php } ?>
                </div>

                <h2>Адрес доставки</h2>

                <div class="form-group">
                    <label class="control-label" for="input-shipping-country"><?php echo $text_country; ?></label>
                    <div class="select">
                        <select name="country_id" id="input-shipping-country">
                            <?php if (!empty($country)) { ?>
                            <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label" for="input-shipping-country"><?php echo $text_zone; ?></label>
                    <div class="select">
                        <select name="zone_id" id="input-shipping-zone" class="form-control">
                            <option value="0" selected="selected"><?php echo $text_zone; ?></option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label" for="input-city">Город</label>
                    <input type="text" name="city" value="<?php echo $city; ?>" placeholder="" id="input-city" class="form-control">
                </div>

                <div class="form-group">
                    <label class="control-label" for="input-postcode">Индекс</label>
                    <input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="" id="input-postcode" class="form-control">
                </div>

                <div class="form-group">
                    <label class="control-label" for="input-address_1">Улица, дом, кв.</label>
                    <input type="text" name="address_1" value="<?php echo $address_1; ?>" placeholder="" id="input-address_1" class="form-control">
                </div>

                <div class="form-group">
                    <input type="submit" value="Изменить" class="button button-save">
                </div>
            </form>

            <div class="password-block">
                <h2>Смена пароля для входа</h2>
                <div class="notice">!</div>
                <span>Здесь вы можете изменить пароль для входа в личный кабинет</span>

                <form action="<?php echo $action; ?>" method="post">

                    <div class="form-group <?php echo $error_password ? 'has-error': ''; ?>">
                        <label class="control-label" for="input-pass">Новый пароль</label>
                        <input type="password" name="password" value="" placeholder="" id="input-pass" class="form-control">
                        <?php if ($error_password) { ?>
                        <div class="text-danger"><?php echo $error_password; ?></div>
                        <?php } ?>
                    </div>

                    <div class="form-group <?php echo $error_confirm ? 'has-error': ''; ?>">
                        <label class="control-label" for="input-confirm">Подтвердите пароль</label>
                        <input type="password" name="confirm" value="" placeholder="" id="input-confirm" class="form-control">
                        <?php if ($error_confirm) { ?>
                        <div class="text-danger"><?php echo $error_confirm; ?></div>
                        <?php } ?>
                    </div>

                    <div class="form-group">
                        <input type="submit" value="Изменить пароль" class="button button-save">
                    </div>
                </form>
            </div>
        </div>
    </div>
</main>
<script type="text/javascript">
    $(function() {
        $("#input-shipping-country, #input-shipping-zone").selectmenu();
    });

    $('#input-shipping-country').on("selectmenuchange", function( event, ui ) {
        $.ajax({
            url: '/index.php?route=checkout/checkout/country&country_id=' + this.value,
            dataType: 'json',
            beforeSend: function() {
                $('#collapse-shipping-address select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
            },
            complete: function() {
//                $('.fa-spin').remove();
            },
            success: function(json) {

                if (json['postcode_required'] == '1') {
                    $('#collapse-shipping-address input[name=\'postcode\']').parent().parent().addClass('required');
                } else {
                    $('#collapse-shipping-address input[name=\'postcode\']').parent().parent().removeClass('required');
                }

                html = '<option value=""><?php echo $text_select; ?></option>';

                if (json['zone'] && json['zone'] != '') {
                    for (i = 0; i < json['zone'].length; i++) {
                        html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                        if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                            html += ' selected="selected"';
                        }

                        html += '>' + json['zone'][i]['name'] + '</option>';
                    }
                } else {
                    html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
                }

                $('#input-shipping-zone').html(html).selectmenu("refresh");
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $('#input-shipping-country').trigger('selectmenuchange');
</script>

<?php echo $footer; ?>