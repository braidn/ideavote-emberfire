module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-emblem'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.initConfig
    emblem:
      compile:
        files:
          'templates.js': ['templates/*.emblem', 'templates/**/*.emblem']

        options:
          root: 'templates/'
          dependencies:
            jquery: 'public/js/jquery-1.9.1.js'
            ember: 'public/js/ember-1.1.2.js'
            emblem: 'public/js/emblem.js'
            handlebars: 'public/js/handlebars-1.0.0.js'

    watch:
      files: ['templates/*.emblem', 'templates/**/*.emblem']
      tasks: ['emblem']
