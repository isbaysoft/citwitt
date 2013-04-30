App.Router.reopen
  location: 'history'
  enableLogging: true

App.Router.map ->
  @resource 'twitts', path: '/'
  @resource 'favorites'
