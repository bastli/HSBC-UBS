# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	UR_Start()

UR_Start = ->
  UR_Nu = new Date
  UR_Indhold = showFilled(UR_Nu.getHours()) + ":" + showFilled(UR_Nu.getMinutes()) + ":" + showFilled(UR_Nu.getSeconds())
  document.getElementById("uhr").innerHTML = UR_Indhold
  setTimeout (-> UR_Start() ), 1000

showFilled = (Value) ->
  (if (Value > 9) then "" + Value else "0" + Value)




