define 'App', [], ->
    class App
        isStarted: false

        constructor: (@router) ->
            @router.mount(@routes())

        index: -> 
            console.log('index')
            
        routes: ->
            '/': @index

        start: ->
            if @isStarted
                return
            @router.init('/')
            @isStarted = true
