window.App = Ember.Application.createWithMixins
  rootElement: '#body-wrap'
  authenticationTokenName: 'auth_token'
  currentUser: false

  ready: ->
    @authenticationToken = $('meta[name="authentication_token"]').attr('content')
    @jQueryInit()
    @start()

  start: ->
    current_user_id = $('meta[name="current_user_id"]').attr('content')
    if current_user_id
      @currentUser = App.User.find current_user_id

  jQueryInit: ->
    #



