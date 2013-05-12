App.FavoritesController = Ember.ArrayController.extend
  itemController: 'favorite'

  remove: (v)->
    @content.removeObject(v)
    # v.get('store').commit()

  unfavorite: (v)->
    console.log v
    console.log v.content
    # @content.removeObject(v)
    # v.unloadRecord()
    # @store.commit()

App.FavoriteController = Ember.ObjectController.extend

  remove: (tabItem) ->
    console.log 1
    store = @get('store');
    store.transaction();
    tabItem.deleteRecord();
    store.commit();

