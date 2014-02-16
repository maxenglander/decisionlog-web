requirejs.config {
    packages: [
        { name: 'meld', location: '../../vendor/meld', main: 'meld' },
        { name: 'when', location: '../../vendor/when', main: 'when' },
        { name: 'wire', location: '../../vendor/wire', main: 'wire' }
    ],
    paths: {
        Router: '../../vendor/director/build/director-1.1.2'
    },
    shim: {
        Router: {
            exports: 'Router'
        }
    }
}

require ['wire!spec'], (spec) ->
    spec.app.start()
