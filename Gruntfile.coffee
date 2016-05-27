'use strict'

services  = require './services.json'
_         = require 'underscore'

module.exports = (grunt)->
  # show elapsed time at the end
  require('time-grunt')(grunt)
  # load all grunt tasks
  require('load-grunt-tasks')(grunt)

  jsonSrc = ['services.json']
  images32x32 = {}

  _.each services.services, (service)->
    jsonSrc.push "#{service.service}/**/*.json"
    images32x32["#{service.service}/icon32x32.png"] = "#{service.service}/icon.png"

  grunt.initConfig
    jsonlint:
      configFiles:
        src: jsonSrc

    image_resize:
      resize:
        options:
          width: 32
          height: 32
          quality: 1
          overwrite: true
        files: images32x32

  grunt.loadNpmTasks('grunt-image-resize')

  grunt.registerTask 'build', [
    'jsonlint',
    'image_resize'
  ]

  grunt.registerTask 'default', [
    'jsonlint'
  ]
