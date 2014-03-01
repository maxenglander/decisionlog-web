requirejs.config {
    paths: {
        angular: '../../vendor/angular/angular',
        domReady: '../../vendor/requirejs-domready/domReady'
    },
    shim: {
        angular: {
            exports: 'angular'
        }
    }
}

require ['domReady!', 'angular', 'app'], (doc, angular) ->
    angular.bootstrap doc, ['app']
