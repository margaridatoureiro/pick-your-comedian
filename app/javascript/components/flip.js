const flipOnClick = () => {
  const flipCardContainer = document.querySelectorAll(".flip-card-container");
  if (flipCardContainer) {
    flipCardContainer.forEach((card) => {
         card.addEventListener('click', (event) => {
             event.currentTarget.classList.toggle('flip');
         });
     });
  }
};


export { flipOnClick };
