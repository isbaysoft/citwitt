window.App = Ember.Application.createWithMixins
  rootElement: '#body-wrap'
  authenticationTokenName: 'auth_token'

  ready: ->
    @authenticationToken = $('meta[name="authentication_token"]').attr('content')
    $('#body-wrap').hide()
    @start()
    $('#body-wrap').fadeIn('slow')

  start: ->
    @jQueryInit()

  jQueryInit: ->
    # Add a account token token to all AJAX requests
    # $.ajaxPrefilter (options, originalOptions, xhr) =>
    #   xhr.setRequestHeader 'X-Authentication-Token', @authenticationToken
