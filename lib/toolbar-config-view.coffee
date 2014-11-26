config = require "./config"
{View} = require 'atom'

module.exports = class ToolbarConfigView extends View
  @content: ->
    @div id: 'toolbar-config', =>
      for button in config.defaults.buttons
        @div class: "icon #{button.class}", click: 'trigger', trigger: button.trigger

#    @div class: 'tool-panel tool-panel-toolbar panel-bottom padded', =>
#      @div =>
#        for button in config.defaults.buttons
#          @button class: "btn btn-lg", click: 'trigger', trigger: button.trigger, =>
#            @span class: "icon #{button.class}"

  initialize: (serializeState) ->
    atom.packages.onDidActivateAll =>
      @toggle()
    atom.workspaceView.command "toolbar-config:toggle", =>
      @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

    # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
#    if @hasParent()
#      @detach()
#    else
      atom.workspace.addLeftPanel { item: @ }
      @addClass 'vertical left'
#      atom.workspaceView.find('.tab-bar').after(@)

  trigger: (event, element) ->
    atom.workspaceView.trigger element.attr('trigger')
