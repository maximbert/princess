define [
  'chaplin',
  'models/base/model'
], (Chaplin, Model) ->
  'use strict'

  class HelloWorld extends Model
    defaults:
      name: 'Pandao'

    #initialize: (attributes, options) ->
      #super
      #console.debug 'HelloWorld#initialize'
