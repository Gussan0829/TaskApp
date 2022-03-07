function taskOption (){
  const pullDownTasks = document.querySelectorAll(".task")

  pullDownTasks.forEach((pullDownTask)=>{
    const pullDownButton = pullDownTask.querySelector('#lists')
    const pullDownParent = pullDownTask.querySelector("#pull-down")
    pullDownButton.addEventListener('click', function() {
    if (pullDownParent.getAttribute("style") == "display:block;") {
      pullDownParent.removeAttribute("style", "display:block;")
    } else {
      pullDownParent.setAttribute("style", "display:block;")
    }
  })
})
}
window.addEventListener('load', taskOption);

// function dragstart_handler(ev) {
//   ev.dataTransfer.setData("text/plain", ev.target.id);
// }

// function taskCard (){
//   const element = document.getElementById("list")

//   element.addEventListener("dragstart", dragstart_handler)
// };
// window.addEventListener('load', taskCard);


