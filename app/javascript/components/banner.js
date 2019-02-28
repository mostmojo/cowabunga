import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Find your surf school in Florida"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };