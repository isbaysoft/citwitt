App.TwittsController = Ember.ArrayController.extend
  itemController: 'twitt'

  favorite: (v)->
    t = App.Favorite.createRecord()
    t.set 'twitterId', v.get('idStr')
    t.save()

  didCreate: ->
    humane.log "Twitt was added successfully"

App.TwittController = Ember.ObjectController.extend()
