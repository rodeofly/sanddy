# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#The preferred way in Rails 3 to do ajax form submission is to utilize Rails-ujs.
#Use form_for :users, remote:true do |f| then the form will submit via ajax.
#When you want to do some action based on ajax response status (e.g. successful or not), write the javscript logic like this:
#$('#your_form').on 'ajax:success', (event, data, status, xhr) ->
#  // Your success logic
###########################################################################    
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
    accept: ".item"
    hoverClass: "ui-state-hover"
    drop: ( event, ui ) ->
      ui.draggable.detach().appendTo($(this))
  
    