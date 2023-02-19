function post (){
  const mainInput = document.getElementById("main_cal");
  const drinkInput = document.getElementById("drink_cal");
  const totalInput = document.getElementById("total_cal");
mainInput.addEventListener("input", () => {
  const mainValue = mainInput.value;
  const drinkValue = drinkInput.value;
  totalInput.innerHTML = Math.floor(Number(mainValue) + Number(drinkValue))
  })
  drinkInput.addEventListener("input", () => {
    const mainValue = mainInput.value;
    const drinkValue = drinkInput.value;
    totalInput.innerHTML = Math.floor(Number(mainValue) + Number(drinkValue))
    })
}
  window.addEventListener("load", post);
  
