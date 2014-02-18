define 'View', ['Zepto'], ($) ->
    class View
        isRendered: false

        constructor: (@element, @template, @form) ->

        new: ->
            @render()
            @form.show()
            
        render: ->
            if @isRendered
                return
            $(@element).html(@template)
            @form.render()
            @isRendered = true
            
