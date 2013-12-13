Omphalo.ApplicationController = Em.Controller.extend
  
  currentUser: (->
    @auth.get('user')
  ).property('auth.user')