# For more information see: http://emberjs.com/guides/routing/

Omphalo.Router.map ()->
  @route 'home', path: '/'

  @resource 'users'
  @resource 'user', path: 'users/:user_id', ->
    @resource 'user.thoughts', path: 'thoughts', ->
      @resource 'user.thoughts.manage', path: 'manage', ->
        @route 'new'
        @route 'edit', path: ':thought_id/edit'

Omphalo.Router.reopen location: 'history'