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


//MENU MOTION
let catalogOpenList = document.querySelector('.menu-catalog > ul');
let swipedMenuBlock = document.querySelector('.swiped');
let mobileTitle = document.querySelector('.mobile_title-menu');
let catalogOpenBtn = document.querySelector('.menu-catalog > .title');
TweenMax.set(swipedMenuBlock, {
    y: '+=100%',
    opacity: 0,
});
TweenMax.set(catalogOpenList, {
    position:'fixed',
    x: 0,
    opacity: 1
});

let menuMotion = new TimelineMax()
    .to(swipedMenuBlock, 0.3, {
        y: '-=100%',
        opacity: 1
    }, 0.1)
    .to(catalogOpenList, 0.3, {
        x: '+=100%',
        opacity: 0
    }, 0.2)

catalogOpenBtn.addEventListener('click', function (e) {
    catalogOpenBtn.classList.toggle('an_active');
    mobileTitle.classList.toggle('closed_nav');
    menuMotion.reversed(!menuMotion.reversed());
    if (catalogOpenBtn.classList.contains('an_active')) {
        // mobileTitle.style.marginLeft = '10px';
    } else {
        // mobileTitle.style.marginLeft = '0';
    }
})


//CATALOG OPEN

// let catalogOpenBtn = document.querySelector('.menu-catalog > .title');
// let catalogOpenList = document.querySelector('.menu-catalog > ul');
// let swipedMenuBlock = document.querySelector('.swiped');
// catalogOpenList.style.display = 'none';
// swipedMenuBlock.style.transform = 'translateX(0)'


// catalogOpenBtn.addEventListener('click', function () {
//     this.classList.toggle('is_active');

//     if (catalogOpenBtn.classList.contains('is_active')) {
//         catalogOpenList.style.display = 'block';
//         swipedMenuBlock.style.transform = 'translateX(-100%)'
//     } else {
//         catalogOpenList.style.display = 'none';
//         swipedMenuBlock.style.transform = 'translateX(0)'
//     }
// })

//SWIPE MENU