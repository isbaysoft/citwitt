App.FavoritesRoute = Ember.Route.extend
  model: -> App.Favorite.find()
  setupController: (controller, model) ->
    controller.set('content', model)
