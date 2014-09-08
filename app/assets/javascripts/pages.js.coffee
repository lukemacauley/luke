# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

	$(".social-text").flexVerticalCenter()

	$("#masonry-container").imagesLoaded ->
  	$("#masonry-container").masonry
	    itemSelector: ".item"
	    isFitWidth: true

  $(".item").slice(1).mouseenter ->
    $(this).find("a").css("opacity" : "1")

  $(".item").slice(1).mouseleave ->
    $(this).find("a").css("opacity" : "0")

	$(".image-container img").click ->
		$(".xl-container").fadeIn(200)
		window.scrollTo 0, 350

	$(".xl-container img").click ->
		$(".xl-container").fadeOut(200)
		window.scrollTo 0, 0

	$(".subscribe-link").click ->
		$(".cover-fade").fadeIn(200)
		$(".subscribe-box").show().transition y: "30px"

	$(".insta-link").click ->
		$(".cover-fade").fadeIn(200)
		$(".insta-overlay").show().transition y: "30px"

	$(".cover-fade, .insta-exit").click ->
		$(".cover-fade").fadeOut(200)
		$(".subscribe-box, .insta-overlay").hide().transition y: "0px"

$(document).ready(ready)
$(document).on('page:load', ready)