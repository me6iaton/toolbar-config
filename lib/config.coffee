class Config
  defaults:
    buttons: [
      {trigger: 'tree-view:toggle', class: 'icon-file-directory', title: 'Toggle Tree View Ctrl+\\'}
      {trigger: 'docapp:deploy-ghpages', class: 'icon-mark-github', title: 'Deploy to GitHub Pages'}
      {trigger: 'docapp:preview', class: 'icon-device-desktop', title: 'Toggle Preview'}
      {class: 'spacer'}
      {trigger: 'markdown-writer:toggle-h3', class: 'fa fa-header', title: 'Toggle Header H3'}
      {trigger: 'markdown-writer:toggle-bold-text', class: 'fa fa-bold', title: 'Toggle Bold Text'}
      {trigger: 'markdown-writer:toggle-italic-text', class: 'fa fa-italic', title: 'Toggle Italic Text'}
      {trigger: 'markdown-writer:insert-link', class: 'fa fa-link', title: 'Insert Link'}
      {trigger: 'markdown-writer:insert-image', class: 'fa fa-image', title: 'Insert Image'}
      {trigger: 'markdown-writer:toggle-ul', class: 'fa fa-list-ul', title: 'Toggle ul'}
      {trigger: 'markdown-writer:toggle-ol', class: 'fa fa-list-ol', title: 'Toggle ol'}
      {trigger: 'markdown-writer:toggle-blockquote', class: 'fa fa-quote-left', title: 'Toggle Blockquote'}
      {class: 'spacer'}
    ]

  getDefault: (key) ->
    return
module.exports = new Config()
