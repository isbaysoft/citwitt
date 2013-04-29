App.TwittListView = Ember.CollectionView.extend
  # tagName: 'div'
  # classNames: ['row']
  itemViewClass: Ember.View.extend
    templateName: 'twitts/twitt'
