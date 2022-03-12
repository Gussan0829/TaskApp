$ ->
  el = document.getElementById("tasksList")
  if el != null
    sortable = Sortable.create(el, delay: 200)