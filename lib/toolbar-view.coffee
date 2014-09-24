config = require "./config"
{View} = require 'atom'
module.exports = class ToolbarView extends View
	@content: ->
		@div class: 'tool-panel panel-bottom padded', =>
			@div =>
				for button in config.defaults.buttons
					@button class: "btn btn-lg", click: 'trigger', trigger: button.trigger, =>
						@span class: "icon #{button.class}"

	initialize: (serializeState) ->
		atom.packages.onDidActivateAll =>
			@toggle()
		atom.workspaceView.command "toolbar:toggle", =>
			@toggle()
#		@.on 'click', 'button', ->
#			console.log('event')

	# Returns an object that can be retrieved when package is activated
	serialize: ->

		# Tear down any state and detach
	destroy: ->
		@detach()

	toggle: ->
		if @hasParent()
			@detach()
		else
#			console.log("onDidActivateAll")
#			console.log "ToolbarView was toggled!"
#			atom.workspaceView.appendToTop(@)
			atom.workspaceView.find('.tab-bar').after(@)

	trigger: (event, element) ->
		console.log(process.version)
#		`debugger;`
		atom.workspaceView.trigger element.attr('trigger')
