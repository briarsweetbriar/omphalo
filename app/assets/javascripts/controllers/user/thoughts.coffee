Omphalo.UserThoughtsController = Em.ArrayController.extend

  sortProperties: ['bubbledAt'],
  sortAscending: false

  itemController: 'thought'

  bubbleTop: ->
    highestValue = Number.NEGATIVE_INFINITY
    highestControllers = []
    tmp = undefined
    i = @_subControllers.length - 1

    while i >= 0
      tmp = @_subControllers[i].get 'stimulation'
      if tmp > highestValue
        highestValue = tmp
      i--

    i = @_subControllers.length - 1

    while i >= 0
      tmp = @_subControllers[i]
      if tmp.get('stimulation') == highestValue
        highestControllers.push @_subControllers[i]
      i--

    highestController = highestControllers[Omphalo.randomInt(0, highestControllers.length-1)]

    if highestController
      highestController.set 'visible', true
      highestController.set 'bubbledAt', new Date().getTime()
      highestController.set 'count', highestController.get('count') + 1
      highestController.set 'stimulation', 0 - highestController.get('count')
      metatags = highestController.get 'metatags.content'
      $.each metatags, (index, metatag) ->
        thoughts = metatag.get 'thoughts.content'
        $.each thoughts, (index, thought) ->
          thought.set('stimulation', thought.get('stimulation') + Omphalo.randomInt(1, 3) )
      setTimeout (=>
        @bubbleTop()
      ), highestController.get('description').length * 100
    else
      setTimeout (=>
        @bubbleTop()
      ), 3000