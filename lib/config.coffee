class Config
  defaults:
    buttons: [
      {
        trigger: 'tree-view:toggle'
        class: 'icon-file-directory'
        title: ''
      }
      {
        trigger: 'docapp:deploy-ghpages'
        class: 'icon-deploy-ghpages icon-mark-github'
        title: ''
      }
      {
        trigger: 'docapp:preview'
        class: 'icon-device-desktop'
        title: ''
      }
    ]

  getDefault: (key) ->
    return

module.exports = new Config()
