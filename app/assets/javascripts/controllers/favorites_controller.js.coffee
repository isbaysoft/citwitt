App.FavoritesController = Ember.ArrayController.extend
  itemController: 'favorite'

  remove: (v)->
    @content.removeObject(v)

  didDelete: ->
    alert '1'

  unfavorite: (v)->
    v.deleteRecord()
    v.get('store').commit()

App.FavoriteController = Ember.ObjectController.extend()
