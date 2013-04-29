App.ApplicationController = Ember.Controller.extend

  login: ->
    console.log $('#login').val()
    console.log $('#pwd').val()
    $.ajax
      url: '/users'
      type: 'post'
      dataType: 'json'
      data:
        user:
          email: 'user1@mail.com'
          password: '1234567'
          password_confirmation: '1234567'

