define 'spec', [], () ->
    app: {
        create: {
            module: 'App',
            args: [
                { '$ref': 'router' },
            ]
        }
    },
    router: {
        create: {
            module: 'Router'
        }
    }
