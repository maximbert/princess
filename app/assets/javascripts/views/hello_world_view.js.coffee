templatePath = 'text!templates/plaintext.hbs.txt'

define [
  'views/base/view'
  templatePath
], (View, Template) ->
  'use strict'

  class HelloWorldView extends View
    className: 'hello-world'
    container: '#page-container'
    autoRender: yes

    template: Template
    #template = null

    initialize: ->
      super
      console.log "HelloWorldView did initialize"
