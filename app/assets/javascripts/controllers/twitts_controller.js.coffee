App.TwittsController = Ember.ArrayController.extend
  itemController: 'twitt'

  favorite: (v)->
    App.currentUser.get('favorites').createRecord().set('twitterId', v.id).save()

App.TwittController = Ember.ObjectController.extend()
