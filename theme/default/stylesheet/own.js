$('.tap.category-thumbs > div > .row').slick({
    slidesToShow: 8,
    arrows: false,
    draggable: true,
    autoplay: false
});

//BURGER MENU
// const line1 = document.querySelector('.line1');
// const line2 = document.querySelector('.line2');
// const line3 = document.querySelector('.line3');
const burger = document.querySelector('.hamburger_mobile');
const tl = new TimelineMax({
    paused: true,
    reversed: true
});


// SOLO USE
tl.to('.hide_mobile-menu', 0.3, {
    width: '100%',
    height: '100%',
    y: 0,
    ease: Power2.easeOut
})
// .to('.menu-catalog > ul', .3, {
//     display: 'block',
//     ease: Power2.easeOut
// })



burger.addEventListener('click', function () {
    if (tl.isActive() && burger.classList.contains('is_active')) {
        e.preventDefault();
        e.stopImmediatePropagation();
        return false;
    }
    this.classList.toggle('is_active');
    toggleTween(tl);
});

function toggleTween(tween) {
    tween.reversed() ? tween.play() : tween.reverse()
}


//CATALOG OPEN

let catalogOpenBtn = document.querySelector('.menu-catalog > .title');
let catalogOpenList = document.querySelector('.menu-catalog > ul');
catalogOpenList.style.display = 'none';


catalogOpenBtn.addEventListener('click', function () {
    this.classList.toggle('is_active');

    if (catalogOpenBtn.classList.contains('is_active')) {
        catalogOpenList.style.display = 'block';
    } else {
        catalogOpenList.style.display = 'none';
    }
})