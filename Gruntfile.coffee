"use strict"

module.exports = (grunt) ->

    grunt.registerTask "default", [ "typescript" ]

    grunt.loadNpmTasks gruntPlugin for gruntPlugin in require("matchdep").filterDev("grunt-*")

    grunt.registerTask 'build', ['typescript', 'requirejs']

    grunt.initConfig
        typescript:
            index:
                src: 'scripts/**/*.ts'
                options:
                    noImplicitAny: yes
                    allowbool: no
                    allowimportmodule: no
                    sourcemap: yes
                    module: 'amd'
                    target: 'es5'
        requirejs:
            compile:
                options:
                    baseUrl: "scripts"
                    name: "main"
                    out: "dist/scripts.js"
                    preserveLicenseComments: no
                    include: [ "lib/almond" ]
                    insertRequire: ['main']
                    optimize: "uglify2"
                    logLevel: 3
                    wrap: yes
                    generateSourceMaps: no # can be enabled to aid in debugging
