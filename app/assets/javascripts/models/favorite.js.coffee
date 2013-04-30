App.Favorite = DS.Model.extend
  twitterId: DS.attr 'string'
  user: DS.belongsTo 'App.User'
