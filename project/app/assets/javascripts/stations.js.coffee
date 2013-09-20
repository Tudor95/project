$(document).ready ->
  $("ul").on "click", "li.compare", (e) ->
    e.preventDefault()
    $(@).removeClass "compare"
    $(@).addClass "selected" 
    $(@).closest("#station").addClass "highlight"
    $(@).text " Unselect"
  $("ul").on "click", ".selected", (e) ->
    e.preventDefault()
    $(@).closest("#station").removeClass "highlight"
    $(@).removeClass "selected"
    $(@).addClass "compare" 
    $(@).text " Compare"