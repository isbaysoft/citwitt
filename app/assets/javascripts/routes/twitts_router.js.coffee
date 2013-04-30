App.TwittsRoute = Ember.Route.extend
  model: -> App.Twitt.find()
  setupController: (controller, model) ->
    controller.set('content', model)
