define 'App', [], ->
    class App
        isStarted: false
        constructor: (@router) ->
        start: ->
            if @isStarted
                return
            @router.init()
            @isStarted = true
