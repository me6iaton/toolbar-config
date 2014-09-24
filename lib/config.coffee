class Config
	defaults:
		buttons: [
			{
				trigger: 'tree-view:toggle'
				class: 'icon-file-directory'
			}
			{
				trigger: 'two'
				class: 'fa fa-angellist'
			}
		]

	getDefault: (key) ->
		return

module.exports = new Config()
