define 'Form', ['Zepto'], ($) ->
    class Form
        isRendered: false
        isVisible: false

        constructor: (@selector, @template) ->

        element: ->
            if !@_element?
                @_element = $(@selector)
            @_element

        hide: ->
            if !@isVisible
                return
            @element().hide()
            @isVisible = false

        render: ->
            if @isRendered
                return
            @element().toggle(@isVisible).html(@template)
            @isRendered = true

        show: ->
            if @isVisible
                return
            @element().show()
            @isVisible = false
