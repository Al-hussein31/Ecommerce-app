'use strict';
import 'core-js/stable';
import 'regenerator-runtime/runtime';

const modelWindow = document.querySelector('.model');
const overlay = document.querySelector('.overlay');
const layouts = document.querySelector('.layout');
const navBtn = document.getElementById('cart');

const bookmarksMain = document.querySelector('.bookmarks');
const number = document.querySelector('.number');
const promoNumber = document.querySelectorAll('.promo-number');
const numberPiece = document.querySelector('.number-1');
const preview = document.querySelector('.preview');

const bookmarksBtn = document.querySelector('.layout__btn');
const bookmarksIconDelete = document.querySelector('.preview__icon');
const bookmarksMessage = document.querySelector('.message');

const cartNumber = document.querySelector('.cart-number');

const header = document.querySelector('.layout');
const modelIcon = document.querySelector('.model__icon');
const btnThumbnails = document.querySelectorAll('.layout__images-sub__fig');

const largeImage = document.querySelector('.layout__images-img__fig');

//////////////////////////
//// FUNCTIONS
const slider = function () {
  const slides = document.querySelectorAll('.model__images-img');
  const btnLeft = document.querySelector('.model__sliders-left');
  const btnLeftTwo = document.querySelector('.layout__icons--left');
  const btnRight = document.querySelector('.model__sliders-right');
  const btnRightTwo = document.querySelector('.layout__icons--right');
  const dotContainer = document.querySelector('.dots');

  let curSlide = 0;
  const maxSlide = slides.length;

  // Functions
  const activateDot = function (slide) {
    console.log(slide);
    const dots = document.querySelectorAll('.dots__dot-image');
    dots.forEach(dot => dot.classList.remove('dots__dot--active'));

    const dotsSlide = document.querySelector(
      `.dots__dot-image[data-slide="${slide}"]`
    );
    dotsSlide.classList.add('dots__dot--active');
  };

  const goToSlide = function (slide) {
    slides.forEach(
      (s, i) => (s.style.transform = `translateX(${100 * (i - slide)}%)`)
    );
  };

  // Next slide
  const nextSlide = function () {
    if (curSlide === maxSlide - 1) {
      curSlide = 0;
    } else {
      curSlide++;
    }

    goToSlide(curSlide);
    activateDot(curSlide);
  };

  const prevSlide = function () {
    if (curSlide === 0) {
      curSlide = maxSlide - 1;
    } else {
      curSlide--;
    }
    goToSlide(curSlide);
    activateDot(curSlide);
  };

  const init = function () {
    goToSlide(0);

    activateDot(0);
  };
  init();

  // Event handlers
  btnRight.addEventListener('click', nextSlide);
  btnRightTwo.addEventListener('click', nextSlide);

  btnLeft.addEventListener('click', prevSlide);
  btnLeftTwo.addEventListener('click', prevSlide);

  document.addEventListener('keydown', function (e) {
    if (e.key === 'ArrowLeft') prevSlide();
    e.key === 'ArrowRight' && nextSlide();
  });

  dotContainer.addEventListener('click', function (e) {
    if (e.target.classList.contains('dots__dot-image')) {
      const { slide } = e.target.dataset;
      goToSlide(slide);
      activateDot(slide);
    }
  });
};
slider();

const openModal = function (e) {
  e.preventDefault();
  modelWindow.classList.remove('hidden');
  overlay.classList.remove('hidden');
};

const closeModal = function () {
  modelWindow.classList.add('hidden');
  overlay.classList.add('hidden');
};

const updatingNumbers = function (num) {
  num.textContent++;
};

const decreasingNumbers = function (num) {
  if (num.textContent > 1) {
    num.textContent--;
  }
};

const updateNumber = function (factor) {
  promoNumber.forEach(promoNumber => {
    let currentText = promoNumber.textContent;
    const currentNumber = parseFloat(currentText.replace('$', ''));

    if (!isNaN(currentNumber)) {
      const newNumber = (currentNumber + factor).toFixed(2);
      if (newNumber && newNumber > 0) {
        promoNumber.textContent = '$' + newNumber;
      }
    }
  });
};

const renderCarts = function () {
  preview.classList.remove('hidden');
  cartNumber.classList.remove('hidden');
  bookmarksIconDelete.classList.remove('hidden');
  bookmarksMessage.classList.add('hidden');
};

const deleteCartNumber = function () {
  cartNumber.classList.add('hidden');
  bookmarksIconDelete.classList.add('hidden');
  preview.classList.add('hidden');
  bookmarksMessage.classList.remove('hidden');
};

////////////////////
//// EVENT LISTENERS

bookmarksBtn.addEventListener('click', function (e) {
  e.preventDefault();
  renderCarts();
});

bookmarksIconDelete.addEventListener('click', function (e) {
  e.preventDefault();
  //// Deleting booked cart
  deleteCartNumber();
});
btnThumbnails.forEach(btn => {
  btn.addEventListener('click', function () {
    // Remove the "active" class from all buttons
    btnThumbnails.forEach(thumbnail => {
      thumbnail.classList.remove('dots__dot--active');
    });

    // Add the "active" class to the clicked button
    btn.classList.add('dots__dot--active');

    if (largeImage) {
      // Changing the image
      largeImage.src = btn.src;
    }
  });
});

navBtn.addEventListener('click', function (e) {
  e.stopPropagation();
  bookmarksMain.classList.toggle('hidden');
});

document.addEventListener('click', function (e) {
  if (!bookmarksMain.contains(e.target) && e.target !== navBtn) {
    bookmarksMain.classList.add('hidden');
  }
});

layouts.addEventListener('click', function (e) {
  e.preventDefault();
  const btn = e.target;

  if (btn.classList.contains('layout__images-img__fig')) {
    openModal(e);
  }

  if (btn.classList.contains('layout__cartnum-plus')) {
    updatingNumbers(number);
    updatingNumbers(numberPiece);
    updatingNumbers(cartNumber);
    updateNumber(125);
  }
  if (btn.classList.contains('layout__cartnum-minus')) {
    decreasingNumbers(number);
    decreasingNumbers(numberPiece);
    decreasingNumbers(cartNumber);
    updateNumber(-125);
  }
});

document.addEventListener('keydown', function (e) {
  if (e.key === 'Escape' && !modelWindow.classList.contains('hidden')) {
    closeModal();
  }
});

modelIcon.addEventListener('click', closeModal);
overlay.addEventListener('click', closeModal);
