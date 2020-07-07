const flipOnClick = () => {
  document.querySelectorAll(".flip-card-container").forEach((card) => {
       card.addEventListener('click', (event) => {
           event.currentTarget.classList.toggle('flip');
       });
   });
};


export { flipOnClick };
