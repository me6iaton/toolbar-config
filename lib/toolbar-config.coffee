ToolbarConfigView = require './toolbar-config-view'

module.exports =
	configDefaults:
		null
	activate: (state) ->
		@toolbarConfigView = new ToolbarConfigView(state.toolbarConfigViewState)

	deactivate: ->
		@toolbarConfigView.destroy()

	serialize: ->
		toolbarConfigViewState: @toolbarConfigView.serialize()
