$ ->
  el = document.getElementById("sortable_list")
  if el != null
    sortable = Sortable.create(el, delay: 200)