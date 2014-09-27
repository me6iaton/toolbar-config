config = require "./config"
ToolbarView = require './toolbar-view'

module.exports =
	configDefaults:
		null
	activate: (state) ->
		@toolbarView = new ToolbarView(state.toolbarViewState)

	deactivate: ->
		@toolbarView.destroy()

	serialize: ->
		toolbarViewState: @toolbarView.serialize()
