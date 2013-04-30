App.FavoritesView = Ember.View.extend
  templateName: 'favorites/index'

App.FavoritesListView = Ember.CollectionView.extend
  tagName: 'tbody'
  itemViewClass: Ember.View.extend
    templateName: 'favorites/item'
