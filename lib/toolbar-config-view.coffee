config = require "./config"
{$, View} = require process.resourcesPath + '/app/node_modules/space-pen'
underscorePlus = require process.resourcesPath + '/app/node_modules/underscore-plus'

module.exports = class ToolbarConfigView extends View
  @content: =>
    @div id: 'toolbar-config', =>
      for button in config.defaults.buttons
        if button.class == 'spacer'
          @div class: 'spacer'
        else
          eventElement = $(document.activeElement)
          keyBindings = atom.keymap.findKeyBindings command: button.trigger, target: eventElement[0]
          humanizeKeystroke = underscorePlus.humanizeKeystroke(keyBindings[0]?.keystrokes)
          title = if humanizeKeystroke then button.title + " " + humanizeKeystroke else button.title
          @div class: "icon #{button.class}", click: 'trigger', trigger: button.trigger, target: button.target, title: title

  initialize: (serializeState) ->
    atom.packages.onDidActivateAll =>
      @toggle()
    atom.commands.add 'atom-workspace',
      'toolbar-config:toggle': => @toggle()

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
      @.parent().attr 'id', 'panel-toolbar-config'
      @addClass 'vertical left'


  trigger: (event, element) =>
    target =
      if element.attr('target') == 'text-editor'
        atom.views.getView(atom.workspace.getActiveTextEditor())
      else
        atom.views.getView(atom.workspace)
    atom.commands.dispatch(target, element.attr('trigger'))
