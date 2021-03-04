const startUserTimer = () => {
  const winpointsBTN = document.getElementById('increaseWinpointsBTN'); //get winpoints BTN
  winpointsBTN.addEventListener("click", () => { //check for button click
    localStorage.setItem("endTime", (new Date().getTime() + 3600000)); //Save endTime(currentTime + 1 hour) to local storage
    localStorage.setItem("timerRunning", true); //Save timerRunning to localStorage
    winpointsBTN.style.display = "none"; //Hide WinpointsBTN
  });
};

 var timer = setInterval(function() { //Create a timer function that runs every second
  if (localStorage.getItem("timerRunning")) { //Check if timer is running
    const timer_clock = document.getElementById('timer_clock'); //Get HTML element
    var now = new Date().getTime(); //Get current time
    var delta = parseInt(localStorage.getItem("endTime")) - now; // milliseconds elapsed since start
    var minutes = Math.floor((delta % (1000 * 60 * 60)) / (1000 * 60)); //Get minutes left
    var seconds = Math.floor((delta % (1000 * 60)) / 1000); //Get seconds left
    timer_clock.innerHTML = `Time until respawn: ${minutes}:${seconds}`; //Display time left in view
    if (delta <= 0) { //Check if timer has stopped
      stopUserTimer();
    }
  }
 }, 1000);

const stopUserTimer = () => {
  const timer_clock = document.getElementById('timer_clock');
  const winpointsBTN = document.getElementById('increaseWinpointsBTN'); //get winpoints BTN
  localStorage.removeItem("endTime"); //Remove time from localStorage
  localStorage.removeItem("timerRunning"); //Remove timerRunning from localStorage
  clearInterval(timer); //Stop the interval function timer
  timer_clock.innerHTML = ""; //Hide the timer clock
  winpointsBTN.style.display = "";
}
  
export { startUserTimer }