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



