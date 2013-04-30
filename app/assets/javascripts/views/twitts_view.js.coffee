App.TwittsView = Ember.View.extend
  templateName: 'twitts/index'


App.TwittListView = Ember.CollectionView.extend
  tagName: 'tbody'
  itemViewClass: Ember.View.extend
    templateName: 'twitts/item'
