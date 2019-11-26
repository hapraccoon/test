<?php echo $header; ?>
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
<main class="page account">
    <div class="width">
        <?php echo $column_left; ?>
        <div class="history-block">
            <div class="header">
                <h1>История заказов</h1>
                <div class="filters">
                    <?php if (!empty($order_statuses)) { ?>
                    <div class="select">
                        <select name="status" id="status">
                            <option value="" selected>Все</option>
                            <?php foreach($order_statuses as $s) { ?>
                            <option value="<?php echo $s['order_status_id']; ?>" <?php echo $status == $s['order_status_id'] ? 'selected' : ''; ?>><?php echo $s['name']; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <?php } ?>
                    <div class="order-search">
                        <input class="focus" type="text" name="order_search" value="" placeholder="<?php echo !empty($order_search) ? $order_search : 'Поиск ...'; ?>" data-placeholder="Поиск ...">
                        <div class="btn-search"></div>
                    </div>
                </div>
            </div>
            <div class="wrapper-with-shadows right-shadow">
                <div class="table-responsive order-block">
                    <div class="table">
                        <div class="tr">
                            <div class="th">Номер</div>
                            <div class="th">Статус</div>
                            <div class="th">Стоимость</div>
                            <div class="th">Доставка</div>
                            <div class="th">Оплата</div>
                            <div class="th date">Дата создания</div>
                            <div class="th actions"></div>
                        </div>
                        <?php foreach ($orders as $order) { ?>
                        <div class="tr" data-id="<?php echo $order['order_id']; ?>">
                            <div class="td"><?php echo $order['order_id']; ?></div>
                            <div class="td <?php echo $order['order_status_id'] == 5 ? 'done' : ''; ?>"><?php echo $order['status']; ?></div>
                            <div class="td"><?php echo $order['total']; ?></div>
                            <div class="td"><?php echo $order['shipping_method']; ?></div>
                            <div class="td"><?php echo $order['payment_method']; ?></div>
                            <div class="td"><?php echo $order['date_added']; ?></div>
                            <div class="td">
                                <?php //<div class="update"></div> ?>
                            <div class="delete"></div>
                        </div>
                    </div>
                    <?php } ?>
                </div>
            </div>
            </div>
            <?php if (!empty($pagination)) { ?>
            <div class="pagination"><?php echo $pagination; ?></div>
            <?php } ?>
        </div>
    </div>
</main>
<script type="text/javascript">
    $(function() {
        $("#status").selectmenu({
            change: function(event, ui) {
                location = '<?php echo $action; ?>&status=' + ui.item.value;
            }
        });
    });
    $(function() {
        $('.order-search .btn-search').click(function () {
            var value = $(this).parents('.order-search').find('input[name=order_search]').val();
            var placeholder = $(this).parents('.order-search').find('input[name=order_search]').data('placeholder');

            if (placeholder == value) {
                location = '<?php echo $action; ?>&order_search=';
            } else {
                location = '<?php echo $action; ?>&order_search=' + value;
            }
        });
    });
</script>
<?php echo $footer; ?>