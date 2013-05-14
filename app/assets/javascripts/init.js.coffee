$ ->
  $(document).ajaxStart ->
    $('#overlay').show()

  $(document).ajaxStop ->
    $('#overlay').hide()


