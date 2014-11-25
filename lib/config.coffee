class Config
	defaults:
		buttons: [
			{
				trigger: 'tree-view:toggle'
				class: 'icon-file-directory'
			}
			{
				trigger: 'docapp:deploy-ghpages'
				class: 'icon-deploy-ghpages icon-mark-github'
#				class: 'loading loading-spinner-tiny'
			}
			{
				trigger: 'docapp:preview'
				class: 'icon-device-desktop'
			}
		]

	getDefault: (key) ->
		return

module.exports = new Config()
