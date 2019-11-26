<div class="filter">
        <?php foreach ($filter_groups as $filter_group) { ?>
        <div class="item">
            <div class="title"><?php echo $filter_group['name']; ?></div>
            <div class="cont active">
                <?php if ($filter_group['type'] == 'slider_range') { ?>
                <?php foreach ($filter_group['filter'] as $filter) { ?>
                <div class="slide">
                    <div id="slider-range<?php echo $filter['filter_id']; ?>"></div>
                    <div class="default">
                        <span id="def-min<?php echo $filter['filter_id']; ?>"></span>
                        <span id="def-max<?php echo $filter['filter_id']; ?>"></span>
                    </div>
                    <div class="result">
                        <input type="text" id="min<?php echo $filter['filter_id']; ?>" name="lowprice"> — <input type="text" name="highprice" id="max<?php echo $filter['filter_id']; ?>">
                    </div>
                </div>
                <script type="text/javascript">
                    $(function() {
                        $("#slider-range<?php echo $filter['filter_id']; ?>").slider({
                            range: true,
                            min: <?php echo $filter['slider_min']; ?>,
                            max: <?php echo $filter['slider_max']; ?>,
                            values: [<?php echo !empty($lowprice) ? $lowprice : $filter['slider_min_default']; ?>, <?php echo !empty($highprice) ? $highprice : $filter['slider_max_default']; ?>],
                            slide: function(event, ui) {
                                $("#min<?php echo $filter['filter_id']; ?>").val(ui.values[0]);
                                $("#max<?php echo $filter['filter_id']; ?>").val(ui.values[1]);
                            }
                        });
                        $("#min<?php echo $filter['filter_id']; ?>").val($("#slider-range<?php echo $filter['filter_id']; ?>").slider("values", 0));
                        $("#max<?php echo $filter['filter_id']; ?>").val($("#slider-range<?php echo $filter['filter_id']; ?>").slider("values", 1));
                        $("#def-min<?php echo $filter['filter_id']; ?>").text($("#slider-range<?php echo $filter['filter_id']; ?>").slider("option", "min"));
                        $("#def-max<?php echo $filter['filter_id']; ?>").text($("#slider-range<?php echo $filter['filter_id']; ?>").slider("option", "max"));
                    } );
                </script>
                <?php } ?>
                <?php } ?>
                <?php if ($filter_group['type'] == 'checkbox') { ?>
                <div class="checkbox-list">
                    <ul>
                        <?php foreach ($filter_group['filter'] as $filter) { ?>
                        <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
                        <li><input id="ch-l-<?php echo $filter['filter_id']; ?>" type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked><label for="ch-l-<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label></li>
                        <?php } else { ?>
                        <li><input id="ch-l-<?php echo $filter['filter_id']; ?>" type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>"><label for="ch-l-<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label></li>
                        <?php } ?>
                        <?php } ?>
                    </ul>
                </div>
                <?php } ?>
            </div>
        </div>
        <?php } ?>
   <!--     <div class="item">
            <div class="title">Цвет</div>
            <div class="cont"></div>
        </div> -->
        <button id="button-filter" type="button" class=" button button-filter">Показать</button>
</div>
<script type="text/javascript">
    $('#button-filter').on('click', function() {
        filter = [];

        $('input[name^=\'filter\']:checked').each(function(element) {
            filter.push(this.value);
        });

        var price = '';
        if ($('input[name="lowprice"]').length > 0 && $('input[name="highprice"]').length > 0) {
            price += '&lowprice=' + $('input[name="lowprice"]').val() + '&highprice=' + $('input[name="highprice"]').val();
        }

        location = '<?php echo $action; ?>&filter=' + filter.join(',') + price;
    });
</script>
