#Handlebars = require 'Handlebars'
define [
  'chaplin'
  'handlebars'
  'lib/view_helper' # Just load the view helpers, no return value
  'text!templates/template'
], (Chaplin, Handlebars) ->
  'use strict'

  class View extends Chaplin.View
    name: "Panda 666"
    template: "Hello {{name}}" #require 'templates/site'
    template: require 'text!templates/template' # views/base/templates/template'
    getTemplateData: => @

    #getTemplateFunction: => Handlebars.compile @template
    getTemplateFunction: => require 'text!templates/template'

    initialize: ->
      console.log "begin initializing 1 "
      super
      try
        #console.log "trying"
        #t = require('text!templates/template.hbs')
        t = require 'text!templates/template'
        console.log "t = "+t
      catch e
        console.log "\t\tWARNING: Caught an exception... \n\t\t" + e

      console.log "done initializing"

    ###
    getTemplateFunction2: ->
      console.log 'View#getTemplateFunction', @templateName, JST[@templateName]
      templateFunction = JST[@templateName]
      if typeof @templateName is 'string' and typeof templateFunction isnt 'function'
        throw new Error "View template #{@templateName} not found"

      #templateFunction

      if Handlebars?
        console.log "YES"
        console.log Handlebars.compile("waw")
        return Handlebars.compile
      else
        console.log "NO"
        => @template
    ###
