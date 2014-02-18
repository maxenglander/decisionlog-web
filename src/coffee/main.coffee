requirejs.config {
    packages: [
        { name: 'meld', location: '../../vendor/meld', main: 'meld' },
        { name: 'when', location: '../../vendor/when', main: 'when' },
        { name: 'wire', location: '../../vendor/wire', main: 'wire' }
    ],
    paths: {
        Router: '../../vendor/director/build/director-1.1.2',
        template: '../../template',
        text: '../../vendor/requirejs-text/text'
        Zepto: '../../vendor/zeptojs/src/zepto'
    },
    shim: {
        Router: {
            exports: 'Router'
        },
        Zepto: {
            exports: 'Zepto'
        }
    }
}

require ['wire!spec'], (spec) ->
    spec.app.start()
