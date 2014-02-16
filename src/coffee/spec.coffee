define 'spec', [], () ->
    app: {
        create: {
            module: 'App',
            args: [
                { '$ref': 'router' }
            ]
        }
    },
    router: {
        create: {
            module: 'Router',
            args: [
                { '$ref': 'routes' }
            ]
        }
    },
    routes: {
        '/say/:something': (something) ->
            console.log(something);
    }
