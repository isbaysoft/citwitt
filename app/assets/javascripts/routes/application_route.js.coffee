App.Router.reopen
  location: 'history'
  enableLogging: true

App.Router.map ->
  @resource 'twitts', path: '/'

App.TwittsRoute = Ember.Route.extend
  model: -> App.Twitt.find()
  setupController: (controller, model) ->
    controller.set('content', model)
