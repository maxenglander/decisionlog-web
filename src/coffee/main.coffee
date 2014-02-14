requirejs.config {
    packages: [
        { name: 'meld', location: '../../vendor/meld', main: 'meld' },
        { name: 'when', location: '../../vendor/when', main: 'when' },
        { name: 'wire', location: '../../vendor/wire', main: 'wire' }
    ]
}

require ['wire!spec'], (spec) ->
