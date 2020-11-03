const scrollTo = () => {
  let target = document.querySelector('.superman');
  target.scrollIntoView({
      behavior: "smooth",
      block: "end",
      inline: "nearest"
  });
  target.classList.remove('superman');
  target.nextElementSibling.classList.add('superman');
};


const scrollDown = () => {
  document.querySelectorAll('.scroll-down').forEach((arrowButton) => {
    arrowButton.addEventListener('click', function(event) {
    event.preventDefault();
    scrollTo();
    });
  })
};

const scrollToTop = () => {
  document.querySelector('#arrow-bottom').addEventListener('click', () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
    document.getElementById('first-hero').classList.add('superman');
  });
};

export { scrollDown, scrollToTop };
