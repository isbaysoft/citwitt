App.Adapter = DS.RESTAdapter.extend()

DS.Adapter.map 'App.Twitt',
  user: {embedded: 'always'}

App.Store = DS.Store.extend
  revision: 12
  adapter: App.Adapter

