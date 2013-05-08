App.Favorite = DS.Model.extend
  text: DS.attr 'string'
  user: DS.belongsTo 'App.TwittUser', {embedded: 'always'}
  twitterId: DS.attr 'string'
  idStr: DS.attr 'string'

  didDelete: (a)->
    console.log a

