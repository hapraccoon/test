$(function(){
    $('.images a').click(function(){                                   // При нажатиина миниатюру
        var images = $(this).find('img');
        var imgSrc = images.parent('.thumbnail').data('preview');
        var imgBig = $(this).attr('href');

        $(".thumb-block .thumbnail img").attr({ src: imgSrc }).parent('a').attr('href', imgBig);                         // Подменяем адрес большого изображения на адрес выбранного
        $('.thumbnail.active').removeClass('active');                       // Удаляем класс .active со ссылки чтоб убрать рамку
        images.parent().addClass('active');                                // Добавляем класс .active на выбранную миниатюру
        return false;
    });

    // $('.thumb-block').click(function () {
    //     var link = $(this).find('.thumbnail').attr('href');
    //     $('.thumbnails').find('.images .image-additional').each(function () {
    //         if ($(this).find('.thumbnail').attr('href') == link) {
    //             $(this).find('.thumbnail').removeAttr('data-fancybox');
    //             $.fancybox.update();
    //         }
    //     });
    // });

    // $(".thumb-block .thumbnail").click(function (e) {
    //     // e.preventDefault();
    //     $("[data-fancybox=gallery]").fancybox({
    //         loop: true,
    //         animationEffect: 'fade',
    //         transitionOut: 'fade',
    //         transitionIn: 'fade'
    //     });
    // });

    // $('.next').click(function(){                                           // При нажатии на кнопку "вперед"
    //     var count = $('.images a').length;                             // Общее количество изображений
    //     var n = parseInt($('.images a').index($('.active')) + 1);      // Порядковый номер текущего изображения
    //     var activeImg = $('.images .active');                          // Активное на данный момент изображение
    //     var nextSrc;
    //
    //     if (count != n){                                                   // - Если изображение не последнее
    //         nextSrc = activeImg.next().find('img').parent('.thumbnail').data('preview');            // В переменную записывается адрес следующего изображения
    //         $('.thumbnail.active').removeClass('active');                // Удаляется класс .active с предыдущей миниатюры
    //         activeImg.next().addClass('active');                           // На миниатюру следующего изображения вешается класс .active
    //     }else{                                                             // - Если текущее изображение последнее в списке
    //         nextSrc = $('.images a').first().find('img').attr('src');  // В переменную записывается адрес первого изображения
    //         $('.thumbnail.active').removeClass('active');                // Удаляется класс .active с предыдущей миниатюры
    //         $('.images a').first().addClass('active');                 // На первую миниатюру вешается класс .active
    //     }
    //     $('.thumb-block .thumbnail img').attr({ src: nextSrc });                        // Подменяем адрес большого изображения на адрес следующего
    //     return false;
    // });
    //
    //
    // $('.prev').click(function(){                                           // При нажатии на кнопку "назад"
    //     var count = $('.images a').length;                             // Общее количество изображений
    //     var n = parseInt($('.images a').index($('.active')) + 1);      // Порядковый номер текущего изображения
    //     var activeImg = $('.images .active');                          // Активное на данный момент изображение
    //     var prevSrc;
    //
    //     if (n != 1){                                                       // - Если текущее изображение не первое
    //         prevSrc = activeImg.prev().find('img').parent('.thumbnail').data('preview');        // В переменную записывается адрес предыдущего изображения
    //         $('.thumbnail.active').removeClass('active');                // Удаляется класс .active активной до этого миниатюры
    //         activeImg.prev().addClass('active');                           // На миниатюру изображения слева вешается класс .active
    //     }else{                                                             // - Если текущее изображение первое
    //         prevSrc = $('.images a:last').find('img').attr('src');     // В переменную записывается адрес последнего изображения
    //         $('.thumbnail.active').removeClass('active');                // Удаляется класс .active с предыдущей миниатюры
    //         $('.images a:last').addClass('active');                    // На последнюю миниатюру вешается класс .active
    //     }
    //     $('.thumb-block .thumbnail img').attr({ src: prevSrc });                        // Подменяется адрес большого изображения на адрес следующего
    //     return false;
    // });
});