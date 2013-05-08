App.Adapter = DS.RESTAdapter.extend
  namespace: 'api'
  serializer: DS.RESTSerializer.extend
    primaryKey: (type) -> return 'id_str'

DS.Adapter.map 'App.Twitt',
  user: {embedded: 'always'}

DS.Adapter.map 'App.Favorite',
  user: {embedded: 'always'}

App.Store = DS.Store.extend
  revision: 12
  adapter: App.Adapter

