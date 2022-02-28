function task (){
  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")
  const pullDownTask = document.querySelectorAll(".task")

  for (var i = 0; i < pullDownTask.length; i++) {
      pullDownButton.addEventListener('click', function() {
      if (pullDownParents.getAttribute("style") == "display:block;") {
        pullDownParents.removeAttribute("style", "display:block;")
      } else {
        pullDownParents.setAttribute("style", "display:block;")
      }
    })
  }
};

window.addEventListener('load', task);