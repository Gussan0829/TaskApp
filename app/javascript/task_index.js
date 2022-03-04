function task (){
  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")
  const pullDownTask = document.querySelectorAll(".task")

  for (var i = 0; i < pullDownButton.length; i++) {
    // pullDownButton[i].addEventListener('click', function() {
      // console.log(pullDownButton[i])
      // const test = document.querySelector("li[date=`${i}`]")
      // console.log(test)
      //   if (pullDownParents.getAttribute("style") == "display:block;") {
      //     pullDownParents.removeAttribute("style", "display:block;")
      //   } else {
      //     pullDownParents.setAttribute("style", "display:block;")
      //   }
      // })

  }

  // for (var i = 0; i < task.pullDownTask.length; i++) {
    pullDownButton.addEventListener('click', function() {
      if (pullDownParents.getAttribute("style") == "display:block;") {
        pullDownParents.removeAttribute("style", "display:block;")
      } else {
        pullDownParents.setAttribute("style", "display:block;")
      }
    })
  
};

window.addEventListener('load', task);