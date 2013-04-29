App.User = DS.Model.extend
  id: DS.attr 'number'
  name: DS.attr 'string'
  location: DS.attr 'string'
  profile_image_url: DS.attr 'string'
