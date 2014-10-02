'use strict'

services  = require './services.json'
_         = require 'underscore'

module.exports = (grunt)->
  # show elapsed time at the end
  require('time-grunt')(grunt)
  # load all grunt tasks
  require('load-grunt-tasks')(grunt)

  jsonSrc = ['services.json']

  _.each services.services, (service)->
    jsonSrc.push "#{service.service}/**/*.json"

  grunt.initConfig
    jsonlint:
      configFiles:
        src: jsonSrc

  grunt.registerTask 'default', [
    'jsonlint'
  ]