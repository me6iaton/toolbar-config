config = require "./config"
{View} = require 'atom'

module.exports = class ToolbarConfigView extends View
  @content: ->
    @div id: 'toolbar'
#    @div class: 'tool-panel tool-panel-toolbar panel-bottom padded', =>
#      @div =>
#        for button in config.defaults.buttons
#          @button class: "btn btn-lg", click: 'trigger', trigger: button.trigger, =>
#            @span class: "icon #{button.class}"

  initialize: (serializeState) ->
    atom.packages.onDidActivateAll =>
      @toggle()
    atom.workspaceView.command "toolbar:toggle", =>
      @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

    # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    if @hasParent()
      @detach()
    else
      atom.workspaceView.find('.tab-bar').after(@)

  trigger: (event, element) ->
    atom.workspaceView.trigger element.attr('trigger')
