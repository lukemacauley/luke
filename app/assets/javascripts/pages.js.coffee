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
		$(".xl-container").fadeIn(200) if $(window).width() > 600
		window.scrollTo 0, 350 if $(window).width() > 600

	$(".xl-container img").click ->
		$(".xl-container").fadeOut(200)
		window.scrollTo 0, 0

	$(".subscribe-link").click ->
		# $(".cover-fade").show() if $(window).width() > 600
		$(".subscribe-box").show()
		$(".menu").hide()

	$(".follow-link").click ->
		# $(".cover-fade").show() if $(window).width() > 600
		$(".social-box").show()
		$(".menu").hide()

	$(".insta-link").click ->
		# $(".cover-fade").show() if $(window).width() > 600
		$(".insta-overlay").show()

	$(".cover-fade, .insta-exit, .subscribe-exit, .social-exit, .shipping-exit").click ->
		$(".cover-fade").hide()
		$(".subscribe-box, .insta-overlay, .social-box, .shipping-box").hide()
		$(".menu").show()

	$(".shipping-link").mouseenter ->
		$(".shipping").show()

	$("ul.right li:first-child, .mobile_nav_links").mouseleave ->
		$(".shipping").hide()

	$(".shipping-link").click ->
		$(".shipping-box").show()
		$(".mobile_nav").hide()

	$(".menu").click ->
  	$(".mobile_nav, .mobile_nav_links").show()
  	$(".menu").hide()

  $(".close, .mobile-nav-exit").click ->
  	$(".mobile_nav").hide()
  	$(".menu").show()

$(document).ready(ready)
$(document).on('page:load', ready)