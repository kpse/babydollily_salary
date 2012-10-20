$ ->
  $('.import-data').on 'click', (e) ->
    e.preventDefault() unless $('#employee_data_file').val()