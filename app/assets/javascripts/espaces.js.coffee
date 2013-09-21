# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $( "#button" ).click () ->
      $( "#admin_panel" ).toggle()
  $( ".resizable" ).resizable()
  $( ".sortable" ).sortable()
  $( "#admin_panel").draggable();
  $( ".draggable" ).draggable({
    helper:"clone",
    containment:"document"
  }).disableSelection()
  $categorie = $( ".droppable" ).droppable
    accept: ".element"
    hoverClass: "ui-state-hover"
    drop: ( event, ui ) ->
      ui.draggable.detach().appendTo($(this))