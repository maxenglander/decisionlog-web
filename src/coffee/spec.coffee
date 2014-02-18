define 'spec', ['Zepto'], ($) ->
    app: {
        create: {
            module: 'App',
            args: [
                { '$ref': 'router' },
                { '$ref': 'view' }
            ]
        }
    },
    form: {
        create: {
            module: 'Form',
            args: [
                '#form',
                { module: 'text!template/form.html' }
            ]
        }
    }
    plugins: [
        { module: 'wire/debug', trace: true }
    ],
    router: {
        create: { module: 'Router' }
    }
    view: {
        create: {
            module: 'View',
            args: [
                'body',
                { module: 'text!template/view.html' },
                { '$ref': 'form' }
            ]
        },
    }
