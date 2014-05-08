define [
  'chaplin'
  'handlebars'
  'lib/view_helper' # Just load the view helpers, no return value
], (Chaplin, Handlebars) ->
  'use strict'

  class View extends Chaplin.View
    getTemplateFunction: => Handlebars.default.compile(@template)
