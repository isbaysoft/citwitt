window.App = Ember.Application.createWithMixins
  rootElement: '#body-wrap'
  authenticationTokenName: 'auth_token'

  ready: ->
    @start()

  start: ->
    @jQueryInit()

  jQueryInit: ->
    # Add a account token token to all AJAX requests
    console.log 'jquure init'

