:root {
  --color-primary-1: #fff;
  --color-primary-2: #fff;
  --color-secondary: #ff7d1a;
  --color-tertiary-1: #1d2025;
  --color-tertiary-2: #68707d;
}

*, :after, :before {
  box-sizing: inherit;
  margin: 0;
  padding: 0;
}

html {
  font-size: 62.5%;
}

@media only screen and (width <= 1440px) {
  html {
    font-size: 50%;
  }
}

body {
  box-sizing: border-box;
  background-color: var(--color-primary-1);
  font-family: Kumbh Sans, sans-serif;
  overflow-x: hidden;
}

.heading--1 {
  text-transform: uppercase;
  color: #0000;
  letter-spacing: 1px;
  background-image: linear-gradient(to bottom right, #ff7d1a, orange);
  -webkit-background-clip: text;
  background-clip: text;
  font-size: 2.5rem;
  font-weight: 700;
  transition: all .2s;
  animation-name: moveInLeft;
  animation-duration: 1s;
  animation-timing-function: ease-out;
  display: inline-block;
}

.heading-bg {
  color: var(--color-tertiary-1);
  width: 55rem;
  font-size: 6rem;
}

.heading-bg:hover {
  animation-name: moveInLeft;
  animation-duration: 1s;
  animation-timing-function: ease-out;
}

.heading-md {
  color: var(--color-primary-1);
  text-transform: capitalize;
  font-size: 4rem;
  font-style: italic;
}

.cart-number {
  background-color: var(--color-secondary);
  color: var(--color-primary-1);
  border-radius: 2rem;
  width: 2.5rem;
  height: 2rem;
  position: absolute;
  top: 3.2%;
  right: 16.2%;
}

.passage {
  color: var(--color-tertiary-2);
  width: 55rem;
  font-size: 2rem;
}

.number {
  font-size: 2rem;
  font-weight: 700;
}

.hidden {
  visibility: hidden;
  opacity: 0;
}

.cookie-message {
  color: #bbb;
  background-color: #fff;
  justify-content: space-evenly;
  align-items: center;
  width: 100%;
  font-size: 1.5rem;
  font-weight: 400;
  display: flex;
}

.sticky {
  background-color: #fffffff2;
  border-bottom: 1px solid #00000014;
  width: 225rem;
  height: 12rem;
  padding: 0 2rem;
  position: fixed;
  left: 0%;
}

.btn--small, .btn--small:link, .btn--small:visited, .btn {
  text-transform: uppercase;
  color: #fff;
  cursor: pointer;
  background-image: linear-gradient(to bottom right, #ff7d1a, orange);
  border: none;
  border-radius: 10rem;
  align-items: center;
  transition: all .2s;
  display: flex;
}

.btn--small:hover, .btn:hover {
  transform: scale(1.05);
}

.btn--small:focus, .btn:focus {
  outline: none;
}

.btn--small > :first-child, .btn > :first-child {
  margin-right: 1rem;
}

.btn {
  padding: 1.5rem 4rem;
  font-size: 1.5rem;
  font-weight: 600;
}

.btn svg {
  fill: currentColor;
  width: 2.25rem;
  height: 2.25rem;
}

.btn--small, .btn--small:link, .btn--small:visited {
  padding: 2.25rem 12rem;
  font-size: 2rem;
  font-weight: 600;
  text-decoration: none;
}

.btn--small svg, .btn--small:link svg, .btn--small:visited svg {
  fill: currentColor;
  width: 1.75rem;
  height: 1.75rem;
}

.btn--inline {
  color: var(--color-secondary);
  cursor: pointer;
  border: none;
  border-radius: 10rem;
  align-items: center;
  padding: .8rem 1.2rem;
  font-size: 1.3rem;
  font-weight: 600;
  transition: all .2s;
  display: flex;
}

.btn--inline svg {
  fill: currentColor;
  width: 1.6rem;
  height: 1.6rem;
  margin: 0 .2rem;
}

.btn--inline span {
  margin: 0 .4rem;
}

.btn--inline:focus {
  outline: none;
}

.btn--wide {
  text-transform: uppercase;
  color: #fff;
  cursor: pointer;
  background-image: linear-gradient(to bottom right, #ff7d1a, orange);
  border: none;
  border-radius: 1.5rem;
  align-items: center;
  padding: 2.5rem 14rem;
  transition: all .2s;
  display: flex;
}

.btn--wide:hover {
  filter: opacity(65%);
}

.btn--round {
  cursor: pointer;
  background-image: linear-gradient(to bottom right, #ff7d1a, orange);
  border: none;
  border-radius: 50%;
  justify-content: center;
  align-items: center;
  width: 4.5rem;
  height: 4.5rem;
  transition: all .2s;
  display: flex;
}

.btn--round:hover {
  transform: scale(1.07);
}

.btn--round:focus {
  outline: none;
}

.btn--round svg {
  fill: #fff;
  width: 2.5rem;
  height: 2.5rem;
}

.btn--tiny {
  cursor: pointer;
  background: none;
  border: none;
  width: 2rem;
  height: 2rem;
}

.btn--tiny svg {
  fill: var(--color-secondary);
  width: 100%;
  height: 100%;
  transition: all .3s;
}

.btn--tiny:focus {
  outline: none;
}

.btn--tiny:hover svg {
  transform: translateY(-1px);
}

.btn--tiny:active svg {
  transform: translateY(0);
}

.btn--tiny:not(:last-child) {
  margin-right: .3rem;
}

.bookmarks {
  background-color: var(--color-primary-2);
  z-index: 10;
  visibility: hidden;
  opacity: 0;
  border-radius: 2rem;
  grid-template-columns: 1fr;
  width: 19vw;
  height: 30rem;
  transition: all .5s .2s;
  display: grid;
  position: absolute;
  top: 10%;
  left: 77%;
  box-shadow: 0 .7rem 3rem #0000004d;
}

.bookmarks__head {
  border-bottom: 1px solid #00000014;
  height: 5rem;
  padding: 1rem 2rem;
  font-size: 2rem;
  font-weight: 700;
}

.bookmarks__list {
  text-align: center;
  font-size: 2rem;
  list-style: none;
}

.bookmarks:hover, .navigation__btn--bookmarks:hover + .bookmarks {
  visibility: visible;
  opacity: 1;
}

.preview__link:link, .preview__link:visited {
  border-right: 1px solid #fff;
  align-items: center;
  gap: 1rem;
  padding: 1.5rem 3.25rem;
  text-decoration: none;
  transition: all .3s;
  display: flex;
}

.preview__fig-img {
  border-radius: .7rem;
  width: 5rem;
}

.preview__data {
  color: var(--color-tertiary-2);
  flex-direction: column;
  align-items: start;
  display: flex;
}

.preview__price--multi {
  color: var(--color-tertiary-1);
  font-weight: 700;
}

.preview__icon {
  position: absolute;
  top: 47%;
  right: 7%;
}

.preview__btn {
  margin-top: 2rem;
  position: relative;
  left: 7%;
}

.dropdowns {
  background-color: var(--color-primary-2);
  z-index: 10;
  visibility: hidden;
  opacity: 0;
  border-radius: 2rem;
  width: 13vw;
  transition: all .5s .2s;
  position: absolute;
  top: 11.5%;
  right: 5%;
  box-shadow: 0 .7rem 3rem #0000004d;
}

.dropdowns__items {
  padding: 0 0 1rem 0;
}

.dropdowns__list {
  cursor: pointer;
  color: var(--color-tertiary-2);
  gap: 1.5rem;
  padding: 1.25rem 2.25rem;
  font-size: 1.5rem;
  font-weight: 500;
  display: flex;
}

.dropdowns__list:hover {
  background-image: linear-gradient(to bottom right, #ff7d1a, orange);
  border-radius: 1rem;
}

.dropdowns svg {
  fill: var(--color-tertiary-1);
  width: 2.5rem;
  height: 2.5rem;
}

.dropdowns:hover, .navigation__btn--bookmarks:hover + .dropdowns {
  visibility: visible;
  opacity: 1;
}

.account-logout {
  text-align: center;
  border-top: 1px solid #00000014;
  font-weight: 700;
  display: flex;
}

.search {
  border: 1px solid var(--color-secondary);
  background-color: #fff;
  border-radius: 10rem;
  align-items: center;
  width: 50rem;
  margin-top: 3.3rem;
  margin-bottom: 3.2rem;
  padding-left: 3rem;
  transition: all .3s;
  display: flex;
}

.search:focus-within {
  transform: translateY(-2px);
  box-shadow: 0 .7rem 3rem #00000014;
}

.search__field {
  color: inherit;
  background: none;
  border: none;
  width: 30rem;
  font-family: inherit;
  font-size: 1.7rem;
}

.search__field:focus {
  outline: none;
}

.search__field::placeholder {
  color: #000;
}

.search__btn {
  font-family: inherit;
  font-weight: 600;
}

.layout {
  grid-area: main;
  grid-template-columns: 1fr 1fr;
  grid-template-areas: "main side";
  display: grid;
}

.layout__images {
  cursor: pointer;
  grid-area: main;
  padding: 9rem;
}

.layout__images-img {
  background-image: url("image-product-1.5f963ded.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  border-radius: 2rem;
  width: 100%;
}

.layout__images-img__fig {
  z-index: 10;
  cursor: pointer;
  border-radius: 2rem;
  width: 100%;
}

.layout__images-img__fig:hover {
  transition: all .2s .3s;
  transform: scale(.6);
}

.layout__images-sub {
  grid-gap: 4.5rem;
  grid-template-columns: repeat(4, 1fr);
  margin-top: 3.5rem;
  display: grid;
}

.layout__images-sub__fig {
  cursor: pointer;
  border-radius: 1.5rem;
  width: 12rem;
}

.layout__images-sub__fig:hover {
  border: 3px solid var(--color-secondary);
  filter: opacity(40%);
  z-index: 12;
}

.layout__images-sub__fig--active {
  border: 3px solid var(--color-secondary);
  filter: opacity(75%);
}

.layout__text {
  flex-direction: column;
  grid-area: side;
  gap: 3rem;
  padding: 18rem 10rem;
  display: flex;
}

.layout__price {
  grid-column-gap: 3rem;
  grid-row-gap: 1rem;
  grid-template-columns: repeat(2, 50px);
  display: grid;
}

.layout__price-promo {
  font-size: 2.5rem;
  font-weight: 700;
}

.layout__price-offer {
  color: var(--color-secondary);
  background-color: #ff7d1a40;
  border-radius: 1rem;
  justify-content: center;
  align-items: center;
  width: 7rem;
  font-size: 1.7rem;
  display: flex;
}

.layout__price-real {
  color: var(--color-tertiary-2);
  filter: opacity(60%);
  font-size: 1.7rem;
  text-decoration: line-through;
}

.layout__foot {
  grid-template-columns: 20rem 1fr;
  display: grid;
}

.layout__cartnum {
  grid-gap: 1.5rem;
  background-color: #b6bcc81a;
  border-radius: 1rem;
  grid-template-columns: repeat(3, 1fr);
  align-items: center;
  margin-top: 2rem;
  padding: 1.25rem 3.5rem;
  display: grid;
}

.layout__cartnum-minus, .layout__cartnum-plus {
  cursor: pointer;
}

.footer {
  background-color: var(--color-tertiary-1);
  grid-area: footer / 1 / footer / -1;
}

.footer__head {
  border-bottom: 3px solid var(--color-primary-1);
  grid-template-columns: repeat(3, 1fr);
  align-items: center;
  padding: 1.25rem 2.25rem;
  display: grid;
}

.footer__logo {
  color: #fff;
}

.footer__search {
  margin-left: 10rem;
}

.footer__btn {
  margin-left: 5.8rem;
  padding: 1.25rem 2.235rem;
}

.footer__body {
  border-bottom: 3px solid var(--color-primary-1);
  text-align: center;
  grid-gap: 2rem;
  grid-template-columns: repeat(3, 1fr);
  padding: 5rem;
  font-size: 2rem;
  list-style: none;
  display: grid;
}

.footer__item:hover {
  background-color: var(--color-secondary);
  border-radius: 1rem;
}

.footer__link:link, .footer__link:visited {
  border: 1px solid var(--color-primary-1);
  color: #0000;
  background-image: linear-gradient(to bottom right, #ff7d1a, orange);
  -webkit-background-clip: text;
  background-clip: text;
  border-radius: 1rem;
  align-items: start;
  padding: 1.5rem 3.25rem;
  text-decoration: none;
  transition: all .3s;
  display: flex;
}

.footer__link:link:hover, .footer__link:visited:hover {
  color: var(--color-primary-1);
}

.footer__foot {
  text-align: center;
  padding: 3rem;
  display: grid;
}

.footer__foot-link:link, .footer__foot-link:visited {
  color: #ff4500;
  font-size: 1.5rem;
  font-style: italic;
  font-weight: 700;
  text-decoration: none;
}

.footer__foot-link:link:hover, .footer__foot-link:visited:hover {
  color: orange;
  font-style: normal;
  transition: all .3s;
}

.footer__copyright {
  color: var(--color-primary-1);
  font-size: 2rem;
}

.navigation {
  border-bottom: 1px solid #00000014;
  grid-area: head / 1 / head / -1;
  grid-template-rows: repeat(4, 12rem);
  grid-template-columns: 25rem repeat(2, 1fr) 30rem;
  display: grid;
}

.navigation:not(:last-child) {
  grid-gap: 2.5rem;
}

.navigation__logo {
  align-items: center;
  display: flex;
}

.navigation__links {
  align-items: center;
  gap: 1rem;
  display: flex;
}

.navigation__link {
  color: var(--color-tertiary-1);
  justify-content: center;
  width: 12rem;
  height: 10.8rem;
  margin: 1rem auto auto;
  font-size: 2rem;
  display: flex;
}

.navigation__link:hover {
  border-bottom: 3px solid var(--color-secondary);
  transition: all .3s;
  transform: translateX(2px);
}

.navigation__link--active {
  border-bottom: 3px solid var(--color-secondary);
}

.navigation__search {
  justify-content: center;
  display: flex;
}

.navigation__icons {
  grid-template-columns: repeat(2, 100px);
  display: grid;
}

.navigation__btn {
  color: inherit;
  cursor: pointer;
  background: none;
  border: none;
  height: 100%;
  padding: 0 7rem;
  font-family: inherit;
  transition: all .3s;
}

.navigation__icon--Profile {
  cursor: pointer;
  border-radius: 50%;
  align-items: center;
  width: 8rem;
  height: 8rem;
  margin-top: 2rem;
}

.navigation__icon--Profile:hover {
  border: 2.5px solid var(--color-secondary);
}

.model__images {
  cursor: pointer;
  grid-area: main;
  justify-content: center;
  align-items: center;
  height: 80rem;
  margin-top: -15rem;
  padding: 6rem;
  display: flex;
  position: relative;
  overflow: hidden;
}

.model__images-img {
  background-repeat: no-repeat;
  background-size: cover;
  border-radius: 2rem;
  width: 100%;
  transition: transform 1s;
  position: absolute;
}

.model__images-img > img {
  object-fit: cover;
  width: 100%;
  height: 100%;
}

.model__images-img__fig {
  z-index: 10;
  cursor: pointer;
  border-radius: 2rem;
  width: 100%;
}

.model__images-img__fig:hover {
  transition: all .2s .3s;
  transform: scale(.6);
}

.model__images-sub {
  grid-gap: 4.5rem;
  grid-template-columns: repeat(4, 1fr);
  margin-top: 3.5rem;
  display: grid;
}

.model__images-sub__fig {
  cursor: pointer;
  border-radius: 1.5rem;
  width: 12rem;
}

.model__images-sub__fig:hover {
  border: 3px solid var(--color-secondary);
  filter: opacity(40%);
  z-index: 12;
}

.model__images-sub__fig--active {
  border: 3px solid var(--color-secondary);
  filter: opacity(75%);
}

.model__body {
  z-index: 1000;
  background-color: none;
  width: 80rem;
  transition: all .5s;
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.model__icon {
  cursor: pointer;
  border-radius: 1rem;
  position: absolute;
  left: 95%;
}

.model__icon:hover {
  background-image: linear-gradient(to bottom right, #ff7d1a, orange);
  -webkit-background-clip: butt;
  background-clip: butt;
  color: #0000;
}

.model__sliders {
  z-index: 10;
  color: #333;
  cursor: pointer;
  background: #ffffffb3;
  border: none;
  border-radius: 50%;
  justify-content: center;
  align-items: center;
  width: 5.5rem;
  height: 5.5rem;
  font-family: inherit;
  font-size: 3.25rem;
  display: flex;
  position: absolute;
  top: 50%;
}

.model__sliders-left {
  left: 0%;
  transform: translate(-50%, -50%);
}

.model__sliders-left:hover {
  background-image: linear-gradient(to bottom right, #ff7d1a, orange);
  -webkit-background-clip: butt;
  background-clip: butt;
  color: #0000;
  border-radius: 50%;
  width: 5rem;
  height: 5rem;
}

.model__sliders-right {
  right: 0%;
  transform: translate(50%, -50%);
}

.model__sliders-right:hover {
  background-image: linear-gradient(to bottom right, #ff7d1a, orange);
  -webkit-background-clip: butt;
  background-clip: butt;
  color: #0000;
  border-radius: 50%;
  width: 5rem;
  height: 5rem;
}

.wrapper {
  justify-content: center;
  margin-top: 95rem;
  display: flex;
  position: fixed;
}

.overlay {
  -webkit-backdrop-filter: blur(4px);
  backdrop-filter: blur(4px);
  z-index: 100;
  background-color: #00000080;
  width: 100%;
  height: 100%;
  transition: all .5s;
  position: fixed;
  top: 0;
  left: 0;
}

.image--1 {
  background-image: url("image-product-1.5f963ded.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  border-radius: 2rem;
  width: 100%;
}

.image--2 {
  background-image: url("image-product-2.6c550b84.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  border-radius: 2rem;
  width: 100%;
}

.image--3 {
  background-image: url("image-product-3.ee366c07.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  border-radius: 2rem;
  width: 100%;
}

.image--4 {
  background-image: url("image-product-4.20ac56af.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  border-radius: 2rem;
  width: 100%;
}

.container {
  grid-template: "head head" 12rem
                 "main main" minmax(40rem, auto)
                 "footer footer"
                 / 1fr 2fr;
  max-width: 300rem;
  min-height: 100rem;
  padding: 0 18rem 18rem;
  display: grid;
}

.container * a {
  text-decoration: none;
}

.container * a:link, .container * a:visited {
  align-items: center;
  text-decoration: none;
}

.container * ul {
  list-style-type: none;
}

/*# sourceMappingURL=index.ea2c0b31.css.map */
