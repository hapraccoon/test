$(document).ready(function () {

    radioCheck();
    $('.phone-mask').mask("+7 (999) 999-99-99");
    // agreeCheck();

    $('.menu-small .hamburger').click(function () {
        $(this).parents('.menu-small').addClass('active');
    });
    $('.menu-small .menu .title > .close').click(function () {
        $(this).parents('.menu-small').removeClass('active');
    });
    $('.menu-small .menu .sub').click(function (e) {
        if (e.target.className != 'close') {
            $(this).addClass('active');
        }
    });
    $('.menu-small .menu .sub .close').click(function () {
        $(this).parents('.sub').removeClass('active');
    });
    $('.banner .more').click(function () {
        if (!($(this).parents('.brend-block').hasClass('active'))) {
            $(this).parents('.brend-block').addClass('active');
            $(this).find('div span').text('Свернуть');
        } else {
            $(this).parents('.brend-block').removeClass('active');
            $(this).find('div span').text('Показать всё');
        }
    });
    $('.socials .tabs > div').click(function () {
        $('.socials .tabs > div').removeClass('active');
        $('.socials .soc').removeClass('active');
        var type = $(this).data('type');
        $(this).addClass('active');
        $('.socials .soc.' + type).addClass('active');
    });
    $('#page-up').click(function () {
        $('html, body').animate({
            scrollTop: 0
        }, 300);
    });
    $('footer .block .title').click(function () {
        if (!($(this).parents('.block').hasClass('active'))) {
            $(this).parents('.block').addClass('active');
        } else {
            $(this).parents('.block').removeClass('active');
        }
    });
    $('.filter .item .title').click(function () {
        $(this).parent('.item').find('.cont').slideToggle();
    });

    /*$('.cart-block .button.add').click(function() {
        $(this).text('Добавлено');
        $(this).addClass("add-position");
    });
    var btnAdd = $('.cart-block .button.add');

    btnAdd.on("click", setTimeout(btnRemoveStyle, 5000), false);

    function btnRemoveStyle() {
        $('.cart-block .button.add').text('Добавить в корзину');
        $('.cart-block .button.add').removeClass("add-position");
    }*/

    var url = document.location.href;

    $.each($('#breadcrumb ul li a'), function () {
        if ($(this).attr('href') == url) {
            $(this).addClass('active');
        }
    });
    var url_profile = document.location.pathname;
    $.each($('.left_column .menu li a'), function () {
        if ($(this).attr('href').search(url_profile) != -1) {
            $(this).parent('li').addClass('active');
        }
    });

    $('.checkbox-list input[type=checkbox]').click(function () {
        var checkbox = [];
        var i = 0;
        $(this).parents('.checkbox-list').find('input[type=checkbox]').each(function () {
            if ($(this).prop("checked")) {
                checkbox[i] = $(this).val();
                i++;
            }
        });
        $(this).parents('.checkbox-list').find('input[type=hidden]').val(checkbox.join('.'));
    });

    /* Search */
    $('#search input[name=\'search\']').parent().find('button').on('click', function () {
        var url = '/index.php?route=product/search';

        var value = $('header #search input[name=\'search\']').val();

        if (value) {
            url += '&search=' + encodeURIComponent(value);
        }

        location = url;
    });

    $(document).click(function (e) {
        var elem = $('#search .live-search');
        if (e.target != elem[0] && !elem.has(e.target).length) {
            $('#search .live-search').hide();
        }
    });

    $('#search input[name=\'search\']').on('keydown', function (e) {
        if (e.keyCode == 13) {
            $('header #search input[name=\'search\']').parent().find('button').trigger('click');
        }
    });

    $(document).on('click', '.amount .plus', function () {

            $('.cart-block .button.add').text('Добавить в корзину');
            $('.cart-block .button.add').removeClass("add-position");

            var val = parseInt($(this).parent('.amount').text()) + 1;
            var key = parseInt($(this).parent('.amount').data('key'));
            $(this).parent().parent().find('.button').data('amount', val);
            var price = $(this).parents('.tr').find('.price[data-price]');
            if (price.length > 0) {
                price = parseInt(price.data('price').replace(' ', ''));
                $(this).parents('.tr').find('.price.sum').text((price * val) + ' ₽');
            }

            $(this).parent('.amount').html('<div class="minus"></div>' + val + '<div class="plus"></div>');

            cart.update(key, val);
        })
        .on('click', '.amount .minus', function (data) {

            $('.cart-block .button.add').text('Добавить в корзину');
            $('.cart-block .button.add').removeClass("add-position");

            var val = parseInt($(this).parent('.amount').text());
            var key = parseInt($(this).parent('.amount').data('key'));
            if ($('main').hasClass('cart')) {
                var price = $(this).parents('.tr').find('.price[data-price]');
                price = parseInt(price.data('price').replace(' ', ''));
            }

            if (val > 1) {
                val = val - 1;
                $(this).parent().parent().find('.button').data('amount', val);
                if ($('main').hasClass('cart')) {
                    $(this).parents('.tr').find('.price.sum').text((price * val) + ' ₽');
                }
                $(this).parent('.amount').html('<div class="minus"></div>' + val + '<div class="plus"></div>')
            }
            cart.update(key, val);
        })
        .on('click', '.button.add', function () {
            var productId = $(this).data('id');
            var amount = $(this).data('amount');
            console.log(amount);
            cart.add(productId, amount);

            $(this).text('Добавлено');
            $(this).addClass("add-position");
        })
        .on('click', '.tr .delete span', function () {
            var key = $(this).parents('.tr').data('key');

            cart.remove(key);
        })
        .on('click', '.order-block .table .delete', function () {
            var order_id = parseInt($(this).parents('.tr').data('id'));

            order.remove(order_id);
        }).on('click', '.card', function (event) {
            if (!$(event.target).is('.button')) {
                var link = $(this).find('a').attr('href');
                window.location = link;
            }
        })
        .on('click', '.page.contacts .tabs div', function () {
            $('.page.contacts .tabs div').removeClass('active');
            $(this).addClass('active');
            var address = $(this).data('address');

            $('.page.contacts .maps .map').removeClass('active');
            $('.page.contacts .contacts').removeClass('active');
            $('.page.contacts .maps .map#address-' + address).addClass('active');
            $('.page.contacts .contacts.contact-' + address).addClass('active');
        }).on('click', '.simplecheckout-block-content .radio', function () {
            $(this).parent('div').find('.radio').removeClass('active');
            $(this).addClass('active');
        }).on('click', '#agreement_checkbox input', function () {
            agreeCheck();
        })
        // focus input
        .on('focus', '.focus', function () {
            focusVal = $(this).attr('placeholder');
            $(this).attr('placeholder', '');
        }).on('focusout', '.focus', function () {
            $(this).attr('placeholder', focusVal);
            if ($(this).val().length == 0) {
                $(this).attr('placeholder', focusVal);
            }
        });

    $('.thumb-block').click(function () {
        var link = $(this).find('.thumbnail').attr('href');
        var i = 0;
        $('.thumbnails').find('.images .image-additional').each(function () {
            if ($(this).find('.thumbnail').attr('href') == link) {
                $(this).find('.thumbnail').removeAttr('rel').attr('data-fancybox-group-rel');
                $(this).find('.thumbnail').removeClass('fancybox');
                $.fancybox.update();
            }
        });
    });

    $('.wrapper-with-shadows .table-responsive').on('scroll', function () {

        mobileTableShadow($('.wrapper-with-shadows .table').offset().left, 'wrapper-with-shadows');
    });


});

