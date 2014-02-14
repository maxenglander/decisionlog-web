module.exports = (grunt) ->
    grunt.loadNpmTasks 'grunt-bower-requirejs'
    grunt.loadNpmTasks 'grunt-contrib-clean'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-copy'

    grunt.initConfig {
        pkg: grunt.file.readJSON('package.json'),
        clean: {
            build: ['./build'],
            release: ['./app']
        },
        coffee: {
            compile: {
                expand: true,
                cwd: 'src/coffee',
                src: '**.coffee',
                dest: 'build/js',
                ext: '.js'
            }
        },
        copy: {
            release: {
                files: [
                    {
                        cwd: 'build/'
                        expand: true,
                        src: '**',
                        dest: 'app/'
                    }
                ]
            },
            vendor: {
                files: [
                    {
                        expand: true,
                        cwd: 'node_modules/finch',

                        dest: 'build/js/'
                    },
                    {
                        src: 'node_modules/requirejs/require.js',
                        dest: 'build/js/require.js'
                    },
                    {
                        src: 'node_modules/wire/wire.js',
                        dest: 'build/js/wire.js'
                    },
                ]
            }
        }
    }

    grunt.registerTask 'build', "Build", ['coffee:compile']
    grunt.registerTask 'release', "Release", ['copy:release']
    grunt.registerTask 'default', "All", ['clean', 'build', 'release']
