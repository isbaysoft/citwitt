App.Twitt = DS.Model.extend
  text: DS.attr 'string'
  idStr: DS.attr 'string'
  user: DS.belongsTo 'App.TwittUser', {embedded: 'always'}