function mobileTableShadow(menuLeftPos, wrapperSelector) {
    var $wrapper = $('.' + wrapperSelector);
    var wrapperWidth = $wrapper.outerWidth();
    var scrollTableWidth = $wrapper.find('.table').outerWidth();
    var leftPosWrap = $wrapper.offset().left;
    if (menuLeftPos < leftPosWrap) {
        $wrapper.addClass('left-shadow');
    } else {
        $wrapper.removeClass('left-shadow');
    }
    if ((menuLeftPos + scrollTableWidth) > (leftPosWrap + wrapperWidth)) {
        $wrapper.addClass('right-shadow');
    } else {
        $wrapper.removeClass('right-shadow');
    }
}


// Order remove functions
var order = {
    'remove': function (order_id) {
        $.ajax({
            url: '/index.php?route=account/order/remove',
            type: 'post',
            data: 'order_id=' + order_id,
            dataType: 'json',
            beforeSend: function () {},
            complete: function () {},
            success: function (json) {
                // Need to set timeout otherwise it wont update the total

                if (json) {
                    var now_location = String(document.location.pathname);

                    if ((now_location == '/order-history/') || (getURLVar('route') == 'account/order')) {
                        location = '/index.php?route=account/order';
                    } else {
                        // $('#cart > ul').load('index.php?route=common/cart/info ul li');
                    }
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    }
};

// Cart add remove functions
var cart = {
    'add': function (product_id, quantity) {
        $.ajax({
            url: '/index.php?route=checkout/cart/add',
            type: 'post',
            data: 'product_id=' + product_id + '&quantity=' + (typeof (quantity) != 'undefined' ? quantity : 1),
            dataType: 'json',
            beforeSend: function () {
                // $('#cart > button').button('loading');
            },
            complete: function () {
                // $('#cart > button').button('reset');
            },
            success: function (json) {
                $('.alert, .text-danger').remove();

                if (json['redirect']) {
                    location = json['redirect'];
                }

                if (json['success']) {
                    // $('#content').parent().before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                    // Need to set timeout otherwise it wont update the total
                    setTimeout(function () {
                        $('#cart').html('<span class="count">' + json['count'] + '</span><span class="sum">' + json['total'] + '</span>');
                    }, 100);

                    // $('html, body').animate({ scrollTop: 0 }, 'slow');

                    // $('#cart > ul').load('index.php?route=common/cart/info ul li');
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    },
    'update': function (key, quantity) {
        $.ajax({
            url: '/index.php?route=checkout/cart/edit',
            type: 'post',
            data: 'key=' + key + '&quantity=' + (typeof (quantity) != 'undefined' ? quantity : 1),
            dataType: 'json',
            beforeSend: function () {
                // $('#cart > button').button('loading');
            },
            complete: function () {
                // $('#cart > button').button('reset');
            },
            success: function (json) {
                $('.alert, .text-danger').remove();

                if (json['redirect']) {
                    location = json['redirect'];
                }

                if (json['success']) {
                    // $('#content').parent().before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                    // Need to set timeout otherwise it wont update the total
                    setTimeout(function () {
                        $('#cart').html('<span class="count">' + json['count'] + '</span><span class="sum">' + json['total'] + '</span>');
                        $('.total-sum .sum span').text(json['total']);
                    }, 100);

                    // $('html, body').animate({ scrollTop: 0 }, 'slow');

                    // $('#cart > ul').load('index.php?route=common/cart/info ul li');
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    },
    'remove': function (key) {
        $.ajax({
            url: '/index.php?route=checkout/cart/remove',
            type: 'post',
            data: 'key=' + key,
            dataType: 'json',
            beforeSend: function () {
                // $('#cart > button').button('loading');
            },
            complete: function () {
                // $('#cart > button').button('reset');
            },
            success: function (json) {
                // Need to set timeout otherwise it wont update the total
                setTimeout(function () {
                    // $('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');
                    $('#cart').html('<span class="count">' + json['count'] + '</span><span class="sum">' + json['total'] + ' ₽</span>');
                    $('.total-sum .sum span').text(json['total_sum']);
                }, 100);

                var now_location = String(document.location.pathname);

                if ((now_location == '/cart/') || (now_location == '/checkout/') || (getURLVar('route') == 'checkout/cart') || (getURLVar('route') == 'checkout/checkout')) {
                    location = '/index.php?route=checkout/cart';
                } else {
                    // $('#cart > ul').load('index.php?route=common/cart/info ul li');
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    }
};

function getURLVar(key) {
    var value = [];

    var query = document.location.search.split('?');

    if (query[1]) {
        var part = query[1].split('&');

        for (i = 0; i < part.length; i++) {
            var data = part[i].split('=');

            if (data[0] && data[1]) {
                value[data[0]] = data[1];
            }
        }

        if (value[key]) {
            return value[key];
        } else {
            return '';
        }
    }
}

function radioCheck() {
    $(document).find('.simplecheckout-block-content .radio').each(function () {
        if ($(this).find('input').prop('checked')) {
            $(this).addClass('active');
        }
    });
}

function agreeCheck() {
    if ($('#agreement_checkbox').find('input').prop('checked')) {
        $('#agreement_checkbox .checkbox').addClass('active');
    } else {
        $('#agreement_checkbox .checkbox').removeClass('active');
    }
}

$(document).on('ajaxSuccess', function () {
    radioCheck();
    agreeCheck();
    reg();
});

function reg() {
    var elem = $('.row-customer_register .radio');
    var reg = elem.find('input:checked').val();
    if (reg == 0) {
        $('#simplecheckout_shipping_address').hide();
        $('#simplecheckout_shipping').hide();
        $('#simplecheckout_comment').hide();
    } else {
        $('#simplecheckout_shipping_address').show();
        $('#simplecheckout_shipping').show();
        $('#simplecheckout_comment').show();
    }
}

$(function () {
    var $container = $('.sub-menu'),
        scroll = $container.height();
    $('#after').hover(function () {
        $container.animate({
            'scrollTop': scroll
        }, {
            duration: 2000,
            queue: false
        });
    }, function () {
        $container.stop();
    });
    $('#before').hover(function () {
        $container.animate({
            'scrollTop': scroll
        }, {
            duration: 2000,
            queue: false
        });
    }, function () {
        $container.stop();
    });

});


if ($('#vk_groups').is(":visible")) {

    function downloadJSAtOnload() {
        var element = document.createElement("script");
        element.src = "http://vk.com/js/api/openapi.js";
        document.body.appendChild(element);
    }
    if (window.addEventListener) {
        window.addEventListener("load", downloadJSAtOnload, false);
        setTimeout(VkWidgets, 4000);
    } else if (window.attachEvent) {
        window.attachEvent("onload", downloadJSAtOnload);
        setTimeout(VkWidgets, 4000);
    } else {
        window.onload = downloadJSAtOnload;
        setTimeout(VkWidgets, 4000);
    }

    function VkWidgets() {
        VK.Widgets.Group('vk_groups', {
            mode: 4,
            width: '360',
            height: '476',
            color2: '222',
            color3: 'EC4FA0'
        }, 27518178);
    }
}