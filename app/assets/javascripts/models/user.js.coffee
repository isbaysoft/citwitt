App.User = DS.Model.extend
  email: DS.attr 'string'
  favorites: DS.hasMany 'App.Favorite'
