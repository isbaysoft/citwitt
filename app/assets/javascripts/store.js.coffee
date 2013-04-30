App.Adapter = DS.RESTAdapter.extend
  namespace: 'api'

DS.Adapter.map 'App.Twitt',
  user: {embedded: 'always'}

App.Store = DS.Store.extend
  revision: 12
  adapter: App.Adapter

