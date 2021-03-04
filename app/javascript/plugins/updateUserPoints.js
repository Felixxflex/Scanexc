const updateUserPoints = () => {
  const userPoints = document.querySelector('.description');
  const winpointsBTN = document.getElementById('increaseWinpointsBTN');
  winpointsBTN.addEventListener("click", () => { //check if button was clicked
    userPoints.innerHTML = parseInt(userPoints.innerHTML) + 10; //Get winpoints value and add 10
  });
};
export { updateUserPoints }