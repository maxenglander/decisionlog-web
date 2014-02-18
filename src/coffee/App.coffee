define 'App', [], ->
    class App
        isStarted: false

        constructor: (@router, @view) ->
            @router.mount @routes()

        index: => 
            @view.render()

        new: =>
            @view.new() 
            
        routes: ->
            '/': @index
            '/new' : @new

        start: ->
            if @isStarted
                return
            @router.init '/'
            @isStarted = true
