class Config
	defaults:
		buttons: [
			{
				trigger: 'tree-view:toggle'
				class: 'icon-file-directory'
			}
			{
				trigger: 'docpad:generate'
				class: 'icon-sync'
			}
			{
				trigger: 'two'
				class: 'fa fa-angellist'
			}
		]

	getDefault: (key) ->
		return

module.exports = new Config()
