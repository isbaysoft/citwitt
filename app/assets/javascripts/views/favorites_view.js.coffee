App.FavoritesView = Ember.View.extend
  templateName: 'favorites/index'

App.FavoritesListView = Ember.CollectionView.extend
  tagName: 'tbody'
  itemViewClass: 'App.FavoriteItemView'

App.FavoriteItemView = Ember.View.extend
  templateName: 'favorites/item'


