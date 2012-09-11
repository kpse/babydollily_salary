# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

filter_condition = ->
  $('.condition_fields option[value$="id"], .condition_fields option[value$="_at"]').remove()
  $('.condition_fields option[value$="line_of_business"]').remove()


jQuery ->
  $('.remove_fields').on 'click', (event) ->
    $(this).closest('.field').remove()
    event.preventDefault()

  $('.add_fields').on 'click', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

  $('#employee_dug').on 'change', (e) ->
    dug = $(this).val()
    du_url = $(this).attr('url')
    $.post du_url,
      du: dug,
      (data) ->
        all_dus = JSON.parse(data);
        html = ""
        for i, du of all_dus
          html += "<option>#{du}</option>"
        $('#employee_du').html(html)

  filter_condition()

