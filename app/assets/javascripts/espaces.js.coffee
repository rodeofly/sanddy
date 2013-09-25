# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $( "#button" ).click () ->
      $( "#admin_panel" ).toggle()
  $( ".resizable" ).resizable()
  $( ".sortable" ).sortable()
  $( "#admin_panel").draggable();
  $( "#espace_id").val($( "#admin_panel").attr( "espace_id" ));
  $( ".draggable" ).draggable({
    helper:"clone",
    containment:"document"
  }).disableSelection()
  $categorie = $( ".droppable" ).droppable
    accept: ".element"
    hoverClass: "ui-state-hover"
    drop: ( event, ui ) ->
      ui.draggable.detach().appendTo($(this))
      
  $("#new_post").on("ajax:success", (e, data, status, xhr) ->
    $("#new_post").append xhr.responseText
  ).bind "ajax:error", (e, xhr, status, error) ->
    $("#new_post").append "<p>ERROR</p>"