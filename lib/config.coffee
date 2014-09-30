class Config
	defaults:
		buttons: [
			{
				trigger: 'tree-view:toggle'
				class: 'icon-file-directory'
			}
			{
				trigger: 'docpad:deploy-ghpages'
				class: 'icon-deploy-ghpages icon-mark-github'
#				class: 'loading loading-spinner-tiny'
			}
			{
				trigger: 'two'
				class: 'fa fa-angellist'
			}
		]

	getDefault: (key) ->
		return

module.exports = new Config()
